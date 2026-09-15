.class public final Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/ui/other/BonusActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $size:I

.field private mPaint:Landroid/graphics/Paint;

.field private mShadow:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/ui/other/BonusActivity;I)V
    .locals 0

    iput p2, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->$size:I

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->mPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->mShadow:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final getMPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getMShadow$terminal_release()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->mShadow:Landroid/graphics/Path;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1$onAttachedToWindow$1;

    invoke-direct {v0, p0}, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1$onAttachedToWindow$1;-><init>(Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "c"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    int-to-float v4, v0

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v5, v4

    invoke-virtual {v2, v5, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    const/4 v5, -0x1

    const v6, -0x555556

    filled-new-array {v5, v6}, [I

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->mShadow:Landroid/graphics/Path;

    iget v1, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->$size:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v4

    add-float/2addr v2, v1

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->mShadow:Landroid/graphics/Path;

    iget v1, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->$size:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->mShadow:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final setMPaint(Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public final setMShadow$terminal_release(Landroid/graphics/Path;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->mShadow:Landroid/graphics/Path;

    return-void
.end method
