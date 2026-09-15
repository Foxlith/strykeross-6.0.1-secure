.class public Landroidx/drawerlayout/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static final E:[I

.field public static final F:[I

.field public static final G:Z

.field public static final H:Z

.field public static final I:Z


# instance fields
.field public final A:Ljava/util/ArrayList;

.field public B:Landroid/graphics/Rect;

.field public C:Landroid/graphics/Matrix;

.field public final D:Lf/q0;

.field public final a:Lk0/i;

.field public b:F

.field public final c:I

.field public d:I

.field public e:F

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroidx/customview/widget/h;

.field public final h:Landroidx/customview/widget/h;

.field public final i:Lp0/f;

.field public final j:Lp0/f;

.field public k:I

.field public l:Z

.field public m:Z

.field public n:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Z

.field public t:Lp0/c;

.field public u:Ljava/util/ArrayList;

.field public v:F

.field public w:F

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:Ljava/lang/Object;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x1010434

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/drawerlayout/widget/DrawerLayout;->E:[I

    const v0, 0x10100b3

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/drawerlayout/widget/DrawerLayout;->F:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    sput-boolean v1, Landroidx/drawerlayout/widget/DrawerLayout;->G:Z

    sput-boolean v1, Landroidx/drawerlayout/widget/DrawerLayout;->H:Z

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Landroidx/drawerlayout/widget/DrawerLayout;->I:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    const v0, 0x7f040198

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lk0/i;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2}, Lk0/i;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->a:Lk0/i;

    .line 14
    .line 15
    const/high16 v1, -0x67000000

    .line 16
    .line 17
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:I

    .line 18
    .line 19
    new-instance v1, Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->f:Landroid/graphics/Paint;

    .line 25
    .line 26
    iput-boolean v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:I

    .line 30
    .line 31
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    .line 32
    .line 33
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    .line 34
    .line 35
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:I

    .line 36
    .line 37
    new-instance v3, Lf/q0;

    .line 38
    .line 39
    const/16 v4, 0xf

    .line 40
    .line 41
    invoke-direct {v3, p0, v4}, Lf/q0;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    iput-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->D:Lf/q0;

    .line 45
    .line 46
    const/high16 v3, 0x40000

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 60
    .line 61
    const/high16 v4, 0x42800000    # 64.0f

    .line 62
    .line 63
    mul-float/2addr v4, v3

    .line 64
    const/high16 v5, 0x3f000000    # 0.5f

    .line 65
    .line 66
    add-float/2addr v4, v5

    .line 67
    float-to-int v4, v4

    .line 68
    iput v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:I

    .line 69
    .line 70
    const/high16 v4, 0x43c80000    # 400.0f

    .line 71
    .line 72
    mul-float/2addr v3, v4

    .line 73
    new-instance v4, Lp0/f;

    .line 74
    .line 75
    invoke-direct {v4, p0, v1}, Lp0/f;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    .line 76
    .line 77
    .line 78
    iput-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Lp0/f;

    .line 79
    .line 80
    new-instance v1, Lp0/f;

    .line 81
    .line 82
    const/4 v5, 0x5

    .line 83
    invoke-direct {v1, p0, v5}, Lp0/f;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Lp0/f;

    .line 87
    .line 88
    const/high16 v5, 0x3f800000    # 1.0f

    .line 89
    .line 90
    invoke-static {p0, v5, v4}, Landroidx/customview/widget/h;->h(Landroid/view/ViewGroup;FLandroidx/customview/widget/g;)Landroidx/customview/widget/h;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    iput-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Landroidx/customview/widget/h;

    .line 95
    .line 96
    iput v2, v6, Landroidx/customview/widget/h;->q:I

    .line 97
    .line 98
    iput v3, v6, Landroidx/customview/widget/h;->n:F

    .line 99
    .line 100
    iput-object v6, v4, Lp0/f;->b:Landroidx/customview/widget/h;

    .line 101
    .line 102
    invoke-static {p0, v5, v1}, Landroidx/customview/widget/h;->h(Landroid/view/ViewGroup;FLandroidx/customview/widget/g;)Landroidx/customview/widget/h;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    iput-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Landroidx/customview/widget/h;

    .line 107
    .line 108
    const/4 v5, 0x2

    .line 109
    iput v5, v4, Landroidx/customview/widget/h;->q:I

    .line 110
    .line 111
    iput v3, v4, Landroidx/customview/widget/h;->n:F

    .line 112
    .line 113
    iput-object v4, v1, Lp0/f;->b:Landroidx/customview/widget/h;

    .line 114
    .line 115
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 116
    .line 117
    .line 118
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 119
    .line 120
    invoke-static {p0, v2}, Landroidx/core/view/k0;->s(Landroid/view/View;I)V

    .line 121
    .line 122
    .line 123
    new-instance v1, Lp0/b;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Lp0/b;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p0, v1}, Landroidx/core/view/c1;->o(Landroid/view/View;Landroidx/core/view/c;)V

    .line 129
    .line 130
    .line 131
    const/4 v1, 0x0

    .line 132
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 133
    .line 134
    .line 135
    invoke-static {p0}, Landroidx/core/view/k0;->b(Landroid/view/View;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_0

    .line 140
    .line 141
    new-instance v2, Lp0/a;

    .line 142
    .line 143
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 147
    .line 148
    .line 149
    const/16 v2, 0x500

    .line 150
    .line 151
    invoke-virtual {p0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 152
    .line 153
    .line 154
    sget-object v2, Landroidx/drawerlayout/widget/DrawerLayout;->E:[I

    .line 155
    .line 156
    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    iput-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .line 166
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :catchall_0
    move-exception p1

    .line 171
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :cond_0
    :goto_0
    sget-object v2, Lo0/a;->a:[I

    .line 176
    .line 177
    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    if-eqz p2, :cond_1

    .line 186
    .line 187
    const/4 p2, 0x0

    .line 188
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    :goto_1
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->b:F

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :catchall_1
    move-exception p2

    .line 196
    goto :goto_3

    .line 197
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    const v0, 0x7f070067

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 205
    .line 206
    .line 207
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    goto :goto_1

    .line 209
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    .line 211
    .line 212
    new-instance p1, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .line 216
    .line 217
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->A:Ljava/util/ArrayList;

    .line 218
    .line 219
    return-void

    .line 220
    :goto_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    .line 222
    .line 223
    throw p2
.end method

.method public static j(I)Ljava/lang/String;
    .locals 2

    .line 1
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p0, "LEFT"

    return-object p0

    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string p0, "RIGHT"

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/view/View;)Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/k0;->c(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Landroidx/core/view/k0;->c(Landroid/view/View;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, 0x2

    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public static l(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lp0/d;

    iget p0, p0, Lp0/d;->a:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static m(Landroid/view/View;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->n(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lp0/d;

    iget p0, p0, Lp0/d;->d:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not a drawer"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static n(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lp0/d;

    .line 6
    .line 7
    iget v0, v0, Lp0/d;->a:I

    .line 8
    .line 9
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {v0, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    and-int/lit8 v0, p0, 0x3

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    and-int/lit8 p0, p0, 0x5

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return p0
.end method


# virtual methods
.method public final a(ILandroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)I

    move-result p2

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->A:Ljava/util/ArrayList;

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->n(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->m(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v5, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->f()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->n(Landroid/view/View;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    sget-object p2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    :goto_0
    invoke-static {p1, p2}, Landroidx/core/view/k0;->s(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    :goto_1
    sget-object p2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 25
    .line 26
    const/4 p2, 0x4

    .line 27
    goto :goto_0

    .line 28
    :goto_2
    sget-boolean p2, Landroidx/drawerlayout/widget/DrawerLayout;->G:Z

    .line 29
    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->a:Lk0/i;

    .line 33
    .line 34
    invoke-static {p1, p2}, Landroidx/core/view/c1;->o(Landroid/view/View;Landroidx/core/view/c;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->n(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lp0/d;

    iget-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    iput p1, v0, Lp0/d;->b:F

    const/4 p1, 0x0

    iput p1, v0, Lp0/d;->d:I

    goto :goto_1

    :cond_0
    iget v1, v0, Lp0/d;->d:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lp0/d;->d:I

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(ILandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Landroidx/customview/widget/h;

    :goto_0
    invoke-virtual {v2, p1, v0, v1}, Landroidx/customview/widget/h;->t(Landroid/view/View;II)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Landroidx/customview/widget/h;

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 4

    .line 1
    const v0, 0x800003

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "No drawer view found with gravity "

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->j(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lp0/d;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final computeScroll()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lp0/d;

    .line 18
    .line 19
    iget v3, v3, Lp0/d;->b:F

    .line 20
    .line 21
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->e:F

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Landroidx/customview/widget/h;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/customview/widget/h;->g()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Landroidx/customview/widget/h;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/customview/widget/h;->g()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    :cond_1
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 47
    .line 48
    invoke-static {p0}, Landroidx/core/view/k0;->k(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public final d(Z)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    check-cast v5, Lp0/d;

    .line 19
    .line 20
    invoke-static {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->n(Landroid/view/View;)Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_2

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-boolean v6, v5, Lp0/d;->c:Z

    .line 29
    .line 30
    if-nez v6, :cond_0

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/4 v7, 0x3

    .line 38
    invoke-virtual {p0, v7, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->a(ILandroid/view/View;)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_1

    .line 43
    .line 44
    neg-int v6, v6

    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    iget-object v8, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Landroidx/customview/widget/h;

    .line 50
    .line 51
    :goto_1
    invoke-virtual {v8, v4, v6, v7}, Landroidx/customview/widget/h;->t(Landroid/view/View;II)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    or-int/2addr v3, v4

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    iget-object v8, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Landroidx/customview/widget/h;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_2
    iput-boolean v1, v5, Lp0/d;->c:Z

    .line 69
    .line 70
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Lp0/f;

    .line 74
    .line 75
    iget-object v0, p1, Lp0/f;->c:Landroidx/activity/d;

    .line 76
    .line 77
    iget-object p1, p1, Lp0/f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Lp0/f;

    .line 83
    .line 84
    iget-object v0, p1, Lp0/f;->c:Landroidx/activity/d;

    .line 85
    .line 86
    iget-object p1, p1, Lp0/f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    if-eqz v3, :cond_4

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 94
    .line 95
    .line 96
    :cond_4
    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    if-eq v0, v1, :cond_8

    .line 16
    .line 17
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->e:F

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    cmpg-float v0, v0, v1

    .line 21
    .line 22
    if-gtz v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_7

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x1

    .line 41
    sub-int/2addr v0, v3

    .line 42
    :goto_0
    if-ltz v0, :cond_7

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->B:Landroid/graphics/Rect;

    .line 49
    .line 50
    if-nez v5, :cond_1

    .line 51
    .line 52
    new-instance v5, Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->B:Landroid/graphics/Rect;

    .line 58
    .line 59
    :cond_1
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->B:Landroid/graphics/Rect;

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 62
    .line 63
    .line 64
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->B:Landroid/graphics/Rect;

    .line 65
    .line 66
    float-to-int v6, v1

    .line 67
    float-to-int v7, v2

    .line 68
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_6

    .line 73
    .line 74
    invoke-static {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->l(Landroid/view/View;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_2

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-nez v5, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    sub-int/2addr v5, v6

    .line 100
    int-to-float v5, v5

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    sub-int/2addr v6, v7

    .line 110
    int-to-float v6, v6

    .line 111
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v7, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-nez v6, :cond_4

    .line 127
    .line 128
    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->C:Landroid/graphics/Matrix;

    .line 129
    .line 130
    if-nez v6, :cond_3

    .line 131
    .line 132
    new-instance v6, Landroid/graphics/Matrix;

    .line 133
    .line 134
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->C:Landroid/graphics/Matrix;

    .line 138
    .line 139
    :cond_3
    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->C:Landroid/graphics/Matrix;

    .line 140
    .line 141
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 142
    .line 143
    .line 144
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->C:Landroid/graphics/Matrix;

    .line 145
    .line 146
    invoke-virtual {v7, v5}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 147
    .line 148
    .line 149
    :cond_4
    invoke-virtual {v4, v7}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    sub-int/2addr v5, v6

    .line 166
    int-to-float v5, v5

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    sub-int/2addr v6, v7

    .line 176
    int-to-float v6, v6

    .line 177
    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    neg-float v5, v5

    .line 185
    neg-float v6, v6

    .line 186
    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 187
    .line 188
    .line 189
    :goto_1
    if-eqz v4, :cond_6

    .line 190
    .line 191
    return v3

    .line 192
    :cond_6
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_7
    const/4 p1, 0x0

    .line 197
    return p1

    .line 198
    :cond_8
    :goto_3
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    return p1
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->l(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v1, :cond_4

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    move v6, v4

    .line 25
    move v7, v6

    .line 26
    :goto_0
    if-ge v6, v5, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    if-eq v8, p2, :cond_2

    .line 33
    .line 34
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    if-nez v9, :cond_2

    .line 39
    .line 40
    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    if-eqz v9, :cond_2

    .line 45
    .line 46
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    const/4 v10, -0x1

    .line 51
    if-ne v9, v10, :cond_2

    .line 52
    .line 53
    invoke-static {v8}, Landroidx/drawerlayout/widget/DrawerLayout;->n(Landroid/view/View;)Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-eqz v9, :cond_2

    .line 58
    .line 59
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-ge v9, v0, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    const/4 v9, 0x3

    .line 67
    invoke-virtual {p0, v9, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->a(ILandroid/view/View;)Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_1

    .line 72
    .line 73
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-le v8, v7, :cond_2

    .line 78
    .line 79
    move v7, v8

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-ge v8, v2, :cond_2

    .line 86
    .line 87
    move v2, v8

    .line 88
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {p1, v7, v4, v2, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 96
    .line 97
    .line 98
    move v4, v7

    .line 99
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 104
    .line 105
    .line 106
    iget p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->e:F

    .line 107
    .line 108
    const/4 p4, 0x0

    .line 109
    cmpl-float p4, p3, p4

    .line 110
    .line 111
    if-lez p4, :cond_5

    .line 112
    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    iget p4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:I

    .line 116
    .line 117
    const/high16 v0, -0x1000000

    .line 118
    .line 119
    and-int/2addr v0, p4

    .line 120
    ushr-int/lit8 v0, v0, 0x18

    .line 121
    .line 122
    int-to-float v0, v0

    .line 123
    mul-float/2addr v0, p3

    .line 124
    float-to-int p3, v0

    .line 125
    shl-int/lit8 p3, p3, 0x18

    .line 126
    .line 127
    const v0, 0xffffff

    .line 128
    .line 129
    .line 130
    and-int/2addr p4, v0

    .line 131
    or-int/2addr p3, p4

    .line 132
    iget-object v10, p0, Landroidx/drawerlayout/widget/DrawerLayout;->f:Landroid/graphics/Paint;

    .line 133
    .line 134
    invoke-virtual {v10, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    .line 136
    .line 137
    int-to-float v6, v4

    .line 138
    const/4 v7, 0x0

    .line 139
    int-to-float v8, v2

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 141
    .line 142
    .line 143
    move-result p3

    .line 144
    int-to-float v9, p3

    .line 145
    move-object v5, p1

    .line 146
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    return p2
.end method

.method public final e(I)Landroid/view/View;
    .locals 4

    .line 1
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    and-int/lit8 p1, p1, 0x7

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    and-int/lit8 v3, v3, 0x7

    .line 29
    .line 30
    if-ne v3, p1, :cond_0

    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    return-object p1
.end method

.method public final f()Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lp0/d;

    iget v3, v3, Lp0/d;->d:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->n(Landroid/view/View;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-static {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->n(Landroid/view/View;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lp0/d;

    .line 29
    .line 30
    iget v3, v3, Lp0/d;->b:F

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    cmpl-float v3, v3, v4

    .line 34
    .line 35
    if-lez v3, :cond_1

    .line 36
    .line 37
    return-object v2

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "View "

    .line 43
    .line 44
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, " is not a drawer"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v0, 0x0

    .line 67
    return-object v0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lp0/d;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lp0/d;->a:I

    .line 9
    .line 10
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    new-instance v0, Lp0/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x0

    iput v2, v0, Lp0/d;->a:I

    sget-object v3, Landroidx/drawerlayout/widget/DrawerLayout;->F:[I

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lp0/d;->a:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    instance-of v0, p1, Lp0/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lp0/d;

    check-cast p1, Lp0/d;

    .line 2
    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput v1, v0, Lp0/d;->a:I

    iget p1, p1, Lp0/d;->a:I

    iput p1, v0, Lp0/d;->a:I

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lp0/d;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput v1, v0, Lp0/d;->a:I

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lp0/d;

    .line 6
    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v1, v0, Lp0/d;->a:I

    :goto_0
    return-object v0
.end method

.method public getDrawerElevation()F
    .locals 1

    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->H:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->b:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final h(Landroid/view/View;)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->n(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lp0/d;

    .line 12
    .line 13
    iget p1, p1, Lp0/d;->a:I

    .line 14
    .line 15
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x3

    .line 22
    if-eq p1, v1, :cond_9

    .line 23
    .line 24
    const/4 v2, 0x5

    .line 25
    if-eq p1, v2, :cond_6

    .line 26
    .line 27
    const v2, 0x800003

    .line 28
    .line 29
    .line 30
    if-eq p1, v2, :cond_3

    .line 31
    .line 32
    const v2, 0x800005

    .line 33
    .line 34
    .line 35
    if-eq p1, v2, :cond_0

    .line 36
    .line 37
    goto :goto_4

    .line 38
    :cond_0
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:I

    .line 39
    .line 40
    if-eq p1, v1, :cond_1

    .line 41
    .line 42
    goto :goto_5

    .line 43
    :cond_1
    if-nez v0, :cond_2

    .line 44
    .line 45
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:I

    .line 49
    .line 50
    :goto_0
    if-eq p1, v1, :cond_c

    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_3
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    .line 54
    .line 55
    if-eq p1, v1, :cond_4

    .line 56
    .line 57
    goto :goto_5

    .line 58
    :cond_4
    if-nez v0, :cond_5

    .line 59
    .line 60
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:I

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    .line 64
    .line 65
    :goto_1
    if-eq p1, v1, :cond_c

    .line 66
    .line 67
    goto :goto_5

    .line 68
    :cond_6
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    .line 69
    .line 70
    if-eq p1, v1, :cond_7

    .line 71
    .line 72
    goto :goto_5

    .line 73
    :cond_7
    if-nez v0, :cond_8

    .line 74
    .line 75
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:I

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_8
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    .line 79
    .line 80
    :goto_2
    if-eq p1, v1, :cond_c

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_9
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:I

    .line 84
    .line 85
    if-eq p1, v1, :cond_a

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_a
    if-nez v0, :cond_b

    .line 89
    .line 90
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_b
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:I

    .line 94
    .line 95
    :goto_3
    if-eq p1, v1, :cond_c

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_c
    :goto_4
    const/4 p1, 0x0

    .line 99
    :goto_5
    return p1

    .line 100
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v2, "View "

    .line 105
    .line 106
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p1, " is not a drawer"

    .line 113
    .line 114
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0
.end method

.method public final i(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lp0/d;

    .line 6
    .line 7
    iget p1, p1, Lp0/d;->a:I

    .line 8
    .line 9
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final o(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->n(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lp0/d;

    iget-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lp0/d;->b:F

    const/4 v1, 0x1

    iput v1, v0, Lp0/d;->d:I

    invoke-virtual {p0, p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->t(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->s(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lp0/d;->d:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lp0/d;->d:I

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(ILandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Landroidx/customview/widget/h;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroidx/customview/widget/h;->t(Landroid/view/View;II)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Landroidx/customview/widget/h;

    invoke-virtual {v2, p1, v0, v1}, Landroidx/customview/widget/h;->t(Landroid/view/View;II)Z

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->z:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->y:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-lez v0, :cond_1

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Landroidx/customview/widget/h;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroidx/customview/widget/h;->s(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Landroidx/customview/widget/h;

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Landroidx/customview/widget/h;->s(Landroid/view/MotionEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    or-int/2addr v2, v3

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    if-eq v0, v3, :cond_2

    .line 23
    .line 24
    const/4 p1, 0x2

    .line 25
    if-eq v0, p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x3

    .line 28
    if-eq v0, p1, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object p1, v1, Landroidx/customview/widget/h;->d:[F

    .line 32
    .line 33
    array-length p1, p1

    .line 34
    move v0, v4

    .line 35
    :goto_0
    if-ge v0, p1, :cond_3

    .line 36
    .line 37
    iget v5, v1, Landroidx/customview/widget/h;->k:I

    .line 38
    .line 39
    shl-int v6, v3, v0

    .line 40
    .line 41
    and-int/2addr v5, v6

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    iget-object v5, v1, Landroidx/customview/widget/h;->f:[F

    .line 45
    .line 46
    aget v5, v5, v0

    .line 47
    .line 48
    iget-object v6, v1, Landroidx/customview/widget/h;->d:[F

    .line 49
    .line 50
    aget v6, v6, v0

    .line 51
    .line 52
    sub-float/2addr v5, v6

    .line 53
    iget-object v6, v1, Landroidx/customview/widget/h;->g:[F

    .line 54
    .line 55
    aget v6, v6, v0

    .line 56
    .line 57
    iget-object v7, v1, Landroidx/customview/widget/h;->e:[F

    .line 58
    .line 59
    aget v7, v7, v0

    .line 60
    .line 61
    sub-float/2addr v6, v7

    .line 62
    mul-float/2addr v5, v5

    .line 63
    mul-float/2addr v6, v6

    .line 64
    add-float/2addr v6, v5

    .line 65
    iget v5, v1, Landroidx/customview/widget/h;->b:I

    .line 66
    .line 67
    mul-int/2addr v5, v5

    .line 68
    int-to-float v5, v5

    .line 69
    cmpl-float v5, v6, v5

    .line 70
    .line 71
    if-lez v5, :cond_1

    .line 72
    .line 73
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Lp0/f;

    .line 74
    .line 75
    iget-object v0, p1, Lp0/f;->c:Landroidx/activity/d;

    .line 76
    .line 77
    iget-object p1, p1, Lp0/f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Lp0/f;

    .line 83
    .line 84
    iget-object v0, p1, Lp0/f;->c:Landroidx/activity/d;

    .line 85
    .line 86
    iget-object p1, p1, Lp0/f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    .line 96
    .line 97
    .line 98
    iput-boolean v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->s:Z

    .line 99
    .line 100
    :cond_3
    :goto_1
    move p1, v4

    .line 101
    goto :goto_3

    .line 102
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->v:F

    .line 111
    .line 112
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:F

    .line 113
    .line 114
    iget v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->e:F

    .line 115
    .line 116
    const/4 v6, 0x0

    .line 117
    cmpl-float v5, v5, v6

    .line 118
    .line 119
    if-lez v5, :cond_5

    .line 120
    .line 121
    float-to-int v0, v0

    .line 122
    float-to-int p1, p1

    .line 123
    invoke-virtual {v1, v0, p1}, Landroidx/customview/widget/h;->i(II)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-eqz p1, :cond_5

    .line 128
    .line 129
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->l(Landroid/view/View;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_5

    .line 134
    .line 135
    move p1, v3

    .line 136
    goto :goto_2

    .line 137
    :cond_5
    move p1, v4

    .line 138
    :goto_2
    iput-boolean v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->s:Z

    .line 139
    .line 140
    :goto_3
    if-nez v2, :cond_9

    .line 141
    .line 142
    if-nez p1, :cond_9

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    move v0, v4

    .line 149
    :goto_4
    if-ge v0, p1, :cond_7

    .line 150
    .line 151
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Lp0/d;

    .line 160
    .line 161
    iget-boolean v1, v1, Lp0/d;->c:Z

    .line 162
    .line 163
    if-eqz v1, :cond_6

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_7
    iget-boolean p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->s:Z

    .line 170
    .line 171
    if-eqz p1, :cond_8

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_8
    move v3, v4

    .line 175
    :cond_9
    :goto_5
    return v3
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->g()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->g()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->h(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    :cond_1
    return p2

    .line 24
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public final onLayout(ZIIII)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;->l:Z

    .line 5
    .line 6
    sub-int v2, p4, p2

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    move v5, v4

    .line 14
    :goto_0
    if-ge v5, v3, :cond_b

    .line 15
    .line 16
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    const/16 v8, 0x8

    .line 25
    .line 26
    if-ne v7, v8, :cond_0

    .line 27
    .line 28
    goto/16 :goto_7

    .line 29
    .line 30
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Lp0/d;

    .line 35
    .line 36
    invoke-static {v6}, Landroidx/drawerlayout/widget/DrawerLayout;->l(Landroid/view/View;)Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-eqz v8, :cond_1

    .line 41
    .line 42
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 43
    .line 44
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 45
    .line 46
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    add-int/2addr v10, v8

    .line 51
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 52
    .line 53
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    add-int/2addr v11, v7

    .line 58
    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_7

    .line 62
    .line 63
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    const/4 v10, 0x3

    .line 72
    invoke-virtual {v0, v10, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->a(ILandroid/view/View;)Z

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    if-eqz v10, :cond_2

    .line 77
    .line 78
    neg-int v10, v8

    .line 79
    int-to-float v11, v8

    .line 80
    iget v12, v7, Lp0/d;->b:F

    .line 81
    .line 82
    mul-float/2addr v12, v11

    .line 83
    float-to-int v12, v12

    .line 84
    add-int/2addr v10, v12

    .line 85
    add-int v12, v8, v10

    .line 86
    .line 87
    int-to-float v12, v12

    .line 88
    div-float/2addr v12, v11

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    int-to-float v10, v8

    .line 91
    iget v11, v7, Lp0/d;->b:F

    .line 92
    .line 93
    mul-float/2addr v11, v10

    .line 94
    float-to-int v11, v11

    .line 95
    sub-int v11, v2, v11

    .line 96
    .line 97
    sub-int v12, v2, v11

    .line 98
    .line 99
    int-to-float v12, v12

    .line 100
    div-float/2addr v12, v10

    .line 101
    move v10, v11

    .line 102
    :goto_1
    iget v11, v7, Lp0/d;->b:F

    .line 103
    .line 104
    cmpl-float v11, v12, v11

    .line 105
    .line 106
    if-eqz v11, :cond_3

    .line 107
    .line 108
    move v11, v1

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    move v11, v4

    .line 111
    :goto_2
    iget v13, v7, Lp0/d;->a:I

    .line 112
    .line 113
    and-int/lit8 v13, v13, 0x70

    .line 114
    .line 115
    const/16 v14, 0x10

    .line 116
    .line 117
    if-eq v13, v14, :cond_5

    .line 118
    .line 119
    const/16 v14, 0x50

    .line 120
    .line 121
    if-eq v13, v14, :cond_4

    .line 122
    .line 123
    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 124
    .line 125
    add-int/2addr v8, v10

    .line 126
    add-int/2addr v9, v13

    .line 127
    :goto_3
    invoke-virtual {v6, v10, v13, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 128
    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_4
    sub-int v9, p5, p3

    .line 132
    .line 133
    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 134
    .line 135
    sub-int v13, v9, v13

    .line 136
    .line 137
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 138
    .line 139
    .line 140
    move-result v14

    .line 141
    sub-int/2addr v13, v14

    .line 142
    add-int/2addr v8, v10

    .line 143
    iget v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 144
    .line 145
    sub-int/2addr v9, v14

    .line 146
    goto :goto_3

    .line 147
    :cond_5
    sub-int v13, p5, p3

    .line 148
    .line 149
    sub-int v14, v13, v9

    .line 150
    .line 151
    div-int/lit8 v14, v14, 0x2

    .line 152
    .line 153
    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 154
    .line 155
    if-ge v14, v15, :cond_6

    .line 156
    .line 157
    move v14, v15

    .line 158
    goto :goto_4

    .line 159
    :cond_6
    add-int v15, v14, v9

    .line 160
    .line 161
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 162
    .line 163
    sub-int/2addr v13, v1

    .line 164
    if-le v15, v13, :cond_7

    .line 165
    .line 166
    sub-int v14, v13, v9

    .line 167
    .line 168
    :cond_7
    :goto_4
    add-int/2addr v8, v10

    .line 169
    add-int/2addr v9, v14

    .line 170
    invoke-virtual {v6, v10, v14, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 171
    .line 172
    .line 173
    :goto_5
    if-eqz v11, :cond_8

    .line 174
    .line 175
    invoke-virtual {v0, v6, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->r(Landroid/view/View;F)V

    .line 176
    .line 177
    .line 178
    :cond_8
    iget v1, v7, Lp0/d;->b:F

    .line 179
    .line 180
    const/4 v7, 0x0

    .line 181
    cmpl-float v1, v1, v7

    .line 182
    .line 183
    if-lez v1, :cond_9

    .line 184
    .line 185
    move v1, v4

    .line 186
    goto :goto_6

    .line 187
    :cond_9
    const/4 v1, 0x4

    .line 188
    :goto_6
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    if-eq v7, v1, :cond_a

    .line 193
    .line 194
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    :cond_a
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 198
    .line 199
    const/4 v1, 0x1

    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_b
    sget-boolean v1, Landroidx/drawerlayout/widget/DrawerLayout;->I:Z

    .line 203
    .line 204
    if-eqz v1, :cond_c

    .line 205
    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    if-eqz v1, :cond_c

    .line 211
    .line 212
    const/4 v2, 0x0

    .line 213
    invoke-static {v2, v1}, Landroidx/core/view/q2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/q2;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    iget-object v1, v1, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 218
    .line 219
    invoke-virtual {v1}, Landroidx/core/view/o2;->i()Lz/f;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Landroidx/customview/widget/h;

    .line 224
    .line 225
    iget v3, v2, Landroidx/customview/widget/h;->p:I

    .line 226
    .line 227
    iget v5, v1, Lz/f;->a:I

    .line 228
    .line 229
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    iput v3, v2, Landroidx/customview/widget/h;->o:I

    .line 234
    .line 235
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Landroidx/customview/widget/h;

    .line 236
    .line 237
    iget v3, v2, Landroidx/customview/widget/h;->p:I

    .line 238
    .line 239
    iget v1, v1, Lz/f;->c:I

    .line 240
    .line 241
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    iput v1, v2, Landroidx/customview/widget/h;->o:I

    .line 246
    .line 247
    :cond_c
    iput-boolean v4, v0, Landroidx/drawerlayout/widget/DrawerLayout;->l:Z

    .line 248
    .line 249
    iput-boolean v4, v0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    .line 250
    .line 251
    return-void
.end method

.method public final onMeasure(II)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/high16 v5, 0x40000000    # 2.0f

    .line 20
    .line 21
    if-ne v1, v5, :cond_0

    .line 22
    .line 23
    if-eq v2, v5, :cond_2

    .line 24
    .line 25
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_14

    .line 30
    .line 31
    const/16 v6, 0x12c

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    move v3, v6

    .line 36
    :cond_1
    if-nez v2, :cond_2

    .line 37
    .line 38
    move v4, v6

    .line 39
    :cond_2
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;->y:Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 48
    .line 49
    invoke-static/range {p0 .. p0}, Landroidx/core/view/k0;->b(Landroid/view/View;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    move v1, v6

    .line 58
    :goto_0
    sget-object v7, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 59
    .line 60
    invoke-static/range {p0 .. p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    move v9, v6

    .line 69
    move v10, v9

    .line 70
    move v11, v10

    .line 71
    :goto_1
    if-ge v9, v8, :cond_13

    .line 72
    .line 73
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const/16 v14, 0x8

    .line 82
    .line 83
    if-ne v13, v14, :cond_4

    .line 84
    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    check-cast v13, Lp0/d;

    .line 92
    .line 93
    const/4 v14, 0x3

    .line 94
    if-eqz v1, :cond_a

    .line 95
    .line 96
    iget v15, v13, Lp0/d;->a:I

    .line 97
    .line 98
    invoke-static {v15, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    invoke-static {v12}, Landroidx/core/view/k0;->b(Landroid/view/View;)Z

    .line 103
    .line 104
    .line 105
    move-result v16

    .line 106
    const/4 v2, 0x5

    .line 107
    iget-object v5, v0, Landroidx/drawerlayout/widget/DrawerLayout;->y:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v5, Landroid/view/WindowInsets;

    .line 110
    .line 111
    if-eqz v16, :cond_7

    .line 112
    .line 113
    if-ne v15, v14, :cond_5

    .line 114
    .line 115
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 120
    .line 121
    .line 122
    move-result v15

    .line 123
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    invoke-virtual {v5, v2, v15, v6, v14}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    if-ne v15, v2, :cond_6

    .line 133
    .line 134
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 139
    .line 140
    .line 141
    move-result v14

    .line 142
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    invoke-virtual {v5, v6, v2, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    :cond_6
    :goto_2
    invoke-virtual {v12, v5}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_7
    const/4 v14, 0x3

    .line 155
    if-ne v15, v14, :cond_8

    .line 156
    .line 157
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 162
    .line 163
    .line 164
    move-result v14

    .line 165
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 166
    .line 167
    .line 168
    move-result v15

    .line 169
    invoke-virtual {v5, v2, v14, v6, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    goto :goto_3

    .line 174
    :cond_8
    if-ne v15, v2, :cond_9

    .line 175
    .line 176
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 181
    .line 182
    .line 183
    move-result v14

    .line 184
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 185
    .line 186
    .line 187
    move-result v15

    .line 188
    invoke-virtual {v5, v6, v2, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    :cond_9
    :goto_3
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    iput v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 197
    .line 198
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    iput v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 203
    .line 204
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    iput v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 209
    .line 210
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    iput v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 215
    .line 216
    :cond_a
    :goto_4
    invoke-static {v12}, Landroidx/drawerlayout/widget/DrawerLayout;->l(Landroid/view/View;)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_b

    .line 221
    .line 222
    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 223
    .line 224
    sub-int v2, v3, v2

    .line 225
    .line 226
    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 227
    .line 228
    sub-int/2addr v2, v5

    .line 229
    const/high16 v5, 0x40000000    # 2.0f

    .line 230
    .line 231
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 236
    .line 237
    sub-int v14, v4, v14

    .line 238
    .line 239
    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 240
    .line 241
    sub-int/2addr v14, v13

    .line 242
    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 243
    .line 244
    .line 245
    move-result v13

    .line 246
    invoke-virtual {v12, v2, v13}, Landroid/view/View;->measure(II)V

    .line 247
    .line 248
    .line 249
    :goto_5
    move/from16 v15, p1

    .line 250
    .line 251
    move/from16 v13, p2

    .line 252
    .line 253
    goto/16 :goto_9

    .line 254
    .line 255
    :cond_b
    const/high16 v5, 0x40000000    # 2.0f

    .line 256
    .line 257
    invoke-static {v12}, Landroidx/drawerlayout/widget/DrawerLayout;->n(Landroid/view/View;)Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_12

    .line 262
    .line 263
    sget-boolean v2, Landroidx/drawerlayout/widget/DrawerLayout;->H:Z

    .line 264
    .line 265
    if-eqz v2, :cond_c

    .line 266
    .line 267
    invoke-static {v12}, Landroidx/core/view/q0;->i(Landroid/view/View;)F

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    iget v14, v0, Landroidx/drawerlayout/widget/DrawerLayout;->b:F

    .line 272
    .line 273
    cmpl-float v2, v2, v14

    .line 274
    .line 275
    if-eqz v2, :cond_c

    .line 276
    .line 277
    invoke-static {v12, v14}, Landroidx/core/view/q0;->s(Landroid/view/View;F)V

    .line 278
    .line 279
    .line 280
    :cond_c
    invoke-virtual {v0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    and-int/lit8 v2, v2, 0x7

    .line 285
    .line 286
    const/4 v14, 0x3

    .line 287
    if-ne v2, v14, :cond_d

    .line 288
    .line 289
    const/4 v14, 0x1

    .line 290
    goto :goto_6

    .line 291
    :cond_d
    move v14, v6

    .line 292
    :goto_6
    if-eqz v14, :cond_e

    .line 293
    .line 294
    if-nez v10, :cond_f

    .line 295
    .line 296
    :cond_e
    if-nez v14, :cond_10

    .line 297
    .line 298
    if-nez v11, :cond_f

    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 302
    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    const-string v4, "Child drawer has absolute gravity "

    .line 306
    .line 307
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-static {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->j(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v2, " but this DrawerLayout already has a drawer view along that edge"

    .line 318
    .line 319
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw v1

    .line 330
    :cond_10
    :goto_7
    if-eqz v14, :cond_11

    .line 331
    .line 332
    const/4 v10, 0x1

    .line 333
    goto :goto_8

    .line 334
    :cond_11
    const/4 v11, 0x1

    .line 335
    :goto_8
    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 336
    .line 337
    iget v14, v0, Landroidx/drawerlayout/widget/DrawerLayout;->c:I

    .line 338
    .line 339
    add-int/2addr v14, v2

    .line 340
    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 341
    .line 342
    add-int/2addr v14, v2

    .line 343
    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 344
    .line 345
    move/from16 v15, p1

    .line 346
    .line 347
    invoke-static {v15, v14, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 352
    .line 353
    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 354
    .line 355
    add-int/2addr v14, v5

    .line 356
    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 357
    .line 358
    move/from16 v13, p2

    .line 359
    .line 360
    invoke-static {v13, v14, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    invoke-virtual {v12, v2, v5}, Landroid/view/View;->measure(II)V

    .line 365
    .line 366
    .line 367
    :goto_9
    add-int/lit8 v9, v9, 0x1

    .line 368
    .line 369
    const/high16 v5, 0x40000000    # 2.0f

    .line 370
    .line 371
    goto/16 :goto_1

    .line 372
    .line 373
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 374
    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string v3, "Child "

    .line 378
    .line 379
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string v3, " at index "

    .line 386
    .line 387
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string v3, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    .line 394
    .line 395
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v1

    .line 406
    :cond_13
    return-void

    .line 407
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 408
    .line 409
    const-string v2, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    .line 410
    .line 411
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    throw v1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lp0/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lp0/e;

    .line 10
    .line 11
    invoke-virtual {p1}, Ln0/b;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget v0, p1, Lp0/e;->a:I

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->o(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget v0, p1, Lp0/e;->b:I

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->q(II)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget v0, p1, Lp0/e;->c:I

    .line 40
    .line 41
    if-eq v0, v1, :cond_3

    .line 42
    .line 43
    const/4 v2, 0x5

    .line 44
    invoke-virtual {p0, v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->q(II)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget v0, p1, Lp0/e;->d:I

    .line 48
    .line 49
    if-eq v0, v1, :cond_4

    .line 50
    .line 51
    const v2, 0x800003

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->q(II)V

    .line 55
    .line 56
    .line 57
    :cond_4
    iget p1, p1, Lp0/e;->e:I

    .line 58
    .line 59
    if-eq p1, v1, :cond_5

    .line 60
    .line 61
    const v0, 0x800005

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->q(II)V

    .line 65
    .line 66
    .line 67
    :cond_5
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    sget-boolean p1, Landroidx/drawerlayout/widget/DrawerLayout;->H:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    invoke-static {p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp0/e;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ln0/b;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, v1, Lp0/e;->a:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    move v3, v0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_4

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lp0/d;

    .line 29
    .line 30
    iget v5, v4, Lp0/d;->d:I

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    if-ne v5, v6, :cond_0

    .line 34
    .line 35
    move v7, v6

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move v7, v0

    .line 38
    :goto_1
    const/4 v8, 0x2

    .line 39
    if-ne v5, v8, :cond_1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    move v6, v0

    .line 43
    :goto_2
    if-nez v7, :cond_3

    .line 44
    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    :goto_3
    iget v0, v4, Lp0/d;->a:I

    .line 52
    .line 53
    iput v0, v1, Lp0/e;->a:I

    .line 54
    .line 55
    :cond_4
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:I

    .line 56
    .line 57
    iput v0, v1, Lp0/e;->b:I

    .line 58
    .line 59
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    .line 60
    .line 61
    iput v0, v1, Lp0/e;->c:I

    .line 62
    .line 63
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    .line 64
    .line 65
    iput v0, v1, Lp0/e;->d:I

    .line 66
    .line 67
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:I

    .line 68
    .line 69
    iput v0, v1, Lp0/e;->e:I

    .line 70
    .line 71
    return-object v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Landroidx/customview/widget/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/customview/widget/h;->l(Landroid/view/MotionEvent;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Landroidx/customview/widget/h;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroidx/customview/widget/h;->l(Landroid/view/MotionEvent;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    and-int/lit16 v1, v1, 0xff

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    if-eq v1, v3, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x3

    .line 24
    if-eq v1, p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    .line 28
    .line 29
    .line 30
    iput-boolean v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->s:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    float-to-int v4, v1

    .line 42
    float-to-int v5, p1

    .line 43
    invoke-virtual {v0, v4, v5}, Landroidx/customview/widget/h;->i(II)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-static {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->l(Landroid/view/View;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    iget v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->v:F

    .line 56
    .line 57
    sub-float/2addr v1, v4

    .line 58
    iget v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:F

    .line 59
    .line 60
    sub-float/2addr p1, v4

    .line 61
    iget v0, v0, Landroidx/customview/widget/h;->b:I

    .line 62
    .line 63
    mul-float/2addr v1, v1

    .line 64
    mul-float/2addr p1, p1

    .line 65
    add-float/2addr p1, v1

    .line 66
    mul-int/2addr v0, v0

    .line 67
    int-to-float v0, v0

    .line 68
    cmpg-float p1, p1, v0

    .line 69
    .line 70
    if-gez p1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->f()Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->h(Landroid/view/View;)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    const/4 v0, 0x2

    .line 83
    if-ne p1, v0, :cond_3

    .line 84
    .line 85
    :cond_2
    move v2, v3

    .line 86
    :cond_3
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->v:F

    .line 99
    .line 100
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:F

    .line 101
    .line 102
    iput-boolean v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->s:Z

    .line 103
    .line 104
    :goto_0
    return v3
.end method

.method public final p()V
    .locals 4

    .line 1
    const v0, 0x800003

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->o(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "No drawer view found with gravity "

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->j(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1
.end method

.method public final q(II)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq p2, v1, :cond_3

    .line 13
    .line 14
    const/4 v2, 0x5

    .line 15
    if-eq p2, v2, :cond_2

    .line 16
    .line 17
    const v2, 0x800003

    .line 18
    .line 19
    .line 20
    if-eq p2, v2, :cond_1

    .line 21
    .line 22
    const v2, 0x800005

    .line 23
    .line 24
    .line 25
    if-eq p2, v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:I

    .line 38
    .line 39
    :goto_0
    if-eqz p1, :cond_5

    .line 40
    .line 41
    if-ne v0, v1, :cond_4

    .line 42
    .line 43
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Landroidx/customview/widget/h;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Landroidx/customview/widget/h;

    .line 47
    .line 48
    :goto_1
    invoke-virtual {p2}, Landroidx/customview/widget/h;->a()V

    .line 49
    .line 50
    .line 51
    :cond_5
    const/4 p2, 0x1

    .line 52
    if-eq p1, p2, :cond_7

    .line 53
    .line 54
    const/4 p2, 0x2

    .line 55
    if-eq p1, p2, :cond_6

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_6
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_8

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->o(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_8

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    :cond_8
    :goto_2
    return-void
.end method

.method public final r(Landroid/view/View;F)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lp0/d;

    .line 6
    .line 7
    iget v0, p1, Lp0/d;->b:F

    .line 8
    .line 9
    cmpl-float v0, p2, v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iput p2, p1, Lp0/d;->b:F

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    add-int/lit8 p1, p1, -0x1

    .line 25
    .line 26
    :goto_0
    if-ltz p1, :cond_1

    .line 27
    .line 28
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Lp0/c;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    add-int/lit8 p1, p1, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    :cond_0
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final s(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lh0/g;->l:Lh0/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lh0/g;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1, p1}, Landroidx/core/view/c1;->l(ILandroid/view/View;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1, p1}, Landroidx/core/view/c1;->i(ILandroid/view/View;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->m(Landroid/view/View;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->h(Landroid/view/View;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x2

    .line 25
    if-eq v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->D:Lf/q0;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {p1, v0, v2, v1}, Landroidx/core/view/c1;->m(Landroid/view/View;Lh0/g;Ljava/lang/String;Lh0/w;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public setDrawerElevation(F)V
    .locals 3

    .line 1
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->b:F

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ge p1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->n(Landroid/view/View;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->b:F

    .line 21
    .line 22
    sget-object v2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroidx/core/view/q0;->s(Landroid/view/View;F)V

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public setDrawerListener(Lp0/c;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Lp0/c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/ArrayList;

    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_3
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Lp0/c;

    .line 32
    .line 33
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->q(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->q(II)V

    return-void
.end method

.method public setScrimColor(I)V
    .locals 0

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lx/g;->a:Ljava/lang/Object;

    .line 1
    invoke-static {v0, p1}, Lx/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final t(Landroid/view/View;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    invoke-static {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->n(Landroid/view/View;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    :cond_0
    if-eqz p2, :cond_2

    .line 21
    .line 22
    if-ne v2, p1, :cond_2

    .line 23
    .line 24
    :cond_1
    sget-object v3, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    :goto_1
    invoke-static {v2, v3}, Landroidx/core/view/k0;->s(Landroid/view/View;I)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    sget-object v3, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    goto :goto_1

    .line 35
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    return-void
.end method

.method public final u(ILandroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Landroidx/customview/widget/h;

    .line 2
    .line 3
    iget v0, v0, Landroidx/customview/widget/h;->a:I

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Landroidx/customview/widget/h;

    .line 6
    .line 7
    iget v1, v1, Landroidx/customview/widget/h;->a:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eq v0, v3, :cond_2

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v4, 0x2

    .line 17
    if-eq v0, v4, :cond_3

    .line 18
    .line 19
    if-ne v1, v4, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v4, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    move v4, v3

    .line 25
    :cond_3
    :goto_1
    if-eqz p2, :cond_7

    .line 26
    .line 27
    if-nez p1, :cond_7

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lp0/d;

    .line 34
    .line 35
    iget p1, p1, Lp0/d;->b:F

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    cmpl-float v0, p1, v0

    .line 39
    .line 40
    const/16 v1, 0x20

    .line 41
    .line 42
    if-nez v0, :cond_5

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lp0/d;

    .line 49
    .line 50
    iget v0, p1, Lp0/d;->d:I

    .line 51
    .line 52
    and-int/2addr v0, v3

    .line 53
    if-ne v0, v3, :cond_7

    .line 54
    .line 55
    iput v2, p1, Lp0/d;->d:I

    .line 56
    .line 57
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/ArrayList;

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    sub-int/2addr p1, v3

    .line 66
    :goto_2
    if-ltz p1, :cond_4

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lp0/c;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    add-int/lit8 p1, p1, -0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {p0, p2, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->t(Landroid/view/View;Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->s(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_7

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_7

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 105
    .line 106
    cmpl-float p1, p1, v0

    .line 107
    .line 108
    if-nez p1, :cond_7

    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lp0/d;

    .line 115
    .line 116
    iget v0, p1, Lp0/d;->d:I

    .line 117
    .line 118
    and-int/2addr v0, v3

    .line 119
    if-nez v0, :cond_7

    .line 120
    .line 121
    iput v3, p1, Lp0/d;->d:I

    .line 122
    .line 123
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/ArrayList;

    .line 124
    .line 125
    if-eqz p1, :cond_6

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    sub-int/2addr p1, v3

    .line 132
    :goto_3
    if-ltz p1, :cond_6

    .line 133
    .line 134
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lp0/c;

    .line 141
    .line 142
    check-cast v0, Lj2/k;

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    sget-object v2, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 148
    .line 149
    iget-object v2, v0, Lj2/k;->c:Lcom/zalexdev/stryker/MainActivity;

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/zalexdev/stryker/MainActivity;->k()V

    .line 152
    .line 153
    .line 154
    iget-object v5, v0, Lj2/k;->a:Landroid/view/View;

    .line 155
    .line 156
    iget-object v0, v0, Lj2/k;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 157
    .line 158
    invoke-virtual {v2, v5, v0}, Lcom/zalexdev/stryker/MainActivity;->o(Landroid/view/View;Landroidx/drawerlayout/widget/DrawerLayout;)V

    .line 159
    .line 160
    .line 161
    add-int/lit8 p1, p1, -0x1

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_6
    invoke-virtual {p0, p2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->t(Landroid/view/View;Z)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->s(Landroid/view/View;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_7

    .line 175
    .line 176
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 177
    .line 178
    .line 179
    :cond_7
    :goto_4
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->k:I

    .line 180
    .line 181
    if-eq v4, p1, :cond_8

    .line 182
    .line 183
    iput v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->k:I

    .line 184
    .line 185
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/ArrayList;

    .line 186
    .line 187
    if-eqz p1, :cond_8

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    sub-int/2addr p1, v3

    .line 194
    :goto_5
    if-ltz p1, :cond_8

    .line 195
    .line 196
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    check-cast p2, Lp0/c;

    .line 203
    .line 204
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    add-int/lit8 p1, p1, -0x1

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_8
    return-void
.end method
