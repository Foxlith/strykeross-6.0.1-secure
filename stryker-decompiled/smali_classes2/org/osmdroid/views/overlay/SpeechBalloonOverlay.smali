.class public Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SourceFile"


# instance fields
.field private mBackground:Landroid/graphics/Paint;

.field private mDragBackground:Landroid/graphics/Paint;

.field private mDragDeltaX:F

.field private mDragDeltaY:F

.field private mDragForeground:Landroid/graphics/Paint;

.field private mDragStartX:F

.field private mDragStartY:F

.field private mDraggable:Z

.field private mForeground:Landroid/graphics/Paint;

.field private mGeoPoint:Lorg/osmdroid/util/GeoPoint;

.field private final mHelper:Lorg/osmdroid/util/SpeechBalloonHelper;

.field private final mIntersection1:Lorg/osmdroid/util/PointL;

.field private final mIntersection2:Lorg/osmdroid/util/PointL;

.field private mIsDragged:Z

.field private mMargin:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private final mPath:Landroid/graphics/Path;

.field private final mPixel:Landroid/graphics/Point;

.field private final mPoint:Lorg/osmdroid/util/PointL;

.field private mRadius:D

.field private final mRect:Lorg/osmdroid/util/RectL;

.field private final mTextRect:Landroid/graphics/Rect;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    new-instance v0, Lorg/osmdroid/util/SpeechBalloonHelper;

    invoke-direct {v0}, Lorg/osmdroid/util/SpeechBalloonHelper;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mHelper:Lorg/osmdroid/util/SpeechBalloonHelper;

    new-instance v0, Lorg/osmdroid/util/RectL;

    invoke-direct {v0}, Lorg/osmdroid/util/RectL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRect:Lorg/osmdroid/util/RectL;

    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection1:Lorg/osmdroid/util/PointL;

    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection2:Lorg/osmdroid/util/PointL;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPixel:Landroid/graphics/Point;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDraggable:Z

    return-void
.end method

.method private hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4

    iget-object p2, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRect:Lorg/osmdroid/util/RectL;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-long v2, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/osmdroid/util/RectL;->contains(JJ)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-boolean v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIsDragged:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragBackground:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mBackground:Landroid/graphics/Paint;

    :goto_0
    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragForeground:Landroid/graphics/Paint;

    if-eqz v2, :cond_2

    :goto_1
    move-object v8, v1

    move-object v9, v2

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mBackground:Landroid/graphics/Paint;

    :cond_2
    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mForeground:Landroid/graphics/Paint;

    goto :goto_1

    :goto_2
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_3

    :cond_4
    if-eqz v9, :cond_7

    if-nez v8, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPixel:Landroid/graphics/Point;

    move-object/from16 v3, p2

    invoke-virtual {v3, v1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v10, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTitle:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v9, v10, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPixel:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-long v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-long v5, v2

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/osmdroid/util/PointL;->set(JJ)V

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v3, v2, Lorg/osmdroid/util/PointL;->x:J

    iget v5, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetX:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    long-to-float v3, v3

    iget v4, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-wide v4, v2, Lorg/osmdroid/util/PointL;->y:J

    iget v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetY:I

    int-to-long v11, v2

    add-long/2addr v4, v11

    long-to-float v2, v4

    iget v4, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaY:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v3

    iput v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v3

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v11, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRect:Lorg/osmdroid/util/RectL;

    int-to-long v12, v4

    int-to-long v14, v2

    int-to-long v1, v5

    int-to-long v3, v6

    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    invoke-virtual/range {v11 .. v19}, Lorg/osmdroid/util/RectL;->set(JJJJ)V

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mHelper:Lorg/osmdroid/util/SpeechBalloonHelper;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRect:Lorg/osmdroid/util/RectL;

    iget-object v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRadius:D

    iget-object v6, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection1:Lorg/osmdroid/util/PointL;

    iget-object v11, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection2:Lorg/osmdroid/util/PointL;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-object/from16 v21, v6

    move-object/from16 v22, v11

    invoke-virtual/range {v16 .. v22}, Lorg/osmdroid/util/SpeechBalloonHelper;->compute(Lorg/osmdroid/util/RectL;Lorg/osmdroid/util/PointL;DLorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;)I

    move-result v11

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, -0x1

    if-eq v11, v1, :cond_6

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v3, v2, Lorg/osmdroid/util/PointL;->x:J

    long-to-float v3, v3

    iget-wide v4, v2, Lorg/osmdroid/util/PointL;->y:J

    long-to-float v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection1:Lorg/osmdroid/util/PointL;

    iget-wide v3, v2, Lorg/osmdroid/util/PointL;->x:J

    long-to-float v3, v3

    iget-wide v4, v2, Lorg/osmdroid/util/PointL;->y:J

    long-to-float v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection2:Lorg/osmdroid/util/PointL;

    iget-wide v3, v2, Lorg/osmdroid/util/PointL;->x:J

    long-to-float v3, v3

    iget-wide v4, v2, Lorg/osmdroid/util/PointL;->y:J

    long-to-float v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v7, v10, v2, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDraggable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIsDragged:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartY:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaY:F

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDraggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIsDragged:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartX:F

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartY:F

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetX:I

    int-to-float v0, v0

    iget v3, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetX:I

    iget v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetY:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetY:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaY:F

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIsDragged:Z

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartY:F

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaY:F

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setBackground(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mBackground:Landroid/graphics/Paint;

    return-void
.end method

.method public setDragBackground(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragBackground:Landroid/graphics/Paint;

    return-void
.end method

.method public setDragForeground(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragForeground:Landroid/graphics/Paint;

    return-void
.end method

.method public setForeground(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mForeground:Landroid/graphics/Paint;

    return-void
.end method

.method public setGeoPoint(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public setMargin(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    return-void
.end method

.method public setOffset(II)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetX:I

    iput p2, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetY:I

    return-void
.end method

.method public setRadius(J)V
    .locals 0

    long-to-double p1, p1

    iput-wide p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRadius:D

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTitle:Ljava/lang/String;

    return-void
.end method
