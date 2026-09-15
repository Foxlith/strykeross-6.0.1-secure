package com.zalexdev.stryker.utils;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;

import com.zalexdev.stryker.R;

public final class VmRingView extends View {

    public static final int STATE_STOPPED = 0;
    public static final int STATE_BOOTING = 1;
    public static final int STATE_READY = 2;

    private static final float TILE_RADIUS_RATIO = 0.29f;
    private static final float GLYPH_RATIO = 0.66f;
    private static final float DEFAULT_TILE_DP = 40f;
    private static final float STROKE_DP = 2.5f;
    private static final float GAP_DP = 1.5f;
    private static final long SWEEP_PERIOD_MS = 1400L;
    private static final long PROGRESS_ANIM_MS = 450L;
    private static final int TRACK_ALPHA = 0x33;

    private final Paint tilePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint ringPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint trackPaint = new Paint(Paint.ANTI_ALIAS_FLAG);

    private final RectF tileRect = new RectF();
    private final RectF ringRect = new RectF();
    private final Path ringPath = new Path();
    private final Path arcPath = new Path();
    private final PathMeasure ringMeasure = new PathMeasure();
    private final float[] posBuffer = new float[2];
    private final float[] tanBuffer = new float[2];

    private Drawable glyph;
    private float strokePx;
    private float gapPx;
    private float tileRadius;
    private float ringRadius;
    private float ringLength;
    private float ringStartOffset;

    private int state = STATE_STOPPED;
    private float progress = -1f;
    private float shownProgress = -1f;
    private float phase;
    private boolean attached;
    private ValueAnimator animator;
    private ValueAnimator progressAnimator;

    private int bootColor;
    private int stopColor;

    public VmRingView(Context context) {
        super(context);
        init();
    }

    public VmRingView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public VmRingView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        strokePx = dp(STROKE_DP);
        gapPx = dp(GAP_DP);

        tilePaint.setStyle(Paint.Style.FILL);
        tilePaint.setColor(color(R.color.light_lite_contrast, 0xFFEDECEC));

        bootColor = color(R.color.stryker_accent, 0xFF1565C0);
        stopColor = color(R.color.red, 0xFFC62828);

        ringPaint.setStyle(Paint.Style.STROKE);
        ringPaint.setStrokeWidth(strokePx);
        ringPaint.setStrokeCap(Paint.Cap.ROUND);
        ringPaint.setStrokeJoin(Paint.Join.ROUND);

        trackPaint.setStyle(Paint.Style.STROKE);
        trackPaint.setStrokeWidth(strokePx);
        trackPaint.setStrokeCap(Paint.Cap.ROUND);
        trackPaint.setStrokeJoin(Paint.Join.ROUND);

        glyph = AppCompatResources.getDrawable(getContext(), R.drawable.debian);
        if (glyph != null) {
            glyph = glyph.mutate();
            glyph.setTint(color(R.color.grey, 0xFF757575));
        }
    }

    public void setState(int newState) {
        int clamped = newState < STATE_STOPPED || newState > STATE_READY ? STATE_STOPPED : newState;
        if (clamped == state) return;
        state = clamped;
        if (clamped != STATE_BOOTING) {
            stopProgressAnimator();
            progress = -1f;
            shownProgress = -1f;
        }
        syncAnimator();
        invalidate();
    }

    public void setProgress(float fraction01) {
        float next = fraction01 < 0f ? -1f : Math.min(fraction01, 1f);
        if (Math.abs(next - progress) < 0.001f) return;
        boolean wasIndeterminate = progress < 0f;
        progress = next;
        if (next < 0f) {
            stopProgressAnimator();
            shownProgress = -1f;
            syncAnimator();
            invalidate();
            return;
        }
        float from = wasIndeterminate || shownProgress < 0f ? 0f : shownProgress;
        syncAnimator();
        animateProgress(from, next);
    }

    private void animateProgress(float from, float to) {
        stopProgressAnimator();
        if (!attached) {
            shownProgress = to;
            invalidate();
            return;
        }
        ValueAnimator created = ValueAnimator.ofFloat(from, to);
        created.setDuration(PROGRESS_ANIM_MS);
        created.addUpdateListener(a -> {
            shownProgress = (Float) a.getAnimatedValue();
            invalidate();
        });
        progressAnimator = created;
        created.start();
    }

    private void stopProgressAnimator() {
        if (progressAnimator != null) {
            progressAnimator.removeAllUpdateListeners();
            progressAnimator.cancel();
            progressAnimator = null;
        }
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int desired = Math.round(dp(DEFAULT_TILE_DP) + 2f * (gapPx + strokePx))
                + getPaddingLeft() + getPaddingRight();
        int w = resolveSize(desired, widthMeasureSpec);
        int h = resolveSize(desired, heightMeasureSpec);
        setMeasuredDimension(w, h);
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        buildGeometry(w, h);
    }

    private void buildGeometry(int w, int h) {
        float left = getPaddingLeft();
        float top = getPaddingTop();
        float availW = w - left - getPaddingRight();
        float availH = h - top - getPaddingBottom();
        float side = Math.min(availW, availH);
        float ringInset = gapPx + strokePx;
        float tile = side - 2f * ringInset;
        if (tile <= 0f || side <= 0f) {
            ringLength = 0f;
            return;
        }

        float cx = left + availW / 2f;
        float cy = top + availH / 2f;
        tileRect.set(cx - tile / 2f, cy - tile / 2f, cx + tile / 2f, cy + tile / 2f);
        tileRadius = tile * TILE_RADIUS_RATIO;

        float ringOut = gapPx + strokePx / 2f;
        ringRect.set(tileRect.left - ringOut, tileRect.top - ringOut,
                tileRect.right + ringOut, tileRect.bottom + ringOut);
        ringRadius = tileRadius + ringOut;

        ringPath.reset();
        ringPath.addRoundRect(ringRect, ringRadius, ringRadius, Path.Direction.CW);
        ringMeasure.setPath(ringPath, true);
        ringLength = ringMeasure.getLength();
        ringStartOffset = findTopCentre(cx);

        if (glyph != null) {
            int g = Math.round(tile * GLYPH_RATIO);
            int gx = Math.round(cx - g / 2f);
            int gy = Math.round(cy - g / 2f);
            glyph.setBounds(gx, gy, gx + g, gy + g);
        }
    }

    private float findTopCentre(float cx) {
        if (ringLength <= 0f) return 0f;
        float best = 0f;
        float bestScore = Float.MAX_VALUE;
        int samples = 120;
        for (int i = 0; i < samples; i++) {
            float d = ringLength * i / (float) samples;
            if (!ringMeasure.getPosTan(d, posBuffer, tanBuffer)) continue;
            float score = (posBuffer[1] - ringRect.top) * 4f + Math.abs(posBuffer[0] - cx);
            if (score < bestScore) {
                bestScore = score;
                best = d;
            }
        }
        return best;
    }

    @Override
    protected void onDraw(@NonNull Canvas canvas) {
        super.onDraw(canvas);
        if (tileRect.width() <= 0f) return;

        canvas.drawRoundRect(tileRect, tileRadius, tileRadius, tilePaint);
        if (glyph != null) glyph.draw(canvas);

        if (state == STATE_READY || ringLength <= 0f) return;

        if (state == STATE_STOPPED) {
            ringPaint.setColor(stopColor);
            ringPaint.setAlpha(0xFF);
            canvas.drawPath(ringPath, ringPaint);
            return;
        }

        trackPaint.setColor(bootColor);
        trackPaint.setAlpha(TRACK_ALPHA);
        canvas.drawPath(ringPath, trackPaint);

        ringPaint.setColor(bootColor);
        ringPaint.setAlpha(0xFF);

        if (progress >= 0f) {
            float p = shownProgress < 0f ? 0f : shownProgress;
            float done = ringLength * p;
            if (done <= 0f) return;
            if (done >= ringLength) canvas.drawPath(ringPath, ringPaint);
            else drawSegment(canvas, ringStartOffset, done, ringPaint);
            return;
        }

        float breathe = 0.16f + 0.07f * (1f - (float) Math.cos(2.0 * Math.PI * phase));
        float length = ringLength * breathe;
        float start = ringStartOffset + ringLength * phase - length;
        if (length <= 0f) return;
        if (length >= ringLength) {
            canvas.drawPath(ringPath, ringPaint);
            return;
        }
        drawSegment(canvas, start, length, ringPaint);
    }

    private void drawSegment(Canvas canvas, float from, float length, Paint paint) {
        if (length <= 0f || ringLength <= 0f) return;
        float start = from % ringLength;
        if (start < 0f) start += ringLength;
        arcPath.reset();
        float end = start + length;
        if (end <= ringLength) {
            ringMeasure.getSegment(start, end, arcPath, true);
        } else {
            ringMeasure.getSegment(start, ringLength, arcPath, true);
            ringMeasure.getSegment(0f, end - ringLength, arcPath, true);
        }
        canvas.drawPath(arcPath, paint);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        attached = true;
        syncAnimator();
    }

    @Override
    protected void onDetachedFromWindow() {
        attached = false;
        stopAllAnimators();
        super.onDetachedFromWindow();
    }

    @Override
    protected void onVisibilityChanged(@NonNull View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        syncAnimator();
    }

    @Override
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        syncAnimator();
    }

    private void syncAnimator() {
        boolean wanted = attached
                && state == STATE_BOOTING
                && progress < 0f
                && getVisibility() == VISIBLE
                && getWindowVisibility() == VISIBLE;
        if (!wanted) {
            stopAnimator();
            return;
        }
        if (animator == null) {
            ValueAnimator created = ValueAnimator.ofFloat(0f, 1f);
            created.setDuration(SWEEP_PERIOD_MS);
            created.setInterpolator(new LinearInterpolator());
            created.setRepeatCount(ValueAnimator.INFINITE);
            created.addUpdateListener(a -> {
                phase = (Float) a.getAnimatedValue();
                invalidate();
            });
            animator = created;
        }
        if (!animator.isStarted()) animator.start();
    }

    private void stopAnimator() {
        if (animator != null) {
            animator.removeAllUpdateListeners();
            animator.cancel();
            animator = null;
        }
        phase = 0f;
    }

    private void stopAllAnimators() {
        stopAnimator();
        stopProgressAnimator();
    }

    private int color(int resId, int fallback) {
        try {
            return ContextCompat.getColor(getContext(), resId);
        } catch (Throwable t) {
            return fallback;
        }
    }

    private float dp(float value) {
        return value * getResources().getDisplayMetrics().density;
    }
}
