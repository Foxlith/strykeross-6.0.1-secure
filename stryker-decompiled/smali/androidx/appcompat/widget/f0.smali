.class public Landroidx/appcompat/widget/f0;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/t;

.field private mHasLevel:Z

.field private final mImageHelper:Landroidx/appcompat/widget/g0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const v0, 0x7f040265

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/f0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-static {p1}, Landroidx/appcompat/widget/e4;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/f0;->mHasLevel:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/appcompat/widget/d4;->a(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Landroidx/appcompat/widget/t;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/t;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/f0;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/t;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/g0;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/g0;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/f0;->mImageHelper:Landroidx/appcompat/widget/g0;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/g0;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/f0;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->a()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->mImageHelper:Landroidx/appcompat/widget/g0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/g0;->a()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/f0;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/f0;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->mImageHelper:Landroidx/appcompat/widget/g0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/appcompat/widget/g0;->b:Landroidx/appcompat/widget/f4;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/appcompat/widget/f4;->c:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v1, v0

    .line 13
    check-cast v1, Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    :cond_0
    return-object v1
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->mImageHelper:Landroidx/appcompat/widget/g0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/appcompat/widget/g0;->b:Landroidx/appcompat/widget/f4;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v1, v0

    .line 13
    check-cast v1, Landroid/graphics/PorterDuff$Mode;

    .line 14
    .line 15
    :cond_0
    return-object v1
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->mImageHelper:Landroidx/appcompat/widget/g0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/g0;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    xor-int/2addr v0, v1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-super {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    return v1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/f0;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/t;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/f0;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->f(I)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Landroidx/appcompat/widget/f0;->mImageHelper:Landroidx/appcompat/widget/g0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/g0;->a()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->mImageHelper:Landroidx/appcompat/widget/g0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, p0, Landroidx/appcompat/widget/f0;->mHasLevel:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v1, v0, Landroidx/appcompat/widget/g0;->c:I

    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/appcompat/widget/f0;->mImageHelper:Landroidx/appcompat/widget/g0;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/appcompat/widget/g0;->a()V

    .line 25
    .line 26
    .line 27
    iget-boolean p1, p0, Landroidx/appcompat/widget/f0;->mHasLevel:Z

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/appcompat/widget/f0;->mImageHelper:Landroidx/appcompat/widget/g0;

    .line 32
    .line 33
    iget-object v0, p1, Landroidx/appcompat/widget/g0;->a:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget p1, p1, Landroidx/appcompat/widget/g0;->c:I

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public setImageLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/f0;->mHasLevel:Z

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/f0;->mImageHelper:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/g0;->c(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p1, p0, Landroidx/appcompat/widget/f0;->mImageHelper:Landroidx/appcompat/widget/g0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/g0;->a()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/f0;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/f0;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->mImageHelper:Landroidx/appcompat/widget/g0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/appcompat/widget/g0;->b:Landroidx/appcompat/widget/f4;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroidx/appcompat/widget/f4;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2}, Landroidx/appcompat/widget/f4;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Landroidx/appcompat/widget/g0;->b:Landroidx/appcompat/widget/f4;

    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/g0;->b:Landroidx/appcompat/widget/f4;

    .line 18
    .line 19
    iput-object p1, v1, Landroidx/appcompat/widget/f4;->c:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, v1, Landroidx/appcompat/widget/f4;->b:Z

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/appcompat/widget/g0;->a()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->mImageHelper:Landroidx/appcompat/widget/g0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/appcompat/widget/g0;->b:Landroidx/appcompat/widget/f4;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroidx/appcompat/widget/f4;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2}, Landroidx/appcompat/widget/f4;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Landroidx/appcompat/widget/g0;->b:Landroidx/appcompat/widget/f4;

    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/g0;->b:Landroidx/appcompat/widget/f4;

    .line 18
    .line 19
    iput-object p1, v1, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, v1, Landroidx/appcompat/widget/f4;->a:Z

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/appcompat/widget/g0;->a()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method
