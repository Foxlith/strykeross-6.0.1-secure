.class public final Landroidx/appcompat/widget/w;
.super Landroid/widget/CheckedTextView;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/widget/x;

.field public final b:Landroidx/appcompat/widget/t;

.field public final c:Landroidx/appcompat/widget/j1;

.field public d:Landroidx/appcompat/widget/e0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    const v6, 0x7f0400bc

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/appcompat/widget/e4;->a(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v6}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    new-instance p1, Landroidx/appcompat/widget/j1;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/j1;-><init>(Landroid/widget/TextView;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/j1;

    .line 23
    .line 24
    invoke-virtual {p1, p2, v6}, Landroidx/appcompat/widget/j1;->f(Landroid/util/AttributeSet;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/appcompat/widget/j1;->b()V

    .line 28
    .line 29
    .line 30
    new-instance p1, Landroidx/appcompat/widget/t;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/t;-><init>(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/t;

    .line 36
    .line 37
    invoke-virtual {p1, p2, v6}, Landroidx/appcompat/widget/t;->d(Landroid/util/AttributeSet;I)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Landroidx/appcompat/widget/x;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/x;-><init>(Landroid/widget/CheckedTextView;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Landroidx/appcompat/widget/w;->a:Landroidx/appcompat/widget/x;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-object v2, Le/a;->l:[I

    .line 52
    .line 53
    invoke-static {p1, p2, v2, v6}, Landroidx/appcompat/widget/h4;->e(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/h4;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v7, p1, Landroidx/appcompat/widget/h4;->b:Landroid/content/res/TypedArray;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v4, p1, Landroidx/appcompat/widget/h4;->b:Landroid/content/res/TypedArray;

    .line 64
    .line 65
    move-object v0, p0

    .line 66
    move-object v3, p2

    .line 67
    move v5, v6

    .line 68
    invoke-static/range {v0 .. v5}, Landroidx/core/view/c1;->n(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    :try_start_0
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v2, 0x0

    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 80
    .line 81
    .line 82
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v1, v0}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/w;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p2

    .line 98
    goto :goto_1

    .line 99
    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_1

    .line 104
    .line 105
    invoke-virtual {v7, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v1, v0}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/w;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    .line 121
    .line 122
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 123
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_2

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/h4;->a(I)Landroid/content/res/ColorStateList;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setCheckMarkTintList(Landroid/content/res/ColorStateList;)V

    .line 134
    .line 135
    .line 136
    :cond_2
    const/4 v0, 0x3

    .line 137
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_3

    .line 142
    .line 143
    const/4 v1, -0x1

    .line 144
    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    const/4 v1, 0x0

    .line 149
    invoke-static {v0, v1}, Landroidx/appcompat/widget/b2;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    .line 155
    .line 156
    :cond_3
    invoke-virtual {p1}, Landroidx/appcompat/widget/h4;->f()V

    .line 157
    .line 158
    .line 159
    invoke-direct {p0}, Landroidx/appcompat/widget/w;->getEmojiTextViewHelper()Landroidx/appcompat/widget/e0;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1, p2, v6}, Landroidx/appcompat/widget/e0;->c(Landroid/util/AttributeSet;I)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :goto_1
    invoke-virtual {p1}, Landroidx/appcompat/widget/h4;->f()V

    .line 168
    .line 169
    .line 170
    throw p2
.end method

.method private getEmojiTextViewHelper()Landroidx/appcompat/widget/e0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/w;->d:Landroidx/appcompat/widget/e0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/e0;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/e0;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/w;->d:Landroidx/appcompat/widget/e0;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/w;->d:Landroidx/appcompat/widget/e0;

    return-object v0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/j1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/j1;->b()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->a()V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->a()V

    :cond_2
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

    iget-object v0, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/t;

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

    iget-object v0, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportCheckMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroidx/appcompat/widget/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/x;->b:Landroid/content/res/ColorStateList;

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

.method public getSupportCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroidx/appcompat/widget/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/x;->c:Landroid/graphics/PorterDuff$Mode;

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

    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/j1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j1;->d()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/j1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j1;->e()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {p0, p1, v0}, La/c;->j(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;)V

    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {p0}, Landroidx/appcompat/widget/w;->getEmojiTextViewHelper()Landroidx/appcompat/widget/e0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e0;->d(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/t;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->f(I)V

    :cond_0
    return-void
.end method

.method public setCheckMarkDrawable(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/w;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/w;->a:Landroidx/appcompat/widget/x;

    if-eqz p1, :cond_1

    .line 2
    iget-boolean v0, p1, Landroidx/appcompat/widget/x;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Landroidx/appcompat/widget/x;->f:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/appcompat/widget/x;->f:Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/x;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/j1;

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
    iget-object p1, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/j1;

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

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/widget/w;->getEmojiTextViewHelper()Landroidx/appcompat/widget/e0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e0;->e(Z)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroidx/appcompat/widget/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, v0, Landroidx/appcompat/widget/x;->b:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Landroidx/appcompat/widget/x;->d:Z

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->a()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setSupportCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroidx/appcompat/widget/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, v0, Landroidx/appcompat/widget/x;->c:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Landroidx/appcompat/widget/x;->e:Z

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->a()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/j1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j1;->l(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/j1;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/j1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j1;->m(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/j1;->b()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/j1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/j1;->g(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
