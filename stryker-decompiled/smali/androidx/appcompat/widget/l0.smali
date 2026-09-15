.class public Landroidx/appcompat/widget/l0;
.super Landroid/widget/RadioButton;
.source "SourceFile"

# interfaces
.implements Lk0/v;


# instance fields
.field private mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/e0;

.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/t;

.field private final mCompoundButtonHelper:Landroidx/appcompat/widget/y;

.field private final mTextHelper:Landroidx/appcompat/widget/j1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/widget/e4;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/appcompat/widget/d4;->a(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Landroidx/appcompat/widget/y;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/y;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Landroidx/appcompat/widget/l0;->mCompoundButtonHelper:Landroidx/appcompat/widget/y;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/y;->b(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/t;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/t;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/l0;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/t;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/j1;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/j1;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/l0;->mTextHelper:Landroidx/appcompat/widget/j1;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/j1;->f(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Landroidx/appcompat/widget/l0;->getEmojiTextViewHelper()Landroidx/appcompat/widget/e0;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e0;->c(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Landroidx/appcompat/widget/e0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/e0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/e0;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/e0;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/l0;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/e0;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/e0;

    return-object v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->a()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mTextHelper:Landroidx/appcompat/widget/j1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/j1;->b()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/l0;->mCompoundButtonHelper:Landroidx/appcompat/widget/y;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

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

    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mCompoundButtonHelper:Landroidx/appcompat/widget/y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/y;->b:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mCompoundButtonHelper:Landroidx/appcompat/widget/y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/y;->c:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mTextHelper:Landroidx/appcompat/widget/j1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j1;->d()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mTextHelper:Landroidx/appcompat/widget/j1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j1;->e()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public isEmojiCompatEnabled()Z
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/widget/l0;->getEmojiTextViewHelper()Landroidx/appcompat/widget/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/e0;->b()Z

    move-result v0

    return v0
.end method

.method public setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {p0}, Landroidx/appcompat/widget/l0;->getEmojiTextViewHelper()Landroidx/appcompat/widget/e0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e0;->d(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/l0;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/t;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->f(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/l0;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/l0;->mCompoundButtonHelper:Landroidx/appcompat/widget/y;

    if-eqz p1, :cond_1

    .line 2
    iget-boolean v0, p1, Landroidx/appcompat/widget/y;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/appcompat/widget/y;->f:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/appcompat/widget/y;->f:Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/y;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/l0;->mTextHelper:Landroidx/appcompat/widget/j1;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/j1;->b()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/l0;->mTextHelper:Landroidx/appcompat/widget/j1;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/j1;->b()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/widget/l0;->getEmojiTextViewHelper()Landroidx/appcompat/widget/e0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e0;->e(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/widget/l0;->getEmojiTextViewHelper()Landroidx/appcompat/widget/e0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e0;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mCompoundButtonHelper:Landroidx/appcompat/widget/y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, v0, Landroidx/appcompat/widget/y;->b:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Landroidx/appcompat/widget/y;->d:Z

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->a()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mCompoundButtonHelper:Landroidx/appcompat/widget/y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, v0, Landroidx/appcompat/widget/y;->c:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Landroidx/appcompat/widget/y;->e:Z

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->a()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mTextHelper:Landroidx/appcompat/widget/j1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j1;->l(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroidx/appcompat/widget/l0;->mTextHelper:Landroidx/appcompat/widget/j1;

    invoke-virtual {p1}, Landroidx/appcompat/widget/j1;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l0;->mTextHelper:Landroidx/appcompat/widget/j1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j1;->m(Landroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Landroidx/appcompat/widget/l0;->mTextHelper:Landroidx/appcompat/widget/j1;

    invoke-virtual {p1}, Landroidx/appcompat/widget/j1;->b()V

    return-void
.end method
