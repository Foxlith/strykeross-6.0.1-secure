.class Lcom/google/android/material/search/SearchBarAnimationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;
    }
.end annotation


# static fields
.field private static final COLLAPSE_DURATION_MS:J = 0xfaL

.field private static final COLLAPSE_FADE_IN_CHILDREN_DURATION_MS:J = 0x64L

.field private static final EXPAND_DURATION_MS:J = 0x12cL

.field private static final EXPAND_FADE_OUT_CHILDREN_DURATION_MS:J = 0x4bL

.field private static final ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_DURATION_MS:J = 0xfaL

.field private static final ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_IN_START_DELAY_MS:J = 0x1f4L

.field private static final ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_OUT_START_DELAY_MS:J = 0x2eeL

.field private static final ON_LOAD_ANIM_SECONDARY_DURATION_MS:J = 0xfaL

.field private static final ON_LOAD_ANIM_SECONDARY_START_DELAY_MS:J = 0xfaL


# instance fields
.field private final collapseAnimationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private collapsing:Z

.field private defaultCenterViewAnimator:Landroid/animation/Animator;

.field private final expandAnimationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private expanding:Z

.field private final onLoadAnimationCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private onLoadAnimationFadeInEnabled:Z

.field private runningExpandOrCollapseAnimator:Landroid/animation/Animator;

.field private secondaryViewAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationCallbacks:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expandAnimationListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapseAnimationListeners:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public static synthetic a(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->lambda$getFadeOutChildrenAnimator$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->dispatchOnLoadAnimation(Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V

    return-void
.end method

.method public static synthetic access$102(Lcom/google/android/material/search/SearchBarAnimationHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expanding:Z

    return p1
.end method

.method public static synthetic access$202(Lcom/google/android/material/search/SearchBarAnimationHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/google/android/material/search/SearchBarAnimationHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapsing:Z

    return p1
.end method

.method public static synthetic b(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/search/SearchBarAnimationHelper;->lambda$startExpandAnimation$0(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->lambda$getExpandedViewBackgroundUpdateListener$1(Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private dispatchOnLoadAnimation(Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;

    invoke-interface {p1, v1}, Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;->invoke(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCollapseAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandCollapseAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p2

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->setDuration(J)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p2

    new-instance p3, Lcom/google/android/material/search/SearchBarAnimationHelper$6;

    invoke-direct {p3, p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper$6;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addListener(Landroid/animation/AnimatorListenerAdapter;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getCollapseAnimator()Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private getDefaultCenterViewAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 12

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v3}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-boolean v5, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0xfa

    if-eqz v5, :cond_0

    move-wide v10, v8

    goto :goto_0

    :cond_0
    move-wide v10, v6

    :goto_0
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-boolean v5, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    if-eqz v5, :cond_1

    const-wide/16 v6, 0x1f4

    :cond_1
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-array v5, v0, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-array v6, v2, [Landroid/view/View;

    aput-object p1, v6, v4

    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x2ee

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v4

    aput-object v5, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getEndAnchoredViews(Landroid/view/View;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v0, :cond_0

    instance-of v4, v3, Landroidx/appcompat/widget/ActionMenuView;

    if-nez v4, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    instance-of v4, v3, Landroidx/appcompat/widget/ActionMenuView;

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private getExpandAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandCollapseAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p2

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->setDuration(J)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p2

    new-instance p3, Lcom/google/android/material/search/SearchBarAnimationHelper$4;

    invoke-direct {p3, p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper$4;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addListener(Landroid/animation/AnimatorListenerAdapter;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getExpandAnimator()Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private getExpandCollapseAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 1

    new-instance v0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandedViewBackgroundUpdateListener(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->setAdditionalUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->setCollapsedViewOffsetY(I)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getEndAnchoredViews(Landroid/view/View;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addEndAnchoredViews(Ljava/util/Collection;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p1

    return-object p1
.end method

.method private getExpandedViewBackgroundUpdateListener(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->createWithElevationOverlay(Landroid/content/Context;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 17
    .line 18
    invoke-static {p1}, Landroidx/core/view/q0;->i(Landroid/view/View;)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/google/android/material/search/c;

    .line 26
    .line 27
    invoke-direct {p1, p2, v0}, Lcom/google/android/material/search/c;-><init>(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method

.method private getFadeChildren(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/search/SearchBar;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->getChildren(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private getFadeInChildrenAnimator(Lcom/google/android/material/search/SearchBar;)Landroid/animation/Animator;
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getFadeChildren(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getFadeOutChildrenAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/Animator;
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getFadeChildren(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/google/android/material/search/d;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1}, Lcom/google/android/material/search/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 p1, 0x4b

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getSecondaryActionMenuItemAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSecondaryViewAnimator(Landroid/widget/TextView;Landroid/view/View;)Landroid/animation/Animator;
    .locals 3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getTextViewAnimator(Landroid/widget/TextView;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getSecondaryActionMenuItemAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    return-object v0
.end method

.method private getTextViewAnimator(Landroid/widget/TextView;)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static lambda$getExpandedViewBackgroundUpdateListener$1(Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    sub-float p2, v0, p2

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 10
    .line 11
    .line 12
    sget-object p2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-static {p1, p0}, Landroidx/core/view/k0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static synthetic lambda$getFadeOutChildrenAnimator$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startExpandAnimation$0(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getFadeOutChildrenAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 p3, 0x0

    aput-object v1, p2, p3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance p1, Lcom/google/android/material/search/SearchBarAnimationHelper$3;

    invoke-direct {p1, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper$3;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expandAnimationListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    const-wide/16 p1, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public addCollapseAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapseAnimationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addExpandAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expandAnimationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnLoadAnimationCallback(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isCollapsing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapsing:Z

    return v0
.end method

.method public isExpanding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expanding:Z

    return v0
.end method

.method public isOnLoadAnimationFadeInEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    return v0
.end method

.method public removeCollapseAnimationListener(Landroid/animation/AnimatorListenerAdapter;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapseAnimationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeExpandAnimationListener(Landroid/animation/AnimatorListenerAdapter;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expandAnimationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeOnLoadAnimationCallback(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setOnLoadAnimationFadeInEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    return-void
.end method

.method public startCollapseAnimation(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->isExpanding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapsing:Z

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getCollapseAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getFadeInChildrenAnimator(Lcom/google/android/material/search/SearchBar;)Landroid/animation/Animator;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p2, p3, v2

    aput-object p1, p3, v0

    invoke-virtual {v1, p3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance p1, Lcom/google/android/material/search/SearchBarAnimationHelper$5;

    invoke-direct {p1, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper$5;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapseAnimationListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    const-wide/16 p1, 0x0

    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_2
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-object v1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public startExpandAnimation(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->isCollapsing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expanding:Z

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/google/android/material/search/b;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/search/b;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startOnLoadAnimation(Lcom/google/android/material/search/SearchBar;)V
    .locals 5

    new-instance v0, Lcom/google/android/material/search/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/search/e;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->dispatchOnLoadAnimation(Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->getSecondaryActionMenuItemView(Landroidx/appcompat/widget/Toolbar;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getSecondaryViewAnimator(Landroid/widget/TextView;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    new-instance v4, Lcom/google/android/material/search/SearchBarAnimationHelper$1;

    invoke-direct {v4, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper$1;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v3, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->secondaryViewAnimator:Landroid/animation/Animator;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    instance-of p1, v2, Lcom/google/android/material/animation/AnimatableView;

    if-eqz p1, :cond_1

    check-cast v2, Lcom/google/android/material/animation/AnimatableView;

    new-instance p1, Lcom/google/android/material/search/a;

    invoke-direct {p1, v3}, Lcom/google/android/material/search/a;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1}, Lcom/google/android/material/animation/AnimatableView;->startAnimation(Lcom/google/android/material/animation/AnimatableView$Listener;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getDefaultCenterViewAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->defaultCenterViewAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/google/android/material/search/SearchBarAnimationHelper$2;

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/material/search/SearchBarAnimationHelper$2;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Landroid/view/View;Landroid/animation/Animator;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public stopOnLoadAnimation(Lcom/google/android/material/search/SearchBar;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->secondaryViewAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->defaultCenterViewAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/material/animation/AnimatableView;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/android/material/animation/AnimatableView;

    invoke-interface {v0}, Lcom/google/android/material/animation/AnimatableView;->stopAnimation()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method
