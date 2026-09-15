.class public final Lcom/nambimobile/widgets/efab/Overlay;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private closingAnimationDurationMs:J

.field private defaultOnClickBehavior:Lj5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/a;"
        }
    .end annotation
.end field

.field private final hideOnAnimationEnd:Lcom/nambimobile/widgets/efab/Overlay$hideOnAnimationEnd$1;

.field private openingAnimationDurationMs:J

.field private orientation:Lcom/nambimobile/widgets/efab/Orientation;

.field private overlayAlpha:F

.field private overlayColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/nambimobile/widgets/efab/Orientation;->PORTRAIT:Lcom/nambimobile/widgets/efab/Orientation;

    iput-object v0, p0, Lcom/nambimobile/widgets/efab/Overlay;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lx/g;->a:Ljava/lang/Object;

    const v2, 0x106000b

    .line 1
    invoke-static {v1, v2}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/nambimobile/widgets/efab/Overlay;->overlayColor:I

    const v1, 0x3f48c88a

    iput v1, p0, Lcom/nambimobile/widgets/efab/Overlay;->overlayAlpha:F

    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Lcom/nambimobile/widgets/efab/Overlay;->openingAnimationDurationMs:J

    iput-wide v1, p0, Lcom/nambimobile/widgets/efab/Overlay;->closingAnimationDurationMs:J

    .line 2
    new-instance v1, Lcom/nambimobile/widgets/efab/Overlay$hideOnAnimationEnd$1;

    invoke-direct {v1, p0}, Lcom/nambimobile/widgets/efab/Overlay$hideOnAnimationEnd$1;-><init>(Lcom/nambimobile/widgets/efab/Overlay;)V

    iput-object v1, p0, Lcom/nambimobile/widgets/efab/Overlay;->hideOnAnimationEnd:Lcom/nambimobile/widgets/efab/Overlay$hideOnAnimationEnd$1;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {}, Landroidx/core/view/l0;->a()I

    move-result v1

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/View;->setId(I)V

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/nambimobile/widgets/efab/R$styleable;->Overlay:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/nambimobile/widgets/efab/R$styleable;->Overlay_overlay_orientation:I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget v0, Lcom/nambimobile/widgets/efab/R$styleable;->Overlay_overlay_openingAnimationDurationMs:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/Overlay;->getOpeningAnimationDurationMs()J

    move-result-wide v2

    :goto_1
    move-wide v8, v2

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_7

    :catch_0
    move-exception p2

    goto :goto_6

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :goto_2
    sget v0, Lcom/nambimobile/widgets/efab/R$styleable;->Overlay_overlay_closingAnimationDurationMs:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_3
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/Overlay;->getClosingAnimationDurationMs()J

    move-result-wide v0

    :goto_4
    move-wide v10, v0

    goto :goto_5

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_4

    :goto_5
    invoke-static {}, Lcom/nambimobile/widgets/efab/Orientation;->values()[Lcom/nambimobile/widgets/efab/Orientation;

    move-result-object v0

    aget-object v5, v0, p2

    sget p2, Lcom/nambimobile/widgets/efab/R$styleable;->Overlay_overlay_color:I

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/Overlay;->getOverlayColor()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    sget p2, Lcom/nambimobile/widgets/efab/R$styleable;->Overlay_overlay_alpha:I

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/Overlay;->getOverlayAlpha()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/nambimobile/widgets/efab/Overlay;->setOptionalProperties(Lcom/nambimobile/widgets/efab/Orientation;IFJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_6
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nambimobile/widgets/efab/R$string;->efab_overlay_illegal_optional_properties:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.string.efab_overlay_illegal_optional_properties)"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalArg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p2, Landroidx/fragment/app/u;

    .line 5
    invoke-direct {p2}, Ljava/lang/RuntimeException;-><init>()V

    .line 6
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nambimobile/widgets/efab/Orientation;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/nambimobile/widgets/efab/Orientation;->PORTRAIT:Lcom/nambimobile/widgets/efab/Orientation;

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/Overlay;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    const v0, 0x106000b

    .line 7
    invoke-static {p1, v0}, Lx/d;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/nambimobile/widgets/efab/Overlay;->overlayColor:I

    const p1, 0x3f48c88a

    iput p1, p0, Lcom/nambimobile/widgets/efab/Overlay;->overlayAlpha:F

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/nambimobile/widgets/efab/Overlay;->openingAnimationDurationMs:J

    iput-wide v0, p0, Lcom/nambimobile/widgets/efab/Overlay;->closingAnimationDurationMs:J

    .line 8
    new-instance p1, Lcom/nambimobile/widgets/efab/Overlay$hideOnAnimationEnd$1;

    invoke-direct {p1, p0}, Lcom/nambimobile/widgets/efab/Overlay$hideOnAnimationEnd$1;-><init>(Lcom/nambimobile/widgets/efab/Overlay;)V

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/Overlay;->hideOnAnimationEnd:Lcom/nambimobile/widgets/efab/Overlay$hideOnAnimationEnd$1;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 9
    invoke-static {}, Landroidx/core/view/l0;->a()I

    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/nambimobile/widgets/efab/Overlay;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    :cond_1
    move-object v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x1e

    const/4 v9, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/nambimobile/widgets/efab/Overlay;->setOptionalProperties$default(Lcom/nambimobile/widgets/efab/Overlay;Lcom/nambimobile/widgets/efab/Orientation;IFJJILjava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/nambimobile/widgets/efab/Orientation;ILkotlin/jvm/internal/f;)V
    .locals 0

    .line 11
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/nambimobile/widgets/efab/Orientation;->PORTRAIT:Lcom/nambimobile/widgets/efab/Orientation;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/nambimobile/widgets/efab/Overlay;-><init>(Landroid/content/Context;Lcom/nambimobile/widgets/efab/Orientation;)V

    return-void
.end method

.method public static synthetic a(Lcom/nambimobile/widgets/efab/Overlay;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/nambimobile/widgets/efab/Overlay;->setOnClickListener$lambda-1(Lcom/nambimobile/widgets/efab/Overlay;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method private static final setOnClickListener$lambda-1(Lcom/nambimobile/widgets/efab/Overlay;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/Overlay;->getDefaultOnClickBehavior$expandable_fab_release()Lj5/a;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lj5/a;->invoke()Ljava/lang/Object;

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private final setOptionalProperties(Lcom/nambimobile/widgets/efab/Orientation;IFJJ)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/Overlay;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    invoke-virtual {p0, p3}, Lcom/nambimobile/widgets/efab/Overlay;->setOverlayAlpha(F)V

    invoke-virtual {p0, p2}, Lcom/nambimobile/widgets/efab/Overlay;->setOverlayColor(I)V

    invoke-virtual {p0, p4, p5}, Lcom/nambimobile/widgets/efab/Overlay;->setOpeningAnimationDurationMs(J)V

    invoke-virtual {p0, p6, p7}, Lcom/nambimobile/widgets/efab/Overlay;->setClosingAnimationDurationMs(J)V

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/Overlay;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic setOptionalProperties$default(Lcom/nambimobile/widgets/efab/Overlay;Lcom/nambimobile/widgets/efab/Orientation;IFJJILjava/lang/Object;)V
    .locals 7

    move-object v0, p0

    and-int/lit8 v1, p8, 0x2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/nambimobile/widgets/efab/Overlay;->overlayColor:I

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/nambimobile/widgets/efab/Overlay;->overlayAlpha:F

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    iget-wide v3, v0, Lcom/nambimobile/widgets/efab/Overlay;->openingAnimationDurationMs:J

    goto :goto_2

    :cond_2
    move-wide v3, p4

    :goto_2
    and-int/lit8 v5, p8, 0x10

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/nambimobile/widgets/efab/Overlay;->closingAnimationDurationMs:J

    goto :goto_3

    :cond_3
    move-wide v5, p6

    :goto_3
    move-object p2, p0

    move-object p3, p1

    move p4, v1

    move p5, v2

    move-wide p6, v3

    move-wide p8, v5

    invoke-direct/range {p2 .. p9}, Lcom/nambimobile/widgets/efab/Overlay;->setOptionalProperties(Lcom/nambimobile/widgets/efab/Orientation;IFJJ)V

    return-void
.end method


# virtual methods
.method public final synthetic closingAnimations$expandable_fab_release(Ljava/lang/Long;)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/Overlay;->getClosingAnimationDurationMs()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/nambimobile/widgets/efab/Overlay;->hideOnAnimationEnd:Lcom/nambimobile/widgets/efab/Overlay$hideOnAnimationEnd$1;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public final getClosingAnimationDurationMs()J
    .locals 2

    iget-wide v0, p0, Lcom/nambimobile/widgets/efab/Overlay;->closingAnimationDurationMs:J

    return-wide v0
.end method

.method public final synthetic getDefaultOnClickBehavior$expandable_fab_release()Lj5/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nambimobile/widgets/efab/Overlay;->defaultOnClickBehavior:Lj5/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget v1, Lcom/nambimobile/widgets/efab/R$string;->efab_layout_must_be_child_of_expandablefab_layout:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "resources.getString(R.string.efab_layout_must_be_child_of_expandablefab_layout)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v2, v1, v2}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalState$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroidx/fragment/app/u;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public final getOpeningAnimationDurationMs()J
    .locals 2

    iget-wide v0, p0, Lcom/nambimobile/widgets/efab/Overlay;->openingAnimationDurationMs:J

    return-wide v0
.end method

.method public final getOrientation()Lcom/nambimobile/widgets/efab/Orientation;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/Overlay;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    return-object v0
.end method

.method public final getOverlayAlpha()F
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/Overlay;->overlayAlpha:F

    return v0
.end method

.method public final getOverlayColor()I
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/Overlay;->overlayColor:I

    return v0
.end method

.method public final synthetic openingAnimations$expandable_fab_release(Ljava/lang/Long;)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v0, v2, v1

    const/4 v0, 0x1

    iget v1, p0, Lcom/nambimobile/widgets/efab/Overlay;->overlayAlpha:F

    aput v1, v2, v0

    const-string v0, "alpha"

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/Overlay;->getOpeningAnimationDurationMs()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public final setClosingAnimationDurationMs(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/nambimobile/widgets/efab/Overlay;->closingAnimationDurationMs:J

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget p2, Lcom/nambimobile/widgets/efab/R$string;->efab_overlay_illegal_optional_properties:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "resources.getString(R.string.efab_overlay_illegal_optional_properties)"

    .line 21
    .line 22
    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x2

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {p1, v0, p2, v0}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalArg$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;

    .line 28
    .line 29
    .line 30
    new-instance p1, Landroidx/fragment/app/u;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public final synthetic setDefaultOnClickBehavior$expandable_fab_release(Lj5/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nambimobile/widgets/efab/Overlay;->defaultOnClickBehavior:Lj5/a;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    new-instance v0, Lcom/google/android/material/snackbar/a;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOpeningAnimationDurationMs(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/nambimobile/widgets/efab/Overlay;->openingAnimationDurationMs:J

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget p2, Lcom/nambimobile/widgets/efab/R$string;->efab_overlay_illegal_optional_properties:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "resources.getString(R.string.efab_overlay_illegal_optional_properties)"

    .line 21
    .line 22
    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x2

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {p1, v0, p2, v0}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalArg$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;

    .line 28
    .line 29
    .line 30
    new-instance p1, Landroidx/fragment/app/u;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public final setOverlayAlpha(F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    iput p1, p0, Lcom/nambimobile/widgets/efab/Overlay;->overlayAlpha:F

    return-void
.end method

.method public final setOverlayColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iput p1, p0, Lcom/nambimobile/widgets/efab/Overlay;->overlayColor:I

    return-void
.end method
