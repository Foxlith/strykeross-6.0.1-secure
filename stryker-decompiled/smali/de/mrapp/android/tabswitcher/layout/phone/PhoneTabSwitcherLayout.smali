.class public Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;
.super Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;
.source "SourceFile"

# interfaces
.implements Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragHandler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;,
        Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$CompoundLayoutListener;
    }
.end annotation


# static fields
.field private static final MIN_TAB_SPACING_RATIO:F = 0.375f

.field private static final SELECTED_TAB_SPACING_RATIO:F = 1.5f


# instance fields
.field private childViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/android/util/view/ViewRecycler<",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final clearAnimationDelay:J

.field private dragHandler:Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragHandler;

.field private firstVisibleIndex:I

.field private final hideSwitcherAnimationDuration:J

.field private final maxCameraDistance:I

.field private final maxEndOvershootAngle:F

.field private final maxStartOvershootAngle:F

.field private final peekAnimationDuration:J

.field private recyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;

.field private final relocateAnimationDelay:J

.field private final relocateAnimationDuration:J

.field private final revealAnimationDuration:J

.field private final revertOvershootAnimationDuration:J

.field private final showSwitcherAnimationDuration:J

.field private final stackedTabCount:I

.field private final stackedTabSpacing:I

.field private final swipeAnimationDuration:J

.field private final swipedTabAlpha:F

.field private final swipedTabScale:F

.field private final tabBorderWidth:I

.field private tabContainer:Landroid/view/ViewGroup;

.field private final tabInset:I

.field private final tabTitleContainerHeight:I

.field private tabViewBottomMargin:I

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private toolbarAnimation:Landroid/view/ViewPropertyAnimator;

.field private final toolbarVisibilityAnimationDelay:J

.field private final toolbarVisibilityAnimationDuration:J

.field private viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/TabItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;-><init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;Lde/mrapp/android/tabswitcher/layout/Arithmetics;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lde/mrapp/android/tabswitcher/R$dimen;->tab_inset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabInset:I

    sget p2, Lde/mrapp/android/tabswitcher/R$dimen;->tab_border_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabBorderWidth:I

    sget p2, Lde/mrapp/android/tabswitcher/R$dimen;->tab_title_container_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabTitleContainerHeight:I

    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->stacked_tab_count:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->stackedTabCount:I

    sget p2, Lde/mrapp/android/tabswitcher/R$dimen;->stacked_tab_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->stackedTabSpacing:I

    sget p2, Lde/mrapp/android/tabswitcher/R$dimen;->max_camera_distance:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxCameraDistance:I

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    sget p3, Lde/mrapp/android/tabswitcher/R$dimen;->swiped_tab_scale:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p3

    iput p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabScale:F

    sget p3, Lde/mrapp/android/tabswitcher/R$dimen;->swiped_tab_alpha:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabAlpha:F

    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->show_switcher_animation_duration:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->showSwitcherAnimationDuration:J

    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->hide_switcher_animation_duration:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->hideSwitcherAnimationDuration:J

    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->toolbar_visibility_animation_duration:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarVisibilityAnimationDuration:J

    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->toolbar_visibility_animation_delay:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarVisibilityAnimationDelay:J

    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->swipe_animation_duration:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipeAnimationDuration:J

    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->clear_animation_delay:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clearAnimationDelay:J

    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->relocate_animation_duration:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateAnimationDuration:J

    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->relocate_animation_delay:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateAnimationDelay:J

    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->revert_overshoot_animation_duration:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->revertOvershootAnimationDuration:J

    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->reveal_animation_duration:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->revealAnimationDuration:J

    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->peek_animation_duration:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->peekAnimationDuration:J

    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->max_start_overshoot_angle:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxStartOvershootAngle:F

    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->max_end_overshoot_angle:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxEndOvershootAngle:F

    const/4 p1, -0x1

    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewBottomMargin:I

    const/4 p1, 0x0

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarAnimation:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static synthetic access$000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$10000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;JLandroid/view/animation/Interpolator;JLandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateHideSwitcher(Lde/mrapp/android/tabswitcher/model/TabItem;JLandroid/view/animation/Interpolator;JLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic access$10100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createUpdateViewAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateShowSwitcher(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic access$1500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createHideSwitcherAnimationListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateHideSwitcher(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic access$1800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRemove(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V

    return-void
.end method

.method public static synthetic access$1900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;FLde/mrapp/android/tabswitcher/model/Tag;JLandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRelocate(Lde/mrapp/android/tabswitcher/model/TabItem;FLde/mrapp/android/tabswitcher/model/Tag;JLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic access$200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)I
    .locals 0

    iget p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->stackedTabCount:I

    return p0
.end method

.method public static synthetic access$2000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)I
    .locals 0

    iget p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabTitleContainerHeight:I

    return p0
.end method

.method public static synthetic access$2700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)I
    .locals 0

    iget p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->stackedTabSpacing:I

    return p0
.end method

.method public static synthetic access$3000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/RevealAnimation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateReveal(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/RevealAnimation;)V

    return-void
.end method

.method public static synthetic access$3200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)J
    .locals 2

    iget-wide v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->peekAnimationDuration:J

    return-wide v0
.end method

.method public static synthetic access$3300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;JLandroid/view/animation/Interpolator;FLde/mrapp/android/tabswitcher/PeekAnimation;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animatePeek(Lde/mrapp/android/tabswitcher/model/TabItem;JLandroid/view/animation/Interpolator;FLde/mrapp/android/tabswitcher/PeekAnimation;)V

    return-void
.end method

.method public static synthetic access$3500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;I)F
    .locals 0

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateAttachedPosition(I)F

    move-result p0

    return p0
.end method

.method public static synthetic access$3700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;IF)[Lde/mrapp/android/tabswitcher/model/TabItem;
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateInitialTabItems(IF)[Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/TabSwitcher;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Z[Lde/mrapp/android/tabswitcher/model/TabItem;)[Lde/mrapp/android/tabswitcher/model/TabItem;
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateWhenAddingStackedTabs(Z[Lde/mrapp/android/tabswitcher/model/TabItem;)[Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;ZFZ)[Lde/mrapp/android/tabswitcher/model/TabItem;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateWhenAddingFloatingTabs([Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;ZFZ)[Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;)[Lde/mrapp/android/tabswitcher/model/TabItem;
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateWhenAddingHiddenTabs([Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;)[Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createBottomMarginLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)F
    .locals 0

    iget p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabAlpha:F

    return p0
.end method

.method public static synthetic access$4400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)F
    .locals 0

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateSwipePosition()F

    move-result p0

    return p0
.end method

.method public static synthetic access$4500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$5000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$5100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$5200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$5300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$5400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$5500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$5600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$5700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$5800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)F
    .locals 0

    iget p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabScale:F

    return p0
.end method

.method public static synthetic access$5900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$6000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$6100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createSwipeAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$6200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;ZJLde/mrapp/android/tabswitcher/SwipeAnimation;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;ZJLde/mrapp/android/tabswitcher/SwipeAnimation;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic access$6300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)I
    .locals 0

    iget p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewBottomMargin:I

    return p0
.end method

.method public static synthetic access$6302(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;I)I
    .locals 0

    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewBottomMargin:I

    return p1
.end method

.method public static synthetic access$6400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateBottomMargin(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$6500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptViewSize(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-void
.end method

.method public static synthetic access$6600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->updateView(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-void
.end method

.method public static synthetic access$6700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-void
.end method

.method public static synthetic access$6800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/TabSwitcher;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$6900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/util/view/AttachedViewRecycler;
    .locals 0

    iget-object p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    return-object p0
.end method

.method public static synthetic access$7000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$7100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$7200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;
    .locals 0

    iget-object p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->recyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;

    return-object p0
.end method

.method public static synthetic access$7300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$7400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateToolbarVisibility(ZJ)V

    return-void
.end method

.method public static synthetic access$7500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptStackOnSwipeAborted(Lde/mrapp/android/tabswitcher/model/TabItem;I)V

    return-void
.end method

.method public static synthetic access$7600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$7700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$7800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$7900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$8000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$8100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$8200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateWhenRemovingStackedTab(Lde/mrapp/android/tabswitcher/model/TabItem;Z)V

    return-void
.end method

.method public static synthetic access$8300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateWhenRemovingFloatingTab(Lde/mrapp/android/tabswitcher/model/TabItem;FZ)V

    return-void
.end method

.method public static synthetic access$8400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$8500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$8600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$8700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$8800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRevertStartOvershoot(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static synthetic access$8900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/TabSwitcher;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$9000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$9100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$9200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRevertPeekAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$9300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$9400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$9500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$9600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$9700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$9800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$9900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createZoomInAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    return-object p0
.end method

.method private adaptDecorator()V
    .locals 2

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->childViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getChildRecyclerAdapter()Lde/mrapp/android/tabswitcher/layout/ChildRecyclerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/util/view/AbstractViewRecycler;->setAdapter(Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;)V

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->recyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->clearCachedPreviews()V

    return-void
.end method

.method private adaptLogLevel()V
    .locals 2

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/util/view/AbstractViewRecycler;->setLogLevel(Lde/mrapp/android/util/logging/LogLevel;)V

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->childViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/util/view/AbstractViewRecycler;->setLogLevel(Lde/mrapp/android/util/logging/LogLevel;)V

    return-void
.end method

.method private adaptStackOnSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;II)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ge p2, v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 28
    .line 29
    invoke-static {v0, v1, p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    .line 42
    .line 43
    if-eq v0, v1, :cond_0

    .line 44
    .line 45
    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    .line 46
    .line 47
    if-ne v0, v1, :cond_1

    .line 48
    .line 49
    :cond_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p3, p1, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    iget-object v0, p1, Lg0/c;->a:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Ljava/lang/Float;

    .line 65
    .line 66
    invoke-static {v0, p3, p2}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    iget-object p1, p1, Lg0/c;->b:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    .line 73
    .line 74
    invoke-virtual {p3, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method

.method private adaptStackOnSwipeAborted(Lde/mrapp/android/tabswitcher/model/TabItem;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ge p2, v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 28
    .line 29
    invoke-static {v0, v2, p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-ne v0, v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-direct {p0, v0, v1, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p1, Lg0/c;->a:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Ljava/lang/Float;

    .line 66
    .line 67
    invoke-static {v1, v0, p2}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object p1, p1, Lg0/c;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void
.end method

.method private adaptToolbarMargin()V
    .locals 5

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingRight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method private adaptViewSize(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 5

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;

    invoke-interface {v2, v1, p1, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    invoke-interface {v4, v2, p1, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v3

    invoke-interface {v0, v2, p1, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, p1, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getScale(Landroid/view/View;Z)F

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v3

    invoke-interface {v3, v1, p1, v0}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    invoke-interface {v1, v2, p1, v0}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    return-void
.end method

.method private addAllTabs(I[Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 6

    array-length v0, p2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p3, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    if-eqz v0, :cond_0

    check-cast p3, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    goto :goto_0

    :cond_0
    new-instance p3, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    invoke-direct {p3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;-><init>()V

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->create()Lde/mrapp/android/tabswitcher/SwipeAnimation;

    move-result-object p3

    :goto_0
    array-length v0, p2

    new-array v0, v0, [Lde/mrapp/android/tabswitcher/model/TabItem;

    new-instance v2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$CompoundLayoutListener;

    array-length v3, p2

    invoke-direct {p0, v0, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createSwipeLayoutListener([Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p3

    invoke-direct {v2, p0, v3, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$CompoundLayoutListener;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;ILandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    move p3, v1

    :goto_1
    array-length v3, p2

    if-ge p3, v3, :cond_2

    aget-object v3, p2, p3

    new-instance v4, Lde/mrapp/android/tabswitcher/model/TabItem;

    add-int v5, p1, p3

    invoke-direct {v4, v5, v3}, Lde/mrapp/android/tabswitcher/model/TabItem;-><init>(ILde/mrapp/android/tabswitcher/Tab;)V

    aput-object v4, v0, p3

    new-array v3, v1, [Ljava/lang/Integer;

    invoke-direct {p0, v4, v2, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateView(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Integer;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p3

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p3

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p3

    aget-object p2, p2, v1

    if-ne p3, p2, :cond_2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p2

    iget-object p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {p2, p3, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createAddSelectedTabLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Integer;

    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateView(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Integer;)V

    :cond_2
    return-void
.end method

.method private animateBottomMargin(Landroid/view/View;IJJ)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p2, v0

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p3, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$1;

    invoke-direct {p3, p0, p1, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$1;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Landroid/view/View;I)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateHideSwitcher()V
    .locals 5

    .line 1
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->dragHandler:Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler;->setCallback(Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$Callback;)V

    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v0, v2, v3}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createHideSwitcherAnimationListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-direct {p0, v2, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateHideSwitcher(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v4

    if-ne v3, v4, :cond_0

    invoke-direct {p0, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createHideSwitcherLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateAndUpdateView(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->areToolbarsShown()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateToolbarVisibility(ZJ)V

    return-void
.end method

.method private animateHideSwitcher(Lde/mrapp/android/tabswitcher/model/TabItem;JLandroid/view/animation/Interpolator;JLandroid/animation/Animator$AnimatorListener;)V
    .locals 13

    .line 2
    move-object v7, p0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v8

    iget v0, v7, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabInset:I

    iget v1, v7, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabBorderWidth:I

    add-int/2addr v0, v1

    neg-int v2, v0

    move-object v0, p0

    move-object v1, v8

    move-wide v3, p2

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateBottomMargin(Landroid/view/View;IJJ)V

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    move-wide v0, p2

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    move-object/from16 v1, p7

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v9, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v9, v6, v1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v0, v2, v6, v1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v1

    sget-object v11, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    const/4 v12, 0x0

    if-ne v1, v11, :cond_0

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v1, v1

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v12

    :goto_0
    const/4 v5, 0x0

    move-object v1, v2

    move-object v2, v6

    move-object v3, v8

    invoke-interface/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Landroid/view/View;FZ)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    invoke-interface {v1, v9}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)F

    move-result v4

    :goto_1
    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, v6

    move-object v3, v8

    invoke-interface/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Landroid/view/View;FZ)V

    move-wide/from16 v0, p5

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v1

    if-le v1, v0, :cond_3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v1

    if-ne v1, v11, :cond_2

    :goto_2
    move v4, v12

    goto :goto_1

    :cond_2
    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v1, v1

    move v4, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v1

    if-ne v1, v11, :cond_2

    goto :goto_2

    :goto_3
    invoke-virtual {v6, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animateHideSwitcher(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/animation/Animator$AnimatorListener;)V
    .locals 8

    .line 3
    iget-wide v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->hideSwitcherAnimationDuration:J

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateHideSwitcher(Lde/mrapp/android/tabswitcher/model/TabItem;JLandroid/view/animation/Interpolator;JLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private animatePeek(Lde/mrapp/android/tabswitcher/model/TabItem;JLandroid/view/animation/Interpolator;FLde/mrapp/android/tabswitcher/PeekAnimation;)V
    .locals 9

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    move-result-object v0

    iget-object v0, v0, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p6}, Lde/mrapp/android/tabswitcher/PeekAnimation;->getX()F

    move-result v0

    invoke-virtual {p6}, Lde/mrapp/android/tabswitcher/PeekAnimation;->getY()F

    move-result v2

    iget v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabTitleContainerHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v6

    sget-object v7, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->X_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v6, v7, v5, v0}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->Y_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v0, v6, v5, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    iget v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setX(F)V

    iget v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v8, 0x0

    invoke-interface {v0, v3, v5, v8}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v0, v2, v5, v8}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    new-instance v6, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    invoke-direct {p0, p1, p6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createPeekAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/PeekAnimation;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-direct {v6, p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p1

    invoke-interface {p1, v3, v0, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p1

    invoke-interface {p1, v2, v0, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    const/4 v7, 0x1

    move-object v4, v0

    move v6, p5

    invoke-interface/range {v2 .. v7}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Landroid/view/View;FZ)V

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result p1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p5

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {p5, v0, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v3

    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    const/4 p5, 0x0

    new-array p5, p5, [Ljava/lang/Integer;

    invoke-virtual {p1, v3, p5}, Lde/mrapp/android/util/view/AbstractViewRecycler;->inflate(Ljava/lang/Object;[Ljava/lang/Object;)Lg0/c;

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    invoke-virtual {p1, v8}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    move-result-object p1

    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3, p6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createZoomOutAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/PeekAnimation;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v7

    move-object v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateShowSwitcher(Lde/mrapp/android/tabswitcher/model/TabItem;JLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private animateRelocate(Lde/mrapp/android/tabswitcher/model/TabItem;FLde/mrapp/android/tabswitcher/model/Tag;JLandroid/animation/Animator$AnimatorListener;)V
    .locals 8

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lde/mrapp/android/tabswitcher/R$id;->tag_properties:I

    invoke-virtual {v0, v1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Lde/mrapp/android/tabswitcher/model/TabItem;->setTag(Lde/mrapp/android/tabswitcher/model/Tag;)V

    :cond_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p3, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    invoke-direct {p3, p0, p6}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    new-instance p3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-wide v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateAnimationDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v7, 0x1

    move-object v4, p1

    move v6, p2

    invoke-interface/range {v2 .. v7}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Landroid/view/View;FZ)V

    invoke-virtual {p1, p4, p5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animateRemove(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V
    .locals 11

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v3

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;->SWIPE:Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;

    invoke-interface {v3, v2, v0, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v3

    invoke-interface {v1, v2, v0, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v3

    invoke-interface {v3, v2, v0, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v3

    invoke-interface {v1, v2, v0, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRemoveAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v10

    move-object v4, p0

    move-object v5, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v10}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;ZJLde/mrapp/android/tabswitcher/SwipeAnimation;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private animateReveal(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/RevealAnimation;)V
    .locals 6

    const/4 v0, -0x1

    iput v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewBottomMargin:I

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->recyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->clearCachedPreviews()V

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->dragHandler:Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler;->setCallback(Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$Callback;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/Animation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/Animation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createHideSwitcherAnimationListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/Animation;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/Animation;->getDuration()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->revealAnimationDuration:J

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p2

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p2, v2, p1, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p2

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {p2, v2, p1, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->areToolbarsShown()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p1, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateToolbarVisibility(ZJ)V

    return-void
.end method

.method private animateRevertEndOvershoot()V
    .locals 3

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxEndOvershootAngle:F

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateTilt(Landroid/view/animation/Interpolator;FLandroid/animation/Animator$AnimatorListener;)Z

    return-void
.end method

.method private animateRevertStartOvershoot()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxStartOvershootAngle:F

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRevertStartOvershootAnimationListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateTilt(Landroid/view/animation/Interpolator;FLandroid/animation/Animator$AnimatorListener;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {p0, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRevertStartOvershoot(Landroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method private animateRevertStartOvershoot(Landroid/view/animation/Interpolator;)V
    .locals 8

    .line 2
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v3

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v5

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;

    invoke-interface {v5, v4, v1, v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v5

    invoke-interface {v3, v4, v1, v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v3

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v7

    invoke-interface {v7, v5, v1, v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v6

    invoke-interface {v3, v5, v1, v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v3

    invoke-interface {v3, v4, v1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;)F

    move-result v3

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v5

    invoke-interface {v5, v4, v1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;)F

    move-result v1

    const/4 v4, 0x1

    new-array v4, v4, [F

    sub-float/2addr v0, v3

    aput v0, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-wide v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->revertOvershootAnimationDuration:J

    long-to-float v3, v3

    iget v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->stackedTabCount:I

    iget v5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->stackedTabSpacing:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$2;

    invoke-direct {p1, p0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$2;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;F)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateShowSwitcher()V
    .locals 8

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateInitialTabItems(IF)[Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v4

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/TabItem;ZILde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$1;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v3

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-virtual {v2, v1, v3}, Lde/mrapp/android/util/view/AbstractViewRecycler;->inflate(Ljava/lang/Object;[Ljava/lang/Object;)Lg0/c;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v2

    sget-object v3, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-static {v2}, Landroidx/core/view/n0;->c(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$LayoutListenerWrapper;

    invoke-direct {p0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createShowSwitcherLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$LayoutListenerWrapper;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createUpdateViewAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateShowSwitcher(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->areToolbarsShown()Z

    move-result v0

    iget-wide v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarVisibilityAnimationDelay:J

    invoke-direct {p0, v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateToolbarVisibility(ZJ)V

    return-void
.end method

.method private animateShowSwitcher(Lde/mrapp/android/tabswitcher/model/TabItem;JLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 12

    .line 3
    move-object v7, p0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v1, v1

    invoke-virtual {v8, v1}, Landroid/view/View;->setX(F)V

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v1, v1

    invoke-virtual {v8, v1}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v9, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v9, v8, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v10, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v1, v10, v8, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;

    invoke-interface {v2, v9, v8, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v2

    invoke-interface {v1, v9, v8, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    invoke-interface {v2, v10, v8, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v2

    invoke-interface {v1, v10, v8, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v8, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getScale(Landroid/view/View;Z)F

    move-result v11

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    invoke-interface {v1, v9}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)F

    move-result v1

    invoke-interface {v0, v9, v8, v1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v2

    if-le v2, v1, :cond_2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    :goto_0
    invoke-interface {v1, v9, v8, v0}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    :cond_2
    :goto_1
    iget v0, v7, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewBottomMargin:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-direct {p0, v8}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateBottomMargin(Landroid/view/View;)I

    move-result v0

    iput v0, v7, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewBottomMargin:I

    :cond_3
    iget v2, v7, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewBottomMargin:I

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, v8

    move-wide v3, p2

    invoke-direct/range {v0 .. v6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateBottomMargin(Landroid/view/View;IJJ)V

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    move-wide v0, p2

    invoke-virtual {v6, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    move-object/from16 v1, p5

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    invoke-interface {v0, v9, v6, v11}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    invoke-interface {v0, v10, v6, v11}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v4

    const/4 v5, 0x1

    move-object v1, v9

    move-object v2, v6

    move-object v3, v8

    invoke-interface/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Landroid/view/View;FZ)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, v10

    invoke-interface/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Landroid/view/View;FZ)V

    const-wide/16 v0, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animateShowSwitcher(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/animation/Animator$AnimatorListener;)V
    .locals 6

    .line 4
    iget-wide v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->showSwitcherAnimationDuration:J

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateShowSwitcher(Lde/mrapp/android/tabswitcher/model/TabItem;JLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private animateSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;ZJLde/mrapp/android/tabswitcher/SwipeAnimation;Landroid/animation/Animator$AnimatorListener;)V
    .locals 13

    move-object v0, p0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v4, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getScale(Landroid/view/View;Z)F

    move-result v7

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateSwipePosition()F

    move-result v1

    if-eqz p2, :cond_1

    invoke-virtual/range {p5 .. p5}, Lde/mrapp/android/tabswitcher/SwipeAnimation;->getDirection()Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;->LEFT:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    if-ne v2, v3, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v2, v1

    :goto_0
    move v5, v2

    goto :goto_1

    :cond_0
    move v5, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v8, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v2, v8, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;)F

    move-result v2

    sub-float v2, v5, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual/range {p5 .. p5}, Lde/mrapp/android/tabswitcher/Animation;->getDuration()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v3, v9, v11

    if-eqz v3, :cond_2

    invoke-virtual/range {p5 .. p5}, Lde/mrapp/android/tabswitcher/Animation;->getDuration()J

    move-result-wide v1

    goto :goto_2

    :cond_2
    iget-wide v9, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipeAnimationDuration:J

    long-to-float v3, v9

    div-float/2addr v2, v1

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v1, v1

    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual/range {p5 .. p5}, Lde/mrapp/android/tabswitcher/Animation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p5 .. p5}, Lde/mrapp/android/tabswitcher/Animation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_3

    :cond_3
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    :goto_3
    invoke-virtual {v9, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    new-instance v3, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    move-object/from16 v6, p6

    invoke-direct {v3, p0, v6}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v9, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    const/4 v6, 0x1

    move-object v2, v8

    move-object v3, v9

    invoke-interface/range {v1 .. v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Landroid/view/View;FZ)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    if-eqz p2, :cond_4

    iget v2, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabScale:F

    mul-float/2addr v2, v7

    goto :goto_4

    :cond_4
    move v2, v7

    :goto_4
    invoke-interface {v1, v8, v9, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-eqz p2, :cond_5

    iget v3, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabScale:F

    mul-float/2addr v7, v3

    :cond_5
    invoke-interface {v1, v2, v9, v7}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    if-eqz p2, :cond_6

    iget v1, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabAlpha:F

    goto :goto_5

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {v9, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-wide/from16 v1, p3

    invoke-virtual {v9, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animateTilt(Landroid/view/animation/Interpolator;FLandroid/animation/Animator$AnimatorListener;)Z
    .locals 9

    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v4, v5, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getRotation(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;)F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v7, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    if-nez v2, :cond_1

    move-object v2, p3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v3, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRevertOvershootAnimationListener(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-direct {v7, p0, v2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-wide v7, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->revertOvershootAnimationDuration:J

    long-to-float v2, v7

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v7

    invoke-interface {v7, v5, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getRotation(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, p2

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v4, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    invoke-interface {v2, v5, v4, v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateRotation(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    const-wide/16 v2, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    move v2, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private animateToolbarVisibility(ZJ)V
    .locals 3

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarAnimation:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarAnimation:Landroid/view/ViewPropertyAnimator;

    iget-wide v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarVisibilityAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarAnimation:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarAnimation:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarAnimation:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method private calculateAttachedPosition(I)F
    .locals 3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Z)F

    move-result v0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const p1, 0x3f28f5c3    # 0.66f

    :goto_0
    mul-float/2addr v0, p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const p1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    :goto_1
    return v0
.end method

.method private calculateBottomMargin(Landroid/view/View;)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabInset:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getScale(Landroid/view/View;Z)F

    move-result p1

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->Y_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Z)F

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v1

    sget-object v3, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->stackedTabCount:I

    iget v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->stackedTabSpacing:I

    mul-int/2addr v2, v1

    :goto_0
    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabInset:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    int-to-float v1, v2

    add-float/2addr p1, v1

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private calculateEndPosition(I)F
    .locals 5

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTabIndex()I

    move-result v1

    if-le v1, p1, :cond_0

    new-instance v2, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v3

    iget-object v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v2, v3, v4}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;->getItem(I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    sub-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    return p1

    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    mul-float/2addr p1, v0

    return p1
.end method

.method private calculateInitialTabItems(IF)[Lde/mrapp/android/tabswitcher/model/TabItem;
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    iget-object v1, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->dragHandler:Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragHandler;

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getDragThreshold()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v1, v2}, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler;->reset(I)V

    .line 12
    .line 13
    .line 14
    const/4 v7, -0x1

    .line 15
    iput v7, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    new-array v8, v1, [Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_11

    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-direct {v6, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateAttachedPosition(I)F

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    const/high16 v1, -0x40800000    # -1.0f

    .line 58
    .line 59
    if-eq v0, v7, :cond_0

    .line 60
    .line 61
    cmpl-float v2, p2, v1

    .line 62
    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    move v11, v0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move v11, v9

    .line 68
    :goto_0
    if-eq v0, v7, :cond_1

    .line 69
    .line 70
    cmpl-float v0, p2, v1

    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    move/from16 v0, p2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move v0, v10

    .line 78
    :goto_1
    invoke-direct {v6, v11}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateEndPosition(I)F

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    new-instance v13, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    const/4 v5, 0x0

    .line 90
    move-object v0, v13

    .line 91
    move-object/from16 v1, p0

    .line 92
    .line 93
    move-object v2, v8

    .line 94
    move v4, v11

    .line 95
    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/TabItem;ZILde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$1;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-virtual {v13}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const/4 v14, 0x1

    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    invoke-virtual {v13}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    sub-int/2addr v3, v14

    .line 122
    if-ne v2, v3, :cond_3

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    goto :goto_2

    .line 126
    :cond_3
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-ne v2, v11, :cond_4

    .line 131
    .line 132
    move v2, v12

    .line 133
    goto :goto_2

    .line 134
    :cond_4
    invoke-direct {v6, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateNonLinearPosition(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;)F

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    invoke-direct {v6, v3, v4, v2, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    iget-object v3, v1, Lg0/c;->a:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v3, Ljava/lang/Float;

    .line 161
    .line 162
    invoke-static {v3, v2, v0}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget-object v1, v1, Lg0/c;->b:Ljava/lang/Object;

    .line 167
    .line 168
    move-object v3, v1

    .line 169
    check-cast v3, Lde/mrapp/android/tabswitcher/model/State;

    .line 170
    .line 171
    invoke-virtual {v2, v3}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 172
    .line 173
    .line 174
    iget v2, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 175
    .line 176
    if-ne v2, v7, :cond_5

    .line 177
    .line 178
    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->STACKED_END:Lde/mrapp/android/tabswitcher/model/State;

    .line 179
    .line 180
    if-eq v1, v2, :cond_5

    .line 181
    .line 182
    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    .line 183
    .line 184
    if-eq v1, v2, :cond_5

    .line 185
    .line 186
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    iput v0, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 191
    .line 192
    :cond_5
    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    .line 193
    .line 194
    if-eq v1, v0, :cond_6

    .line 195
    .line 196
    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    .line 197
    .line 198
    if-ne v1, v0, :cond_2

    .line 199
    .line 200
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    sub-int/2addr v0, v14

    .line 209
    if-eq v11, v0, :cond_8

    .line 210
    .line 211
    invoke-direct {v6, v13}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->isOvershootingAtEnd(Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_7

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_7
    const/4 v0, 0x0

    .line 219
    move v13, v0

    .line 220
    goto :goto_4

    .line 221
    :cond_8
    :goto_3
    move v13, v14

    .line 222
    :goto_4
    new-instance v15, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;

    .line 223
    .line 224
    const/4 v3, 0x1

    .line 225
    add-int/lit8 v4, v11, -0x1

    .line 226
    .line 227
    const/4 v5, 0x0

    .line 228
    move-object v0, v15

    .line 229
    move-object/from16 v1, p0

    .line 230
    .line 231
    move-object v2, v8

    .line 232
    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/TabItem;ZILde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$1;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-direct {v6, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMinTabSpacing(I)F

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    const/4 v2, 0x0

    .line 256
    invoke-direct {v6, v1, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    iget-object v3, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 265
    .line 266
    invoke-static {v2, v3, v9}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    invoke-direct {v6, v3, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    invoke-virtual {v15, v11}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->getItem(I)Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    :goto_5
    invoke-virtual {v15}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    if-eqz v4, :cond_11

    .line 291
    .line 292
    if-nez v13, :cond_9

    .line 293
    .line 294
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    if-ge v5, v11, :cond_11

    .line 299
    .line 300
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    invoke-direct {v6, v5, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    invoke-virtual {v15}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->peek()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    if-eqz v13, :cond_b

    .line 317
    .line 318
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-le v11, v5, :cond_a

    .line 323
    .line 324
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    sub-int/2addr v5, v14

    .line 333
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 334
    .line 335
    .line 336
    move-result v16

    .line 337
    sub-int v5, v5, v16

    .line 338
    .line 339
    sub-int/2addr v5, v14

    .line 340
    int-to-float v5, v5

    .line 341
    mul-float/2addr v5, v1

    .line 342
    add-float/2addr v5, v2

    .line 343
    goto :goto_6

    .line 344
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    sub-int/2addr v5, v14

    .line 353
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 354
    .line 355
    .line 356
    move-result v16

    .line 357
    sub-int v5, v5, v16

    .line 358
    .line 359
    int-to-float v5, v5

    .line 360
    mul-float/2addr v5, v1

    .line 361
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 362
    .line 363
    .line 364
    move-result-object v16

    .line 365
    invoke-virtual/range {v16 .. v16}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 366
    .line 367
    .line 368
    move-result v14

    .line 369
    move-object/from16 v16, v3

    .line 370
    .line 371
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    invoke-direct {v6, v14, v3, v5, v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    :goto_7
    move/from16 p2, v0

    .line 380
    .line 381
    goto/16 :goto_9

    .line 382
    .line 383
    :cond_b
    move-object/from16 v16, v3

    .line 384
    .line 385
    sub-float v3, v10, v5

    .line 386
    .line 387
    cmpl-float v14, v12, v3

    .line 388
    .line 389
    if-ltz v14, :cond_d

    .line 390
    .line 391
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-le v9, v3, :cond_c

    .line 396
    .line 397
    if-gt v9, v11, :cond_c

    .line 398
    .line 399
    add-float v3, v12, v2

    .line 400
    .line 401
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    sub-int v5, v11, v5

    .line 406
    .line 407
    const/4 v14, 0x1

    .line 408
    sub-int/2addr v5, v14

    .line 409
    int-to-float v5, v5

    .line 410
    mul-float/2addr v5, v1

    .line 411
    add-float/2addr v5, v3

    .line 412
    goto :goto_8

    .line 413
    :cond_c
    const/4 v14, 0x1

    .line 414
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 415
    .line 416
    .line 417
    move-result v3

    .line 418
    sub-int v3, v11, v3

    .line 419
    .line 420
    int-to-float v3, v3

    .line 421
    mul-float/2addr v3, v1

    .line 422
    add-float v5, v3, v12

    .line 423
    .line 424
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 433
    .line 434
    .line 435
    move-result v14

    .line 436
    invoke-direct {v6, v3, v14, v5, v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    goto :goto_7

    .line 441
    :cond_d
    invoke-virtual {v15}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 442
    .line 443
    .line 444
    move-result-object v14

    .line 445
    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 446
    .line 447
    .line 448
    move-result-object v14

    .line 449
    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 450
    .line 451
    .line 452
    move-result v14

    .line 453
    add-float/2addr v14, v0

    .line 454
    mul-float/2addr v14, v10

    .line 455
    add-float v17, v0, v10

    .line 456
    .line 457
    sub-float v17, v17, v5

    .line 458
    .line 459
    div-float v14, v14, v17

    .line 460
    .line 461
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 466
    .line 467
    .line 468
    move-result v5

    .line 469
    move/from16 p2, v0

    .line 470
    .line 471
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    invoke-direct {v6, v5, v0, v14, v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    iget-object v5, v0, Lg0/c;->a:Ljava/lang/Object;

    .line 480
    .line 481
    check-cast v5, Ljava/lang/Float;

    .line 482
    .line 483
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 484
    .line 485
    .line 486
    move-result v5

    .line 487
    cmpl-float v3, v5, v3

    .line 488
    .line 489
    if-ltz v3, :cond_e

    .line 490
    .line 491
    iget-object v3, v0, Lg0/c;->a:Ljava/lang/Object;

    .line 492
    .line 493
    check-cast v3, Ljava/lang/Float;

    .line 494
    .line 495
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 496
    .line 497
    .line 498
    move-result v3

    .line 499
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    move v12, v3

    .line 504
    move-object/from16 v16, v4

    .line 505
    .line 506
    move v11, v5

    .line 507
    :cond_e
    move-object v3, v0

    .line 508
    :goto_9
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    iget-object v5, v3, Lg0/c;->a:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast v5, Ljava/lang/Float;

    .line 515
    .line 516
    invoke-static {v5, v0, v4}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    iget-object v3, v3, Lg0/c;->b:Ljava/lang/Object;

    .line 521
    .line 522
    move-object v5, v3

    .line 523
    check-cast v5, Lde/mrapp/android/tabswitcher/model/State;

    .line 524
    .line 525
    invoke-virtual {v0, v5}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 526
    .line 527
    .line 528
    iget v0, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 529
    .line 530
    const/4 v5, -0x1

    .line 531
    if-eq v0, v5, :cond_f

    .line 532
    .line 533
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 534
    .line 535
    .line 536
    move-result v7

    .line 537
    if-le v0, v7, :cond_10

    .line 538
    .line 539
    :cond_f
    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    .line 540
    .line 541
    if-ne v3, v0, :cond_10

    .line 542
    .line 543
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    iput v0, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 548
    .line 549
    :cond_10
    move/from16 v0, p2

    .line 550
    .line 551
    move v7, v5

    .line 552
    move-object/from16 v3, v16

    .line 553
    .line 554
    const/4 v14, 0x1

    .line 555
    goto/16 :goto_5

    .line 556
    .line 557
    :cond_11
    iget-object v0, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->dragHandler:Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragHandler;

    .line 558
    .line 559
    invoke-virtual {v0, v6}, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler;->setCallback(Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$Callback;)V

    .line 560
    .line 561
    .line 562
    return-object v8
.end method

.method private calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F
    .locals 3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Z)F

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-gt p1, v1, :cond_0

    const v1, 0x3f28f5c3    # 0.66f

    :goto_0
    mul-float/2addr v0, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const v1, 0x3ea8f5c3    # 0.33f

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    const v1, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3e800000    # 0.25f

    goto :goto_0

    :goto_1
    if-le p1, v2, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p2

    if-ne p1, p2, :cond_3

    const/high16 p1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, p1

    :cond_3
    return v0
.end method

.method private calculateMinTabSpacing(I)F
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    move-result p1

    const/high16 v0, 0x3ec00000    # 0.375f

    mul-float/2addr p1, v0

    return p1
.end method

.method private calculateNonLinearPosition(FF)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateAttachedPosition(I)F

    move-result v0

    div-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v1

    invoke-direct {p0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMinTabSpacing(I)F

    move-result v1

    sub-float/2addr p1, v1

    sub-float/2addr p2, v1

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    return p1
.end method

.method private calculateNonLinearPosition(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;)F
    .locals 1

    .line 2
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result p2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    move-result p1

    invoke-direct {p0, p2, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateNonLinearPosition(FF)F

    move-result p1

    return p1
.end method

.method private calculatePositionAndStateWhenStackedAtEnd(I)Lg0/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lg0/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Z)F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->stackedTabCount:I

    .line 13
    .line 14
    if-ge p1, v1, :cond_0

    .line 15
    .line 16
    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabInset:I

    .line 17
    .line 18
    int-to-float v1, v1

    .line 19
    sub-float/2addr v0, v1

    .line 20
    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->stackedTabSpacing:I

    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    mul-int/2addr p1, v1

    .line 25
    int-to-float p1, p1

    .line 26
    sub-float/2addr v0, p1

    .line 27
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->STACKED_END:Lde/mrapp/android/tabswitcher/model/State;

    .line 32
    .line 33
    new-instance v1, Lg0/c;

    .line 34
    .line 35
    invoke-direct {v1, p1, v0}, Lg0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_0
    iget p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabInset:I

    .line 40
    .line 41
    int-to-float p1, p1

    .line 42
    sub-float/2addr v0, p1

    .line 43
    iget p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->stackedTabSpacing:I

    .line 44
    .line 45
    mul-int/2addr p1, v1

    .line 46
    int-to-float p1, p1

    .line 47
    sub-float/2addr v0, p1

    .line 48
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    .line 53
    .line 54
    new-instance v1, Lg0/c;

    .line 55
    .line 56
    invoke-direct {v1, p1, v0}, Lg0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-object v1
.end method

.method private calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/State;)Lg0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lde/mrapp/android/tabswitcher/model/State;",
            ")",
            "Lg0/c;"
        }
    .end annotation

    sub-int v0, p1, p2

    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->stackedTabCount:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->stackedTabSpacing:I

    add-int/lit8 p2, p2, 0x1

    sub-int/2addr p1, p2

    mul-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    if-eqz p3, :cond_1

    sget-object p2, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    .line 1
    :goto_1
    new-instance p3, Lg0/c;

    invoke-direct {p3, p1, p2}, Lg0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3

    :cond_2
    iget p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->stackedTabSpacing:I

    mul-int/2addr p1, v1

    int-to-float p1, p1

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    if-eqz p3, :cond_4

    sget-object p2, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne p3, p2, :cond_3

    goto :goto_2

    :cond_3
    sget-object p2, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    goto :goto_3

    :cond_4
    :goto_2
    sget-object p2, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    .line 3
    :goto_3
    new-instance p3, Lg0/c;

    invoke-direct {p3, p1, p2}, Lg0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method private calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lde/mrapp/android/tabswitcher/model/TabItem;",
            ")",
            "Lg0/c;"
        }
    .end annotation

    .line 4
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p3

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/State;)Lg0/c;

    move-result-object p1

    return-object p1
.end method

.method private calculatePositionWhenDraggingToEnd(FLde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;)Z
    .locals 3

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateEndPosition(I)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-direct {p0, p2, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateNonLinearPosition(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;)F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-direct {p0, v0, v1, p1, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    iget-object v0, p1, Lg0/c;->a:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Ljava/lang/Float;

    .line 55
    .line 56
    :goto_0
    invoke-static {v0, p3, p2}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iget-object p1, p1, Lg0/c;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    .line 77
    .line 78
    if-ne v0, v1, :cond_2

    .line 79
    .line 80
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    :cond_2
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    .line 95
    .line 96
    if-ne v0, v2, :cond_4

    .line 97
    .line 98
    :cond_3
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-direct {p0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateEndPosition(I)F

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-float/2addr v0, p1

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-direct {p0, v0, v1, p1, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    iget-object v0, p1, Lg0/c;->a:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v0, Ljava/lang/Float;

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-ne p1, v1, :cond_5

    .line 153
    .line 154
    const/4 p1, 0x1

    .line 155
    return p1

    .line 156
    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 157
    return p1
.end method

.method private calculatePositionWhenDraggingToStart(FLde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;)Z
    .locals 3

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-direct {p0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateAttachedPosition(I)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    cmpl-float v0, v0, v1

    .line 36
    .line 37
    if-lez v0, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-direct {p0, p2, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateNonLinearPosition(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-direct {p0, v0, v1, p1, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    iget-object v0, p1, Lg0/c;->a:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Ljava/lang/Float;

    .line 67
    .line 68
    :goto_0
    invoke-static {v0, p3, p2}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    iget-object p1, p1, Lg0/c;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    .line 75
    .line 76
    invoke-virtual {p2, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    .line 90
    .line 91
    if-ne v0, v1, :cond_2

    .line 92
    .line 93
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    add-float/2addr v0, p1

    .line 102
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-direct {p0, p1, v1, v0, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    iget-object v0, p1, Lg0/c;->a:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v0, Ljava/lang/Float;

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    .line 136
    .line 137
    const/4 v1, 0x1

    .line 138
    if-ne p1, v0, :cond_3

    .line 139
    .line 140
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    invoke-direct {p0, v0, v2, p1, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    iget-object v0, p1, Lg0/c;->a:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Ljava/lang/Float;

    .line 171
    .line 172
    invoke-static {v0, p3, p2}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    iget-object p1, p1, Lg0/c;->b:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    .line 179
    .line 180
    invoke-virtual {p2, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 181
    .line 182
    .line 183
    return v1

    .line 184
    :cond_3
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    sget-object p3, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    .line 193
    .line 194
    if-eq p1, p3, :cond_5

    .line 195
    .line 196
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    sget-object p2, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    .line 205
    .line 206
    if-ne p1, p2, :cond_4

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_4
    :goto_2
    const/4 p1, 0x0

    .line 210
    return p1

    .line 211
    :cond_5
    :goto_3
    return v1
.end method

.method private calculatePositionsWhenDraggingToEnd(F)V
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 3
    .line 4
    new-instance v1, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    .line 5
    .line 6
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 11
    .line 12
    invoke-direct {v1, v2, v3}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    .line 27
    .line 28
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    sub-int/2addr v4, v5

    .line 53
    const/4 v5, 0x1

    .line 54
    if-le v4, v5, :cond_0

    .line 55
    .line 56
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {p0, p1, v2, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionWhenDraggingToEnd(FLde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iget v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 65
    .line 66
    if-ne v4, v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    sget-object v5, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    .line 77
    .line 78
    if-ne v4, v5, :cond_1

    .line 79
    .line 80
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    iput v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v6}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-direct {p0, v4, v5, v6, v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    iget-object v6, v4, Lg0/c;->a:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v6, Ljava/lang/Float;

    .line 122
    .line 123
    invoke-static {v6, v5, v2}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    iget-object v4, v4, Lg0/c;->b:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v4, Lde/mrapp/android/tabswitcher/model/State;

    .line 130
    .line 131
    invoke-virtual {v5, v4}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    return-void
.end method

.method private calculatePositionsWhenDraggingToStart(F)V
    .locals 7

    .line 1
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    .line 24
    .line 25
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    sub-int/2addr v4, v5

    .line 51
    if-le v4, v3, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-direct {p0, p1, v1, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionWhenDraggingToStart(FLde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-direct {p0, v3, v4, v5, v6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iget-object v5, v3, Lg0/c;->a:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v5, Ljava/lang/Float;

    .line 97
    .line 98
    invoke-static {v5, v4, v1}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    iget-object v3, v3, Lg0/c;->b:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v3, Lde/mrapp/android/tabswitcher/model/State;

    .line 105
    .line 106
    invoke-virtual {v4, v3}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    invoke-direct {p0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    iget p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 114
    .line 115
    if-lez p1, :cond_4

    .line 116
    .line 117
    sub-int/2addr p1, v3

    .line 118
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    .line 119
    .line 120
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 125
    .line 126
    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v3}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    .line 140
    .line 141
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    if-eqz v1, :cond_4

    .line 150
    .line 151
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-ge v4, p1, :cond_3

    .line 168
    .line 169
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    invoke-direct {p0, v4, v5, v3, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    iget-object v6, v4, Lg0/c;->a:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v6, Ljava/lang/Float;

    .line 192
    .line 193
    invoke-static {v6, v5, v2}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    iget-object v4, v4, Lg0/c;->b:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v4, Lde/mrapp/android/tabswitcher/model/State;

    .line 200
    .line 201
    invoke-virtual {v5, v4}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 202
    .line 203
    .line 204
    invoke-direct {p0, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    sget-object v5, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    .line 216
    .line 217
    if-ne v4, v5, :cond_4

    .line 218
    .line 219
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    iput v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 224
    .line 225
    :cond_3
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    invoke-direct {p0, v4, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    add-float/2addr v3, v2

    .line 238
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {v2, v3}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-nez v2, :cond_2

    .line 250
    .line 251
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    const/4 v5, 0x0

    .line 264
    invoke-direct {p0, v2, v4, v3, v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    iget-object v4, v2, Lg0/c;->a:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v4, Ljava/lang/Float;

    .line 275
    .line 276
    invoke-static {v4, v3, v1}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    iget-object v2, v2, Lg0/c;->b:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v2, Lde/mrapp/android/tabswitcher/model/State;

    .line 283
    .line 284
    invoke-virtual {v3, v2}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 285
    .line 286
    .line 287
    invoke-direct {p0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    sget-object v3, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    .line 299
    .line 300
    if-ne v2, v3, :cond_2

    .line 301
    .line 302
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    iput v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 307
    .line 308
    goto/16 :goto_2

    .line 309
    .line 310
    :cond_4
    return-void
.end method

.method private calculateSwipePosition()F
    .locals 3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Z)F

    move-result v0

    return v0
.end method

.method private clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/State;)Lg0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF",
            "Lde/mrapp/android/tabswitcher/model/State;",
            ")",
            "Lg0/c;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/State;)Lg0/c;

    move-result-object p1

    iget-object p4, p1, Lg0/c;->a:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    cmpg-float v0, p3, p4

    if-gtz v0, :cond_0

    iget-object p1, p1, Lg0/c;->b:Ljava/lang/Object;

    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 1
    new-instance p3, Lg0/c;

    invoke-direct {p3, p2, p1}, Lg0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtEnd(I)Lg0/c;

    move-result-object p1

    iget-object p2, p1, Lg0/c;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p4, p3, p2

    if-ltz p4, :cond_1

    iget-object p1, p1, Lg0/c;->b:Ljava/lang/Object;

    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 3
    new-instance p3, Lg0/c;

    invoke-direct {p3, p2, p1}, Lg0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3

    .line 4
    :cond_1
    sget-object p1, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 5
    new-instance p3, Lg0/c;

    invoke-direct {p3, p2, p1}, Lg0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method private clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF",
            "Lde/mrapp/android/tabswitcher/model/TabItem;",
            ")",
            "Lg0/c;"
        }
    .end annotation

    .line 6
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p4

    invoke-virtual {p4}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/State;)Lg0/c;

    move-result-object p1

    return-object p1
.end method

.method private createAddSelectedTabLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$7;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$7;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-object v0
.end method

.method private createBottomMarginLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$11;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$11;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-object v0
.end method

.method private createClearAnimationListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$15;

    invoke-direct {v0, p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$15;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)V

    return-object v0
.end method

.method private createHideSwitcherAnimationListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$14;

    invoke-direct {v0, p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$14;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)V

    return-object v0
.end method

.method private createHideSwitcherLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$4;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$4;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-object v0
.end method

.method private createInflateViewLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$12;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$12;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object v0
.end method

.method private createPeekAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/PeekAnimation;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$21;

    invoke-direct {v0, p0, p2, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$21;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/PeekAnimation;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-object v0
.end method

.method private createPeekLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/PeekAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$9;

    invoke-direct {v0, p0, p2, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$9;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/PeekAnimation;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-object v0
.end method

.method private createRelocateAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$18;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$18;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-object v0
.end method

.method private createRelocateLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;FLde/mrapp/android/tabswitcher/model/Tag;JLandroid/animation/Animator$AnimatorListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 9

    new-instance v8, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;FLde/mrapp/android/tabswitcher/model/Tag;JLandroid/animation/Animator$AnimatorListener;)V

    return-object v8
.end method

.method private createRemoveAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$17;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$17;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-object v0
.end method

.method private createRemoveLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$5;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$5;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V

    return-object v0
.end method

.method private createRevealLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/RevealAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$8;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$8;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/RevealAnimation;)V

    return-object v0
.end method

.method private createRevertOvershootAnimationListener(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private createRevertPeekAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$22;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$22;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-object v0
.end method

.method private createRevertStartOvershootAnimationListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$20;

    invoke-direct {v0, p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$20;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)V

    return-object v0
.end method

.method private createShowSwitcherLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$3;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$3;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-object v0
.end method

.method private createSwipeAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$16;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$16;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-object v0
.end method

.method private createSwipeLayoutListener([Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V

    return-object v0
.end method

.method private createUpdateViewAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$13;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$13;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-object v0
.end method

.method private createZoomInAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$24;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$24;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-object v0
.end method

.method private createZoomOutAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/PeekAnimation;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$23;

    invoke-direct {v0, p0, p2, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$23;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/PeekAnimation;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-object v0
.end method

.method private inflateAndUpdateView(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createInflateViewLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewBottomMargin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateView(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Integer;)V

    return-void
.end method

.method private inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-virtual {v0, p1}, Lde/mrapp/android/util/view/AttachedViewRecycler;->remove(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateAndUpdateView(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->updateView(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private varargs inflateView(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-virtual {v0, p1, p3}, Lde/mrapp/android/util/view/AbstractViewRecycler;->inflate(Ljava/lang/Object;[Ljava/lang/Object;)Lg0/c;

    move-result-object p1

    if-eqz p2, :cond_1

    iget-object p3, p1, Lg0/c;->b:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p1, p1, Lg0/c;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$LayoutListenerWrapper;

    invoke-direct {v0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$LayoutListenerWrapper;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;->onGlobalLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method private isOvershootingAtEnd(Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;)Z
    .locals 3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->getItem(I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v2}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->getItem(I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isOvershootingAtStart()Z
    .locals 4

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return v1

    :cond_0
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v0, v2, v3}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;->getItem(I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    sget-object v3, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method private isStackedAtStart(I)Z
    .locals 3

    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private relocate(Lde/mrapp/android/tabswitcher/model/TabItem;FLde/mrapp/android/tabswitcher/model/Tag;J)V
    .locals 8

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRelocateAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRelocate(Lde/mrapp/android/tabswitcher/model/TabItem;FLde/mrapp/android/tabswitcher/model/Tag;JLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRelocateAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRelocateLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;FLde/mrapp/android/tabswitcher/model/Tag;JLandroid/animation/Animator$AnimatorListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateAndUpdateView(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private relocateWhenAddingFloatingTabs([Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;ZFZ)[Lde/mrapp/android/tabswitcher/model/TabItem;
    .locals 32

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 10
    .line 11
    .line 12
    move-result v8

    .line 13
    const/4 v9, 0x0

    .line 14
    aget-object v10, v7, v9

    .line 15
    .line 16
    array-length v0, v7

    .line 17
    const/4 v11, 0x1

    .line 18
    sub-int/2addr v0, v11

    .line 19
    aget-object v12, v7, v0

    .line 20
    .line 21
    invoke-virtual/range {p2 .. p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/high16 v13, 0x40000000    # 2.0f

    .line 30
    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    if-eqz p5, :cond_0

    .line 34
    .line 35
    invoke-virtual {v12}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/lit8 v2, v8, -0x1

    .line 40
    .line 41
    if-ge v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v12}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v1, v11

    .line 48
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v3, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 53
    .line 54
    invoke-static {v2, v3, v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    sub-float v1, v0, v1

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    div-float/2addr v1, v13

    .line 73
    sub-float/2addr v0, v1

    .line 74
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v2, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 87
    .line 88
    invoke-static {v1, v2, v14}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const/4 v15, 0x0

    .line 93
    invoke-direct {v6, v8, v15}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    .line 94
    .line 95
    .line 96
    move-result v16

    .line 97
    invoke-direct {v6, v8, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    .line 98
    .line 99
    .line 100
    move-result v17

    .line 101
    invoke-direct {v6, v8}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMinTabSpacing(I)F

    .line 102
    .line 103
    .line 104
    move-result v18

    .line 105
    invoke-virtual/range {p2 .. p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    new-instance v4, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    .line 110
    .line 111
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iget-object v3, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 116
    .line 117
    invoke-direct {v4, v2, v3}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    .line 118
    .line 119
    .line 120
    array-length v5, v7

    .line 121
    move v2, v0

    .line 122
    move v3, v1

    .line 123
    move v15, v9

    .line 124
    move-object/from16 v0, p2

    .line 125
    .line 126
    move v1, v2

    .line 127
    :goto_0
    if-ge v15, v5, :cond_e

    .line 128
    .line 129
    aget-object v19, v7, v15

    .line 130
    .line 131
    invoke-virtual/range {v19 .. v19}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    invoke-virtual {v4, v13}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    invoke-virtual {v13, v11}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    .line 140
    .line 141
    .line 142
    move-result-object v13

    .line 143
    invoke-virtual {v13}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->create()Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    move/from16 v21, v2

    .line 148
    .line 149
    move v9, v3

    .line 150
    move/from16 v22, v9

    .line 151
    .line 152
    move v2, v1

    .line 153
    move v3, v2

    .line 154
    move-object v1, v0

    .line 155
    :goto_1
    invoke-virtual {v13}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    if-eqz v11, :cond_d

    .line 160
    .line 161
    move-object/from16 v24, v1

    .line 162
    .line 163
    invoke-virtual {v13}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->peek()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-direct {v6, v8, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    .line 168
    .line 169
    .line 170
    move-result v25

    .line 171
    move-object/from16 v26, v0

    .line 172
    .line 173
    if-eqz p3, :cond_3

    .line 174
    .line 175
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    move/from16 v27, v3

    .line 180
    .line 181
    invoke-virtual/range {v19 .. v19}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-ne v0, v3, :cond_4

    .line 186
    .line 187
    if-eqz v1, :cond_1

    .line 188
    .line 189
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    goto :goto_2

    .line 198
    :cond_1
    const/4 v0, 0x0

    .line 199
    :goto_2
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    sget-object v9, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    .line 204
    .line 205
    if-ne v0, v9, :cond_2

    .line 206
    .line 207
    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    .line 208
    .line 209
    :cond_2
    invoke-direct {v6, v8, v3, v2, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/State;)Lg0/c;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    iget-object v2, v0, Lg0/c;->a:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v2, Ljava/lang/Float;

    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 218
    .line 219
    .line 220
    move-result v21

    .line 221
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    move-object v9, v0

    .line 226
    move/from16 v28, v2

    .line 227
    .line 228
    move-object/from16 v24, v11

    .line 229
    .line 230
    move-object/from16 v26, v24

    .line 231
    .line 232
    move/from16 v22, v21

    .line 233
    .line 234
    move/from16 v25, v22

    .line 235
    .line 236
    move/from16 v27, v25

    .line 237
    .line 238
    move/from16 v21, v28

    .line 239
    .line 240
    goto/16 :goto_4

    .line 241
    .line 242
    :cond_3
    move/from16 v27, v3

    .line 243
    .line 244
    :cond_4
    sub-float v0, p4, v25

    .line 245
    .line 246
    cmpl-float v3, v2, v0

    .line 247
    .line 248
    if-ltz v3, :cond_6

    .line 249
    .line 250
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-le v14, v0, :cond_5

    .line 255
    .line 256
    if-gt v14, v9, :cond_5

    .line 257
    .line 258
    add-float v0, v2, v17

    .line 259
    .line 260
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    sub-int v3, v9, v3

    .line 265
    .line 266
    const/16 v23, 0x1

    .line 267
    .line 268
    add-int/lit8 v3, v3, -0x1

    .line 269
    .line 270
    int-to-float v3, v3

    .line 271
    mul-float v3, v3, v16

    .line 272
    .line 273
    add-float/2addr v3, v0

    .line 274
    goto :goto_3

    .line 275
    :cond_5
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    sub-int v0, v9, v0

    .line 280
    .line 281
    int-to-float v0, v0

    .line 282
    mul-float v0, v0, v16

    .line 283
    .line 284
    add-float v3, v0, v2

    .line 285
    .line 286
    :goto_3
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    invoke-direct {v6, v8, v0, v3, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    move/from16 v25, v2

    .line 295
    .line 296
    move/from16 v28, v22

    .line 297
    .line 298
    move/from16 v22, v21

    .line 299
    .line 300
    move/from16 v21, v9

    .line 301
    .line 302
    move-object v9, v0

    .line 303
    goto :goto_4

    .line 304
    :cond_6
    invoke-virtual {v13}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    add-float v3, v3, v18

    .line 317
    .line 318
    mul-float v3, v3, p4

    .line 319
    .line 320
    add-float v28, v18, p4

    .line 321
    .line 322
    sub-float v28, v28, v25

    .line 323
    .line 324
    div-float v3, v3, v28

    .line 325
    .line 326
    move/from16 v25, v2

    .line 327
    .line 328
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    invoke-direct {v6, v8, v2, v3, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    iget-object v3, v2, Lg0/c;->a:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v3, Ljava/lang/Float;

    .line 339
    .line 340
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    cmpl-float v0, v3, v0

    .line 345
    .line 346
    if-ltz v0, :cond_7

    .line 347
    .line 348
    iget-object v0, v2, Lg0/c;->a:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v0, Ljava/lang/Float;

    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    move/from16 v25, v0

    .line 361
    .line 362
    move-object v9, v2

    .line 363
    move-object/from16 v26, v11

    .line 364
    .line 365
    move/from16 v28, v22

    .line 366
    .line 367
    move/from16 v22, v21

    .line 368
    .line 369
    move/from16 v21, v3

    .line 370
    .line 371
    goto :goto_4

    .line 372
    :cond_7
    move/from16 v28, v22

    .line 373
    .line 374
    move/from16 v22, v21

    .line 375
    .line 376
    move/from16 v21, v9

    .line 377
    .line 378
    move-object v9, v2

    .line 379
    :goto_4
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    invoke-virtual {v10}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    if-lt v0, v2, :cond_9

    .line 388
    .line 389
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    invoke-virtual {v12}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    if-gt v0, v2, :cond_9

    .line 398
    .line 399
    if-nez p3, :cond_8

    .line 400
    .line 401
    if-eqz p5, :cond_8

    .line 402
    .line 403
    const/4 v0, 0x3

    .line 404
    if-le v8, v0, :cond_8

    .line 405
    .line 406
    invoke-virtual {v13}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    iget-object v2, v9, Lg0/c;->a:Ljava/lang/Object;

    .line 419
    .line 420
    check-cast v2, Ljava/lang/Float;

    .line 421
    .line 422
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    iget-object v3, v9, Lg0/c;->a:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast v3, Ljava/lang/Float;

    .line 429
    .line 430
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 431
    .line 432
    .line 433
    move-result v3

    .line 434
    sub-float/2addr v3, v0

    .line 435
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    const/high16 v20, 0x40000000    # 2.0f

    .line 440
    .line 441
    div-float v0, v0, v20

    .line 442
    .line 443
    sub-float/2addr v2, v0

    .line 444
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    invoke-direct {v6, v8, v0, v2, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 449
    .line 450
    .line 451
    move-result-object v9

    .line 452
    iget-object v0, v9, Lg0/c;->a:Ljava/lang/Object;

    .line 453
    .line 454
    check-cast v0, Ljava/lang/Float;

    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 457
    .line 458
    .line 459
    move-result v22

    .line 460
    goto :goto_5

    .line 461
    :cond_8
    const/high16 v20, 0x40000000    # 2.0f

    .line 462
    .line 463
    :goto_5
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    invoke-virtual {v10}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    sub-int/2addr v0, v1

    .line 472
    aget-object v0, v7, v0

    .line 473
    .line 474
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    iget-object v1, v9, Lg0/c;->a:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v1, Ljava/lang/Float;

    .line 481
    .line 482
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 487
    .line 488
    .line 489
    iget-object v1, v9, Lg0/c;->b:Ljava/lang/Object;

    .line 490
    .line 491
    check-cast v1, Lde/mrapp/android/tabswitcher/model/State;

    .line 492
    .line 493
    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 494
    .line 495
    .line 496
    move-object v11, v4

    .line 497
    move/from16 v31, v5

    .line 498
    .line 499
    goto :goto_6

    .line 500
    :cond_9
    const/high16 v20, 0x40000000    # 2.0f

    .line 501
    .line 502
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->clone()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    iget-object v0, v9, Lg0/c;->a:Ljava/lang/Object;

    .line 511
    .line 512
    check-cast v0, Ljava/lang/Float;

    .line 513
    .line 514
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 515
    .line 516
    .line 517
    move-result v0

    .line 518
    invoke-virtual {v3, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 519
    .line 520
    .line 521
    iget-object v0, v9, Lg0/c;->b:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v0, Lde/mrapp/android/tabswitcher/model/State;

    .line 524
    .line 525
    invoke-virtual {v3, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    if-nez v0, :cond_a

    .line 533
    .line 534
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    invoke-direct {v6, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtEnd(I)Lg0/c;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    iget-object v2, v0, Lg0/c;->a:Ljava/lang/Object;

    .line 547
    .line 548
    check-cast v2, Ljava/lang/Float;

    .line 549
    .line 550
    invoke-static {v2, v1, v11}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    iget-object v0, v0, Lg0/c;->b:Ljava/lang/Object;

    .line 555
    .line 556
    check-cast v0, Lde/mrapp/android/tabswitcher/model/State;

    .line 557
    .line 558
    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 559
    .line 560
    .line 561
    :cond_a
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    const-wide/16 v29, 0x0

    .line 566
    .line 567
    move-object/from16 v0, p0

    .line 568
    .line 569
    move-object v1, v11

    .line 570
    move-object v11, v4

    .line 571
    move/from16 v31, v5

    .line 572
    .line 573
    move-wide/from16 v4, v29

    .line 574
    .line 575
    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocate(Lde/mrapp/android/tabswitcher/model/TabItem;FLde/mrapp/android/tabswitcher/model/Tag;J)V

    .line 576
    .line 577
    .line 578
    :goto_6
    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    .line 579
    .line 580
    iget-object v1, v9, Lg0/c;->b:Ljava/lang/Object;

    .line 581
    .line 582
    if-eq v1, v0, :cond_c

    .line 583
    .line 584
    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->STACKED_END:Lde/mrapp/android/tabswitcher/model/State;

    .line 585
    .line 586
    if-ne v1, v0, :cond_b

    .line 587
    .line 588
    goto :goto_7

    .line 589
    :cond_b
    move-object v4, v11

    .line 590
    move/from16 v9, v21

    .line 591
    .line 592
    move/from16 v21, v22

    .line 593
    .line 594
    move-object/from16 v1, v24

    .line 595
    .line 596
    move/from16 v2, v25

    .line 597
    .line 598
    move-object/from16 v0, v26

    .line 599
    .line 600
    move/from16 v3, v27

    .line 601
    .line 602
    move/from16 v22, v28

    .line 603
    .line 604
    move/from16 v5, v31

    .line 605
    .line 606
    goto/16 :goto_1

    .line 607
    .line 608
    :cond_c
    :goto_7
    iget v0, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 609
    .line 610
    const/4 v1, 0x1

    .line 611
    add-int/2addr v0, v1

    .line 612
    iput v0, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 613
    .line 614
    move/from16 v2, v22

    .line 615
    .line 616
    move-object/from16 v0, v24

    .line 617
    .line 618
    move/from16 v3, v28

    .line 619
    .line 620
    goto :goto_8

    .line 621
    :cond_d
    move-object/from16 v24, v1

    .line 622
    .line 623
    move/from16 v27, v3

    .line 624
    .line 625
    move-object v11, v4

    .line 626
    move/from16 v31, v5

    .line 627
    .line 628
    const/4 v1, 0x1

    .line 629
    const/high16 v20, 0x40000000    # 2.0f

    .line 630
    .line 631
    move/from16 v2, v21

    .line 632
    .line 633
    move/from16 v3, v22

    .line 634
    .line 635
    move-object/from16 v0, v24

    .line 636
    .line 637
    :goto_8
    add-int/lit8 v15, v15, 0x1

    .line 638
    .line 639
    move-object v4, v11

    .line 640
    move/from16 v13, v20

    .line 641
    .line 642
    move/from16 v5, v31

    .line 643
    .line 644
    move v11, v1

    .line 645
    move/from16 v1, v27

    .line 646
    .line 647
    goto/16 :goto_0

    .line 648
    .line 649
    :cond_e
    move v1, v11

    .line 650
    move-object v11, v4

    .line 651
    if-eqz p5, :cond_11

    .line 652
    .line 653
    const/4 v0, 0x3

    .line 654
    if-le v8, v0, :cond_11

    .line 655
    .line 656
    invoke-virtual {v12}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    add-int/2addr v0, v1

    .line 661
    invoke-virtual {v11, v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    const/4 v1, 0x0

    .line 666
    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->create()Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;

    .line 671
    .line 672
    .line 673
    move-result-object v9

    .line 674
    invoke-virtual {v12}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    :goto_9
    invoke-virtual {v9}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    if-eqz v1, :cond_11

    .line 683
    .line 684
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 685
    .line 686
    .line 687
    move-result v3

    .line 688
    add-int/lit8 v4, v8, -0x1

    .line 689
    .line 690
    if-ge v3, v4, :cond_11

    .line 691
    .line 692
    invoke-direct {v6, v8, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    invoke-direct {v6, v2, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateNonLinearPosition(FF)F

    .line 697
    .line 698
    .line 699
    move-result v2

    .line 700
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 701
    .line 702
    .line 703
    move-result v3

    .line 704
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    invoke-direct {v6, v8, v3, v2, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/State;)Lg0/c;

    .line 709
    .line 710
    .line 711
    move-result-object v10

    .line 712
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->clone()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 717
    .line 718
    .line 719
    move-result-object v11

    .line 720
    iget-object v0, v10, Lg0/c;->a:Ljava/lang/Object;

    .line 721
    .line 722
    check-cast v0, Ljava/lang/Float;

    .line 723
    .line 724
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 725
    .line 726
    .line 727
    move-result v0

    .line 728
    invoke-virtual {v11, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 729
    .line 730
    .line 731
    iget-object v12, v10, Lg0/c;->b:Ljava/lang/Object;

    .line 732
    .line 733
    move-object v0, v12

    .line 734
    check-cast v0, Lde/mrapp/android/tabswitcher/model/State;

    .line 735
    .line 736
    invoke-virtual {v11, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    if-nez v0, :cond_f

    .line 744
    .line 745
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    invoke-virtual {v9}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 750
    .line 751
    .line 752
    move-result-object v2

    .line 753
    invoke-direct {v6, v8, v0, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    iget-object v3, v0, Lg0/c;->a:Ljava/lang/Object;

    .line 762
    .line 763
    check-cast v3, Ljava/lang/Float;

    .line 764
    .line 765
    invoke-static {v3, v2, v1}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    iget-object v0, v0, Lg0/c;->b:Ljava/lang/Object;

    .line 770
    .line 771
    check-cast v0, Lde/mrapp/android/tabswitcher/model/State;

    .line 772
    .line 773
    invoke-virtual {v2, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 774
    .line 775
    .line 776
    :cond_f
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 777
    .line 778
    .line 779
    move-result v2

    .line 780
    const-wide/16 v4, 0x0

    .line 781
    .line 782
    move-object/from16 v0, p0

    .line 783
    .line 784
    move-object v3, v11

    .line 785
    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocate(Lde/mrapp/android/tabswitcher/model/TabItem;FLde/mrapp/android/tabswitcher/model/Tag;J)V

    .line 786
    .line 787
    .line 788
    iget-object v0, v10, Lg0/c;->a:Ljava/lang/Object;

    .line 789
    .line 790
    check-cast v0, Ljava/lang/Float;

    .line 791
    .line 792
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 793
    .line 794
    .line 795
    move-result v2

    .line 796
    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    .line 797
    .line 798
    if-eq v12, v0, :cond_11

    .line 799
    .line 800
    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    .line 801
    .line 802
    if-ne v12, v0, :cond_10

    .line 803
    .line 804
    goto :goto_a

    .line 805
    :cond_10
    move-object v0, v11

    .line 806
    goto/16 :goto_9

    .line 807
    .line 808
    :cond_11
    :goto_a
    return-object v7
.end method

.method private relocateWhenAddingHiddenTabs([Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;)[Lde/mrapp/android/tabswitcher/model/TabItem;
    .locals 6

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result p2

    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->isStackedAtStart(I)Z

    move-result p2

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v3

    if-eqz p2, :cond_1

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v3

    iget-object v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v5}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v4

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v5

    invoke-direct {p0, v4, v5, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    move-result-object v3

    goto :goto_2

    :cond_1
    invoke-direct {p0, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtEnd(I)Lg0/c;

    move-result-object v3

    :goto_2
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v2

    iget-object v4, v3, Lg0/c;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    iget-object v3, v3, Lg0/c;->b:Ljava/lang/Object;

    check-cast v3, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v2, v3}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private relocateWhenAddingStackedTabs(Z[Lde/mrapp/android/tabswitcher/model/TabItem;)[Lde/mrapp/android/tabswitcher/model/TabItem;
    .locals 11

    if-nez p1, :cond_0

    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    array-length v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p2, v2

    new-instance v3, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v4

    iget-object v5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v3, v4, v5}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v4

    :goto_0
    invoke-virtual {v3, v4}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    move-result-object v3

    check-cast v3, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {v3, p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    move-result-object v3

    check-cast v3, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v4

    sget-object v6, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v4, v6, :cond_2

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v4

    sget-object v6, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v4, v6, :cond_2

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v4

    sget-object v6, Lde/mrapp/android/tabswitcher/model/State;->STACKED_END:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v4, v6, :cond_2

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v4

    sget-object v6, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v4, v6, :cond_7

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->peek()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v4

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v4

    :goto_2
    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v6

    if-eqz p1, :cond_4

    invoke-direct {p0, v0, v6, v4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    move-result-object v6

    goto :goto_3

    :cond_4
    invoke-direct {p0, v6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtEnd(I)Lg0/c;

    move-result-object v6

    :goto_3
    if-eqz p1, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v7

    invoke-virtual {v7}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v7

    sget-object v8, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v7, v8, :cond_5

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v7

    invoke-virtual {v7}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v7

    iget-object v8, v6, Lg0/c;->a:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-direct {p0, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMinTabSpacing(I)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    invoke-direct {p0, v5, v4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateNonLinearPosition(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;)F

    move-result v6

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v7

    invoke-direct {p0, v0, v7, v6, v4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    move-result-object v6

    :cond_5
    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v4

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v7

    if-lt v4, v7, :cond_6

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v4

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v7

    if-gt v4, v7, :cond_6

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v4

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v5

    sub-int/2addr v4, v5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v4

    iget-object v5, v6, Lg0/c;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    iget-object v5, v6, Lg0/c;->b:Ljava/lang/Object;

    check-cast v5, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v4, v5}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/Tag;->clone()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v7

    iget-object v4, v6, Lg0/c;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v7, v4}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    iget-object v4, v6, Lg0/c;->b:Ljava/lang/Object;

    check-cast v4, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v7, v4}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    invoke-virtual {v7}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v6

    const-wide/16 v8, 0x0

    invoke-direct {p0, v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRelocateAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v10

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRelocate(Lde/mrapp/android/tabswitcher/model/TabItem;FLde/mrapp/android/tabswitcher/model/Tag;JLandroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_1

    :cond_7
    return-object p2
.end method

.method private relocateWhenRemovingFloatingTab(Lde/mrapp/android/tabswitcher/model/TabItem;FZ)V
    .locals 19

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v0

    invoke-direct {v6, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMinTabSpacing(I)F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v1

    if-eqz p3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v3

    iget-object v4, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {v3, v4, v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    invoke-direct {v6, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateEndPosition(I)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    iget-object v2, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {v1, v2, v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v2

    invoke-direct {v6, v2, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    move-result v12

    new-instance v1, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    iget-object v3, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v1, v2, v3}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {v1, v2}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {v1, v9}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object v13

    move-object/from16 v1, p1

    move v2, v10

    :goto_1
    invoke-virtual {v13}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v13}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->peek()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v5

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v5

    invoke-direct {v6, v5, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    move-result v5

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v15

    sub-int/2addr v15, v9

    if-ne v14, v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v0

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v1

    invoke-direct {v6, v0, v1, v2, v4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    move-result-object v0

    iget-object v1, v0, Lg0/c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v1

    move v9, v1

    move v15, v2

    move-object v14, v3

    goto/16 :goto_4

    :cond_2
    sub-float v14, p2, v5

    cmpl-float v15, v2, v14

    if-ltz v15, :cond_5

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v5

    if-le v11, v5, :cond_3

    if-gt v11, v0, :cond_3

    add-float v5, v2, v12

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v14

    sub-int v14, v0, v14

    sub-int/2addr v14, v9

    int-to-float v14, v14

    mul-float/2addr v14, v7

    add-float/2addr v14, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    add-float v14, v5, v2

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v5

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v5

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v15

    invoke-direct {v6, v5, v15, v14, v4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    move-result-object v4

    :cond_4
    move v9, v0

    move-object v14, v1

    move v15, v2

    :goto_3
    move-object v0, v4

    goto :goto_4

    :cond_5
    invoke-virtual {v13}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v15

    invoke-virtual {v15}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v15

    invoke-virtual {v15}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v15

    add-float/2addr v15, v8

    mul-float v15, v15, p2

    add-float v16, v8, p2

    sub-float v16, v16, v5

    div-float v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v5

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v5

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v9

    invoke-direct {v6, v5, v9, v15, v4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    move-result-object v4

    iget-object v5, v4, Lg0/c;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v14

    if-ltz v5, :cond_4

    iget-object v0, v4, Lg0/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v0

    move v9, v0

    move v15, v2

    move-object v14, v3

    goto :goto_3

    :goto_4
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/Tag;->clone()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v4

    iget-object v1, v0, Lg0/c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v4, v1}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    iget-object v0, v0, Lg0/c;->b:Ljava/lang/Object;

    check-cast v0, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v4, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v0

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    move/from16 v17, v7

    move/from16 v18, v8

    iget-wide v7, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateAnimationDelay:J

    mul-long/2addr v7, v0

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v0

    invoke-direct {v6, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtEnd(I)Lg0/c;

    move-result-object v0

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    iget-object v2, v0, Lg0/c;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    .line 1
    invoke-static {v2, v1, v3}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    .line 2
    iget-object v0, v0, Lg0/c;->b:Ljava/lang/Object;

    check-cast v0, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    :cond_6
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v3, v4

    move-wide v4, v7

    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocate(Lde/mrapp/android/tabswitcher/model/TabItem;FLde/mrapp/android/tabswitcher/model/Tag;J)V

    move v0, v9

    move-object v1, v14

    move v2, v15

    move/from16 v7, v17

    move/from16 v8, v18

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_7
    if-eqz p3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v0, v1, :cond_a

    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    iget-object v2, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    :goto_5
    invoke-virtual {v7}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v2

    invoke-direct {v6, v2, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(ILde/mrapp/android/tabswitcher/model/TabItem;)F

    move-result v2

    invoke-direct {v6, v10, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateNonLinearPosition(FF)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v3

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v4

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    invoke-direct {v6, v3, v4, v2, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clipTabPosition(IIFLde/mrapp/android/tabswitcher/model/State;)Lg0/c;

    move-result-object v8

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->clone()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v9

    iget-object v0, v8, Lg0/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v9, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    iget-object v10, v8, Lg0/c;->b:Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v9, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v0

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v11, 0x1

    add-int/2addr v0, v11

    int-to-long v2, v0

    iget-wide v4, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateAnimationDelay:J

    mul-long/2addr v4, v2

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v0

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v2

    invoke-virtual {v7}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v3

    invoke-direct {v6, v0, v2, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    move-result-object v0

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v2

    iget-object v3, v0, Lg0/c;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    .line 3
    invoke-static {v3, v2, v1}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v2

    .line 4
    iget-object v0, v0, Lg0/c;->b:Ljava/lang/Object;

    check-cast v0, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v2, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    :cond_8
    invoke-virtual {v9}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v2

    move-object/from16 v0, p0

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocate(Lde/mrapp/android/tabswitcher/model/TabItem;FLde/mrapp/android/tabswitcher/model/Tag;J)V

    iget-object v0, v8, Lg0/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v10, v1, :cond_a

    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v10, v1, :cond_9

    goto :goto_6

    :cond_9
    move v10, v0

    move-object v0, v9

    goto/16 :goto_5

    :cond_a
    :goto_6
    return-void
.end method

.method private relocateWhenRemovingStackedTab(Lde/mrapp/android/tabswitcher/model/TabItem;Z)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    add-int/2addr v0, v1

    .line 11
    new-instance v1, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    .line 12
    .line 13
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 18
    .line 19
    invoke-direct {v1, v2, v3}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    .line 33
    .line 34
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    :goto_1
    move v4, p1

    .line 47
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    .line 62
    .line 63
    if-eq p1, v2, :cond_1

    .line 64
    .line 65
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sget-object v5, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    .line 74
    .line 75
    if-eq p1, v5, :cond_1

    .line 76
    .line 77
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    sget-object v5, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    .line 86
    .line 87
    if-eq p1, v5, :cond_1

    .line 88
    .line 89
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    sget-object v5, Lde/mrapp/android/tabswitcher/model/State;->STACKED_END:Lde/mrapp/android/tabswitcher/model/State;

    .line 98
    .line 99
    if-ne p1, v5, :cond_4

    .line 100
    .line 101
    :cond_1
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    if-ne v5, v2, :cond_3

    .line 118
    .line 119
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->isVisible()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_4

    .line 143
    .line 144
    if-eqz p2, :cond_2

    .line 145
    .line 146
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    invoke-direct {p0, p1, p2, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    goto :goto_2

    .line 163
    :cond_2
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtEnd(I)Lg0/c;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    :goto_2
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    iget-object v0, p1, Lg0/c;->a:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v0, Ljava/lang/Float;

    .line 178
    .line 179
    invoke-static {v0, p2, v3}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    iget-object p1, p1, Lg0/c;->b:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    .line 186
    .line 187
    invoke-virtual {p2, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 188
    .line 189
    .line 190
    const/4 p1, 0x0

    .line 191
    invoke-direct {p0, v3, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateAndUpdateView(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_3
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v2, v4}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    sub-int v2, v0, v2

    .line 207
    .line 208
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    add-int/lit8 v2, v2, 0x1

    .line 213
    .line 214
    int-to-long v5, v2

    .line 215
    iget-wide v7, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateAnimationDelay:J

    .line 216
    .line 217
    mul-long v6, v5, v7

    .line 218
    .line 219
    const/4 v5, 0x0

    .line 220
    invoke-direct {p0, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRelocateAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    move-object v2, p0

    .line 225
    invoke-direct/range {v2 .. v8}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRelocate(Lde/mrapp/android/tabswitcher/model/TabItem;FLde/mrapp/android/tabswitcher/model/Tag;JLandroid/animation/Animator$AnimatorListener;)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_1

    .line 229
    .line 230
    :cond_4
    :goto_3
    return-void
.end method

.method private startOvershoot(F)V
    .locals 7

    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;

    invoke-interface {v4, v3, v1, v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v4

    invoke-interface {v2, v3, v1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v6

    invoke-interface {v6, v4, v1, v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v5

    invoke-interface {v2, v4, v1, v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    invoke-interface {v2, v3, v1, p1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->first()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v3

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v3, v4, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;)F

    move-result v2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v3

    invoke-interface {v3, v4, v1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private swipe(Lde/mrapp/android/tabswitcher/model/TabItem;F)V
    .locals 7

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/Tag;->isClosing()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-direct {p0, p1, v1, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptStackOnSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;II)V

    :cond_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    invoke-virtual {v1, v2}, Lde/mrapp/android/tabswitcher/model/Tag;->setClosing(Z)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/Tab;->isCloseable()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float p1, v3

    const/4 v1, 0x0

    cmpg-float p2, p2, v1

    if-gez p2, :cond_1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    :cond_1
    move p2, p1

    :cond_2
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p1

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v3

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;->SWIPE:Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;

    invoke-interface {v3, v1, v0, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v3

    invoke-interface {p1, v1, v0, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p1

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v5

    invoke-interface {v5, v3, v0, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v4

    invoke-interface {p1, v3, v0, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getScale(Landroid/view/View;Z)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateSwipePosition()F

    move-result v4

    div-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, v2

    iget v5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabScale:F

    mul-float/2addr v5, p1

    invoke-static {p1, v5, v2, v5}, Landroid/support/v4/media/session/a;->e(FFFF)F

    move-result p1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v5

    invoke-interface {v5, v1, v0, p1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    invoke-interface {v1, v3, v0, p1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    iget p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabAlpha:F

    sub-float/2addr v4, p1

    mul-float/2addr v4, v2

    add-float/2addr v4, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p1

    invoke-interface {p1, v3, v0, p2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    return-void
.end method

.method private tiltOnEndOvershoot(F)V
    .locals 9

    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxCameraDistance:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    new-instance v1, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v1, v2, v3}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object v1

    const/4 v2, -0x1

    move v3, v2

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    iget v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxCameraDistance:I

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_1

    :cond_1
    if-ne v3, v2, :cond_2

    invoke-virtual {v5, v0}, Landroid/view/View;->setCameraDistance(F)V

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v6

    invoke-virtual {v6}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v6

    sget-object v7, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v6, v7, :cond_3

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v4

    sub-int/2addr v4, v3

    int-to-float v4, v4

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v6

    invoke-virtual {v6}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v6

    sub-int/2addr v6, v3

    int-to-float v6, v6

    div-float/2addr v4, v6

    iget v6, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxCameraDistance:I

    int-to-float v6, v6

    sub-float/2addr v6, v0

    mul-float/2addr v6, v4

    add-float/2addr v6, v0

    invoke-virtual {v5, v6}, Landroid/view/View;->setCameraDistance(F)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v7

    sget-object v8, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;->OVERSHOOT_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;

    invoke-interface {v7, v6, v5, v8}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v7

    invoke-interface {v4, v6, v5, v7}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v7

    invoke-interface {v7, v6, v5, v8}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v7

    invoke-interface {v4, v6, v5, v7}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    invoke-interface {v4, v6, v5, p1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setRotation(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private tiltOnStartOvershoot(F)V
    .locals 6

    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result v3

    if-nez v3, :cond_1

    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxCameraDistance:I

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setCameraDistance(F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;->OVERSHOOT_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;

    invoke-interface {v4, v3, v2, v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v4

    invoke-interface {v1, v3, v2, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    invoke-interface {v4, v3, v2, v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v4

    invoke-interface {v1, v3, v2, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    invoke-interface {v1, v3, v2, p1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setRotation(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateView(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 6

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v3

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;

    invoke-interface {v3, v2, p1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v3

    invoke-interface {v1, v2, p1, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v5

    invoke-interface {v5, v3, p1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v4

    invoke-interface {v1, v3, p1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    invoke-interface {v1, v2, p1, v0}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v3, p1, v1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    invoke-interface {v0, v3, p1, v1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setRotation(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method public final getTabContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getToolbars()[Landroidx/appcompat/widget/Toolbar;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->dragHandler:Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragHandler;

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onAllTabsAdded(I[Lde/mrapp/android/tabswitcher/Tab;IILde/mrapp/android/tabswitcher/Animation;)V
    .locals 2

    instance-of p3, p5, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    const-string v0, " not supported for adding multiple tabs"

    invoke-virtual {p4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lde/mrapp/android/util/Condition;->ensureTrue(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Added "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tabs at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " using a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->addAllTabs(I[Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    return-void
.end method

.method public final onAllTabsRemoved([Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 8

    instance-of v0, p2, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " not supported for removing tabs "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/mrapp/android/util/Condition;->ensureTrue(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Removed all tabs using a "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-virtual {p1}, Lde/mrapp/android/util/view/AttachedViewRecycler;->removeAll()V

    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->areToolbarsShown()Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_8

    :cond_1
    instance-of v0, p2, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    if-eqz v0, :cond_2

    check-cast p2, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    goto :goto_1

    :cond_2
    new-instance p2, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    invoke-direct {p2}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;-><init>()V

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->create()Lde/mrapp/android/tabswitcher/SwipeAnimation;

    move-result-object p2

    :goto_1
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/ArrayTabItemIterator$Builder;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v0, v1, p1}, Lde/mrapp/android/tabswitcher/iterator/ArrayTabItemIterator$Builder;-><init>(Lde/mrapp/android/util/view/AttachedViewRecycler;[Lde/mrapp/android/tabswitcher/Tab;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator$AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/tabswitcher/iterator/ArrayTabItemIterator$Builder;

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/ArrayTabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ArrayTabItemIterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v2

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v3

    sget-object v4, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v3, v4, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v2

    if-ne v2, v4, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    move v7, v0

    goto :goto_5

    :cond_4
    :goto_4
    int-to-long v2, v0

    iget-wide v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->clearAnimationDelay:J

    add-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_3

    :goto_5
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    int-to-long v3, v7

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createClearAnimationListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    :goto_6
    move-object v6, v0

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    :goto_7
    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;ZJLde/mrapp/android/tabswitcher/SwipeAnimation;Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    move v0, v7

    goto :goto_2

    :cond_7
    :goto_8
    return-void
.end method

.method public final onClick(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 4

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->selectTab(Lde/mrapp/android/tabswitcher/Tab;)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Clicked tab at index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final onDecoratorChanged(Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;)V
    .locals 0

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptDecorator()V

    invoke-super {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->onDecoratorChanged(Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;)V

    return-void
.end method

.method public final onDetachLayout(Z)Lg0/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lg0/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 21
    .line 22
    iget v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    .line 37
    .line 38
    if-eq v1, v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->firstVisibleIndex:I

    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v2, Lg0/c;

    .line 59
    .line 60
    invoke-direct {v2, v1, v0}, Lg0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v2, 0x0

    .line 65
    :goto_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->childViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    .line 66
    .line 67
    invoke-virtual {v0}, Lde/mrapp/android/util/view/ViewRecycler;->removeAll()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->childViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    .line 71
    .line 72
    invoke-virtual {v0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->clearCache()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 76
    .line 77
    invoke-virtual {v0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->removeAll()V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 81
    .line 82
    invoke-virtual {v0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->clearCache()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->recyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;

    .line 86
    .line 87
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->clearCachedPreviews()V

    .line 88
    .line 89
    .line 90
    if-nez p1, :cond_1

    .line 91
    .line 92
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->recyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->removeListener(Lde/mrapp/android/tabswitcher/model/Model$Listener;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabContainer:Landroid/view/ViewGroup;

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    :cond_1
    return-object v2
.end method

.method public final onDrag(Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;F)Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;
    .locals 5

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;->DRAG_TO_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionsWhenDraggingToEnd(F)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionsWhenDraggingToStart(F)V

    :cond_1
    :goto_0
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/TabItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/TabItemIterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->isOvershootingAtEnd(Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;->OVERSHOOT_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->isOvershootingAtStart()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;->OVERSHOOT_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Dragging using a distance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " pixels. Drag state is "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", overshoot is "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onGlobalLayout()V
    .locals 8

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getFirstVisibleTabIndex()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getFirstVisibleTabPosition()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateInitialTabItems(IF)[Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v4

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/TabItem;ZILde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$1;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->next()Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createBottomMarginLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateAndUpdateView(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->areToolbarsShown()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v2

    invoke-static {v0, v1, v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Lde/mrapp/android/util/view/AbstractViewRecycler;->inflate(Ljava/lang/Object;[Ljava/lang/Object;)Lg0/c;

    :cond_4
    :goto_2
    return-void
.end method

.method public final onInflateLayout(Z)Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    sget v1, Lde/mrapp/android/tabswitcher/R$id;->primary_toolbar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    :cond_0
    sget p1, Lde/mrapp/android/tabswitcher/R$layout;->phone_toolbar:I

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->areToolbarsShown()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabContainer:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance p1, Lde/mrapp/android/util/view/ViewRecycler;

    invoke-direct {p1, v0}, Lde/mrapp/android/util/view/ViewRecycler;-><init>(Landroid/view/LayoutInflater;)V

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->childViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    new-instance p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v2

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->childViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    invoke-direct {p1, v1, v2, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;-><init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;Lde/mrapp/android/util/view/ViewRecycler;)V

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->recyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->recyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;

    invoke-virtual {p1, v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->addListener(Lde/mrapp/android/tabswitcher/model/Model$Listener;)V

    new-instance p1, Lde/mrapp/android/util/view/AttachedViewRecycler;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabContainer:Landroid/view/ViewGroup;

    new-instance v2, Lde/mrapp/android/tabswitcher/model/TabItem$Comparator;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/mrapp/android/tabswitcher/model/TabItem$Comparator;-><init>(Lde/mrapp/android/tabswitcher/TabSwitcher;)V

    invoke-static {v2}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {p1, v1, v0, v2}, Lde/mrapp/android/util/view/AttachedViewRecycler;-><init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/util/Comparator;)V

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->recyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;

    invoke-virtual {p1, v0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->setAdapter(Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;)V

    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->recyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-virtual {p1, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneRecyclerAdapter;->setViewRecycler(Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    new-instance p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragHandler;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {p1, v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragHandler;-><init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/layout/Arithmetics;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->dragHandler:Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragHandler;

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptLogLevel()V

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptDecorator()V

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptToolbarMargin()V

    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->dragHandler:Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragHandler;

    return-object p1
.end method

.method public final onLogLevelChanged(Lde/mrapp/android/util/logging/LogLevel;)V
    .locals 0

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptLogLevel()V

    return-void
.end method

.method public final onPaddingChanged(IIII)V
    .locals 0

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptToolbarMargin()V

    return-void
.end method

.method public final onRevertEndOvershoot()V
    .locals 3

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRevertEndOvershoot()V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Reverting overshoot at the end"

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final onRevertStartOvershoot()V
    .locals 3

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRevertStartOvershoot()V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Reverting overshoot at the start"

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final onSelectionChanged(IILde/mrapp/android/tabswitcher/Tab;Z)V
    .locals 3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Selected tab at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateHideSwitcher()V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p4

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {p4, v0, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    invoke-virtual {p3, p1}, Lde/mrapp/android/util/view/AttachedViewRecycler;->remove(Ljava/lang/Object;)V

    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p3

    iget-object p4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {p3, p4, p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Integer;

    invoke-virtual {p1, p2, p3}, Lde/mrapp/android/util/view/AbstractViewRecycler;->inflate(Ljava/lang/Object;[Ljava/lang/Object;)Lg0/c;

    :goto_0
    return-void
.end method

.method public final onStartOvershoot(F)V
    .locals 4

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->startOvershoot(F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Overshooting at the start using a position of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " pixels"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final onSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;F)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipe(Lde/mrapp/android/tabswitcher/model/TabItem;F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Swiping tab at index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Current swipe distance is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " pixels"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final onSwipeEnded(Lde/mrapp/android/tabswitcher/model/TabItem;ZF)V
    .locals 9

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v1, v2, v0}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;->LEFT:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    goto :goto_0

    :cond_0
    sget-object v0, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;->RIGHT:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    :goto_0
    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateSwipePosition()F

    move-result v1

    div-float/2addr v1, p3

    const/high16 p3, 0x447a0000    # 1000.0f

    mul-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-long v1, p3

    goto :goto_1

    :cond_1
    const-wide/16 v1, -0x1

    :goto_1
    new-instance p3, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    invoke-direct {p3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;-><init>()V

    invoke-virtual {p3, v0}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->setDirection(Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;)Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    move-result-object p3

    invoke-virtual {p3, v1, v2}, Lde/mrapp/android/tabswitcher/Animation$Builder;->setDuration(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->create()Lde/mrapp/android/tabswitcher/SwipeAnimation;

    move-result-object p3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->removeTab(Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    new-instance p3, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    invoke-direct {p3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;-><init>()V

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->create()Lde/mrapp/android/tabswitcher/SwipeAnimation;

    move-result-object v7

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createSwipeAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v8

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;ZJLde/mrapp/android/tabswitcher/SwipeAnimation;Landroid/animation/Animator$AnimatorListener;)V

    :goto_2
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ended swiping tab at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Tab will "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    const-string p1, ""

    goto :goto_3

    :cond_3
    const-string p1, "not "

    :goto_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "be removed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final onSwitcherHidden()V
    .locals 3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Hid tab switcher"

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateHideSwitcher()V

    return-void
.end method

.method public final onSwitcherShown()V
    .locals 3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Showed tab switcher"

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateShowSwitcher()V

    return-void
.end method

.method public final onTabAdded(ILde/mrapp/android/tabswitcher/Tab;IIZLde/mrapp/android/tabswitcher/Animation;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    const-string v0, "Added tab at index "

    .line 10
    .line 11
    const-string v1, " using a "

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/session/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p3, p4, v0}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    instance-of p3, p6, Lde/mrapp/android/tabswitcher/PeekAnimation;

    .line 36
    .line 37
    const/4 p4, 0x0

    .line 38
    if-eqz p3, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-nez p3, :cond_0

    .line 49
    .line 50
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p3, " not supported when the tab switcher is shown"

    .line 59
    .line 60
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p5, p1}, Lde/mrapp/android/util/Condition;->ensureTrue(ZLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    check-cast p6, Lde/mrapp/android/tabswitcher/PeekAnimation;

    .line 68
    .line 69
    new-instance p1, Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 70
    .line 71
    invoke-direct {p1, p4, p2}, Lde/mrapp/android/tabswitcher/model/TabItem;-><init>(ILde/mrapp/android/tabswitcher/Tab;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1, p6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createPeekLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/PeekAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    new-array p3, p4, [Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateView(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Integer;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    instance-of p3, p6, Lde/mrapp/android/tabswitcher/RevealAnimation;

    .line 85
    .line 86
    if-eqz p3, :cond_1

    .line 87
    .line 88
    if-eqz p5, :cond_1

    .line 89
    .line 90
    new-instance p1, Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 91
    .line 92
    invoke-direct {p1, p4, p2}, Lde/mrapp/android/tabswitcher/model/TabItem;-><init>(ILde/mrapp/android/tabswitcher/Tab;)V

    .line 93
    .line 94
    .line 95
    check-cast p6, Lde/mrapp/android/tabswitcher/RevealAnimation;

    .line 96
    .line 97
    invoke-direct {p0, p1, p6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRevealLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/RevealAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    new-array p3, p4, [Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateView(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Integer;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    const/4 p3, 0x1

    .line 108
    new-array p3, p3, [Lde/mrapp/android/tabswitcher/Tab;

    .line 109
    .line 110
    aput-object p2, p3, p4

    .line 111
    .line 112
    invoke-direct {p0, p1, p3, p6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->addAllTabs(I[Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    .line 113
    .line 114
    .line 115
    :goto_0
    return-void
.end method

.method public final onTabBackgroundColorChanged(Landroid/content/res/ColorStateList;)V
    .locals 0

    return-void
.end method

.method public final onTabCloseButtonIconChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final onTabIconChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final onTabRemoved(ILde/mrapp/android/tabswitcher/Tab;IILde/mrapp/android/tabswitcher/Animation;)V
    .locals 4

    .line 1
    instance-of v0, p5, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    .line 2
    .line 3
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, " not supported for removing tabs"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lde/mrapp/android/util/Condition;->ensureTrue(ZLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "Removed tab at index "

    .line 29
    .line 30
    const-string v3, " using a "

    .line 31
    .line 32
    invoke-static {v2, p1, v3}, Landroid/support/v4/media/session/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 55
    .line 56
    invoke-static {v0, p1, p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/util/view/AttachedViewRecycler;ILde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lde/mrapp/android/util/view/AttachedViewRecycler;->remove(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 86
    .line 87
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->areToolbarsShown()Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_0

    .line 96
    .line 97
    const/high16 p2, 0x3f800000    # 1.0f

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    const/4 p2, 0x0

    .line 101
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :cond_1
    if-eq p4, p3, :cond_6

    .line 107
    .line 108
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 109
    .line 110
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    iget-object p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 115
    .line 116
    invoke-static {p2, p3, p4}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    const/4 p3, 0x0

    .line 121
    new-array p3, p3, [Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {p1, p2, p3}, Lde/mrapp/android/util/view/AbstractViewRecycler;->inflate(Ljava/lang/Object;[Ljava/lang/Object;)Lg0/c;

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_2
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    invoke-virtual {p4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 136
    .line 137
    .line 138
    move-result p4

    .line 139
    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptStackOnSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;II)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    const/4 p4, 0x1

    .line 147
    invoke-virtual {p3, p4}, Lde/mrapp/android/tabswitcher/model/Tag;->setClosing(Z)V

    .line 148
    .line 149
    .line 150
    instance-of p3, p5, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    .line 151
    .line 152
    if-eqz p3, :cond_3

    .line 153
    .line 154
    check-cast p5, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_3
    new-instance p3, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    .line 158
    .line 159
    invoke-direct {p3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->create()Lde/mrapp/android/tabswitcher/SwipeAnimation;

    .line 163
    .line 164
    .line 165
    move-result-object p5

    .line 166
    :goto_1
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    if-eqz p3, :cond_4

    .line 171
    .line 172
    invoke-direct {p0, p2, p5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRemove(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_4
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->isStackedAtStart(I)Z

    .line 177
    .line 178
    .line 179
    move-result p3

    .line 180
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 181
    .line 182
    .line 183
    move-result-object p4

    .line 184
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 185
    .line 186
    add-int/lit8 v1, p1, -0x1

    .line 187
    .line 188
    invoke-static {p4, v0, v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 189
    .line 190
    .line 191
    move-result-object p4

    .line 192
    if-eqz p3, :cond_5

    .line 193
    .line 194
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 199
    .line 200
    .line 201
    move-result p3

    .line 202
    invoke-direct {p0, p3, p1, p4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    goto :goto_2

    .line 207
    :cond_5
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtEnd(I)Lg0/c;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    :goto_2
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    iget-object p4, p1, Lg0/c;->a:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p4, Ljava/lang/Float;

    .line 218
    .line 219
    invoke-static {p4, p3, p2}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    .line 220
    .line 221
    .line 222
    move-result-object p3

    .line 223
    iget-object p1, p1, Lg0/c;->b:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    .line 226
    .line 227
    invoke-virtual {p3, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 228
    .line 229
    .line 230
    invoke-direct {p0, p2, p5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRemoveLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-direct {p0, p2, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateAndUpdateView(Lde/mrapp/android/tabswitcher/model/TabItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 235
    .line 236
    .line 237
    :cond_6
    :goto_3
    return-void
.end method

.method public final onTabTitleColorChanged(Landroid/content/res/ColorStateList;)V
    .locals 0

    return-void
.end method

.method public final onTiltOnEndOvershoot(F)V
    .locals 4

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tiltOnEndOvershoot(F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tilting on end overshoot using an angle of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " degrees"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final onTiltOnStartOvershoot(F)V
    .locals 4

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tiltOnStartOvershoot(F)V

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tilting on start overshoot using an angle of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " degrees"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
