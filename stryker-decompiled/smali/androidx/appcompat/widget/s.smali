.class public Landroidx/appcompat/widget/s;
.super Landroid/widget/AutoCompleteTextView;
.source "SourceFile"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private final mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/d0;

.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/t;

.field private final mTextHelper:Landroidx/appcompat/widget/j1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x1010176

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/s;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/appcompat/widget/e4;->a(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1, p0}, Landroidx/appcompat/widget/d4;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v0, Landroidx/appcompat/widget/s;->TINT_ATTRS:[I

    .line 19
    .line 20
    invoke-static {p1, p2, v0, p3}, Landroidx/appcompat/widget/h4;->e(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/h4;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p1, Landroidx/appcompat/widget/h4;->b:Landroid/content/res/TypedArray;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/h4;->b(I)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/h4;->f()V

    .line 41
    .line 42
    .line 43
    new-instance p1, Landroidx/appcompat/widget/t;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/t;-><init>(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    .line 49
    .line 50
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/t;->d(Landroid/util/AttributeSet;I)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroidx/appcompat/widget/j1;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/j1;-><init>(Landroid/widget/TextView;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Landroidx/appcompat/widget/s;->mTextHelper:Landroidx/appcompat/widget/j1;

    .line 59
    .line 60
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/j1;->f(Landroid/util/AttributeSet;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/appcompat/widget/j1;->b()V

    .line 64
    .line 65
    .line 66
    new-instance p1, Landroidx/appcompat/widget/d0;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/d0;-><init>(Landroid/widget/EditText;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Landroidx/appcompat/widget/s;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/d0;

    .line 72
    .line 73
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/d0;->b(Landroid/util/AttributeSet;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/s;->initEmojiKeyListener(Landroidx/appcompat/widget/d0;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->a()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/s;->mTextHelper:Landroidx/appcompat/widget/j1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/j1;->b()V

    :cond_1
    return-void
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-static {v0}, Lg/a;->G(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

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

    iget-object v0, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/s;->mTextHelper:Landroidx/appcompat/widget/j1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j1;->d()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/s;->mTextHelper:Landroidx/appcompat/widget/j1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j1;->e()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public initEmojiKeyListener(Landroidx/appcompat/widget/d0;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    instance-of v1, v0, Landroid/text/method/NumberKeyListener;

    .line 9
    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-super {p0}, Landroid/view/View;->isFocusable()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-super {p0}, Landroid/view/View;->isClickable()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-super {p0}, Landroid/view/View;->isLongClickable()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-super {p0}, Landroid/widget/TextView;->getInputType()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/d0;->a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-ne p1, v0, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 38
    .line 39
    .line 40
    invoke-super {p0, v4}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 41
    .line 42
    .line 43
    invoke-super {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 44
    .line 45
    .line 46
    invoke-super {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 47
    .line 48
    .line 49
    invoke-super {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public isEmojiCompatEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/s;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/d0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/d0;->b:Lr0/b;

    .line 4
    .line 5
    iget-object v0, v0, Lr0/b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ld/d;

    .line 8
    .line 9
    invoke-virtual {v0}, Ld/d;->k()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {p0, p1, v0}, La/c;->j(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;)V

    iget-object v1, p0, Landroidx/appcompat/widget/s;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/d0;

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/widget/d0;->c(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/t;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->f(I)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/s;->mTextHelper:Landroidx/appcompat/widget/j1;

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
    iget-object p1, p0, Landroidx/appcompat/widget/s;->mTextHelper:Landroidx/appcompat/widget/j1;

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

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-static {p1, p0}, Lg/a;->J(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/s;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/d0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/d0;->b:Lr0/b;

    .line 4
    .line 5
    iget-object v0, v0, Lr0/b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ld/d;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ld/d;->r(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/s;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/d0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d0;->a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/s;->mTextHelper:Landroidx/appcompat/widget/j1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j1;->l(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroidx/appcompat/widget/s;->mTextHelper:Landroidx/appcompat/widget/j1;

    invoke-virtual {p1}, Landroidx/appcompat/widget/j1;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/s;->mTextHelper:Landroidx/appcompat/widget/j1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j1;->m(Landroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Landroidx/appcompat/widget/s;->mTextHelper:Landroidx/appcompat/widget/j1;

    invoke-virtual {p1}, Landroidx/appcompat/widget/j1;->b()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroidx/appcompat/widget/s;->mTextHelper:Landroidx/appcompat/widget/j1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/j1;->g(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
