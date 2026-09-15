.class public final Landroidx/appcompat/widget/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Landroidx/appcompat/widget/f4;

.field public c:Landroidx/appcompat/widget/f4;

.field public d:Landroidx/appcompat/widget/f4;

.field public e:Landroidx/appcompat/widget/f4;

.field public f:Landroidx/appcompat/widget/f4;

.field public g:Landroidx/appcompat/widget/f4;

.field public h:Landroidx/appcompat/widget/f4;

.field public final i:Landroidx/appcompat/widget/u1;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/j1;->j:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/j1;->k:I

    iput-object p1, p0, Landroidx/appcompat/widget/j1;->a:Landroid/widget/TextView;

    new-instance v0, Landroidx/appcompat/widget/u1;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/u1;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->i:Landroidx/appcompat/widget/u1;

    return-void
.end method

.method public static c(Landroid/content/Context;Landroidx/appcompat/widget/a0;I)Landroidx/appcompat/widget/f4;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Landroidx/appcompat/widget/a0;->a:Landroidx/appcompat/widget/d3;

    .line 3
    .line 4
    invoke-virtual {v0, p0, p2}, Landroidx/appcompat/widget/d3;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p1, Landroidx/appcompat/widget/f4;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-direct {p1, p2}, Landroidx/appcompat/widget/f4;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p1, Landroidx/appcompat/widget/f4;->b:Z

    .line 19
    .line 20
    iput-object p0, p1, Landroidx/appcompat/widget/f4;->c:Ljava/lang/Object;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit p1

    .line 27
    throw p0
.end method

.method public static h(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-ge v0, v1, :cond_c

    .line 6
    .line 7
    if-eqz p1, :cond_c

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {p2, p0}, Lj0/b;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    if-lt v0, v1, :cond_1

    .line 24
    .line 25
    invoke-static {p2, p0}, Lj0/b;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_1
    iget p1, p2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 31
    .line 32
    iget v0, p2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 33
    .line 34
    if-le p1, v0, :cond_2

    .line 35
    .line 36
    move v1, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v1, p1

    .line 39
    :goto_0
    if-le p1, v0, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move p1, v0

    .line 43
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    if-ltz v1, :cond_b

    .line 50
    .line 51
    if-le p1, v0, :cond_4

    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_4
    iget v4, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 56
    .line 57
    and-int/lit16 v4, v4, 0xfff

    .line 58
    .line 59
    const/16 v5, 0x81

    .line 60
    .line 61
    if-eq v4, v5, :cond_b

    .line 62
    .line 63
    const/16 v5, 0xe1

    .line 64
    .line 65
    if-eq v4, v5, :cond_b

    .line 66
    .line 67
    const/16 v5, 0x12

    .line 68
    .line 69
    if-ne v4, v5, :cond_5

    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_5
    const/16 v3, 0x800

    .line 74
    .line 75
    if-gt v0, v3, :cond_6

    .line 76
    .line 77
    invoke-static {p2, p0, v1, p1}, Lj0/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_5

    .line 81
    .line 82
    :cond_6
    sub-int v0, p1, v1

    .line 83
    .line 84
    const/16 v3, 0x400

    .line 85
    .line 86
    if-le v0, v3, :cond_7

    .line 87
    .line 88
    move v3, v2

    .line 89
    goto :goto_2

    .line 90
    :cond_7
    move v3, v0

    .line 91
    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    sub-int/2addr v4, p1

    .line 96
    rsub-int v5, v3, 0x800

    .line 97
    .line 98
    const-wide v6, 0x3fe999999999999aL    # 0.8

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    int-to-double v8, v5

    .line 104
    mul-double/2addr v8, v6

    .line 105
    double-to-int v6, v8

    .line 106
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    sub-int v6, v5, v6

    .line 111
    .line 112
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    sub-int/2addr v5, v4

    .line 117
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    sub-int/2addr v1, v5

    .line 122
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_8

    .line 131
    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 133
    .line 134
    add-int/lit8 v5, v5, -0x1

    .line 135
    .line 136
    :cond_8
    add-int v6, p1, v4

    .line 137
    .line 138
    const/4 v7, 0x1

    .line 139
    sub-int/2addr v6, v7

    .line 140
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-eqz v6, :cond_9

    .line 149
    .line 150
    add-int/lit8 v4, v4, -0x1

    .line 151
    .line 152
    :cond_9
    add-int v6, v5, v3

    .line 153
    .line 154
    add-int v8, v6, v4

    .line 155
    .line 156
    if-eq v3, v0, :cond_a

    .line 157
    .line 158
    add-int v0, v1, v5

    .line 159
    .line 160
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    add-int/2addr v4, p1

    .line 165
    invoke-interface {p0, p1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    const/4 p1, 0x2

    .line 170
    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 171
    .line 172
    aput-object v0, p1, v2

    .line 173
    .line 174
    aput-object p0, p1, v7

    .line 175
    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    goto :goto_3

    .line 181
    :cond_a
    add-int/2addr v8, v1

    .line 182
    invoke-interface {p0, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    :goto_3
    invoke-static {p2, p0, v5, v6}, Lj0/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_b
    :goto_4
    invoke-static {p2, v3, v2, v2}, Lj0/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 191
    .line 192
    .line 193
    :cond_c
    :goto_5
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/f4;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/j1;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/a0;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/f4;[I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j1;->b:Landroidx/appcompat/widget/f4;

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/appcompat/widget/j1;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/j1;->c:Landroidx/appcompat/widget/f4;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/j1;->d:Landroidx/appcompat/widget/f4;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/j1;->e:Landroidx/appcompat/widget/f4;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v4, v0, v2

    iget-object v5, p0, Landroidx/appcompat/widget/j1;->b:Landroidx/appcompat/widget/f4;

    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/j1;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/f4;)V

    const/4 v4, 0x1

    aget-object v4, v0, v4

    iget-object v5, p0, Landroidx/appcompat/widget/j1;->c:Landroidx/appcompat/widget/f4;

    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/j1;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/f4;)V

    aget-object v4, v0, v1

    iget-object v5, p0, Landroidx/appcompat/widget/j1;->d:Landroidx/appcompat/widget/f4;

    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/j1;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/f4;)V

    const/4 v4, 0x3

    aget-object v0, v0, v4

    iget-object v4, p0, Landroidx/appcompat/widget/j1;->e:Landroidx/appcompat/widget/f4;

    invoke-virtual {p0, v0, v4}, Landroidx/appcompat/widget/j1;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/f4;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/j1;->f:Landroidx/appcompat/widget/f4;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/j1;->g:Landroidx/appcompat/widget/f4;

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {v3}, Landroidx/appcompat/widget/f1;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/j1;->f:Landroidx/appcompat/widget/f4;

    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/widget/j1;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/f4;)V

    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/j1;->g:Landroidx/appcompat/widget/f4;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/j1;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/f4;)V

    :cond_3
    return-void
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j1;->h:Landroidx/appcompat/widget/f4;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/f4;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final e()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j1;->h:Landroidx/appcompat/widget/f4;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    iget-object v9, v0, Landroidx/appcompat/widget/j1;->a:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v10

    .line 13
    invoke-static {}, Landroidx/appcompat/widget/a0;->a()Landroidx/appcompat/widget/a0;

    .line 14
    .line 15
    .line 16
    move-result-object v11

    .line 17
    sget-object v3, Le/a;->h:[I

    .line 18
    .line 19
    invoke-static {v10, v7, v3, v8}, Landroidx/appcompat/widget/h4;->e(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/h4;

    .line 20
    .line 21
    .line 22
    move-result-object v12

    .line 23
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v5, v12, Landroidx/appcompat/widget/h4;->b:Landroid/content/res/TypedArray;

    .line 28
    .line 29
    move-object v1, v9

    .line 30
    move-object/from16 v4, p1

    .line 31
    .line 32
    move/from16 v6, p2

    .line 33
    .line 34
    invoke-static/range {v1 .. v6}, Landroidx/core/view/c1;->n(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v12, Landroidx/appcompat/widget/h4;->b:Landroid/content/res/TypedArray;

    .line 38
    .line 39
    const/4 v13, 0x0

    .line 40
    const/4 v14, -0x1

    .line 41
    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v15, 0x3

    .line 46
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1, v15, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-static {v10, v11, v3}, Landroidx/appcompat/widget/j1;->c(Landroid/content/Context;Landroidx/appcompat/widget/a0;I)Landroidx/appcompat/widget/f4;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iput-object v3, v0, Landroidx/appcompat/widget/j1;->b:Landroidx/appcompat/widget/f4;

    .line 61
    .line 62
    :cond_0
    const/4 v6, 0x1

    .line 63
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    invoke-virtual {v1, v6, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-static {v10, v11, v3}, Landroidx/appcompat/widget/j1;->c(Landroid/content/Context;Landroidx/appcompat/widget/a0;I)Landroidx/appcompat/widget/f4;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iput-object v3, v0, Landroidx/appcompat/widget/j1;->c:Landroidx/appcompat/widget/f4;

    .line 78
    .line 79
    :cond_1
    const/4 v5, 0x4

    .line 80
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    invoke-virtual {v1, v5, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-static {v10, v11, v3}, Landroidx/appcompat/widget/j1;->c(Landroid/content/Context;Landroidx/appcompat/widget/a0;I)Landroidx/appcompat/widget/f4;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iput-object v3, v0, Landroidx/appcompat/widget/j1;->d:Landroidx/appcompat/widget/f4;

    .line 95
    .line 96
    :cond_2
    const/4 v4, 0x2

    .line 97
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_3

    .line 102
    .line 103
    invoke-virtual {v1, v4, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-static {v10, v11, v3}, Landroidx/appcompat/widget/j1;->c(Landroid/content/Context;Landroidx/appcompat/widget/a0;I)Landroidx/appcompat/widget/f4;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iput-object v3, v0, Landroidx/appcompat/widget/j1;->e:Landroidx/appcompat/widget/f4;

    .line 112
    .line 113
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    .line 115
    const/4 v15, 0x5

    .line 116
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 117
    .line 118
    .line 119
    move-result v16

    .line 120
    if-eqz v16, :cond_4

    .line 121
    .line 122
    invoke-virtual {v1, v15, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    invoke-static {v10, v11, v4}, Landroidx/appcompat/widget/j1;->c(Landroid/content/Context;Landroidx/appcompat/widget/a0;I)Landroidx/appcompat/widget/f4;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    iput-object v4, v0, Landroidx/appcompat/widget/j1;->f:Landroidx/appcompat/widget/f4;

    .line 131
    .line 132
    :cond_4
    const/4 v4, 0x6

    .line 133
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 134
    .line 135
    .line 136
    move-result v17

    .line 137
    if-eqz v17, :cond_5

    .line 138
    .line 139
    invoke-virtual {v1, v4, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/j1;->c(Landroid/content/Context;Landroidx/appcompat/widget/a0;I)Landroidx/appcompat/widget/f4;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iput-object v1, v0, Landroidx/appcompat/widget/j1;->g:Landroidx/appcompat/widget/f4;

    .line 148
    .line 149
    :cond_5
    invoke-virtual {v12}, Landroidx/appcompat/widget/h4;->f()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    .line 157
    .line 158
    sget-object v12, Le/a;->y:[I

    .line 159
    .line 160
    const/16 v4, 0x1a

    .line 161
    .line 162
    const/16 v5, 0xe

    .line 163
    .line 164
    const/16 v15, 0xf

    .line 165
    .line 166
    if-eq v2, v14, :cond_9

    .line 167
    .line 168
    new-instance v6, Landroidx/appcompat/widget/h4;

    .line 169
    .line 170
    invoke-virtual {v10, v2, v12}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-direct {v6, v10, v2}, Landroidx/appcompat/widget/h4;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 175
    .line 176
    .line 177
    if-nez v1, :cond_6

    .line 178
    .line 179
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 180
    .line 181
    .line 182
    move-result v21

    .line 183
    if-eqz v21, :cond_6

    .line 184
    .line 185
    invoke-virtual {v2, v5, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 186
    .line 187
    .line 188
    move-result v21

    .line 189
    const/16 v22, 0x1

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_6
    move/from16 v21, v13

    .line 193
    .line 194
    move/from16 v22, v21

    .line 195
    .line 196
    :goto_0
    invoke-virtual {v0, v10, v6}, Landroidx/appcompat/widget/j1;->n(Landroid/content/Context;Landroidx/appcompat/widget/h4;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 200
    .line 201
    .line 202
    move-result v23

    .line 203
    if-eqz v23, :cond_7

    .line 204
    .line 205
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v23

    .line 209
    goto :goto_1

    .line 210
    :cond_7
    const/16 v23, 0x0

    .line 211
    .line 212
    :goto_1
    if-lt v3, v4, :cond_8

    .line 213
    .line 214
    const/16 v14, 0xd

    .line 215
    .line 216
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 217
    .line 218
    .line 219
    move-result v20

    .line 220
    if-eqz v20, :cond_8

    .line 221
    .line 222
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    goto :goto_2

    .line 227
    :cond_8
    const/4 v2, 0x0

    .line 228
    :goto_2
    invoke-virtual {v6}, Landroidx/appcompat/widget/h4;->f()V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_9
    move/from16 v21, v13

    .line 233
    .line 234
    move/from16 v22, v21

    .line 235
    .line 236
    const/4 v2, 0x0

    .line 237
    const/16 v23, 0x0

    .line 238
    .line 239
    :goto_3
    new-instance v6, Landroidx/appcompat/widget/h4;

    .line 240
    .line 241
    invoke-virtual {v10, v7, v12, v8, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 242
    .line 243
    .line 244
    move-result-object v12

    .line 245
    invoke-direct {v6, v10, v12}, Landroidx/appcompat/widget/h4;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 246
    .line 247
    .line 248
    if-nez v1, :cond_a

    .line 249
    .line 250
    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 251
    .line 252
    .line 253
    move-result v14

    .line 254
    if-eqz v14, :cond_a

    .line 255
    .line 256
    invoke-virtual {v12, v5, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 257
    .line 258
    .line 259
    move-result v21

    .line 260
    move/from16 v5, v21

    .line 261
    .line 262
    const/16 v22, 0x1

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_a
    move/from16 v5, v21

    .line 266
    .line 267
    :goto_4
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 268
    .line 269
    .line 270
    move-result v14

    .line 271
    if-eqz v14, :cond_b

    .line 272
    .line 273
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v23

    .line 277
    :cond_b
    if-lt v3, v4, :cond_c

    .line 278
    .line 279
    const/16 v4, 0xd

    .line 280
    .line 281
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 282
    .line 283
    .line 284
    move-result v14

    .line 285
    if-eqz v14, :cond_c

    .line 286
    .line 287
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    :cond_c
    const/16 v4, 0x1c

    .line 292
    .line 293
    if-lt v3, v4, :cond_d

    .line 294
    .line 295
    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-eqz v3, :cond_d

    .line 300
    .line 301
    const/4 v3, -0x1

    .line 302
    invoke-virtual {v12, v13, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    if-nez v4, :cond_d

    .line 307
    .line 308
    const/4 v3, 0x0

    .line 309
    invoke-virtual {v9, v13, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 310
    .line 311
    .line 312
    :cond_d
    invoke-virtual {v0, v10, v6}, Landroidx/appcompat/widget/j1;->n(Landroid/content/Context;Landroidx/appcompat/widget/h4;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v6}, Landroidx/appcompat/widget/h4;->f()V

    .line 316
    .line 317
    .line 318
    if-nez v1, :cond_e

    .line 319
    .line 320
    if-eqz v22, :cond_e

    .line 321
    .line 322
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 323
    .line 324
    .line 325
    :cond_e
    iget-object v1, v0, Landroidx/appcompat/widget/j1;->l:Landroid/graphics/Typeface;

    .line 326
    .line 327
    if-eqz v1, :cond_10

    .line 328
    .line 329
    iget v3, v0, Landroidx/appcompat/widget/j1;->k:I

    .line 330
    .line 331
    const/4 v4, -0x1

    .line 332
    if-ne v3, v4, :cond_f

    .line 333
    .line 334
    iget v3, v0, Landroidx/appcompat/widget/j1;->j:I

    .line 335
    .line 336
    invoke-virtual {v9, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 337
    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_f
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 341
    .line 342
    .line 343
    :cond_10
    :goto_5
    if-eqz v2, :cond_11

    .line 344
    .line 345
    invoke-static {v9, v2}, Landroidx/appcompat/widget/h1;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    :cond_11
    if-eqz v23, :cond_12

    .line 349
    .line 350
    invoke-static/range {v23 .. v23}, Landroidx/appcompat/widget/g1;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-static {v9, v1}, Landroidx/appcompat/widget/g1;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    .line 355
    .line 356
    .line 357
    :cond_12
    sget-object v12, Le/a;->i:[I

    .line 358
    .line 359
    iget-object v14, v0, Landroidx/appcompat/widget/j1;->i:Landroidx/appcompat/widget/u1;

    .line 360
    .line 361
    iget-object v6, v14, Landroidx/appcompat/widget/u1;->j:Landroid/content/Context;

    .line 362
    .line 363
    invoke-virtual {v6, v7, v12, v8, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    iget-object v1, v14, Landroidx/appcompat/widget/u1;->i:Landroid/widget/TextView;

    .line 368
    .line 369
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    move-object v3, v12

    .line 374
    const/4 v15, 0x2

    .line 375
    move-object/from16 v4, p1

    .line 376
    .line 377
    move-object/from16 v18, v5

    .line 378
    .line 379
    const/4 v15, 0x4

    .line 380
    move-object/from16 v19, v6

    .line 381
    .line 382
    move/from16 v6, p2

    .line 383
    .line 384
    invoke-static/range {v1 .. v6}, Landroidx/core/view/c1;->n(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 385
    .line 386
    .line 387
    move-object/from16 v2, v18

    .line 388
    .line 389
    const/4 v1, 0x5

    .line 390
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    if-eqz v3, :cond_13

    .line 395
    .line 396
    invoke-virtual {v2, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    iput v1, v14, Landroidx/appcompat/widget/u1;->a:I

    .line 401
    .line 402
    :cond_13
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    const/high16 v3, -0x40800000    # -1.0f

    .line 407
    .line 408
    if-eqz v1, :cond_14

    .line 409
    .line 410
    invoke-virtual {v2, v15, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    :goto_6
    const/4 v4, 0x2

    .line 415
    goto :goto_7

    .line 416
    :cond_14
    move v1, v3

    .line 417
    goto :goto_6

    .line 418
    :goto_7
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    if-eqz v5, :cond_15

    .line 423
    .line 424
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    :goto_8
    const/4 v4, 0x1

    .line 429
    goto :goto_9

    .line 430
    :cond_15
    move v5, v3

    .line 431
    goto :goto_8

    .line 432
    :goto_9
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 433
    .line 434
    .line 435
    move-result v6

    .line 436
    if-eqz v6, :cond_16

    .line 437
    .line 438
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 439
    .line 440
    .line 441
    move-result v6

    .line 442
    :goto_a
    const/4 v8, 0x3

    .line 443
    goto :goto_b

    .line 444
    :cond_16
    move v6, v3

    .line 445
    goto :goto_a

    .line 446
    :goto_b
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 447
    .line 448
    .line 449
    move-result v15

    .line 450
    if-eqz v15, :cond_19

    .line 451
    .line 452
    invoke-virtual {v2, v8, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 453
    .line 454
    .line 455
    move-result v15

    .line 456
    if-lez v15, :cond_19

    .line 457
    .line 458
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 459
    .line 460
    .line 461
    move-result-object v8

    .line 462
    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->length()I

    .line 467
    .line 468
    .line 469
    move-result v15

    .line 470
    new-array v13, v15, [I

    .line 471
    .line 472
    if-lez v15, :cond_18

    .line 473
    .line 474
    const/4 v3, 0x0

    .line 475
    :goto_c
    if-ge v3, v15, :cond_17

    .line 476
    .line 477
    const/4 v4, -0x1

    .line 478
    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 479
    .line 480
    .line 481
    move-result v18

    .line 482
    aput v18, v13, v3

    .line 483
    .line 484
    add-int/lit8 v3, v3, 0x1

    .line 485
    .line 486
    const/4 v4, 0x1

    .line 487
    goto :goto_c

    .line 488
    :cond_17
    invoke-static {v13}, Landroidx/appcompat/widget/u1;->b([I)[I

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    iput-object v3, v14, Landroidx/appcompat/widget/u1;->f:[I

    .line 493
    .line 494
    invoke-virtual {v14}, Landroidx/appcompat/widget/u1;->i()Z

    .line 495
    .line 496
    .line 497
    :cond_18
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 498
    .line 499
    .line 500
    :cond_19
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v14}, Landroidx/appcompat/widget/u1;->j()Z

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    const/high16 v3, 0x3f800000    # 1.0f

    .line 508
    .line 509
    if-eqz v2, :cond_1e

    .line 510
    .line 511
    iget v2, v14, Landroidx/appcompat/widget/u1;->a:I

    .line 512
    .line 513
    const/4 v4, 0x1

    .line 514
    if-ne v2, v4, :cond_1f

    .line 515
    .line 516
    iget-boolean v2, v14, Landroidx/appcompat/widget/u1;->g:Z

    .line 517
    .line 518
    if-nez v2, :cond_1d

    .line 519
    .line 520
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    const/high16 v4, -0x40800000    # -1.0f

    .line 529
    .line 530
    cmpl-float v8, v5, v4

    .line 531
    .line 532
    if-nez v8, :cond_1a

    .line 533
    .line 534
    const/high16 v5, 0x41400000    # 12.0f

    .line 535
    .line 536
    const/4 v8, 0x2

    .line 537
    invoke-static {v8, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 538
    .line 539
    .line 540
    move-result v5

    .line 541
    goto :goto_d

    .line 542
    :cond_1a
    const/4 v8, 0x2

    .line 543
    :goto_d
    cmpl-float v13, v6, v4

    .line 544
    .line 545
    if-nez v13, :cond_1b

    .line 546
    .line 547
    const/high16 v6, 0x42e00000    # 112.0f

    .line 548
    .line 549
    invoke-static {v8, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 550
    .line 551
    .line 552
    move-result v6

    .line 553
    :cond_1b
    cmpl-float v2, v1, v4

    .line 554
    .line 555
    if-nez v2, :cond_1c

    .line 556
    .line 557
    move v1, v3

    .line 558
    :cond_1c
    invoke-virtual {v14, v5, v6, v1}, Landroidx/appcompat/widget/u1;->k(FFF)V

    .line 559
    .line 560
    .line 561
    :cond_1d
    invoke-virtual {v14}, Landroidx/appcompat/widget/u1;->h()Z

    .line 562
    .line 563
    .line 564
    goto :goto_e

    .line 565
    :cond_1e
    const/4 v1, 0x0

    .line 566
    iput v1, v14, Landroidx/appcompat/widget/u1;->a:I

    .line 567
    .line 568
    :cond_1f
    :goto_e
    sget-boolean v1, Landroidx/appcompat/widget/x4;->b:Z

    .line 569
    .line 570
    if-eqz v1, :cond_21

    .line 571
    .line 572
    iget v1, v14, Landroidx/appcompat/widget/u1;->a:I

    .line 573
    .line 574
    if-eqz v1, :cond_21

    .line 575
    .line 576
    iget-object v1, v14, Landroidx/appcompat/widget/u1;->f:[I

    .line 577
    .line 578
    array-length v2, v1

    .line 579
    if-lez v2, :cond_21

    .line 580
    .line 581
    invoke-static {v9}, Landroidx/appcompat/widget/h1;->a(Landroid/widget/TextView;)I

    .line 582
    .line 583
    .line 584
    move-result v2

    .line 585
    int-to-float v2, v2

    .line 586
    const/high16 v4, -0x40800000    # -1.0f

    .line 587
    .line 588
    cmpl-float v2, v2, v4

    .line 589
    .line 590
    if-eqz v2, :cond_20

    .line 591
    .line 592
    iget v1, v14, Landroidx/appcompat/widget/u1;->d:F

    .line 593
    .line 594
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 595
    .line 596
    .line 597
    move-result v1

    .line 598
    iget v2, v14, Landroidx/appcompat/widget/u1;->e:F

    .line 599
    .line 600
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    iget v4, v14, Landroidx/appcompat/widget/u1;->c:F

    .line 605
    .line 606
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 607
    .line 608
    .line 609
    move-result v4

    .line 610
    const/4 v5, 0x0

    .line 611
    invoke-static {v9, v1, v2, v4, v5}, Landroidx/appcompat/widget/h1;->b(Landroid/widget/TextView;IIII)V

    .line 612
    .line 613
    .line 614
    goto :goto_f

    .line 615
    :cond_20
    const/4 v5, 0x0

    .line 616
    invoke-static {v9, v1, v5}, Landroidx/appcompat/widget/h1;->c(Landroid/widget/TextView;[II)V

    .line 617
    .line 618
    .line 619
    :cond_21
    :goto_f
    invoke-virtual {v10, v7, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    const/16 v2, 0x8

    .line 624
    .line 625
    const/4 v4, -0x1

    .line 626
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 627
    .line 628
    .line 629
    move-result v2

    .line 630
    if-eq v2, v4, :cond_22

    .line 631
    .line 632
    invoke-virtual {v11, v10, v2}, Landroidx/appcompat/widget/a0;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 633
    .line 634
    .line 635
    move-result-object v2

    .line 636
    :goto_10
    const/16 v5, 0xd

    .line 637
    .line 638
    goto :goto_11

    .line 639
    :cond_22
    const/4 v2, 0x0

    .line 640
    goto :goto_10

    .line 641
    :goto_11
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 642
    .line 643
    .line 644
    move-result v5

    .line 645
    if-eq v5, v4, :cond_23

    .line 646
    .line 647
    invoke-virtual {v11, v10, v5}, Landroidx/appcompat/widget/a0;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    goto :goto_12

    .line 652
    :cond_23
    const/4 v5, 0x0

    .line 653
    :goto_12
    const/16 v6, 0x9

    .line 654
    .line 655
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 656
    .line 657
    .line 658
    move-result v6

    .line 659
    if-eq v6, v4, :cond_24

    .line 660
    .line 661
    invoke-virtual {v11, v10, v6}, Landroidx/appcompat/widget/a0;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 662
    .line 663
    .line 664
    move-result-object v6

    .line 665
    :goto_13
    const/4 v7, 0x6

    .line 666
    goto :goto_14

    .line 667
    :cond_24
    const/4 v6, 0x0

    .line 668
    goto :goto_13

    .line 669
    :goto_14
    invoke-virtual {v1, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 670
    .line 671
    .line 672
    move-result v7

    .line 673
    if-eq v7, v4, :cond_25

    .line 674
    .line 675
    invoke-virtual {v11, v10, v7}, Landroidx/appcompat/widget/a0;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 676
    .line 677
    .line 678
    move-result-object v7

    .line 679
    goto :goto_15

    .line 680
    :cond_25
    const/4 v7, 0x0

    .line 681
    :goto_15
    const/16 v8, 0xa

    .line 682
    .line 683
    invoke-virtual {v1, v8, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 684
    .line 685
    .line 686
    move-result v8

    .line 687
    if-eq v8, v4, :cond_26

    .line 688
    .line 689
    invoke-virtual {v11, v10, v8}, Landroidx/appcompat/widget/a0;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 690
    .line 691
    .line 692
    move-result-object v8

    .line 693
    goto :goto_16

    .line 694
    :cond_26
    const/4 v8, 0x0

    .line 695
    :goto_16
    const/4 v12, 0x7

    .line 696
    invoke-virtual {v1, v12, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 697
    .line 698
    .line 699
    move-result v12

    .line 700
    if-eq v12, v4, :cond_27

    .line 701
    .line 702
    invoke-virtual {v11, v10, v12}, Landroidx/appcompat/widget/a0;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 703
    .line 704
    .line 705
    move-result-object v4

    .line 706
    goto :goto_17

    .line 707
    :cond_27
    const/4 v4, 0x0

    .line 708
    :goto_17
    if-nez v8, :cond_32

    .line 709
    .line 710
    if-eqz v4, :cond_28

    .line 711
    .line 712
    goto :goto_20

    .line 713
    :cond_28
    if-nez v2, :cond_29

    .line 714
    .line 715
    if-nez v5, :cond_29

    .line 716
    .line 717
    if-nez v6, :cond_29

    .line 718
    .line 719
    if-eqz v7, :cond_37

    .line 720
    .line 721
    :cond_29
    invoke-static {v9}, Landroidx/appcompat/widget/f1;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 722
    .line 723
    .line 724
    move-result-object v4

    .line 725
    const/4 v8, 0x0

    .line 726
    aget-object v11, v4, v8

    .line 727
    .line 728
    if-nez v11, :cond_2f

    .line 729
    .line 730
    const/4 v12, 0x2

    .line 731
    aget-object v13, v4, v12

    .line 732
    .line 733
    if-eqz v13, :cond_2a

    .line 734
    .line 735
    goto :goto_1c

    .line 736
    :cond_2a
    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 737
    .line 738
    .line 739
    move-result-object v4

    .line 740
    if-eqz v2, :cond_2b

    .line 741
    .line 742
    goto :goto_18

    .line 743
    :cond_2b
    aget-object v2, v4, v8

    .line 744
    .line 745
    :goto_18
    if-eqz v5, :cond_2c

    .line 746
    .line 747
    goto :goto_19

    .line 748
    :cond_2c
    const/4 v5, 0x1

    .line 749
    aget-object v5, v4, v5

    .line 750
    .line 751
    :goto_19
    if-eqz v6, :cond_2d

    .line 752
    .line 753
    goto :goto_1a

    .line 754
    :cond_2d
    const/4 v6, 0x2

    .line 755
    aget-object v6, v4, v6

    .line 756
    .line 757
    :goto_1a
    if-eqz v7, :cond_2e

    .line 758
    .line 759
    goto :goto_1b

    .line 760
    :cond_2e
    const/4 v7, 0x3

    .line 761
    aget-object v7, v4, v7

    .line 762
    .line 763
    :goto_1b
    invoke-virtual {v9, v2, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 764
    .line 765
    .line 766
    goto :goto_25

    .line 767
    :cond_2f
    :goto_1c
    if-eqz v5, :cond_30

    .line 768
    .line 769
    :goto_1d
    const/4 v2, 0x2

    .line 770
    goto :goto_1e

    .line 771
    :cond_30
    const/4 v2, 0x1

    .line 772
    aget-object v5, v4, v2

    .line 773
    .line 774
    goto :goto_1d

    .line 775
    :goto_1e
    aget-object v2, v4, v2

    .line 776
    .line 777
    if-eqz v7, :cond_31

    .line 778
    .line 779
    goto :goto_1f

    .line 780
    :cond_31
    const/4 v6, 0x3

    .line 781
    aget-object v7, v4, v6

    .line 782
    .line 783
    :goto_1f
    invoke-static {v9, v11, v5, v2, v7}, Landroidx/appcompat/widget/f1;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 784
    .line 785
    .line 786
    goto :goto_25

    .line 787
    :cond_32
    :goto_20
    invoke-static {v9}, Landroidx/appcompat/widget/f1;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    if-eqz v8, :cond_33

    .line 792
    .line 793
    goto :goto_21

    .line 794
    :cond_33
    const/4 v6, 0x0

    .line 795
    aget-object v8, v2, v6

    .line 796
    .line 797
    :goto_21
    if-eqz v5, :cond_34

    .line 798
    .line 799
    goto :goto_22

    .line 800
    :cond_34
    const/4 v5, 0x1

    .line 801
    aget-object v5, v2, v5

    .line 802
    .line 803
    :goto_22
    if-eqz v4, :cond_35

    .line 804
    .line 805
    goto :goto_23

    .line 806
    :cond_35
    const/4 v4, 0x2

    .line 807
    aget-object v4, v2, v4

    .line 808
    .line 809
    :goto_23
    if-eqz v7, :cond_36

    .line 810
    .line 811
    goto :goto_24

    .line 812
    :cond_36
    const/4 v6, 0x3

    .line 813
    aget-object v7, v2, v6

    .line 814
    .line 815
    :goto_24
    invoke-static {v9, v8, v5, v4, v7}, Landroidx/appcompat/widget/f1;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 816
    .line 817
    .line 818
    :cond_37
    :goto_25
    const/16 v2, 0xb

    .line 819
    .line 820
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 821
    .line 822
    .line 823
    move-result v4

    .line 824
    if-eqz v4, :cond_39

    .line 825
    .line 826
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 827
    .line 828
    .line 829
    move-result v4

    .line 830
    if-eqz v4, :cond_38

    .line 831
    .line 832
    const/4 v4, 0x0

    .line 833
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 834
    .line 835
    .line 836
    move-result v4

    .line 837
    if-eqz v4, :cond_38

    .line 838
    .line 839
    invoke-static {v10, v4}, Lx/g;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 840
    .line 841
    .line 842
    move-result-object v4

    .line 843
    if-eqz v4, :cond_38

    .line 844
    .line 845
    goto :goto_26

    .line 846
    :cond_38
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 847
    .line 848
    .line 849
    move-result-object v4

    .line 850
    :goto_26
    invoke-static {v9, v4}, Lk0/q;->f(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 851
    .line 852
    .line 853
    :cond_39
    const/16 v2, 0xc

    .line 854
    .line 855
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 856
    .line 857
    .line 858
    move-result v4

    .line 859
    if-eqz v4, :cond_3a

    .line 860
    .line 861
    const/4 v4, -0x1

    .line 862
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 863
    .line 864
    .line 865
    move-result v2

    .line 866
    const/4 v5, 0x0

    .line 867
    invoke-static {v2, v5}, Landroidx/appcompat/widget/b2;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 868
    .line 869
    .line 870
    move-result-object v2

    .line 871
    invoke-static {v9, v2}, Lk0/q;->g(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 872
    .line 873
    .line 874
    :goto_27
    const/16 v2, 0xf

    .line 875
    .line 876
    goto :goto_28

    .line 877
    :cond_3a
    const/4 v4, -0x1

    .line 878
    goto :goto_27

    .line 879
    :goto_28
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 880
    .line 881
    .line 882
    move-result v2

    .line 883
    const/16 v5, 0x12

    .line 884
    .line 885
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 886
    .line 887
    .line 888
    move-result v5

    .line 889
    const/16 v6, 0x13

    .line 890
    .line 891
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 892
    .line 893
    .line 894
    move-result v6

    .line 895
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 896
    .line 897
    .line 898
    if-eq v2, v4, :cond_3b

    .line 899
    .line 900
    invoke-static {v9, v2}, Lg/a;->A(Landroid/widget/TextView;I)V

    .line 901
    .line 902
    .line 903
    :cond_3b
    if-eq v5, v4, :cond_3c

    .line 904
    .line 905
    invoke-static {v9, v5}, Lg/a;->B(Landroid/widget/TextView;I)V

    .line 906
    .line 907
    .line 908
    :cond_3c
    if-eq v6, v4, :cond_3d

    .line 909
    .line 910
    invoke-static {v6}, Lv1/f;->f(I)V

    .line 911
    .line 912
    .line 913
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 914
    .line 915
    .line 916
    move-result-object v1

    .line 917
    const/4 v2, 0x0

    .line 918
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 919
    .line 920
    .line 921
    move-result v1

    .line 922
    if-eq v6, v1, :cond_3d

    .line 923
    .line 924
    sub-int/2addr v6, v1

    .line 925
    int-to-float v1, v6

    .line 926
    invoke-virtual {v9, v1, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 927
    .line 928
    .line 929
    :cond_3d
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .locals 5

    .line 1
    sget-object v0, Le/a;->y:[I

    .line 2
    .line 3
    new-instance v1, Landroidx/appcompat/widget/h4;

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v1, p1, p2}, Landroidx/appcompat/widget/h4;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0xe

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Landroidx/appcompat/widget/j1;->a:Landroid/widget/TextView;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    const/4 v2, -0x1

    .line 39
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/j1;->n(Landroid/content/Context;Landroidx/appcompat/widget/h4;)V

    .line 50
    .line 51
    .line 52
    const/16 p1, 0x1a

    .line 53
    .line 54
    if-lt v0, p1, :cond_2

    .line 55
    .line 56
    const/16 p1, 0xd

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    invoke-static {v3, p1}, Landroidx/appcompat/widget/h1;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {v1}, Landroidx/appcompat/widget/h4;->f()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Landroidx/appcompat/widget/j1;->l:Landroid/graphics/Typeface;

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    iget p2, p0, Landroidx/appcompat/widget/j1;->j:I

    .line 81
    .line 82
    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 83
    .line 84
    .line 85
    :cond_3
    return-void
.end method

.method public final i(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j1;->i:Landroidx/appcompat/widget/u1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/u1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/appcompat/widget/u1;->j:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    int-to-float p1, p1

    .line 20
    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-float p2, p2

    .line 25
    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-float p3, p3

    .line 30
    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/u1;->k(FFF)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/widget/u1;->h()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/appcompat/widget/u1;->a()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final j([II)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j1;->i:Landroidx/appcompat/widget/u1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/u1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v1, :cond_3

    .line 12
    .line 13
    new-array v3, v1, [I

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v4, v0, Landroidx/appcompat/widget/u1;->j:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :goto_0
    if-ge v2, v1, :cond_1

    .line 33
    .line 34
    aget v5, p1, v2

    .line 35
    .line 36
    int-to-float v5, v5

    .line 37
    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    aput v5, v3, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    invoke-static {v3}, Landroidx/appcompat/widget/u1;->b([I)[I

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, v0, Landroidx/appcompat/widget/u1;->f:[I

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/appcompat/widget/u1;->i()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "None of the preset sizes is valid: "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p2

    .line 87
    :cond_3
    iput-boolean v2, v0, Landroidx/appcompat/widget/u1;->g:Z

    .line 88
    .line 89
    :goto_2
    invoke-virtual {v0}, Landroidx/appcompat/widget/u1;->h()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {v0}, Landroidx/appcompat/widget/u1;->a()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public final k(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j1;->i:Landroidx/appcompat/widget/u1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/u1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, v0, Landroidx/appcompat/widget/u1;->j:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v1, 0x2

    .line 25
    const/high16 v2, 0x41400000    # 12.0f

    .line 26
    .line 27
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/high16 v3, 0x42e00000    # 112.0f

    .line 32
    .line 33
    invoke-static {v1, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-virtual {v0, v2, p1, v1}, Landroidx/appcompat/widget/u1;->k(FFF)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/appcompat/widget/u1;->h()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/appcompat/widget/u1;->a()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v1, "Unknown auto-size text type: "

    .line 55
    .line 56
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_1
    const/4 p1, 0x0

    .line 65
    iput p1, v0, Landroidx/appcompat/widget/u1;->a:I

    .line 66
    .line 67
    const/high16 v1, -0x40800000    # -1.0f

    .line 68
    .line 69
    iput v1, v0, Landroidx/appcompat/widget/u1;->d:F

    .line 70
    .line 71
    iput v1, v0, Landroidx/appcompat/widget/u1;->e:F

    .line 72
    .line 73
    iput v1, v0, Landroidx/appcompat/widget/u1;->c:F

    .line 74
    .line 75
    new-array v1, p1, [I

    .line 76
    .line 77
    iput-object v1, v0, Landroidx/appcompat/widget/u1;->f:[I

    .line 78
    .line 79
    iput-boolean p1, v0, Landroidx/appcompat/widget/u1;->b:Z

    .line 80
    .line 81
    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j1;->h:Landroidx/appcompat/widget/f4;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/f4;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/f4;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->h:Landroidx/appcompat/widget/f4;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/j1;->h:Landroidx/appcompat/widget/f4;

    iput-object p1, v0, Landroidx/appcompat/widget/f4;->c:Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, v0, Landroidx/appcompat/widget/f4;->b:Z

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->b:Landroidx/appcompat/widget/f4;

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->c:Landroidx/appcompat/widget/f4;

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->d:Landroidx/appcompat/widget/f4;

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->e:Landroidx/appcompat/widget/f4;

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->f:Landroidx/appcompat/widget/f4;

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->g:Landroidx/appcompat/widget/f4;

    return-void
.end method

.method public final m(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j1;->h:Landroidx/appcompat/widget/f4;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/f4;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/f4;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->h:Landroidx/appcompat/widget/f4;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/j1;->h:Landroidx/appcompat/widget/f4;

    iput-object p1, v0, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, v0, Landroidx/appcompat/widget/f4;->a:Z

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->b:Landroidx/appcompat/widget/f4;

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->c:Landroidx/appcompat/widget/f4;

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->d:Landroidx/appcompat/widget/f4;

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->e:Landroidx/appcompat/widget/f4;

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->f:Landroidx/appcompat/widget/f4;

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->g:Landroidx/appcompat/widget/f4;

    return-void
.end method

.method public final n(Landroid/content/Context;Landroidx/appcompat/widget/h4;)V
    .locals 11

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/j1;->j:I

    .line 2
    .line 3
    iget-object v1, p2, Landroidx/appcompat/widget/h4;->b:Landroid/content/res/TypedArray;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Landroidx/appcompat/widget/j1;->j:I

    .line 11
    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v3, 0x1c

    .line 15
    .line 16
    const/4 v4, -0x1

    .line 17
    if-lt v0, v3, :cond_0

    .line 18
    .line 19
    const/16 v5, 0xb

    .line 20
    .line 21
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    iput v5, p0, Landroidx/appcompat/widget/j1;->k:I

    .line 26
    .line 27
    if-eq v5, v4, :cond_0

    .line 28
    .line 29
    iget v5, p0, Landroidx/appcompat/widget/j1;->j:I

    .line 30
    .line 31
    and-int/2addr v5, v2

    .line 32
    iput v5, p0, Landroidx/appcompat/widget/j1;->j:I

    .line 33
    .line 34
    :cond_0
    const/16 v5, 0xa

    .line 35
    .line 36
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/16 v7, 0xc

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x1

    .line 44
    if-nez v6, :cond_6

    .line 45
    .line 46
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    iput-boolean v8, p0, Landroidx/appcompat/widget/j1;->m:Z

    .line 60
    .line 61
    invoke-virtual {v1, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eq p1, v9, :cond_4

    .line 66
    .line 67
    if-eq p1, v2, :cond_3

    .line 68
    .line 69
    const/4 p2, 0x3

    .line 70
    if-eq p1, p2, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 74
    .line 75
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/j1;->l:Landroid/graphics/Typeface;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    :goto_1
    return-void

    .line 85
    :cond_6
    :goto_2
    const/4 v6, 0x0

    .line 86
    iput-object v6, p0, Landroidx/appcompat/widget/j1;->l:Landroid/graphics/Typeface;

    .line 87
    .line 88
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_7

    .line 93
    .line 94
    move v5, v7

    .line 95
    :cond_7
    iget v6, p0, Landroidx/appcompat/widget/j1;->k:I

    .line 96
    .line 97
    iget v7, p0, Landroidx/appcompat/widget/j1;->j:I

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_c

    .line 104
    .line 105
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 106
    .line 107
    iget-object v10, p0, Landroidx/appcompat/widget/j1;->a:Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-direct {p1, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    new-instance v10, Landroidx/appcompat/widget/d1;

    .line 113
    .line 114
    invoke-direct {v10, p0, v6, v7, p1}, Landroidx/appcompat/widget/d1;-><init>(Landroidx/appcompat/widget/j1;IILjava/lang/ref/WeakReference;)V

    .line 115
    .line 116
    .line 117
    :try_start_0
    iget p1, p0, Landroidx/appcompat/widget/j1;->j:I

    .line 118
    .line 119
    invoke-virtual {p2, v5, p1, v10}, Landroidx/appcompat/widget/h4;->d(IILandroidx/appcompat/widget/d1;)Landroid/graphics/Typeface;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_a

    .line 124
    .line 125
    if-lt v0, v3, :cond_9

    .line 126
    .line 127
    iget p2, p0, Landroidx/appcompat/widget/j1;->k:I

    .line 128
    .line 129
    if-eq p2, v4, :cond_9

    .line 130
    .line 131
    invoke-static {p1, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget p2, p0, Landroidx/appcompat/widget/j1;->k:I

    .line 136
    .line 137
    iget v0, p0, Landroidx/appcompat/widget/j1;->j:I

    .line 138
    .line 139
    and-int/2addr v0, v2

    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    move v0, v9

    .line 143
    goto :goto_3

    .line 144
    :cond_8
    move v0, v8

    .line 145
    :goto_3
    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/i1;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    :cond_9
    iput-object p1, p0, Landroidx/appcompat/widget/j1;->l:Landroid/graphics/Typeface;

    .line 150
    .line 151
    :cond_a
    iget-object p1, p0, Landroidx/appcompat/widget/j1;->l:Landroid/graphics/Typeface;

    .line 152
    .line 153
    if-nez p1, :cond_b

    .line 154
    .line 155
    move p1, v9

    .line 156
    goto :goto_4

    .line 157
    :cond_b
    move p1, v8

    .line 158
    :goto_4
    iput-boolean p1, p0, Landroidx/appcompat/widget/j1;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    :catch_0
    :cond_c
    iget-object p1, p0, Landroidx/appcompat/widget/j1;->l:Landroid/graphics/Typeface;

    .line 161
    .line 162
    if-nez p1, :cond_f

    .line 163
    .line 164
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    if-eqz p1, :cond_f

    .line 169
    .line 170
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 171
    .line 172
    if-lt p2, v3, :cond_e

    .line 173
    .line 174
    iget p2, p0, Landroidx/appcompat/widget/j1;->k:I

    .line 175
    .line 176
    if-eq p2, v4, :cond_e

    .line 177
    .line 178
    invoke-static {p1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget p2, p0, Landroidx/appcompat/widget/j1;->k:I

    .line 183
    .line 184
    iget v0, p0, Landroidx/appcompat/widget/j1;->j:I

    .line 185
    .line 186
    and-int/2addr v0, v2

    .line 187
    if-eqz v0, :cond_d

    .line 188
    .line 189
    move v8, v9

    .line 190
    :cond_d
    invoke-static {p1, p2, v8}, Landroidx/appcompat/widget/i1;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    :goto_5
    iput-object p1, p0, Landroidx/appcompat/widget/j1;->l:Landroid/graphics/Typeface;

    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_e
    iget p2, p0, Landroidx/appcompat/widget/j1;->j:I

    .line 198
    .line 199
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    goto :goto_5

    .line 204
    :cond_f
    :goto_6
    return-void
.end method
