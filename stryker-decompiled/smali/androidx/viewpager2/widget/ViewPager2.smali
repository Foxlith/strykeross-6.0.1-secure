.class public final Landroidx/viewpager2/widget/ViewPager2;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/graphics/Rect;

.field public final c:Landroidx/viewpager2/adapter/b;

.field public d:I

.field public e:Z

.field public final f:Ll1/f;

.field public final g:Ll1/j;

.field public h:I

.field public i:Landroid/os/Parcelable;

.field public final j:Ll1/p;

.field public final k:Ll1/o;

.field public final l:Ll1/d;

.field public final m:Landroidx/viewpager2/adapter/b;

.field public final n:Lv1/t;

.field public final p:Ll1/b;

.field public q:Landroidx/recyclerview/widget/r0;

.field public r:Z

.field public s:Z

.field public t:I

.field public final u:Ll1/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroidx/viewpager2/adapter/b;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/viewpager2/adapter/b;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/adapter/b;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Z

    .line 27
    .line 28
    new-instance v2, Ll1/f;

    .line 29
    .line 30
    invoke-direct {v2, p0, v1}, Ll1/f;-><init>(Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Ll1/f;

    .line 34
    .line 35
    const/4 v2, -0x1

    .line 36
    iput v2, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    iput-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Landroidx/recyclerview/widget/r0;

    .line 40
    .line 41
    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Z

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    iput-boolean v3, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    .line 45
    .line 46
    iput v2, p0, Landroidx/viewpager2/widget/ViewPager2;->t:I

    .line 47
    .line 48
    new-instance v4, Ll1/m;

    .line 49
    .line 50
    invoke-direct {v4, p0}, Ll1/m;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 51
    .line 52
    .line 53
    iput-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    .line 54
    .line 55
    new-instance v4, Ll1/p;

    .line 56
    .line 57
    invoke-direct {v4, p0, p1}, Ll1/p;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    iput-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 61
    .line 62
    sget-object v5, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 63
    .line 64
    invoke-static {}, Landroidx/core/view/l0;->a()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 69
    .line 70
    .line 71
    iget-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 72
    .line 73
    const/high16 v5, 0x20000

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Ll1/j;

    .line 79
    .line 80
    invoke-direct {v4, p0}, Ll1/j;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 81
    .line 82
    .line 83
    iput-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Ll1/j;

    .line 84
    .line 85
    iget-object v5, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 86
    .line 87
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 88
    .line 89
    .line 90
    iget-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 91
    .line 92
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    .line 93
    .line 94
    .line 95
    sget-object v4, Lk1/a;->a:[I

    .line 96
    .line 97
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 102
    .line 103
    const/16 v7, 0x1d

    .line 104
    .line 105
    if-lt v6, v7, :cond_0

    .line 106
    .line 107
    invoke-static {p0, p1, v4, p2, v5}, Lcom/google/android/material/textfield/h;->g(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 108
    .line 109
    .line 110
    :cond_0
    :try_start_0
    invoke-virtual {v5, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 121
    .line 122
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 123
    .line 124
    invoke-direct {p2, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 131
    .line 132
    new-instance p2, Ll1/h;

    .line 133
    .line 134
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/y0;)V

    .line 138
    .line 139
    .line 140
    new-instance p1, Ll1/d;

    .line 141
    .line 142
    invoke-direct {p1, p0}, Ll1/d;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Ll1/d;

    .line 146
    .line 147
    new-instance p2, Lv1/t;

    .line 148
    .line 149
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 150
    .line 151
    const/16 v4, 0x9

    .line 152
    .line 153
    invoke-direct {p2, p0, p1, v2, v4}, Lv1/t;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 154
    .line 155
    .line 156
    iput-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Lv1/t;

    .line 157
    .line 158
    new-instance p1, Ll1/o;

    .line 159
    .line 160
    invoke-direct {p1, p0}, Ll1/o;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 161
    .line 162
    .line 163
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Ll1/o;

    .line 164
    .line 165
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/g0;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 171
    .line 172
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Ll1/d;

    .line 173
    .line 174
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/b1;)V

    .line 175
    .line 176
    .line 177
    new-instance p1, Landroidx/viewpager2/adapter/b;

    .line 178
    .line 179
    invoke-direct {p1}, Landroidx/viewpager2/adapter/b;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/adapter/b;

    .line 183
    .line 184
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Ll1/d;

    .line 185
    .line 186
    iput-object p1, p2, Ll1/d;->a:Ll1/k;

    .line 187
    .line 188
    new-instance p2, Ll1/g;

    .line 189
    .line 190
    invoke-direct {p2, p0, v1}, Ll1/g;-><init>(Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 191
    .line 192
    .line 193
    new-instance v2, Ll1/g;

    .line 194
    .line 195
    invoke-direct {v2, p0, v3}, Ll1/g;-><init>(Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p1, Landroidx/viewpager2/adapter/b;->b:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p1, Ljava/util/List;

    .line 201
    .line 202
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/adapter/b;

    .line 206
    .line 207
    iget-object p1, p1, Landroidx/viewpager2/adapter/b;->b:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast p1, Ljava/util/List;

    .line 210
    .line 211
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    .line 215
    .line 216
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 217
    .line 218
    invoke-virtual {p1, p2}, Ll1/m;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 219
    .line 220
    .line 221
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/adapter/b;

    .line 222
    .line 223
    iget-object p1, p1, Landroidx/viewpager2/adapter/b;->b:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast p1, Ljava/util/List;

    .line 226
    .line 227
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    new-instance p1, Ll1/b;

    .line 231
    .line 232
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Ll1/j;

    .line 233
    .line 234
    invoke-direct {p1, p2}, Ll1/b;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 235
    .line 236
    .line 237
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Ll1/b;

    .line 238
    .line 239
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/adapter/b;

    .line 240
    .line 241
    iget-object p2, p2, Landroidx/viewpager2/adapter/b;->b:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast p2, Ljava/util/List;

    .line 244
    .line 245
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 249
    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    invoke-virtual {p0, p1, v1, p2}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :catchall_0
    move-exception p1

    .line 259
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    .line 261
    .line 262
    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/os/Parcelable;

    .line 15
    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    instance-of v3, v0, Landroidx/viewpager2/adapter/g;

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    move-object v3, v0

    .line 23
    check-cast v3, Landroidx/viewpager2/adapter/g;

    .line 24
    .line 25
    check-cast v3, Landroidx/viewpager2/adapter/e;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Landroidx/viewpager2/adapter/e;->g(Landroid/os/Parcelable;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    const/4 v2, 0x0

    .line 31
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/os/Parcelable;

    .line 32
    .line 33
    :cond_3
    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 51
    .line 52
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    .line 53
    .line 54
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    .line 60
    .line 61
    invoke-virtual {v0}, Ll1/m;->i()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final b(IZ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget p2, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    if-eq p2, v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-gtz v2, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x1

    .line 36
    sub-int/2addr v0, v2

    .line 37
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 42
    .line 43
    if-ne p1, v0, :cond_3

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Ll1/d;

    .line 46
    .line 47
    iget v3, v3, Ll1/d;->f:I

    .line 48
    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    if-ne p1, v0, :cond_4

    .line 53
    .line 54
    if-eqz p2, :cond_4

    .line 55
    .line 56
    return-void

    .line 57
    :cond_4
    int-to-double v3, v0

    .line 58
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    .line 61
    .line 62
    invoke-virtual {v0}, Ll1/m;->i()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Ll1/d;

    .line 66
    .line 67
    iget v5, v0, Ll1/d;->f:I

    .line 68
    .line 69
    if-nez v5, :cond_5

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    invoke-virtual {v0}, Ll1/d;->c()V

    .line 73
    .line 74
    .line 75
    iget-object v0, v0, Ll1/d;->g:Ll1/c;

    .line 76
    .line 77
    iget v3, v0, Ll1/c;->a:I

    .line 78
    .line 79
    int-to-double v3, v3

    .line 80
    iget v0, v0, Ll1/c;->b:F

    .line 81
    .line 82
    float-to-double v5, v0

    .line 83
    add-double/2addr v3, v5

    .line 84
    :goto_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Ll1/d;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const/4 v5, 0x2

    .line 90
    if-eqz p2, :cond_6

    .line 91
    .line 92
    move v6, v5

    .line 93
    goto :goto_1

    .line 94
    :cond_6
    const/4 v6, 0x3

    .line 95
    :goto_1
    iput v6, v0, Ll1/d;->e:I

    .line 96
    .line 97
    iput-boolean v1, v0, Ll1/d;->m:Z

    .line 98
    .line 99
    iget v6, v0, Ll1/d;->i:I

    .line 100
    .line 101
    if-eq v6, p1, :cond_7

    .line 102
    .line 103
    move v1, v2

    .line 104
    :cond_7
    iput p1, v0, Ll1/d;->i:I

    .line 105
    .line 106
    invoke-virtual {v0, v5}, Ll1/d;->a(I)V

    .line 107
    .line 108
    .line 109
    if-eqz v1, :cond_8

    .line 110
    .line 111
    iget-object v0, v0, Ll1/d;->a:Ll1/k;

    .line 112
    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ll1/k;->onPageSelected(I)V

    .line 116
    .line 117
    .line 118
    :cond_8
    if-nez p2, :cond_9

    .line 119
    .line 120
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 121
    .line 122
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_9
    int-to-double v0, p1

    .line 127
    sub-double v5, v0, v3

    .line 128
    .line 129
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 130
    .line 131
    .line 132
    move-result-wide v5

    .line 133
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 134
    .line 135
    cmpl-double p2, v5, v7

    .line 136
    .line 137
    if-lez p2, :cond_b

    .line 138
    .line 139
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 140
    .line 141
    cmpl-double v0, v0, v3

    .line 142
    .line 143
    if-lez v0, :cond_a

    .line 144
    .line 145
    add-int/lit8 v0, p1, -0x3

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_a
    add-int/lit8 v0, p1, 0x3

    .line 149
    .line 150
    :goto_2
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 151
    .line 152
    .line 153
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 154
    .line 155
    new-instance v0, Ll1/r;

    .line 156
    .line 157
    invoke-direct {v0, p2, p1}, Ll1/r;-><init>(Ll1/p;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_b
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 165
    .line 166
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 167
    .line 168
    .line 169
    :goto_3
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Ll1/o;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Ll1/j;

    invoke-virtual {v0, v1}, Ll1/o;->e(Landroidx/recyclerview/widget/w0;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Ll1/j;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/adapter/b;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/adapter/b;->onPageSelected(I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Z

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Design assumption violated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final canScrollHorizontally(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public final canScrollVertically(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    return p1
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    instance-of v1, v0, Ll1/q;

    if-eqz v1, :cond_0

    check-cast v0, Ll1/q;

    iget v0, v0, Ll1/q;->a:I

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->a()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v0, "androidx.viewpager.widget.ViewPager"

    .line 12
    .line 13
    return-object v0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/k0;
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    return v0
.end method

.method public getItemDecorationCount()I
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Ll1/j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getPageSize()I
    .locals 3

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    :goto_0
    sub-int/2addr v1, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :goto_1
    return v1
.end method

.method public getScrollState()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Ll1/d;

    .line 2
    .line 3
    iget v0, v0, Ll1/d;->f:I

    .line 4
    .line 5
    return v0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    invoke-virtual {v0, p1}, Ll1/m;->f(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iput p2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    iput p5, v2, Landroid/graphics/Rect;->bottom:I

    const p2, 0x800033

    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    invoke-static {p2, p1, v0, v2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget p5, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p4, p5, p3}, Landroid/view/View;->layout(IIII)V

    iget-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->c()V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v2, 0x10

    invoke-static {v1, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Ll1/q;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Ll1/q;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Ll1/q;->b:I

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    iget-object p1, p1, Ll1/q;->c:Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/os/Parcelable;

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ll1/q;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, v1, Ll1/q;->a:I

    .line 17
    .line 18
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    .line 23
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 24
    .line 25
    :cond_0
    iput v0, v1, Ll1/q;->b:I

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/os/Parcelable;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iput-object v0, v1, Ll1/q;->c:Landroid/os/Parcelable;

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    instance-of v2, v0, Landroidx/viewpager2/adapter/g;

    .line 41
    .line 42
    if-eqz v2, :cond_6

    .line 43
    .line 44
    check-cast v0, Landroidx/viewpager2/adapter/g;

    .line 45
    .line 46
    check-cast v0, Landroidx/viewpager2/adapter/e;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance v2, Landroid/os/Bundle;

    .line 52
    .line 53
    iget-object v3, v0, Landroidx/viewpager2/adapter/e;->c:Ln/e;

    .line 54
    .line 55
    invoke-virtual {v3}, Ln/e;->h()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    iget-object v5, v0, Landroidx/viewpager2/adapter/e;->d:Ln/e;

    .line 60
    .line 61
    invoke-virtual {v5}, Ln/e;->h()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    add-int/2addr v6, v4

    .line 66
    invoke-direct {v2, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    move v6, v4

    .line 71
    :goto_0
    invoke-virtual {v3}, Ln/e;->h()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    const/4 v8, 0x0

    .line 76
    if-ge v6, v7, :cond_3

    .line 77
    .line 78
    invoke-virtual {v3, v6}, Ln/e;->e(I)J

    .line 79
    .line 80
    .line 81
    move-result-wide v9

    .line 82
    invoke-virtual {v3, v8, v9, v10}, Ln/e;->d(Ljava/lang/Long;J)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 87
    .line 88
    if-eqz v7, :cond_2

    .line 89
    .line 90
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_2

    .line 95
    .line 96
    const-string v8, "f#"

    .line 97
    .line 98
    invoke-static {v8, v9, v10}, Ll1/e;->e(Ljava/lang/String;J)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    iget-object v9, v0, Landroidx/viewpager2/adapter/e;->b:Landroidx/fragment/app/u0;

    .line 103
    .line 104
    invoke-virtual {v9, v2, v8, v7}, Landroidx/fragment/app/u0;->L(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    :goto_1
    invoke-virtual {v5}, Ln/e;->h()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-ge v4, v3, :cond_5

    .line 115
    .line 116
    invoke-virtual {v5, v4}, Ln/e;->e(I)J

    .line 117
    .line 118
    .line 119
    move-result-wide v6

    .line 120
    invoke-virtual {v0, v6, v7}, Landroidx/viewpager2/adapter/e;->b(J)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_4

    .line 125
    .line 126
    const-string v3, "s#"

    .line 127
    .line 128
    invoke-static {v3, v6, v7}, Ll1/e;->e(Ljava/lang/String;J)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v5, v8, v6, v7}, Ln/e;->d(Ljava/lang/Long;J)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    check-cast v6, Landroid/os/Parcelable;

    .line 137
    .line 138
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_5
    iput-object v2, v1, Ll1/q;->c:Landroid/os/Parcelable;

    .line 145
    .line 146
    :cond_6
    :goto_2
    return-object v1
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager2 does not support direct child views"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x2000

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x1000

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Ll1/m;->g(ILandroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/k0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ll1/m;->d(Landroidx/recyclerview/widget/k0;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Ll1/f;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k0;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/m0;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->a()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ll1/m;->c(Landroidx/recyclerview/widget/k0;)V

    .line 33
    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/k0;->registerAdapterDataObserver(Landroidx/recyclerview/widget/m0;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Lv1/t;

    .line 2
    .line 3
    iget-object v0, v0, Lv1/t;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ll1/d;

    .line 6
    .line 7
    iget-boolean v0, v0, Ll1/d;->m:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->b(IZ)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "Cannot change current item when ViewPager2 is fake dragging"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public setLayoutDirection(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    .line 5
    .line 6
    invoke-virtual {p1}, Ll1/m;->i()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->t:I

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Ll1/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    .line 7
    .line 8
    invoke-virtual {p1}, Ll1/m;->i()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setPageTransformer(Ll1/n;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Z

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/r0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Landroidx/recyclerview/widget/r0;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Z

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/r0;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Landroidx/recyclerview/widget/r0;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/r0;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Landroidx/recyclerview/widget/r0;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Z

    .line 38
    .line 39
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Ll1/b;

    .line 40
    .line 41
    iget-object v1, v0, Ll1/b;->b:Ll1/n;

    .line 42
    .line 43
    if-ne p1, v1, :cond_3

    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    iput-object p1, v0, Ll1/b;->b:Ll1/n;

    .line 47
    .line 48
    if-nez p1, :cond_4

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Ll1/d;

    .line 52
    .line 53
    invoke-virtual {p1}, Ll1/d;->c()V

    .line 54
    .line 55
    .line 56
    iget-object p1, p1, Ll1/d;->g:Ll1/c;

    .line 57
    .line 58
    iget v0, p1, Ll1/c;->a:I

    .line 59
    .line 60
    int-to-double v0, v0

    .line 61
    iget p1, p1, Ll1/c;->b:F

    .line 62
    .line 63
    float-to-double v2, p1

    .line 64
    add-double/2addr v0, v2

    .line 65
    double-to-int p1, v0

    .line 66
    int-to-double v2, p1

    .line 67
    sub-double/2addr v0, v2

    .line 68
    double-to-float v0, v0

    .line 69
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPageSize()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    int-to-float v1, v1

    .line 74
    mul-float/2addr v1, v0

    .line 75
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Ll1/b;

    .line 80
    .line 81
    invoke-virtual {v2, p1, v0, v1}, Ll1/b;->onPageScrolled(IFI)V

    .line 82
    .line 83
    .line 84
    :goto_1
    return-void
.end method

.method public setUserInputEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    .line 4
    .line 5
    invoke-virtual {p1}, Ll1/m;->i()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
