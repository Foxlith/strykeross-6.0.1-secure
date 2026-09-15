package com.zalexdev.stryker.appintro.slides;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.widget.ViewPager2;

import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.zalexdev.stryker.R;
import com.zalexdev.stryker.appintro.AppIntroActivity;
import com.zalexdev.stryker.engine.EngineType;
import com.zalexdev.stryker.utils.Core;

public class SlideEngineSelect extends Fragment {

    private Activity activity;
    private Context context;
    private Core core;
    private ViewPager2 mPager;

    private MaterialCardView cardRootless;
    private MaterialCardView cardChroot;
    private ImageView checkRootless;
    private ImageView checkChroot;

    private EngineType selected = EngineType.CHROOT;
    private boolean rootlessSupported;

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.new_slide_engine, container, false);
        activity = getActivity();
        context = getContext();
        core = new Core(context);
        mPager = activity.findViewById(R.id.view_pager);

        cardRootless = view.findViewById(R.id.card_rootless);
        cardChroot = view.findViewById(R.id.card_chroot);
        checkRootless = view.findViewById(R.id.check_rootless);
        checkChroot = view.findViewById(R.id.check_chroot);
        View rootlessNote = view.findViewById(R.id.rootless_note);
        MaterialButton continueBtn = view.findViewById(R.id.login);

        rootlessSupported = EngineType.rootlessSupported(context);

        if (rootlessSupported) {
            selected = EngineType.ROOTLESS;
            cardRootless.setOnClickListener(v -> select(EngineType.ROOTLESS));
        } else {
            rootlessNote.setVisibility(View.VISIBLE);
            cardRootless.setAlpha(0.5f);
            selected = EngineType.CHROOT;
        }
        cardChroot.setOnClickListener(v -> select(EngineType.CHROOT));

        applySelectionUi();

        continueBtn.setOnClickListener(v -> {
            EngineType.persist(core, selected);
            ((AppIntroActivity) activity).applyEngineFlow(selected);
            mPager.post(() -> core.moveNext(mPager));
        });
        return view;
    }

    private void select(EngineType type) {
        if (type == EngineType.ROOTLESS && !rootlessSupported) return;
        selected = type;
        applySelectionUi();
    }

    private void applySelectionUi() {
        boolean rootless = selected == EngineType.ROOTLESS;
        checkRootless.setVisibility(rootless ? View.VISIBLE : View.INVISIBLE);
        checkChroot.setVisibility(rootless ? View.INVISIBLE : View.VISIBLE);
        int accent = ContextCompat.getColor(context, R.color.stryker_accent);
        int idle = ContextCompat.getColor(context, R.color.light_lite_contrast);
        styleCard(cardRootless, rootless, accent, idle);
        styleCard(cardChroot, !rootless, accent, idle);
    }

    private void styleCard(MaterialCardView card, boolean selectedCard, int accent, int idle) {
        card.setStrokeColor(selectedCard ? accent : idle);
        float density = getResources().getDisplayMetrics().density;
        card.setStrokeWidth((int) (density * (selectedCard ? 2 : 1)));
        float scale = selectedCard ? 1f : 0.97f;
        card.animate().scaleX(scale).scaleY(scale)
                .setDuration(getResources().getInteger(R.integer.motion_short))
                .start();
    }
}
