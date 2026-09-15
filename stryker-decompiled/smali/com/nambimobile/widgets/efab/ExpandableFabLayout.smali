.class public final Lcom/nambimobile/widgets/efab/ExpandableFabLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nambimobile/widgets/efab/ExpandableFabLayout$WhenMappings;
    }
.end annotation


# instance fields
.field private closeWhenAble:Z

.field private efabAnimationsFinished:Z

.field private expandableFabClosingAnimationDurationMs:Ljava/lang/Long;

.field private expandableFabOpeningAnimationDurationMs:Ljava/lang/Long;

.field private fabOptionAlreadyClicked:Z

.field private fabOptionClosingAnimationDurationMs:Ljava/lang/Long;

.field private fabOptionOpeningAnimationDurationMs:Ljava/lang/Long;

.field private groupAnimationsFinished:Z

.field private labelHiddenToVisibleAnimationDurationMs:Ljava/lang/Long;

.field private labelVisibleToHiddenAnimationDurationMs:Ljava/lang/Long;

.field private landscapeConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

.field private open:Z

.field private overlayClosingAnimationDurationMs:Ljava/lang/Long;

.field private overlayOpeningAnimationDurationMs:Ljava/lang/Long;

.field private portraitConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

.field private setStateAsClosed:Lcom/nambimobile/widgets/efab/ExpandableFabLayout$setStateAsClosed$1;

.field private setStateAsOpened:Lcom/nambimobile/widgets/efab/ExpandableFabLayout$setStateAsOpened$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    invoke-direct {p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;-><init>()V

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->portraitConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    new-instance p1, Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    invoke-direct {p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;-><init>()V

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->landscapeConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->efabAnimationsFinished:Z

    iput-boolean p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->groupAnimationsFinished:Z

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {}, Landroidx/core/view/l0;->a()I

    move-result p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    :cond_0
    new-instance p1, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$setStateAsOpened$1;

    invoke-direct {p1, p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$setStateAsOpened$1;-><init>(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;)V

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->setStateAsOpened:Lcom/nambimobile/widgets/efab/ExpandableFabLayout$setStateAsOpened$1;

    new-instance p1, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$setStateAsClosed$1;

    invoke-direct {p1, p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$setStateAsClosed$1;-><init>(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;)V

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->setStateAsClosed:Lcom/nambimobile/widgets/efab/ExpandableFabLayout$setStateAsClosed$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    invoke-direct {v0}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;-><init>()V

    iput-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->portraitConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    new-instance v0, Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    invoke-direct {v0}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;-><init>()V

    iput-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->landscapeConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->efabAnimationsFinished:Z

    iput-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->groupAnimationsFinished:Z

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {}, Landroidx/core/view/l0;->a()I

    move-result v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    new-instance v0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$setStateAsOpened$1;

    invoke-direct {v0, p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$setStateAsOpened$1;-><init>(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;)V

    iput-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->setStateAsOpened:Lcom/nambimobile/widgets/efab/ExpandableFabLayout$setStateAsOpened$1;

    new-instance v0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$setStateAsClosed$1;

    invoke-direct {v0, p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$setStateAsClosed$1;-><init>(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;)V

    iput-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->setStateAsClosed:Lcom/nambimobile/widgets/efab/ExpandableFabLayout$setStateAsClosed$1;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFabLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFabLayout_efab_layout_overlayOpeningAnimationDurationMs:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->setOverlayOpeningAnimationDurationMs(Ljava/lang/Long;)V

    sget p2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFabLayout_efab_layout_overlayClosingAnimationDurationMs:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    move-object p2, v0

    goto :goto_1

    :cond_2
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :goto_1
    invoke-virtual {p0, p2}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->setOverlayClosingAnimationDurationMs(Ljava/lang/Long;)V

    sget p2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFabLayout_efab_layout_expandableFabOpeningAnimationDurationMs:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    move-object p2, v0

    goto :goto_2

    :cond_3
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :goto_2
    invoke-virtual {p0, p2}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->setExpandableFabOpeningAnimationDurationMs(Ljava/lang/Long;)V

    sget p2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFabLayout_efab_layout_expandableFabClosingAnimationDurationMs:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    move-object p2, v0

    goto :goto_3

    :cond_4
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :goto_3
    invoke-virtual {p0, p2}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->setExpandableFabClosingAnimationDurationMs(Ljava/lang/Long;)V

    sget p2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFabLayout_efab_layout_fabOptionOpeningAnimationDurationMs:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    move-object p2, v0

    goto :goto_4

    :cond_5
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :goto_4
    invoke-virtual {p0, p2}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->setFabOptionOpeningAnimationDurationMs(Ljava/lang/Long;)V

    sget p2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFabLayout_efab_layout_fabOptionClosingAnimationDurationMs:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    move-object p2, v0

    goto :goto_5

    :cond_6
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :goto_5
    invoke-virtual {p0, p2}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->setFabOptionClosingAnimationDurationMs(Ljava/lang/Long;)V

    sget p2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFabLayout_efab_layout_labelVisibleToHiddenAnimationDurationMs:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    move-object p2, v0

    goto :goto_6

    :cond_7
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :goto_6
    invoke-virtual {p0, p2}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->setLabelVisibleToHiddenAnimationDurationMs(Ljava/lang/Long;)V

    sget p2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFabLayout_efab_layout_labelHiddenToVisibleAnimationDurationMs:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_7

    :cond_8
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_7
    invoke-virtual {p0, v0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->setLabelHiddenToVisibleAnimationDurationMs(Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_8

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nambimobile/widgets/efab/R$string;->efab_layout_illegal_optional_properties:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.string.efab_layout_illegal_optional_properties)"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalArg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p2, Landroidx/fragment/app/u;

    .line 7
    invoke-direct {p2}, Ljava/lang/RuntimeException;-><init>()V

    .line 8
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public static final synthetic access$defaultExpandableFabOnClickBehavior(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->defaultExpandableFabOnClickBehavior()V

    return-void
.end method

.method public static final synthetic access$defaultFabOptionOnClickBehavior(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;)Z
    .locals 0

    invoke-direct {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->defaultFabOptionOnClickBehavior()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$defaultOverlayOnClickBehavior(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->defaultOverlayOnClickBehavior()V

    return-void
.end method

.method public static final synthetic access$setGroupAnimationsFinished$p(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->groupAnimationsFinished:Z

    return-void
.end method

.method public static final synthetic access$setState(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->setState(Z)V

    return-void
.end method

.method private final addExpandableFab(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_9

    .line 5
    .line 6
    check-cast p1, Lcom/nambimobile/widgets/efab/ExpandableFab;

    .line 7
    .line 8
    new-instance p2, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$addExpandableFab$efab$1$1;

    .line 9
    .line 10
    invoke-direct {p2, p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$addExpandableFab$efab$1$1;-><init>(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setDefaultOnClickBehavior$expandable_fab_release(Lj5/a;)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$addExpandableFab$efab$1$2;

    .line 17
    .line 18
    invoke-direct {p2, p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$addExpandableFab$efab$1$2;-><init>(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setOnAnimationStart$expandable_fab_release(Lj5/a;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    if-eqz p3, :cond_8

    .line 36
    .line 37
    check-cast p3, Landroidx/coordinatorlayout/widget/f;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v1, 0x0

    .line 44
    iput-object v1, p3, Landroidx/coordinatorlayout/widget/f;->l:Landroid/view/View;

    .line 45
    .line 46
    iput-object v1, p3, Landroidx/coordinatorlayout/widget/f;->k:Landroid/view/View;

    .line 47
    .line 48
    iput v0, p3, Landroidx/coordinatorlayout/widget/f;->f:I

    .line 49
    .line 50
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/nambimobile/widgets/efab/Label;->showLabel$expandable_fab_release()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getOrientation()Lcom/nambimobile/widgets/efab/Orientation;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    sget-object p3, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    aget p2, p3, p2

    .line 67
    .line 68
    const-string p3, "resources.getString(R.string.efab_layout_multiple_efabs, efab.orientation)"

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    const/4 v2, 0x2

    .line 72
    if-eq p2, v0, :cond_4

    .line 73
    .line 74
    if-eq p2, v2, :cond_0

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_0
    iget-object p2, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->landscapeConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getEfab()Lcom/nambimobile/widgets/efab/ExpandableFab;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-nez p2, :cond_3

    .line 85
    .line 86
    iget-object p2, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->landscapeConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    .line 87
    .line 88
    invoke-virtual {p2, p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->setEfab$expandable_fab_release(Lcom/nambimobile/widgets/efab/ExpandableFab;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/ExpandableFab;->show()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 103
    .line 104
    if-ne p2, v2, :cond_2

    .line 105
    .line 106
    iget-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->portraitConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getEfab()Lcom/nambimobile/widgets/efab/ExpandableFab;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-nez p1, :cond_1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/ExpandableFab;->hide()V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    iget-object p2, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->portraitConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getEfab()Lcom/nambimobile/widgets/efab/ExpandableFab;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    if-eqz p2, :cond_6

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    sget v0, Lcom/nambimobile/widgets/efab/R$string;->efab_layout_multiple_efabs:I

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getOrientation()Lcom/nambimobile/widgets/efab/Orientation;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1, p3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {p1, v1, v2, v1}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalState$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;

    .line 150
    .line 151
    .line 152
    new-instance p1, Landroidx/fragment/app/u;

    .line 153
    .line 154
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_4
    iget-object p2, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->portraitConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getEfab()Lcom/nambimobile/widgets/efab/ExpandableFab;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    if-nez p2, :cond_7

    .line 165
    .line 166
    iget-object p2, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->portraitConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    .line 167
    .line 168
    invoke-virtual {p2, p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->setEfab$expandable_fab_release(Lcom/nambimobile/widgets/efab/ExpandableFab;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/ExpandableFab;->show()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 183
    .line 184
    if-ne p2, v0, :cond_5

    .line 185
    .line 186
    iget-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->landscapeConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getEfab()Lcom/nambimobile/widgets/efab/ExpandableFab;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    if-nez p1, :cond_1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_5
    iget-object p2, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->landscapeConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    .line 196
    .line 197
    invoke-virtual {p2}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getEfab()Lcom/nambimobile/widgets/efab/ExpandableFab;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    if-eqz p2, :cond_6

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_6
    :goto_1
    return-void

    .line 205
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    sget v0, Lcom/nambimobile/widgets/efab/R$string;->efab_layout_multiple_efabs:I

    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getOrientation()Lcom/nambimobile/widgets/efab/Orientation;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-static {p1, p3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-static {p1, v1, v2, v1}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalState$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;

    .line 227
    .line 228
    .line 229
    new-instance p1, Landroidx/fragment/app/u;

    .line 230
    .line 231
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 232
    .line 233
    .line 234
    throw p1

    .line 235
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    .line 236
    .line 237
    const-string p2, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    .line 238
    .line 239
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw p1

    .line 243
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    .line 244
    .line 245
    const-string p2, "null cannot be cast to non-null type com.nambimobile.widgets.efab.ExpandableFab"

    .line 246
    .line 247
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw p1
.end method

.method private final addFabOption(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    check-cast p1, Lcom/nambimobile/widgets/efab/FabOption;

    .line 7
    .line 8
    new-instance p2, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$addFabOption$fabOption$1$1;

    .line 9
    .line 10
    invoke-direct {p2, p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$addFabOption$fabOption$1$1;-><init>(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/nambimobile/widgets/efab/FabOption;->setDefaultOnClickBehavior$expandable_fab_release(Lj5/a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/FabOption;->getOrientation()Lcom/nambimobile/widgets/efab/Orientation;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    sget-object p3, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    aget p2, p3, p2

    .line 27
    .line 28
    const/4 p3, 0x1

    .line 29
    if-eq p2, p3, :cond_1

    .line 30
    .line 31
    const/4 p3, 0x2

    .line 32
    if-ne p2, p3, :cond_0

    .line 33
    .line 34
    iget-object p2, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->landscapeConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Landroidx/fragment/app/u;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    iget-object p2, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->portraitConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    .line 44
    .line 45
    :goto_0
    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/FabOption;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    check-cast v0, Landroidx/coordinatorlayout/widget/f;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/4 v2, 0x0

    .line 65
    iput-object v2, v0, Landroidx/coordinatorlayout/widget/f;->l:Landroid/view/View;

    .line 66
    .line 67
    iput-object v2, v0, Landroidx/coordinatorlayout/widget/f;->k:Landroid/view/View;

    .line 68
    .line 69
    iput v1, v0, Landroidx/coordinatorlayout/widget/f;->f:I

    .line 70
    .line 71
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getFabOptions()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getFabOptions()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-static {p3}, Lv1/f;->v(Ljava/util/List;)I

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    invoke-virtual {p2, p1, p3}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->setFabOptionAnchor$expandable_fab_release(Lcom/nambimobile/widgets/efab/FabOption;I)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 94
    .line 95
    const-string p2, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    .line 96
    .line 97
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 102
    .line 103
    const-string p2, "null cannot be cast to non-null type com.nambimobile.widgets.efab.FabOption"

    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method

.method private final addOverlay(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_2

    check-cast p1, Lcom/nambimobile/widgets/efab/Overlay;

    new-instance p2, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$addOverlay$overlay$1$1;

    invoke-direct {p2, p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$addOverlay$overlay$1$1;-><init>(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;)V

    invoke-virtual {p1, p2}, Lcom/nambimobile/widgets/efab/Overlay;->setDefaultOnClickBehavior$expandable_fab_release(Lj5/a;)V

    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/Overlay;->getOrientation()Lcom/nambimobile/widgets/efab/Orientation;

    move-result-object p2

    sget-object p3, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->landscapeConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    :goto_0
    invoke-virtual {p2, p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->setOverlay$expandable_fab_release(Lcom/nambimobile/widgets/efab/Overlay;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->portraitConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.nambimobile.widgets.efab.Overlay"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final animationsFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->efabAnimationsFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->groupAnimationsFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final defaultExpandableFabOnClickBehavior()V
    .locals 1

    iget-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->open:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->animationsFinished()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->open()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->close()V

    :goto_1
    return-void
.end method

.method private final defaultFabOptionOnClickBehavior()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->fabOptionAlreadyClicked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->fabOptionAlreadyClicked:Z

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->close()V

    :goto_0
    return v0
.end method

.method private final defaultOverlayOnClickBehavior()V
    .locals 0

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->close()V

    return-void
.end method

.method private final getClosingAnimations(Lcom/nambimobile/widgets/efab/OrientationConfiguration;)Landroid/animation/Animator;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getEfab()Lcom/nambimobile/widgets/efab/ExpandableFab;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getFabOptions()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-static {v1}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/nambimobile/widgets/efab/FabOption;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->getFabOptionClosingAnimationDurationMs()Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->getLabelVisibleToHiddenAnimationDurationMs()Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v3, v4, v5}, Lcom/nambimobile/widgets/efab/FabOption;->closingAnimations$expandable_fab_release(Ljava/lang/Long;Ljava/lang/Long;)Landroid/animation/Animator;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 53
    .line 54
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 55
    .line 56
    .line 57
    const/4 v3, 0x3

    .line 58
    new-array v3, v3, [Landroid/animation/Animator;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getOverlay()Lcom/nambimobile/widgets/efab/Overlay;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->getOverlayClosingAnimationDurationMs()Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {p1, v4}, Lcom/nambimobile/widgets/efab/Overlay;->closingAnimations$expandable_fab_release(Ljava/lang/Long;)Landroid/animation/Animator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_1
    if-nez p1, :cond_2

    .line 77
    .line 78
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 79
    .line 80
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 81
    .line 82
    .line 83
    :cond_2
    const/4 v4, 0x0

    .line 84
    aput-object p1, v3, v4

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->getExpandableFabClosingAnimationDurationMs()Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->getLabelHiddenToVisibleAnimationDurationMs()Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    new-instance v5, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$getClosingAnimations$1$1;

    .line 95
    .line 96
    invoke-direct {v5, p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$getClosingAnimations$1$1;-><init>(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p1, v4, v5}, Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnimations$expandable_fab_release(Ljava/lang/Long;Ljava/lang/Long;Lj5/a;)Landroid/animation/Animator;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const/4 v0, 0x1

    .line 104
    aput-object p1, v3, v0

    .line 105
    .line 106
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 107
    .line 108
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-gt v4, v0, :cond_3

    .line 116
    .line 117
    invoke-static {v2}, Lx4/m;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    invoke-static {v2}, Lx4/m;->G0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    :goto_2
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    const/4 v0, 0x2

    .line 133
    aput-object p1, v3, v0

    .line 134
    .line 135
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->setStateAsClosed:Lcom/nambimobile/widgets/efab/ExpandableFabLayout$setStateAsClosed$1;

    .line 139
    .line 140
    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    .line 142
    .line 143
    return-object v1

    .line 144
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 145
    .line 146
    const-string v0, "null cannot be cast to non-null type com.nambimobile.widgets.efab.ExpandableFab"

    .line 147
    .line 148
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1
.end method

.method private final getOpeningAnimations(Lcom/nambimobile/widgets/efab/OrientationConfiguration;)Landroid/animation/Animator;
    .locals 13

    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getEfab()Lcom/nambimobile/widgets/efab/ExpandableFab;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getFabOptions()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v12, v5, 0x1

    if-ltz v5, :cond_0

    check-cast v4, Lcom/nambimobile/widgets/efab/FabOption;

    invoke-virtual {v0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getFabOptionSize()Lcom/nambimobile/widgets/efab/FabSize;

    move-result-object v6

    invoke-virtual {v0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getFabOptionPosition()Lcom/nambimobile/widgets/efab/FabOptionPosition;

    move-result-object v7

    invoke-virtual {v0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getFirstFabOptionMarginPx()F

    move-result v8

    invoke-virtual {v0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getSuccessiveFabOptionMarginPx()F

    move-result v9

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->getFabOptionOpeningAnimationDurationMs()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->getLabelHiddenToVisibleAnimationDurationMs()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual/range {v4 .. v11}, Lcom/nambimobile/widgets/efab/FabOption;->openingAnimations$expandable_fab_release(ILcom/nambimobile/widgets/efab/FabSize;Lcom/nambimobile/widgets/efab/FabOptionPosition;FFLjava/lang/Long;Ljava/lang/Long;)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v12

    goto :goto_0

    :cond_0
    invoke-static {}, Lv1/f;->V()V

    throw v6

    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getOverlay()Lcom/nambimobile/widgets/efab/Overlay;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->getOverlayOpeningAnimationDurationMs()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/nambimobile/widgets/efab/Overlay;->openingAnimations$expandable_fab_release(Ljava/lang/Long;)Landroid/animation/Animator;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_3

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    :cond_3
    aput-object v6, v4, v3

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->getExpandableFabOpeningAnimationDurationMs()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->getLabelVisibleToHiddenAnimationDurationMs()Ljava/lang/Long;

    move-result-object v3

    new-instance v5, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$getOpeningAnimations$1$1;

    invoke-direct {v5, p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$getOpeningAnimations$1$1;-><init>(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;)V

    invoke-virtual {v0, p1, v3, v5}, Lcom/nambimobile/widgets/efab/ExpandableFab;->openingAnimations$expandable_fab_release(Ljava/lang/Long;Ljava/lang/Long;Lj5/a;)Landroid/animation/Animator;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v4, v0

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    const/4 v0, 0x2

    aput-object p1, v4, v0

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->setStateAsOpened:Lcom/nambimobile/widgets/efab/ExpandableFabLayout$setStateAsOpened$1;

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.nambimobile.widgets.efab.ExpandableFab"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final open()V
    .locals 1

    iget-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->open:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->groupAnimationsFinished:Z

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->getCurrentConfiguration()Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->getOpeningAnimations(Lcom/nambimobile/widgets/efab/OrientationConfiguration;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private final setState(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->animationsFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->open:Z

    iget-boolean p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->closeWhenAble:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->close()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->open:Z

    iput-boolean p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->closeWhenAble:Z

    iput-boolean p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->fabOptionAlreadyClicked:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    instance-of v0, p1, Lcom/nambimobile/widgets/efab/Overlay;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->addOverlay(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/nambimobile/widgets/efab/ExpandableFab;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->addExpandableFab(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/nambimobile/widgets/efab/FabOption;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->addFabOption(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public final varargs addViews([Landroid/view/View;)V
    .locals 3

    const-string v0, "children"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 1

    invoke-direct {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->animationsFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->closeWhenAble:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->open:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->groupAnimationsFinished:Z

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->getCurrentConfiguration()Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->getClosingAnimations(Lcom/nambimobile/widgets/efab/OrientationConfiguration;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final getCurrentConfiguration()Lcom/nambimobile/widgets/efab/OrientationConfiguration;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->portraitConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    invoke-virtual {v0}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getEfab()Lcom/nambimobile/widgets/efab/ExpandableFab;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->portraitConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->landscapeConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->landscapeConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    invoke-virtual {v0}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getEfab()Lcom/nambimobile/widgets/efab/ExpandableFab;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public final synthetic getEfabAnimationsFinished$expandable_fab_release()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->efabAnimationsFinished:Z

    return v0
.end method

.method public final getExpandableFabClosingAnimationDurationMs()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->expandableFabClosingAnimationDurationMs:Ljava/lang/Long;

    return-object v0
.end method

.method public final getExpandableFabOpeningAnimationDurationMs()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->expandableFabOpeningAnimationDurationMs:Ljava/lang/Long;

    return-object v0
.end method

.method public final getFabOptionClosingAnimationDurationMs()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->fabOptionClosingAnimationDurationMs:Ljava/lang/Long;

    return-object v0
.end method

.method public final getFabOptionOpeningAnimationDurationMs()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->fabOptionOpeningAnimationDurationMs:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLabelHiddenToVisibleAnimationDurationMs()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->labelHiddenToVisibleAnimationDurationMs:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLabelVisibleToHiddenAnimationDurationMs()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->labelVisibleToHiddenAnimationDurationMs:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLandscapeConfiguration()Lcom/nambimobile/widgets/efab/OrientationConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->landscapeConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    return-object v0
.end method

.method public final getOverlayClosingAnimationDurationMs()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->overlayClosingAnimationDurationMs:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOverlayOpeningAnimationDurationMs()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->overlayOpeningAnimationDurationMs:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPortraitConfiguration()Lcom/nambimobile/widgets/efab/OrientationConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->portraitConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    return-object v0
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->open:Z

    return v0
.end method

.method public removeAllViews()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    invoke-direct {v0}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;-><init>()V

    iput-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->portraitConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    new-instance v0, Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    invoke-direct {v0}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;-><init>()V

    iput-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->landscapeConfiguration:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->efabAnimationsFinished:Z

    iput-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->groupAnimationsFinished:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->open:Z

    iput-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->closeWhenAble:Z

    iput-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->fabOptionAlreadyClicked:Z

    return-void
.end method

.method public final synthetic setEfabAnimationsFinished$expandable_fab_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->efabAnimationsFinished:Z

    return-void
.end method

.method public final setExpandableFabClosingAnimationDurationMs(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->expandableFabClosingAnimationDurationMs:Ljava/lang/Long;

    return-void
.end method

.method public final setExpandableFabOpeningAnimationDurationMs(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->expandableFabOpeningAnimationDurationMs:Ljava/lang/Long;

    return-void
.end method

.method public final setFabOptionClosingAnimationDurationMs(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->fabOptionClosingAnimationDurationMs:Ljava/lang/Long;

    return-void
.end method

.method public final setFabOptionOpeningAnimationDurationMs(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->fabOptionOpeningAnimationDurationMs:Ljava/lang/Long;

    return-void
.end method

.method public final setLabelHiddenToVisibleAnimationDurationMs(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->labelHiddenToVisibleAnimationDurationMs:Ljava/lang/Long;

    return-void
.end method

.method public final setLabelVisibleToHiddenAnimationDurationMs(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->labelVisibleToHiddenAnimationDurationMs:Ljava/lang/Long;

    return-void
.end method

.method public final setOverlayClosingAnimationDurationMs(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->overlayClosingAnimationDurationMs:Ljava/lang/Long;

    return-void
.end method

.method public final setOverlayOpeningAnimationDurationMs(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->overlayOpeningAnimationDurationMs:Ljava/lang/Long;

    return-void
.end method
