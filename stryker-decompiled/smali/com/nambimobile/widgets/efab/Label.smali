.class public final Lcom/nambimobile/widgets/efab/Label;
.super Landroidx/appcompat/widget/m1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nambimobile/widgets/efab/Label$WhenMappings;
    }
.end annotation


# instance fields
.field private hiddenToVisibleAnimationDurationMs:J

.field private final hideOnAnimationEnd:Lcom/nambimobile/widgets/efab/Label$hideOnAnimationEnd$1;

.field private labelBackgroundColor:I

.field private labelElevation:I

.field private labelEnabled:Z

.field private labelFont:Landroid/graphics/Typeface;

.field private labelText:Ljava/lang/CharSequence;

.field private labelTextColor:I

.field private labelTextSize:F

.field private marginPx:F

.field private overshootTension:F

.field private position:Lcom/nambimobile/widgets/efab/LabelPosition;

.field private translationXPx:F

.field private visibleToHiddenAnimationDurationMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/m1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    const v0, 0x106000b

    .line 3
    invoke-static {p1, v0}, Lx/d;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelTextColor:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/nambimobile/widgets/efab/R$dimen;->efab_label_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelTextSize:F

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelFont:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/nambimobile/widgets/efab/R$color;->efab_label_background:I

    .line 5
    invoke-static {p1, v0}, Lx/d;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelBackgroundColor:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/nambimobile/widgets/efab/R$dimen;->efab_label_elevation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelElevation:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelEnabled:Z

    sget-object p1, Lcom/nambimobile/widgets/efab/LabelPosition;->LEFT:Lcom/nambimobile/widgets/efab/LabelPosition;

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/Label;->position:Lcom/nambimobile/widgets/efab/LabelPosition;

    const/high16 p1, 0x42480000    # 50.0f

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->marginPx:F

    const/high16 p1, 0x42c80000    # 100.0f

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->translationXPx:F

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/nambimobile/widgets/efab/Label;->visibleToHiddenAnimationDurationMs:J

    const-wide/16 v0, 0x4b

    iput-wide v0, p0, Lcom/nambimobile/widgets/efab/Label;->hiddenToVisibleAnimationDurationMs:J

    const/high16 p1, 0x40600000    # 3.5f

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->overshootTension:F

    new-instance p1, Lcom/nambimobile/widgets/efab/Label$hideOnAnimationEnd$1;

    invoke-direct {p1, p0}, Lcom/nambimobile/widgets/efab/Label$hideOnAnimationEnd$1;-><init>(Lcom/nambimobile/widgets/efab/Label;)V

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/Label;->hideOnAnimationEnd:Lcom/nambimobile/widgets/efab/Label$hideOnAnimationEnd$1;

    .line 7
    invoke-static {}, Landroidx/core/view/l0;->a()I

    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nambimobile/widgets/efab/R$color;->efab_label_background:I

    .line 9
    invoke-static {v0, v1}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nambimobile/widgets/efab/R$dimen;->efab_ui_margin_xxs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nambimobile/widgets/efab/R$dimen;->efab_ui_margin_xs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nambimobile/widgets/efab/R$dimen;->efab_ui_margin_xxs:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nambimobile/widgets/efab/R$dimen;->efab_ui_margin_xs:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nambimobile/widgets/efab/R$dimen;->efab_ui_margin_xxs:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 11
    invoke-static {p0, p1}, Landroidx/core/view/k0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelText:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/Label;->setLabelText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelTextColor:I

    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/Label;->setLabelTextColor(I)V

    iget p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelTextSize:F

    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/Label;->setLabelTextSize(F)V

    iget-object p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelFont:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/Label;->setLabelFont(Landroid/graphics/Typeface;)V

    iget p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/Label;->setLabelBackgroundColor(I)V

    iget p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelElevation:I

    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/Label;->setLabelElevation(I)V

    iget-object p1, p0, Lcom/nambimobile/widgets/efab/Label;->position:Lcom/nambimobile/widgets/efab/LabelPosition;

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/Label;->position:Lcom/nambimobile/widgets/efab/LabelPosition;

    iget p1, p0, Lcom/nambimobile/widgets/efab/Label;->marginPx:F

    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/Label;->setMarginPx(F)V

    iget p1, p0, Lcom/nambimobile/widgets/efab/Label;->translationXPx:F

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->translationXPx:F

    iget-wide v0, p0, Lcom/nambimobile/widgets/efab/Label;->visibleToHiddenAnimationDurationMs:J

    invoke-virtual {p0, v0, v1}, Lcom/nambimobile/widgets/efab/Label;->setVisibleToHiddenAnimationDurationMs(J)V

    iget-wide v0, p0, Lcom/nambimobile/widgets/efab/Label;->hiddenToVisibleAnimationDurationMs:J

    invoke-virtual {p0, v0, v1}, Lcom/nambimobile/widgets/efab/Label;->setHiddenToVisibleAnimationDurationMs(J)V

    iget p1, p0, Lcom/nambimobile/widgets/efab/Label;->overshootTension:F

    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/Label;->setOvershootTension(F)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/m1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lx/g;->a:Ljava/lang/Object;

    const p2, 0x106000b

    .line 13
    invoke-static {p1, p2}, Lx/d;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelTextColor:I

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/nambimobile/widgets/efab/R$dimen;->efab_label_text_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelTextSize:F

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelFont:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/nambimobile/widgets/efab/R$color;->efab_label_background:I

    .line 15
    invoke-static {p1, p2}, Lx/d;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelBackgroundColor:I

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/nambimobile/widgets/efab/R$dimen;->efab_label_elevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelElevation:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelEnabled:Z

    sget-object p1, Lcom/nambimobile/widgets/efab/LabelPosition;->LEFT:Lcom/nambimobile/widgets/efab/LabelPosition;

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/Label;->position:Lcom/nambimobile/widgets/efab/LabelPosition;

    const/high16 p1, 0x42480000    # 50.0f

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->marginPx:F

    const/high16 p1, 0x42c80000    # 100.0f

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->translationXPx:F

    const-wide/16 p1, 0xfa

    iput-wide p1, p0, Lcom/nambimobile/widgets/efab/Label;->visibleToHiddenAnimationDurationMs:J

    const-wide/16 p1, 0x4b

    iput-wide p1, p0, Lcom/nambimobile/widgets/efab/Label;->hiddenToVisibleAnimationDurationMs:J

    const/high16 p1, 0x40600000    # 3.5f

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->overshootTension:F

    new-instance p1, Lcom/nambimobile/widgets/efab/Label$hideOnAnimationEnd$1;

    invoke-direct {p1, p0}, Lcom/nambimobile/widgets/efab/Label$hideOnAnimationEnd$1;-><init>(Lcom/nambimobile/widgets/efab/Label;)V

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/Label;->hideOnAnimationEnd:Lcom/nambimobile/widgets/efab/Label$hideOnAnimationEnd$1;

    .line 17
    invoke-static {}, Landroidx/core/view/l0;->a()I

    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/nambimobile/widgets/efab/R$color;->efab_label_background:I

    .line 19
    invoke-static {p2, v0}, Lx/d;->a(Landroid/content/Context;I)I

    move-result p2

    .line 20
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/nambimobile/widgets/efab/R$dimen;->efab_ui_margin_xxs:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/nambimobile/widgets/efab/R$dimen;->efab_ui_margin_xs:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nambimobile/widgets/efab/R$dimen;->efab_ui_margin_xxs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nambimobile/widgets/efab/R$dimen;->efab_ui_margin_xs:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nambimobile/widgets/efab/R$dimen;->efab_ui_margin_xxs:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 21
    invoke-static {p0, p1}, Landroidx/core/view/k0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final positionSelf()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast v0, Landroidx/coordinatorlayout/widget/f;

    .line 8
    .line 9
    iget v1, v0, Landroidx/coordinatorlayout/widget/f;->f:I

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/Label;->getPosition()Lcom/nambimobile/widgets/efab/LabelPosition;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/nambimobile/widgets/efab/LabelPosition;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, v0, Landroidx/coordinatorlayout/widget/f;->d:I

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/Label;->getPosition()Lcom/nambimobile/widgets/efab/LabelPosition;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/nambimobile/widgets/efab/LabelPosition;->getValue()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iput v1, v0, Landroidx/coordinatorlayout/widget/f;->c:I

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 39
    .line 40
    const-string v1, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method


# virtual methods
.method public final getHiddenToVisibleAnimationDurationMs()J
    .locals 2

    iget-wide v0, p0, Lcom/nambimobile/widgets/efab/Label;->hiddenToVisibleAnimationDurationMs:J

    return-wide v0
.end method

.method public final getLabelBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/Label;->labelBackgroundColor:I

    return v0
.end method

.method public final getLabelElevation()I
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/Label;->labelElevation:I

    return v0
.end method

.method public final synthetic getLabelEnabled$expandable_fab_release()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nambimobile/widgets/efab/Label;->labelEnabled:Z

    return v0
.end method

.method public final getLabelFont()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/Label;->labelFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final getLabelText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/Label;->labelText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getLabelTextColor()I
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/Label;->labelTextColor:I

    return v0
.end method

.method public final getLabelTextSize()F
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/Label;->labelTextSize:F

    return v0
.end method

.method public final getMarginPx()F
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/Label;->marginPx:F

    return v0
.end method

.method public final getOvershootTension()F
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/Label;->overshootTension:F

    return v0
.end method

.method public final getPosition()Lcom/nambimobile/widgets/efab/LabelPosition;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/Label;->position:Lcom/nambimobile/widgets/efab/LabelPosition;

    return-object v0
.end method

.method public final getTranslationXPx()F
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/Label;->translationXPx:F

    return v0
.end method

.method public final getVisibleToHiddenAnimationDurationMs()J
    .locals 2

    iget-wide v0, p0, Lcom/nambimobile/widgets/efab/Label;->visibleToHiddenAnimationDurationMs:J

    return-wide v0
.end method

.method public final synthetic hiddenToVisibleAnimations$expandable_fab_release(Ljava/lang/Long;)Landroid/animation/Animator;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/nambimobile/widgets/efab/Label;->labelText:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 8
    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/nambimobile/widgets/efab/Label;->positionSelf()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/nambimobile/widgets/efab/Label;->position:Lcom/nambimobile/widgets/efab/LabelPosition;

    .line 23
    .line 24
    sget-object v2, Lcom/nambimobile/widgets/efab/Label$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    aget v1, v2, v1

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    const/4 v4, 0x2

    .line 34
    if-eq v1, v3, :cond_2

    .line 35
    .line 36
    if-ne v1, v4, :cond_1

    .line 37
    .line 38
    iget v1, p0, Lcom/nambimobile/widgets/efab/Label;->marginPx:F

    .line 39
    .line 40
    iget v5, p0, Lcom/nambimobile/widgets/efab/Label;->translationXPx:F

    .line 41
    .line 42
    :goto_0
    add-float/2addr v1, v5

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance p1, Landroidx/fragment/app/u;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    iget v1, p0, Lcom/nambimobile/widgets/efab/Label;->marginPx:F

    .line 51
    .line 52
    neg-float v1, v1

    .line 53
    iget v5, p0, Lcom/nambimobile/widgets/efab/Label;->translationXPx:F

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_1
    iget-object v5, p0, Lcom/nambimobile/widgets/efab/Label;->position:Lcom/nambimobile/widgets/efab/LabelPosition;

    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    aget v2, v2, v5

    .line 63
    .line 64
    if-eq v2, v3, :cond_4

    .line 65
    .line 66
    if-ne v2, v4, :cond_3

    .line 67
    .line 68
    iget v2, p0, Lcom/nambimobile/widgets/efab/Label;->marginPx:F

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    new-instance p1, Landroidx/fragment/app/u;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_4
    iget v2, p0, Lcom/nambimobile/widgets/efab/Label;->marginPx:F

    .line 78
    .line 79
    neg-float v2, v2

    .line 80
    :goto_2
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 81
    .line 82
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 83
    .line 84
    .line 85
    new-array v6, v4, [Landroid/animation/Animator;

    .line 86
    .line 87
    new-array v7, v4, [F

    .line 88
    .line 89
    aput v1, v7, v0

    .line 90
    .line 91
    aput v2, v7, v3

    .line 92
    .line 93
    const-string v1, "translationX"

    .line 94
    .line 95
    invoke-static {p0, v1, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-nez p1, :cond_5

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/Label;->getHiddenToVisibleAnimationDurationMs()J

    .line 102
    .line 103
    .line 104
    move-result-wide v7

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 107
    .line 108
    .line 109
    move-result-wide v7

    .line 110
    :goto_3
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 111
    .line 112
    .line 113
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/Label;->getOvershootTension()F

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    invoke-direct {v2, v7}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 123
    .line 124
    .line 125
    aput-object v1, v6, v0

    .line 126
    .line 127
    new-array v0, v4, [F

    .line 128
    .line 129
    fill-array-data v0, :array_0

    .line 130
    .line 131
    .line 132
    const-string v1, "alpha"

    .line 133
    .line 134
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-nez p1, :cond_6

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/Label;->getHiddenToVisibleAnimationDurationMs()J

    .line 141
    .line 142
    .line 143
    move-result-wide v1

    .line 144
    goto :goto_4

    .line 145
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 146
    .line 147
    .line 148
    move-result-wide v1

    .line 149
    :goto_4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 150
    .line 151
    .line 152
    aput-object v0, v6, v3

    .line 153
    .line 154
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 155
    .line 156
    .line 157
    return-object v5

    .line 158
    nop

    .line 159
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final synthetic hideLabel$expandable_fab_release()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    const v0, 0x3f6ccccd    # 0.925f

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_3

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    :goto_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setHiddenToVisibleAnimationDurationMs(J)V
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
    iput-wide p1, p0, Lcom/nambimobile/widgets/efab/Label;->hiddenToVisibleAnimationDurationMs:J

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
    sget p2, Lcom/nambimobile/widgets/efab/R$string;->efab_label_illegal_optional_properties:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "resources.getString(R.string.efab_label_illegal_optional_properties)"

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

.method public final setLabelBackgroundColor(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelBackgroundColor:I

    return-void
.end method

.method public final setLabelElevation(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    int-to-float v0, p1

    .line 4
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/core/view/q0;->s(Landroid/view/View;F)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelElevation:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget v0, Lcom/nambimobile/widgets/efab/R$string;->efab_label_illegal_optional_properties:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "resources.getString(R.string.efab_label_illegal_optional_properties)"

    .line 23
    .line 24
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p1, v1, v0, v1}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalArg$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroidx/fragment/app/u;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public final setLabelEnabled$expandable_fab_release(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/nambimobile/widgets/efab/Label;->labelBackgroundColor:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/nambimobile/widgets/efab/Label;->setLabelBackgroundColor(I)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/nambimobile/widgets/efab/Label;->labelTextColor:I

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/nambimobile/widgets/efab/Label;->setLabelTextColor(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget v1, Lcom/nambimobile/widgets/efab/R$color;->efab_disabled:I

    .line 19
    .line 20
    sget-object v2, Lx/g;->a:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lx/d;->a(Landroid/content/Context;I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget v2, Lcom/nambimobile/widgets/efab/R$color;->efab_disabled_text:I

    .line 31
    .line 32
    invoke-static {v1, v2}, Lx/d;->a(Landroid/content/Context;I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 41
    .line 42
    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    .line 50
    .line 51
    iput-boolean p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelEnabled:Z

    .line 52
    .line 53
    return-void
.end method

.method public final setLabelFont(Landroid/graphics/Typeface;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelFont:Landroid/graphics/Typeface;

    return-void
.end method

.method public final setLabelText(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iput-object p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setLabelTextColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelTextColor:I

    return-void
.end method

.method public final setLabelTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/m1;->setTextSize(IF)V

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->labelTextSize:F

    return-void
.end method

.method public final setMarginPx(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->marginPx:F

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget v0, Lcom/nambimobile/widgets/efab/R$string;->efab_label_illegal_optional_properties:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "resources.getString(R.string.efab_label_illegal_optional_properties)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {p1, v1, v0, v1}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalArg$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroidx/fragment/app/u;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final setOvershootTension(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->overshootTension:F

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget v0, Lcom/nambimobile/widgets/efab/R$string;->efab_label_illegal_optional_properties:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "resources.getString(R.string.efab_label_illegal_optional_properties)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {p1, v1, v0, v1}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalArg$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroidx/fragment/app/u;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final setPosition(Lcom/nambimobile/widgets/efab/LabelPosition;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/Label;->position:Lcom/nambimobile/widgets/efab/LabelPosition;

    return-void
.end method

.method public final setTranslationXPx(F)V
    .locals 0

    iput p1, p0, Lcom/nambimobile/widgets/efab/Label;->translationXPx:F

    return-void
.end method

.method public final setVisibleToHiddenAnimationDurationMs(J)V
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
    iput-wide p1, p0, Lcom/nambimobile/widgets/efab/Label;->visibleToHiddenAnimationDurationMs:J

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
    sget p2, Lcom/nambimobile/widgets/efab/R$string;->efab_label_illegal_optional_properties:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "resources.getString(R.string.efab_label_illegal_optional_properties)"

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

.method public final synthetic showLabel$expandable_fab_release()V
    .locals 2

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/Label;->labelText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nambimobile/widgets/efab/Label;->positionSelf()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/Label;->position:Lcom/nambimobile/widgets/efab/LabelPosition;

    sget-object v1, Lcom/nambimobile/widgets/efab/Label$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/nambimobile/widgets/efab/Label;->marginPx:F

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/nambimobile/widgets/efab/Label;->marginPx:F

    neg-float v0, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final synthetic visibleToHiddenAnimations$expandable_fab_release(Ljava/lang/Long;)Landroid/animation/Animator;
    .locals 8

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/Label;->labelText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget v1, p0, Lcom/nambimobile/widgets/efab/Label;->translationXPx:F

    add-float/2addr v0, v1

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/animation/Animator;

    new-array v2, v2, [F

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v2, v5

    const/4 v4, 0x1

    aput v0, v2, v4

    const-string v0, "translationX"

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/Label;->getVisibleToHiddenAnimationDurationMs()J

    move-result-wide v6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_0
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    aput-object v0, v3, v5

    new-array v0, v4, [F

    const/4 v2, 0x0

    aput v2, v0, v5

    const-string v2, "alpha"

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/Label;->getVisibleToHiddenAnimationDurationMs()J

    move-result-wide v5

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/nambimobile/widgets/efab/Label;->hideOnAnimationEnd:Lcom/nambimobile/widgets/efab/Label$hideOnAnimationEnd$1;

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1
.end method
