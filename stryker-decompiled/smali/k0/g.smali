.class public final Lk0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final s:I


# instance fields
.field public final a:Lk0/a;

.field public final b:Landroid/view/animation/AccelerateInterpolator;

.field public final c:Landroid/view/View;

.field public d:Landroidx/activity/d;

.field public final e:[F

.field public final f:[F

.field public final g:I

.field public final h:I

.field public final i:[F

.field public final j:[F

.field public final k:[F

.field public l:Z

.field public m:Z

.field public n:Z

.field public p:Z

.field public q:Z

.field public final r:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lk0/g;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lk0/a;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-wide/high16 v1, -0x8000000000000000L

    .line 10
    .line 11
    iput-wide v1, v0, Lk0/a;->e:J

    .line 12
    .line 13
    const-wide/16 v1, -0x1

    .line 14
    .line 15
    iput-wide v1, v0, Lk0/a;->g:J

    .line 16
    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    iput-wide v1, v0, Lk0/a;->f:J

    .line 20
    .line 21
    iput-object v0, p0, Lk0/g;->a:Lk0/a;

    .line 22
    .line 23
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lk0/g;->b:Landroid/view/animation/AccelerateInterpolator;

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    new-array v2, v1, [F

    .line 32
    .line 33
    fill-array-data v2, :array_0

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lk0/g;->e:[F

    .line 37
    .line 38
    new-array v2, v1, [F

    .line 39
    .line 40
    fill-array-data v2, :array_1

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lk0/g;->f:[F

    .line 44
    .line 45
    new-array v2, v1, [F

    .line 46
    .line 47
    fill-array-data v2, :array_2

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lk0/g;->i:[F

    .line 51
    .line 52
    new-array v2, v1, [F

    .line 53
    .line 54
    fill-array-data v2, :array_3

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lk0/g;->j:[F

    .line 58
    .line 59
    new-array v1, v1, [F

    .line 60
    .line 61
    fill-array-data v1, :array_4

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lk0/g;->k:[F

    .line 65
    .line 66
    iput-object p1, p0, Lk0/g;->c:Landroid/view/View;

    .line 67
    .line 68
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 77
    .line 78
    const v2, 0x44c4e000    # 1575.0f

    .line 79
    .line 80
    .line 81
    mul-float/2addr v2, v1

    .line 82
    const/high16 v3, 0x3f000000    # 0.5f

    .line 83
    .line 84
    add-float/2addr v2, v3

    .line 85
    float-to-int v2, v2

    .line 86
    const v4, 0x439d8000    # 315.0f

    .line 87
    .line 88
    .line 89
    mul-float/2addr v1, v4

    .line 90
    add-float/2addr v1, v3

    .line 91
    float-to-int v1, v1

    .line 92
    int-to-float v2, v2

    .line 93
    iget-object v3, p0, Lk0/g;->k:[F

    .line 94
    .line 95
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 96
    .line 97
    div-float/2addr v2, v4

    .line 98
    const/4 v5, 0x0

    .line 99
    aput v2, v3, v5

    .line 100
    .line 101
    const/4 v6, 0x1

    .line 102
    aput v2, v3, v6

    .line 103
    .line 104
    int-to-float v1, v1

    .line 105
    iget-object v2, p0, Lk0/g;->j:[F

    .line 106
    .line 107
    div-float/2addr v1, v4

    .line 108
    aput v1, v2, v5

    .line 109
    .line 110
    aput v1, v2, v6

    .line 111
    .line 112
    iput v6, p0, Lk0/g;->g:I

    .line 113
    .line 114
    iget-object v1, p0, Lk0/g;->f:[F

    .line 115
    .line 116
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 117
    .line 118
    .line 119
    aput v2, v1, v5

    .line 120
    .line 121
    aput v2, v1, v6

    .line 122
    .line 123
    iget-object v1, p0, Lk0/g;->e:[F

    .line 124
    .line 125
    const v2, 0x3e4ccccd    # 0.2f

    .line 126
    .line 127
    .line 128
    aput v2, v1, v5

    .line 129
    .line 130
    aput v2, v1, v6

    .line 131
    .line 132
    iget-object v1, p0, Lk0/g;->i:[F

    .line 133
    .line 134
    const v2, 0x3a83126f    # 0.001f

    .line 135
    .line 136
    .line 137
    aput v2, v1, v5

    .line 138
    .line 139
    aput v2, v1, v6

    .line 140
    .line 141
    sget v1, Lk0/g;->s:I

    .line 142
    .line 143
    iput v1, p0, Lk0/g;->h:I

    .line 144
    .line 145
    const/16 v1, 0x1f4

    .line 146
    .line 147
    iput v1, v0, Lk0/a;->a:I

    .line 148
    .line 149
    iput v1, v0, Lk0/a;->b:I

    .line 150
    .line 151
    iput-object p1, p0, Lk0/g;->r:Landroid/widget/ListView;

    .line 152
    .line 153
    return-void

    .line 154
    nop

    .line 155
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method public static b(FFF)F
    .locals 1

    .line 1
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method


# virtual methods
.method public final a(FFFI)F
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/g;->e:[F

    .line 2
    .line 3
    aget v0, v0, p4

    .line 4
    .line 5
    iget-object v1, p0, Lk0/g;->f:[F

    .line 6
    .line 7
    aget v1, v1, p4

    .line 8
    .line 9
    mul-float/2addr v0, p2

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v2, v1}, Lk0/g;->b(FFF)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, p1, v0}, Lk0/g;->c(FF)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sub-float/2addr p2, p1

    .line 20
    invoke-virtual {p0, p2, v0}, Lk0/g;->c(FF)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    sub-float/2addr p1, v1

    .line 25
    cmpg-float p2, p1, v2

    .line 26
    .line 27
    iget-object v0, p0, Lk0/g;->b:Landroid/view/animation/AccelerateInterpolator;

    .line 28
    .line 29
    if-gez p2, :cond_0

    .line 30
    .line 31
    neg-float p1, p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    neg-float p1, p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    cmpl-float p2, p1, v2

    .line 39
    .line 40
    if-lez p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    :goto_0
    const/high16 p2, -0x40800000    # -1.0f

    .line 47
    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    .line 50
    invoke-static {p1, p2, v0}, Lk0/g;->b(FFF)F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move p1, v2

    .line 56
    :goto_1
    cmpl-float p2, p1, v2

    .line 57
    .line 58
    if-nez p2, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    iget-object v0, p0, Lk0/g;->i:[F

    .line 62
    .line 63
    aget v0, v0, p4

    .line 64
    .line 65
    iget-object v1, p0, Lk0/g;->j:[F

    .line 66
    .line 67
    aget v1, v1, p4

    .line 68
    .line 69
    iget-object v2, p0, Lk0/g;->k:[F

    .line 70
    .line 71
    aget p4, v2, p4

    .line 72
    .line 73
    mul-float/2addr v0, p3

    .line 74
    if-lez p2, :cond_3

    .line 75
    .line 76
    mul-float/2addr p1, v0

    .line 77
    invoke-static {p1, v1, p4}, Lk0/g;->b(FFF)F

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    neg-float p1, p1

    .line 83
    mul-float/2addr p1, v0

    .line 84
    invoke-static {p1, v1, p4}, Lk0/g;->b(FFF)F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    neg-float v2, p1

    .line 89
    :goto_2
    return v2
.end method

.method public final c(FF)F
    .locals 5

    .line 1
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lk0/g;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    neg-float p2, p2

    div-float v0, p1, p2

    goto :goto_0

    :cond_2
    cmpg-float v3, p1, p2

    if-gez v3, :cond_4

    cmpl-float v3, p1, v0

    const/high16 v4, 0x3f800000    # 1.0f

    if-ltz v3, :cond_3

    div-float/2addr p1, p2

    sub-float v0, v4, p1

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lk0/g;->p:Z

    if-eqz p1, :cond_4

    if-ne v1, v2, :cond_4

    move v0, v4

    :cond_4
    :goto_0
    return v0
.end method

.method public final d(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lk0/g;->q:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x3

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-eq v0, v3, :cond_1

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    if-eq v0, v4, :cond_3

    .line 19
    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p0}, Lk0/g;->e()V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iput-boolean v3, p0, Lk0/g;->n:Z

    .line 28
    .line 29
    iput-boolean v1, p0, Lk0/g;->l:Z

    .line 30
    .line 31
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    int-to-float v4, v4

    .line 40
    iget-object v5, p0, Lk0/g;->c:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    int-to-float v6, v6

    .line 47
    invoke-virtual {p0, v0, v4, v6, v1}, Lk0/g;->a(FFFI)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    int-to-float p1, p1

    .line 60
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    int-to-float v4, v4

    .line 65
    invoke-virtual {p0, p2, p1, v4, v3}, Lk0/g;->a(FFFI)F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iget-object p2, p0, Lk0/g;->a:Lk0/a;

    .line 70
    .line 71
    iput v0, p2, Lk0/a;->c:F

    .line 72
    .line 73
    iput p1, p2, Lk0/a;->d:F

    .line 74
    .line 75
    iget-boolean p1, p0, Lk0/g;->p:Z

    .line 76
    .line 77
    if-nez p1, :cond_6

    .line 78
    .line 79
    invoke-virtual {p0}, Lk0/g;->f()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    iget-object p1, p0, Lk0/g;->d:Landroidx/activity/d;

    .line 86
    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    new-instance p1, Landroidx/activity/d;

    .line 90
    .line 91
    invoke-direct {p1, p0, v2}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lk0/g;->d:Landroidx/activity/d;

    .line 95
    .line 96
    :cond_4
    iput-boolean v3, p0, Lk0/g;->p:Z

    .line 97
    .line 98
    iput-boolean v3, p0, Lk0/g;->m:Z

    .line 99
    .line 100
    iget-boolean p1, p0, Lk0/g;->l:Z

    .line 101
    .line 102
    if-nez p1, :cond_5

    .line 103
    .line 104
    iget p1, p0, Lk0/g;->h:I

    .line 105
    .line 106
    if-lez p1, :cond_5

    .line 107
    .line 108
    iget-object p2, p0, Lk0/g;->d:Landroidx/activity/d;

    .line 109
    .line 110
    int-to-long v6, p1

    .line 111
    sget-object p1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 112
    .line 113
    invoke-static {v5, p2, v6, v7}, Landroidx/core/view/k0;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    iget-object p1, p0, Lk0/g;->d:Landroidx/activity/d;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroidx/activity/d;->run()V

    .line 120
    .line 121
    .line 122
    :goto_0
    iput-boolean v3, p0, Lk0/g;->l:Z

    .line 123
    .line 124
    :cond_6
    :goto_1
    return v1
.end method

.method public final e()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lk0/g;->m:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lk0/g;->p:Z

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lk0/g;->a:Lk0/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-wide v4, v0, Lk0/a;->e:J

    .line 19
    .line 20
    sub-long v4, v2, v4

    .line 21
    .line 22
    long-to-int v4, v4

    .line 23
    iget v5, v0, Lk0/a;->b:I

    .line 24
    .line 25
    if-le v4, v5, :cond_1

    .line 26
    .line 27
    move v1, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-gez v4, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v1, v4

    .line 33
    :goto_0
    iput v1, v0, Lk0/a;->i:I

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Lk0/a;->a(J)F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v1, v0, Lk0/a;->h:F

    .line 40
    .line 41
    iput-wide v2, v0, Lk0/a;->g:J

    .line 42
    .line 43
    :goto_1
    return-void
.end method

.method public final f()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/g;->a:Lk0/a;

    .line 2
    .line 3
    iget v1, v0, Lk0/a;->d:F

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    div-float/2addr v1, v2

    .line 10
    float-to-int v1, v1

    .line 11
    iget v0, v0, Lk0/a;->c:F

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    iget-object v2, p0, Lk0/g;->r:Landroid/widget/ListView;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    add-int v6, v5, v4

    .line 37
    .line 38
    const/4 v7, 0x1

    .line 39
    if-lez v1, :cond_1

    .line 40
    .line 41
    if-lt v6, v3, :cond_2

    .line 42
    .line 43
    sub-int/2addr v4, v7

    .line 44
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-gt v1, v2, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-gez v1, :cond_3

    .line 60
    .line 61
    if-gtz v5, :cond_2

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-ltz v1, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v0, v7

    .line 75
    :cond_3
    :goto_0
    return v0
.end method

.method public final bridge synthetic onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/g;->d(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return p1
.end method
