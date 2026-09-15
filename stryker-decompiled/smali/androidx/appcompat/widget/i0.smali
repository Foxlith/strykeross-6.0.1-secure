.class public final Landroidx/appcompat/widget/i0;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "SourceFile"


# static fields
.field public static final d:[I


# instance fields
.field public final a:Landroidx/appcompat/widget/t;

.field public final b:Landroidx/appcompat/widget/j1;

.field public final c:Landroidx/appcompat/widget/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x1010176

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/i0;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/appcompat/widget/e4;->a(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f040040

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1, p0}, Landroidx/appcompat/widget/d4;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v1, Landroidx/appcompat/widget/i0;->d:[I

    .line 22
    .line 23
    invoke-static {p1, p2, v1, v0}, Landroidx/appcompat/widget/h4;->e(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/h4;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v1, p1, Landroidx/appcompat/widget/h4;->b:Landroid/content/res/TypedArray;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/h4;->b(I)Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/h4;->f()V

    .line 44
    .line 45
    .line 46
    new-instance p1, Landroidx/appcompat/widget/t;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/t;-><init>(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Landroidx/appcompat/widget/i0;->a:Landroidx/appcompat/widget/t;

    .line 52
    .line 53
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/t;->d(Landroid/util/AttributeSet;I)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Landroidx/appcompat/widget/j1;

    .line 57
    .line 58
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/j1;-><init>(Landroid/widget/TextView;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Landroidx/appcompat/widget/i0;->b:Landroidx/appcompat/widget/j1;

    .line 62
    .line 63
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/j1;->f(Landroid/util/AttributeSet;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/appcompat/widget/j1;->b()V

    .line 67
    .line 68
    .line 69
    new-instance p1, Landroidx/appcompat/widget/d0;

    .line 70
    .line 71
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/d0;-><init>(Landroid/widget/EditText;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Landroidx/appcompat/widget/i0;->c:Landroidx/appcompat/widget/d0;

    .line 75
    .line 76
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/d0;->b(Landroid/util/AttributeSet;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    instance-of v0, p2, Landroid/text/method/NumberKeyListener;

    .line 84
    .line 85
    xor-int/lit8 v0, v0, 0x1

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/d0;->a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-ne p1, p2, :cond_1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/i0;->a:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->a()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/i0;->b:Landroidx/appcompat/widget/j1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/j1;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/i0;->a:Landroidx/appcompat/widget/t;

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

    iget-object v0, p0, Landroidx/appcompat/widget/i0;->a:Landroidx/appcompat/widget/t;

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

    iget-object v0, p0, Landroidx/appcompat/widget/i0;->b:Landroidx/appcompat/widget/j1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j1;->d()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/i0;->b:Landroidx/appcompat/widget/j1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j1;->e()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {p0, p1, v0}, La/c;->j(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;)V

    iget-object v1, p0, Landroidx/appcompat/widget/i0;->c:Landroidx/appcompat/widget/d0;

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/widget/d0;->c(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/i0;->a:Landroidx/appcompat/widget/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/t;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/i0;->a:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->f(I)V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/i0;->b:Landroidx/appcompat/widget/j1;

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

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/i0;->b:Landroidx/appcompat/widget/j1;

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
    iget-object v0, p0, Landroidx/appcompat/widget/i0;->c:Landroidx/appcompat/widget/d0;

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

    iget-object v0, p0, Landroidx/appcompat/widget/i0;->c:Landroidx/appcompat/widget/d0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d0;->a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/i0;->a:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/i0;->a:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/i0;->b:Landroidx/appcompat/widget/j1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j1;->l(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/j1;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/i0;->b:Landroidx/appcompat/widget/j1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j1;->m(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/j1;->b()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroidx/appcompat/widget/i0;->b:Landroidx/appcompat/widget/j1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/j1;->g(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
