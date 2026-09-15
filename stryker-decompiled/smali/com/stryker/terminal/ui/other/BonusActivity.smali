.class public final Lcom/stryker/terminal/ui/other/BonusActivity;
.super Lf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/ui/other/BonusActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stryker/terminal/ui/other/BonusActivity$Companion;

.field private static final FLAVORS:[I


# instance fields
.field private mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mKeyCount:I

.field public mLayout:Landroid/widget/FrameLayout;

.field private mTapCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/ui/other/BonusActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/ui/other/BonusActivity$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/ui/other/BonusActivity;->Companion:Lcom/stryker/terminal/ui/other/BonusActivity$Companion;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/stryker/terminal/ui/other/BonusActivity;->FLAVORS:[I

    return-void

    :array_0
    .array-data 4
        -0x63d850
        -0x459738
        -0x6800
        -0x48b3
        -0xf9d6e
        -0x74430
        -0x504bd5
        -0x3223c7
        -0x86aab8
        -0x5e7781
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lf/q;-><init>()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public static final synthetic access$getFLAVORS$cp()[I
    .locals 1

    sget-object v0, Lcom/stryker/terminal/ui/other/BonusActivity;->FLAVORS:[I

    return-object v0
.end method

.method public static synthetic f(Lcom/stryker/terminal/ui/other/BonusActivity;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/stryker/terminal/ui/other/BonusActivity;->onAttachedToWindow$lambda$0(Lcom/stryker/terminal/ui/other/BonusActivity;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/stryker/terminal/ui/other/BonusActivity;Landroid/widget/ImageView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/stryker/terminal/ui/other/BonusActivity;->onAttachedToWindow$lambda$1(Lcom/stryker/terminal/ui/other/BonusActivity;Landroid/widget/ImageView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private static final onAttachedToWindow$lambda$0(Lcom/stryker/terminal/ui/other/BonusActivity;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;Landroid/view/View;)V
    .locals 4

    const-string p4, "this$0"

    invoke-static {p0, p4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$im"

    invoke-static {p1, p4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$stick"

    invoke-static {p3, p4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget p4, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mTapCount:I

    if-nez p4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p4, 0x42200000    # 40.0f

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x2bc

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x0

    const/16 v2, 0xff

    filled-new-array {p1, v2}, [I

    move-result-object p1

    const-string v2, "alpha"

    invoke-static {p2, v2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x2ee

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/other/BonusActivity;->makeRipple$terminal_release()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget p1, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mTapCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mTapCount:I

    return-void
.end method

.method private static final onAttachedToWindow$lambda$1(Lcom/stryker/terminal/ui/other/BonusActivity;Landroid/widget/ImageView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$im"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x4

    if-eq p3, p2, :cond_1

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mKeyCount:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mKeyCount:I

    const/4 p4, 0x2

    if-le p2, p4, :cond_2

    iget p0, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mTapCount:I

    const/4 p2, 0x5

    if-le p0, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :cond_2
    :goto_0
    return p3
.end method


# virtual methods
.method public final getMInterpolator$terminal_release()Landroid/view/animation/PathInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method public final getMKeyCount$terminal_release()I
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mKeyCount:I

    return v0
.end method

.method public final getMLayout$terminal_release()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mLayout"

    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getMTapCount$terminal_release()I
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mTapCount:I

    return v0
.end method

.method public final makeRipple$terminal_release()Landroid/graphics/drawable/Drawable;
    .locals 5

    sget-object v0, Lcom/stryker/terminal/ui/other/BonusActivity;->Companion:Lcom/stryker/terminal/ui/other/BonusActivity$Companion;

    invoke-virtual {v0}, Lcom/stryker/terminal/ui/other/BonusActivity$Companion;->newColorIndex$terminal_release()I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Lcom/stryker/terminal/ui/other/BonusActivity;->FLAVORS:[I

    aget v4, v3, v0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    add-int/lit8 v0, v0, 0x1

    aget v0, v3, v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method public onAttachedToWindow()V
    .locals 10

    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/16 v2, 0x258

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    new-instance v6, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;

    invoke-direct {v6, p0, v0}, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;-><init>(Lcom/stryker/terminal/ui/other/BonusActivity;I)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/other/BonusActivity;->getMLayout$terminal_release()Landroid/widget/FrameLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x20

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    const/4 v4, -0x1

    const/4 v8, 0x1

    invoke-direct {v3, v1, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationZ(F)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setScaleY(F)V

    sget v1, Lcom/stryker/terminal/R$drawable;->strykerdefence:I

    invoke-static {p0, v1}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Li5/a;->m(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/other/BonusActivity;->makeRipple$terminal_release()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v8}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const v3, 0x10ffffff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v0

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v9}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/stryker/terminal/ui/other/a;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, v9

    invoke-direct/range {v2 .. v7}, Lcom/stryker/terminal/ui/other/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v8}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    new-instance v1, Lcom/stryker/terminal/ui/other/b;

    invoke-direct {v1, p0, v9}, Lcom/stryker/terminal/ui/other/b;-><init>(Lcom/stryker/terminal/ui/other/BonusActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/other/BonusActivity;->getMLayout$terminal_release()Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/other/BonusActivity;->setMLayout$terminal_release(Landroid/widget/FrameLayout;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/other/BonusActivity;->getMLayout$terminal_release()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf/q;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setMInterpolator$terminal_release(Landroid/view/animation/PathInterpolator;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public final setMKeyCount$terminal_release(I)V
    .locals 0

    iput p1, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mKeyCount:I

    return-void
.end method

.method public final setMLayout$terminal_release(Landroid/widget/FrameLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final setMTapCount$terminal_release(I)V
    .locals 0

    iput p1, p0, Lcom/stryker/terminal/ui/other/BonusActivity;->mTapCount:I

    return-void
.end method
