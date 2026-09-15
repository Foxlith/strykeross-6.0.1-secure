.class public Landroidx/appcompat/widget/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/g0;


# static fields
.field public static final B:Ljava/lang/reflect/Method;

.field public static final C:Ljava/lang/reflect/Method;


# instance fields
.field public final A:Landroidx/appcompat/widget/j0;

.field public final a:Landroid/content/Context;

.field public b:Landroid/widget/ListAdapter;

.field public c:Landroidx/appcompat/widget/i2;

.field public final d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public final m:I

.field public n:Landroidx/appcompat/widget/s2;

.field public p:Landroid/view/View;

.field public q:Landroid/widget/AdapterView$OnItemClickListener;

.field public r:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public final s:Landroidx/appcompat/widget/o2;

.field public final t:Landroidx/appcompat/widget/u2;

.field public final u:Landroidx/appcompat/widget/t2;

.field public final v:Landroidx/appcompat/widget/o2;

.field public final w:Landroid/os/Handler;

.field public final x:Landroid/graphics/Rect;

.field public y:Landroid/graphics/Rect;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "ListPopupWindow"

    const-class v1, Landroid/widget/PopupWindow;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v2, v3, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "setClipToScreenEnabled"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroidx/appcompat/widget/v2;->B:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    const-string v4, "setEpicenterBounds"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/widget/v2;->C:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x2

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/v2;->d:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/appcompat/widget/v2;->e:I

    .line 8
    .line 9
    const/16 v0, 0x3ea

    .line 10
    .line 11
    iput v0, p0, Landroidx/appcompat/widget/v2;->h:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroidx/appcompat/widget/v2;->l:I

    .line 15
    .line 16
    const v1, 0x7fffffff

    .line 17
    .line 18
    .line 19
    iput v1, p0, Landroidx/appcompat/widget/v2;->m:I

    .line 20
    .line 21
    new-instance v1, Landroidx/appcompat/widget/o2;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-direct {v1, p0, v2}, Landroidx/appcompat/widget/o2;-><init>(Landroidx/appcompat/widget/v2;I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Landroidx/appcompat/widget/v2;->s:Landroidx/appcompat/widget/o2;

    .line 28
    .line 29
    new-instance v1, Landroidx/appcompat/widget/u2;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/u2;-><init>(Landroidx/appcompat/widget/v2;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Landroidx/appcompat/widget/v2;->t:Landroidx/appcompat/widget/u2;

    .line 35
    .line 36
    new-instance v1, Landroidx/appcompat/widget/t2;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/t2;-><init>(Landroidx/appcompat/widget/v2;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Landroidx/appcompat/widget/v2;->u:Landroidx/appcompat/widget/t2;

    .line 42
    .line 43
    new-instance v1, Landroidx/appcompat/widget/o2;

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-direct {v1, p0, v3}, Landroidx/appcompat/widget/o2;-><init>(Landroidx/appcompat/widget/v2;I)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Landroidx/appcompat/widget/v2;->v:Landroidx/appcompat/widget/o2;

    .line 50
    .line 51
    new-instance v1, Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Landroidx/appcompat/widget/v2;->x:Landroid/graphics/Rect;

    .line 57
    .line 58
    iput-object p1, p0, Landroidx/appcompat/widget/v2;->a:Landroid/content/Context;

    .line 59
    .line 60
    new-instance v1, Landroid/os/Handler;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Landroidx/appcompat/widget/v2;->w:Landroid/os/Handler;

    .line 70
    .line 71
    sget-object v1, Le/a;->p:[I

    .line 72
    .line 73
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    iput v4, p0, Landroidx/appcompat/widget/v2;->f:I

    .line 82
    .line 83
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    iput v4, p0, Landroidx/appcompat/widget/v2;->g:I

    .line 88
    .line 89
    if-eqz v4, :cond_0

    .line 90
    .line 91
    iput-boolean v3, p0, Landroidx/appcompat/widget/v2;->i:Z

    .line 92
    .line 93
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    .line 95
    .line 96
    new-instance v1, Landroidx/appcompat/widget/j0;

    .line 97
    .line 98
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 99
    .line 100
    .line 101
    sget-object v4, Le/a;->t:[I

    .line 102
    .line 103
    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-eqz p3, :cond_1

    .line 112
    .line 113
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    invoke-static {v1, p3}, Lk0/n;->c(Landroid/widget/PopupWindow;Z)V

    .line 118
    .line 119
    .line 120
    :cond_1
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    if-eqz p3, :cond_2

    .line 125
    .line 126
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    if-eqz p3, :cond_2

    .line 131
    .line 132
    invoke-static {p1, p3}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    .line 146
    .line 147
    iput-object v1, p0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 148
    .line 149
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 150
    .line 151
    .line 152
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/v2;->f:I

    return v0
.end method

.method public final d()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/appcompat/widget/v2;->a:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/appcompat/widget/v2;->z:Z

    .line 12
    .line 13
    xor-int/2addr v0, v4

    .line 14
    invoke-virtual {p0, v2, v0}, Landroidx/appcompat/widget/v2;->p(Landroid/content/Context;Z)Landroidx/appcompat/widget/i2;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 19
    .line 20
    iget-object v5, p0, Landroidx/appcompat/widget/v2;->b:Landroid/widget/ListAdapter;

    .line 21
    .line 22
    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 26
    .line 27
    iget-object v5, p0, Landroidx/appcompat/widget/v2;->q:Landroid/widget/AdapterView$OnItemClickListener;

    .line 28
    .line 29
    invoke-virtual {v0, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 43
    .line 44
    new-instance v5, Landroidx/appcompat/widget/p2;

    .line 45
    .line 46
    invoke-direct {v5, p0, v3}, Landroidx/appcompat/widget/p2;-><init>(Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v5}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 53
    .line 54
    iget-object v5, p0, Landroidx/appcompat/widget/v2;->u:Landroidx/appcompat/widget/t2;

    .line 55
    .line 56
    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->r:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    iget-object v5, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 64
    .line 65
    invoke-virtual {v5, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/view/ViewGroup;

    .line 79
    .line 80
    :goto_0
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v5, p0, Landroidx/appcompat/widget/v2;->x:Landroid/graphics/Rect;

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 89
    .line 90
    .line 91
    iget v0, v5, Landroid/graphics/Rect;->top:I

    .line 92
    .line 93
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 94
    .line 95
    add-int/2addr v6, v0

    .line 96
    iget-boolean v7, p0, Landroidx/appcompat/widget/v2;->i:Z

    .line 97
    .line 98
    if-nez v7, :cond_3

    .line 99
    .line 100
    neg-int v0, v0

    .line 101
    iput v0, p0, Landroidx/appcompat/widget/v2;->g:I

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 105
    .line 106
    .line 107
    move v6, v3

    .line 108
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const/4 v7, 0x2

    .line 113
    if-ne v0, v7, :cond_4

    .line 114
    .line 115
    move v0, v4

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    move v0, v3

    .line 118
    :goto_2
    iget-object v8, p0, Landroidx/appcompat/widget/v2;->p:Landroid/view/View;

    .line 119
    .line 120
    iget v9, p0, Landroidx/appcompat/widget/v2;->g:I

    .line 121
    .line 122
    invoke-static {v1, v8, v9, v0}, Landroidx/appcompat/widget/q2;->a(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iget v8, p0, Landroidx/appcompat/widget/v2;->d:I

    .line 127
    .line 128
    const/4 v9, -0x2

    .line 129
    const/4 v10, -0x1

    .line 130
    if-ne v8, v10, :cond_5

    .line 131
    .line 132
    add-int/2addr v0, v6

    .line 133
    goto :goto_5

    .line 134
    :cond_5
    iget v11, p0, Landroidx/appcompat/widget/v2;->e:I

    .line 135
    .line 136
    if-eq v11, v9, :cond_7

    .line 137
    .line 138
    const/high16 v12, 0x40000000    # 2.0f

    .line 139
    .line 140
    if-eq v11, v10, :cond_6

    .line 141
    .line 142
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    goto :goto_3

    .line 147
    :cond_6
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 156
    .line 157
    iget v11, v5, Landroid/graphics/Rect;->left:I

    .line 158
    .line 159
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 160
    .line 161
    add-int/2addr v11, v5

    .line 162
    sub-int/2addr v2, v11

    .line 163
    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    goto :goto_3

    .line 168
    :cond_7
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 177
    .line 178
    iget v11, v5, Landroid/graphics/Rect;->left:I

    .line 179
    .line 180
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 181
    .line 182
    add-int/2addr v11, v5

    .line 183
    sub-int/2addr v2, v11

    .line 184
    const/high16 v5, -0x80000000

    .line 185
    .line 186
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    :goto_3
    iget-object v5, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 191
    .line 192
    invoke-virtual {v5, v2, v0}, Landroidx/appcompat/widget/i2;->a(II)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-lez v0, :cond_8

    .line 197
    .line 198
    iget-object v2, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 199
    .line 200
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    iget-object v5, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 205
    .line 206
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    add-int/2addr v5, v2

    .line 211
    add-int/2addr v5, v6

    .line 212
    goto :goto_4

    .line 213
    :cond_8
    move v5, v3

    .line 214
    :goto_4
    add-int/2addr v0, v5

    .line 215
    :goto_5
    iget-object v2, p0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 216
    .line 217
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-ne v2, v7, :cond_9

    .line 222
    .line 223
    move v2, v4

    .line 224
    goto :goto_6

    .line 225
    :cond_9
    move v2, v3

    .line 226
    :goto_6
    iget v5, p0, Landroidx/appcompat/widget/v2;->h:I

    .line 227
    .line 228
    invoke-static {v1, v5}, Lk0/n;->d(Landroid/widget/PopupWindow;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-eqz v5, :cond_15

    .line 236
    .line 237
    iget-object v5, p0, Landroidx/appcompat/widget/v2;->p:Landroid/view/View;

    .line 238
    .line 239
    sget-object v6, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 240
    .line 241
    invoke-static {v5}, Landroidx/core/view/n0;->b(Landroid/view/View;)Z

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-nez v5, :cond_a

    .line 246
    .line 247
    return-void

    .line 248
    :cond_a
    iget v5, p0, Landroidx/appcompat/widget/v2;->e:I

    .line 249
    .line 250
    if-ne v5, v10, :cond_b

    .line 251
    .line 252
    move v5, v10

    .line 253
    goto :goto_7

    .line 254
    :cond_b
    if-ne v5, v9, :cond_c

    .line 255
    .line 256
    iget-object v5, p0, Landroidx/appcompat/widget/v2;->p:Landroid/view/View;

    .line 257
    .line 258
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    :cond_c
    :goto_7
    if-ne v8, v10, :cond_11

    .line 263
    .line 264
    if-eqz v2, :cond_d

    .line 265
    .line 266
    move v8, v0

    .line 267
    goto :goto_8

    .line 268
    :cond_d
    move v8, v10

    .line 269
    :goto_8
    iget v0, p0, Landroidx/appcompat/widget/v2;->e:I

    .line 270
    .line 271
    if-eqz v2, :cond_f

    .line 272
    .line 273
    if-ne v0, v10, :cond_e

    .line 274
    .line 275
    move v0, v10

    .line 276
    goto :goto_9

    .line 277
    :cond_e
    move v0, v3

    .line 278
    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 282
    .line 283
    .line 284
    goto :goto_a

    .line 285
    :cond_f
    if-ne v0, v10, :cond_10

    .line 286
    .line 287
    move v3, v10

    .line 288
    :cond_10
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 292
    .line 293
    .line 294
    goto :goto_a

    .line 295
    :cond_11
    if-ne v8, v9, :cond_12

    .line 296
    .line 297
    move v8, v0

    .line 298
    :cond_12
    :goto_a
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 299
    .line 300
    .line 301
    iget-object v2, p0, Landroidx/appcompat/widget/v2;->p:Landroid/view/View;

    .line 302
    .line 303
    iget v3, p0, Landroidx/appcompat/widget/v2;->f:I

    .line 304
    .line 305
    iget v4, p0, Landroidx/appcompat/widget/v2;->g:I

    .line 306
    .line 307
    if-gez v5, :cond_13

    .line 308
    .line 309
    move v5, v10

    .line 310
    :cond_13
    if-gez v8, :cond_14

    .line 311
    .line 312
    move v6, v10

    .line 313
    goto :goto_b

    .line 314
    :cond_14
    move v6, v8

    .line 315
    :goto_b
    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/j0;->update(Landroid/view/View;IIII)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_10

    .line 319
    .line 320
    :cond_15
    iget v2, p0, Landroidx/appcompat/widget/v2;->e:I

    .line 321
    .line 322
    if-ne v2, v10, :cond_16

    .line 323
    .line 324
    move v2, v10

    .line 325
    goto :goto_c

    .line 326
    :cond_16
    if-ne v2, v9, :cond_17

    .line 327
    .line 328
    iget-object v2, p0, Landroidx/appcompat/widget/v2;->p:Landroid/view/View;

    .line 329
    .line 330
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    :cond_17
    :goto_c
    if-ne v8, v10, :cond_18

    .line 335
    .line 336
    move v8, v10

    .line 337
    goto :goto_d

    .line 338
    :cond_18
    if-ne v8, v9, :cond_19

    .line 339
    .line 340
    move v8, v0

    .line 341
    :cond_19
    :goto_d
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 345
    .line 346
    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 348
    .line 349
    const-string v2, "ListPopupWindow"

    .line 350
    .line 351
    const/16 v5, 0x1c

    .line 352
    .line 353
    if-gt v0, v5, :cond_1a

    .line 354
    .line 355
    sget-object v0, Landroidx/appcompat/widget/v2;->B:Ljava/lang/reflect/Method;

    .line 356
    .line 357
    if-eqz v0, :cond_1b

    .line 358
    .line 359
    :try_start_0
    new-array v6, v4, [Ljava/lang/Object;

    .line 360
    .line 361
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 362
    .line 363
    aput-object v7, v6, v3

    .line 364
    .line 365
    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .line 367
    .line 368
    goto :goto_e

    .line 369
    :catch_0
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 370
    .line 371
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    goto :goto_e

    .line 375
    :cond_1a
    invoke-static {v1, v4}, Landroidx/appcompat/widget/r2;->b(Landroid/widget/PopupWindow;Z)V

    .line 376
    .line 377
    .line 378
    :cond_1b
    :goto_e
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 379
    .line 380
    .line 381
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->t:Landroidx/appcompat/widget/u2;

    .line 382
    .line 383
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 384
    .line 385
    .line 386
    iget-boolean v0, p0, Landroidx/appcompat/widget/v2;->k:Z

    .line 387
    .line 388
    if-eqz v0, :cond_1c

    .line 389
    .line 390
    iget-boolean v0, p0, Landroidx/appcompat/widget/v2;->j:Z

    .line 391
    .line 392
    invoke-static {v1, v0}, Lk0/n;->c(Landroid/widget/PopupWindow;Z)V

    .line 393
    .line 394
    .line 395
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 396
    .line 397
    if-gt v0, v5, :cond_1d

    .line 398
    .line 399
    sget-object v0, Landroidx/appcompat/widget/v2;->C:Ljava/lang/reflect/Method;

    .line 400
    .line 401
    if-eqz v0, :cond_1e

    .line 402
    .line 403
    :try_start_1
    new-array v5, v4, [Ljava/lang/Object;

    .line 404
    .line 405
    iget-object v6, p0, Landroidx/appcompat/widget/v2;->y:Landroid/graphics/Rect;

    .line 406
    .line 407
    aput-object v6, v5, v3

    .line 408
    .line 409
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 410
    .line 411
    .line 412
    goto :goto_f

    .line 413
    :catch_1
    move-exception v0

    .line 414
    const-string v3, "Could not invoke setEpicenterBounds on PopupWindow"

    .line 415
    .line 416
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    .line 418
    .line 419
    goto :goto_f

    .line 420
    :cond_1d
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->y:Landroid/graphics/Rect;

    .line 421
    .line 422
    invoke-static {v1, v0}, Landroidx/appcompat/widget/r2;->a(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    .line 423
    .line 424
    .line 425
    :cond_1e
    :goto_f
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->p:Landroid/view/View;

    .line 426
    .line 427
    iget v2, p0, Landroidx/appcompat/widget/v2;->f:I

    .line 428
    .line 429
    iget v3, p0, Landroidx/appcompat/widget/v2;->g:I

    .line 430
    .line 431
    iget v5, p0, Landroidx/appcompat/widget/v2;->l:I

    .line 432
    .line 433
    invoke-static {v1, v0, v2, v3, v5}, Lk0/m;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 434
    .line 435
    .line 436
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 437
    .line 438
    invoke-virtual {v0, v10}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 439
    .line 440
    .line 441
    iget-boolean v0, p0, Landroidx/appcompat/widget/v2;->z:Z

    .line 442
    .line 443
    if-eqz v0, :cond_1f

    .line 444
    .line 445
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 446
    .line 447
    invoke-virtual {v0}, Landroidx/appcompat/widget/i2;->isInTouchMode()Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-eqz v0, :cond_20

    .line 452
    .line 453
    :cond_1f
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 454
    .line 455
    if-eqz v0, :cond_20

    .line 456
    .line 457
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/i2;->setListSelectionHidden(Z)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 461
    .line 462
    .line 463
    :cond_20
    iget-boolean v0, p0, Landroidx/appcompat/widget/v2;->z:Z

    .line 464
    .line 465
    if-nez v0, :cond_21

    .line 466
    .line 467
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->w:Landroid/os/Handler;

    .line 468
    .line 469
    iget-object v1, p0, Landroidx/appcompat/widget/v2;->v:Landroidx/appcompat/widget/o2;

    .line 470
    .line 471
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 472
    .line 473
    .line 474
    :cond_21
    :goto_10
    return-void
.end method

.method public final dismiss()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    iget-object v0, p0, Landroidx/appcompat/widget/v2;->w:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/v2;->s:Landroidx/appcompat/widget/o2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final g()Landroidx/appcompat/widget/i2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    return-object v0
.end method

.method public final i(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/v2;->g:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/v2;->i:Z

    return-void
.end method

.method public final k(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/v2;->f:I

    return-void
.end method

.method public final m()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/v2;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/v2;->g:I

    return v0
.end method

.method public o(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->n:Landroidx/appcompat/widget/s2;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/s2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/s2;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/v2;->n:Landroidx/appcompat/widget/s2;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/v2;->b:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/v2;->b:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/v2;->n:Landroidx/appcompat/widget/s2;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/v2;->b:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public p(Landroid/content/Context;Z)Landroidx/appcompat/widget/i2;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/i2;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/i2;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public final q(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/v2;->x:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/appcompat/widget/v2;->e:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/v2;->e:I

    :goto_0
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
