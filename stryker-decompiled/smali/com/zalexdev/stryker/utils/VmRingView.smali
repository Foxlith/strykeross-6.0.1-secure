.class public final Lcom/zalexdev/stryker/utils/VmRingView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final synthetic B:I


# instance fields
.field public final A:I

.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/RectF;

.field public final f:Landroid/graphics/Path;

.field public final g:Landroid/graphics/Path;

.field public final h:Landroid/graphics/PathMeasure;

.field public final i:[F

.field public final j:[F

.field public final k:Landroid/graphics/drawable/Drawable;

.field public final l:F

.field public final m:F

.field public n:F

.field public p:F

.field public q:F

.field public r:F

.field public s:I

.field public t:F

.field public u:F

.field public v:F

.field public w:Z

.field public x:Landroid/animation/ValueAnimator;

.field public y:Landroid/animation/ValueAnimator;

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Paint;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->a:Landroid/graphics/Paint;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->b:Landroid/graphics/Paint;

    .line 18
    .line 19
    new-instance v1, Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-direct {v1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->c:Landroid/graphics/Paint;

    .line 25
    .line 26
    new-instance p2, Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->d:Landroid/graphics/RectF;

    .line 32
    .line 33
    new-instance p2, Landroid/graphics/RectF;

    .line 34
    .line 35
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->e:Landroid/graphics/RectF;

    .line 39
    .line 40
    new-instance p2, Landroid/graphics/Path;

    .line 41
    .line 42
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->f:Landroid/graphics/Path;

    .line 46
    .line 47
    new-instance p2, Landroid/graphics/Path;

    .line 48
    .line 49
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->g:Landroid/graphics/Path;

    .line 53
    .line 54
    new-instance p2, Landroid/graphics/PathMeasure;

    .line 55
    .line 56
    invoke-direct {p2}, Landroid/graphics/PathMeasure;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->h:Landroid/graphics/PathMeasure;

    .line 60
    .line 61
    const/4 p2, 0x2

    .line 62
    new-array v2, p2, [F

    .line 63
    .line 64
    iput-object v2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->i:[F

    .line 65
    .line 66
    new-array p2, p2, [F

    .line 67
    .line 68
    iput-object p2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->j:[F

    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    iput p2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->s:I

    .line 72
    .line 73
    const/high16 p2, -0x40800000    # -1.0f

    .line 74
    .line 75
    iput p2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->t:F

    .line 76
    .line 77
    iput p2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->u:F

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 88
    .line 89
    const/high16 v2, 0x40200000    # 2.5f

    .line 90
    .line 91
    mul-float/2addr v2, p2

    .line 92
    iput v2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->l:F

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 103
    .line 104
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 105
    .line 106
    mul-float/2addr v2, p2

    .line 107
    iput v2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->m:F

    .line 108
    .line 109
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    .line 113
    .line 114
    const p2, 0x7f06007b

    .line 115
    .line 116
    .line 117
    const v2, -0x121314

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p2, v2}, Lcom/zalexdev/stryker/utils/VmRingView;->a(II)I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    .line 126
    .line 127
    const p1, 0x7f060316

    .line 128
    .line 129
    .line 130
    const p2, -0xea9a40

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/zalexdev/stryker/utils/VmRingView;->a(II)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    iput p1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->z:I

    .line 138
    .line 139
    const p1, 0x7f060302

    .line 140
    .line 141
    .line 142
    const p2, -0x39d7d8

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/zalexdev/stryker/utils/VmRingView;->a(II)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    iput p1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->A:I

    .line 150
    .line 151
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 152
    .line 153
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    .line 155
    .line 156
    iget p2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->l:F

    .line 157
    .line 158
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 159
    .line 160
    .line 161
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 162
    .line 163
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 164
    .line 165
    .line 166
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    .line 173
    .line 174
    iget p1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->l:F

    .line 175
    .line 176
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    const p2, 0x7f0800be

    .line 190
    .line 191
    .line 192
    invoke-static {p1, p2}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iput-object p1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->k:Landroid/graphics/drawable/Drawable;

    .line 197
    .line 198
    if-eqz p1, :cond_0

    .line 199
    .line 200
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    iput-object p1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->k:Landroid/graphics/drawable/Drawable;

    .line 205
    .line 206
    const p2, 0x7f060074

    .line 207
    .line 208
    .line 209
    const v0, -0x8a8a8b

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p2, v0}, Lcom/zalexdev/stryker/utils/VmRingView;->a(II)I

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 217
    .line 218
    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lx/g;->a:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lx/d;->a(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return p1

    .line 12
    :catchall_0
    return p2
.end method

.method public final b(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-lez v1, :cond_3

    iget v1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->q:F

    cmpg-float v2, v1, v0

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    rem-float/2addr p2, v1

    cmpg-float v2, p2, v0

    if-gez v2, :cond_1

    add-float/2addr p2, v1

    :cond_1
    iget-object v1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->g:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    add-float/2addr p3, p2

    iget v2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->q:F

    cmpg-float v3, p3, v2

    iget-object v4, p0, Lcom/zalexdev/stryker/utils/VmRingView;->h:Landroid/graphics/PathMeasure;

    const/4 v5, 0x1

    if-gtz v3, :cond_2

    invoke-virtual {v4, p2, p3, v1, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v4, p2, v2, v1, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget p2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->q:F

    sub-float/2addr p3, p2

    invoke-virtual {v4, v0, p3, v1, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :goto_0
    invoke-virtual {p1, v1, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->y:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->y:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->w:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->s:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_2

    .line 10
    .line 11
    iget v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->t:F

    .line 12
    .line 13
    cmpg-float v0, v0, v1

    .line 14
    .line 15
    if-gez v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->x:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [F

    .line 35
    .line 36
    fill-array-data v0, :array_0

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-wide/16 v1, 0x578

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 49
    .line 50
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    .line 55
    .line 56
    const/4 v1, -0x1

    .line 57
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Ll4/p;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-direct {v1, p0, v2}, Ll4/p;-><init>(Lcom/zalexdev/stryker/utils/VmRingView;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->x:Landroid/animation/ValueAnimator;

    .line 70
    .line 71
    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->x:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    iget-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->x:Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->x:Landroid/animation/ValueAnimator;

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->x:Landroid/animation/ValueAnimator;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->x:Landroid/animation/ValueAnimator;

    .line 99
    .line 100
    :cond_3
    iput v1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->v:F

    .line 101
    .line 102
    return-void

    .line 103
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->w:Z

    invoke-virtual {p0}, Lcom/zalexdev/stryker/utils/VmRingView;->d()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->w:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->x:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->x:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->x:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->v:F

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/zalexdev/stryker/utils/VmRingView;->c()V

    .line 23
    .line 24
    .line 25
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->n:F

    iget-object v3, p0, Lcom/zalexdev/stryker/utils/VmRingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->s:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->q:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0xff

    iget-object v3, p0, Lcom/zalexdev/stryker/utils/VmRingView;->f:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/zalexdev/stryker/utils/VmRingView;->b:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->A:I

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->c:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zalexdev/stryker/utils/VmRingView;->z:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v5, 0x33

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->z:I

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->t:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->u:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_4

    move v0, v2

    :cond_4
    iget v1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->q:F

    mul-float/2addr v0, v1

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_5

    return-void

    :cond_5
    cmpl-float v1, v0, v1

    if-ltz v1, :cond_6

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->r:F

    invoke-virtual {p0, p1, v1, v0, v4}, Lcom/zalexdev/stryker/utils/VmRingView;->b(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_7
    iget v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->v:F

    float-to-double v0, v0

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v5, 0x3d8f5c29    # 0.07f

    const v6, 0x3e23d70a    # 0.16f

    invoke-static {v1, v0, v5, v6}, Landroid/support/v4/media/session/a;->e(FFFF)F

    move-result v0

    iget v1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->q:F

    mul-float/2addr v0, v1

    iget v5, p0, Lcom/zalexdev/stryker/utils/VmRingView;->r:F

    iget v6, p0, Lcom/zalexdev/stryker/utils/VmRingView;->v:F

    mul-float/2addr v6, v1

    add-float/2addr v6, v5

    sub-float/2addr v6, v0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_8

    return-void

    :cond_8
    cmpl-float v1, v0, v1

    if-ltz v1, :cond_9

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_9
    invoke-virtual {p0, p1, v6, v0, v4}, Lcom/zalexdev/stryker/utils/VmRingView;->b(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    const/high16 v1, 0x42200000    # 40.0f

    .line 12
    .line 13
    mul-float/2addr v1, v0

    .line 14
    iget v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->m:F

    .line 15
    .line 16
    iget v2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->l:F

    .line 17
    .line 18
    add-float/2addr v0, v2

    .line 19
    const/high16 v2, 0x40000000    # 2.0f

    .line 20
    .line 21
    mul-float/2addr v0, v2

    .line 22
    add-float/2addr v0, v1

    .line 23
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, v0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/2addr v0, v1

    .line 37
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    int-to-float p3, p3

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    int-to-float p4, p4

    .line 14
    int-to-float p1, p1

    .line 15
    sub-float/2addr p1, p3

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    sub-float/2addr p1, v0

    .line 22
    int-to-float p2, p2

    .line 23
    sub-float/2addr p2, p4

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    int-to-float v0, v0

    .line 29
    sub-float/2addr p2, v0

    .line 30
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget v1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->m:F

    .line 35
    .line 36
    iget v2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->l:F

    .line 37
    .line 38
    add-float/2addr v1, v2

    .line 39
    const/high16 v2, 0x40000000    # 2.0f

    .line 40
    .line 41
    mul-float/2addr v1, v2

    .line 42
    sub-float v1, v0, v1

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    cmpg-float v4, v1, v3

    .line 46
    .line 47
    if-lez v4, :cond_5

    .line 48
    .line 49
    cmpg-float v0, v0, v3

    .line 50
    .line 51
    if-gtz v0, :cond_0

    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_0
    div-float/2addr p1, v2

    .line 56
    add-float/2addr p1, p3

    .line 57
    div-float/2addr p2, v2

    .line 58
    add-float/2addr p2, p4

    .line 59
    iget-object p3, p0, Lcom/zalexdev/stryker/utils/VmRingView;->d:Landroid/graphics/RectF;

    .line 60
    .line 61
    div-float p4, v1, v2

    .line 62
    .line 63
    sub-float v0, p1, p4

    .line 64
    .line 65
    sub-float v4, p2, p4

    .line 66
    .line 67
    add-float v5, p1, p4

    .line 68
    .line 69
    add-float/2addr p4, p2

    .line 70
    invoke-virtual {p3, v0, v4, v5, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 71
    .line 72
    .line 73
    const p4, 0x3e947ae1    # 0.29f

    .line 74
    .line 75
    .line 76
    mul-float/2addr p4, v1

    .line 77
    iput p4, p0, Lcom/zalexdev/stryker/utils/VmRingView;->n:F

    .line 78
    .line 79
    iget p4, p0, Lcom/zalexdev/stryker/utils/VmRingView;->m:F

    .line 80
    .line 81
    iget v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->l:F

    .line 82
    .line 83
    div-float/2addr v0, v2

    .line 84
    add-float/2addr v0, p4

    .line 85
    iget-object p4, p0, Lcom/zalexdev/stryker/utils/VmRingView;->e:Landroid/graphics/RectF;

    .line 86
    .line 87
    iget v4, p3, Landroid/graphics/RectF;->left:F

    .line 88
    .line 89
    sub-float/2addr v4, v0

    .line 90
    iget v5, p3, Landroid/graphics/RectF;->top:F

    .line 91
    .line 92
    sub-float/2addr v5, v0

    .line 93
    iget v6, p3, Landroid/graphics/RectF;->right:F

    .line 94
    .line 95
    add-float/2addr v6, v0

    .line 96
    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 97
    .line 98
    add-float/2addr p3, v0

    .line 99
    invoke-virtual {p4, v4, v5, v6, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 100
    .line 101
    .line 102
    iget p3, p0, Lcom/zalexdev/stryker/utils/VmRingView;->n:F

    .line 103
    .line 104
    add-float/2addr p3, v0

    .line 105
    iput p3, p0, Lcom/zalexdev/stryker/utils/VmRingView;->p:F

    .line 106
    .line 107
    iget-object p3, p0, Lcom/zalexdev/stryker/utils/VmRingView;->f:Landroid/graphics/Path;

    .line 108
    .line 109
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 110
    .line 111
    .line 112
    iget v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->p:F

    .line 113
    .line 114
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 115
    .line 116
    invoke-virtual {p3, p4, v0, v0, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->h:Landroid/graphics/PathMeasure;

    .line 120
    .line 121
    const/4 v4, 0x1

    .line 122
    invoke-virtual {v0, p3, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    iput p3, p0, Lcom/zalexdev/stryker/utils/VmRingView;->q:F

    .line 130
    .line 131
    cmpg-float p3, p3, v3

    .line 132
    .line 133
    if-gtz p3, :cond_1

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    const/4 p3, 0x0

    .line 137
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 138
    .line 139
    .line 140
    move v6, p3

    .line 141
    :goto_0
    const/16 v7, 0x78

    .line 142
    .line 143
    if-ge v6, v7, :cond_4

    .line 144
    .line 145
    iget v8, p0, Lcom/zalexdev/stryker/utils/VmRingView;->q:F

    .line 146
    .line 147
    int-to-float v9, v6

    .line 148
    mul-float/2addr v8, v9

    .line 149
    int-to-float v7, v7

    .line 150
    div-float/2addr v8, v7

    .line 151
    iget-object v7, p0, Lcom/zalexdev/stryker/utils/VmRingView;->j:[F

    .line 152
    .line 153
    iget-object v9, p0, Lcom/zalexdev/stryker/utils/VmRingView;->i:[F

    .line 154
    .line 155
    invoke-virtual {v0, v8, v9, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-nez v7, :cond_2

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_2
    aget v7, v9, v4

    .line 163
    .line 164
    iget v10, p4, Landroid/graphics/RectF;->top:F

    .line 165
    .line 166
    sub-float/2addr v7, v10

    .line 167
    const/high16 v10, 0x40800000    # 4.0f

    .line 168
    .line 169
    mul-float/2addr v7, v10

    .line 170
    aget v9, v9, p3

    .line 171
    .line 172
    sub-float/2addr v9, p1

    .line 173
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    add-float/2addr v9, v7

    .line 178
    cmpg-float v7, v9, v5

    .line 179
    .line 180
    if-gez v7, :cond_3

    .line 181
    .line 182
    move v3, v8

    .line 183
    move v5, v9

    .line 184
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_4
    :goto_2
    iput v3, p0, Lcom/zalexdev/stryker/utils/VmRingView;->r:F

    .line 188
    .line 189
    iget-object p3, p0, Lcom/zalexdev/stryker/utils/VmRingView;->k:Landroid/graphics/drawable/Drawable;

    .line 190
    .line 191
    if-eqz p3, :cond_6

    .line 192
    .line 193
    const p3, 0x3f28f5c3    # 0.66f

    .line 194
    .line 195
    .line 196
    mul-float/2addr v1, p3

    .line 197
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 198
    .line 199
    .line 200
    move-result p3

    .line 201
    int-to-float p4, p3

    .line 202
    div-float/2addr p4, v2

    .line 203
    sub-float/2addr p1, p4

    .line 204
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    sub-float/2addr p2, p4

    .line 209
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    iget-object p4, p0, Lcom/zalexdev/stryker/utils/VmRingView;->k:Landroid/graphics/drawable/Drawable;

    .line 214
    .line 215
    add-int v0, p1, p3

    .line 216
    .line 217
    add-int/2addr p3, p2

    .line 218
    invoke-virtual {p4, p1, p2, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_5
    :goto_3
    iput v3, p0, Lcom/zalexdev/stryker/utils/VmRingView;->q:F

    .line 223
    .line 224
    :cond_6
    :goto_4
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/utils/VmRingView;->d()V

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/utils/VmRingView;->d()V

    return-void
.end method

.method public setProgress(F)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    const/high16 v2, -0x40800000    # -1.0f

    .line 5
    .line 6
    if-gez v1, :cond_0

    .line 7
    .line 8
    move p1, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    iget v1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->t:F

    .line 17
    .line 18
    sub-float v1, p1, v1

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const v3, 0x3a83126f    # 0.001f

    .line 25
    .line 26
    .line 27
    cmpg-float v1, v1, v3

    .line 28
    .line 29
    if-gez v1, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget v1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->t:F

    .line 33
    .line 34
    cmpg-float v1, v1, v0

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x1

    .line 38
    if-gez v1, :cond_2

    .line 39
    .line 40
    move v1, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v1, v3

    .line 43
    :goto_1
    iput p1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->t:F

    .line 44
    .line 45
    cmpg-float v5, p1, v0

    .line 46
    .line 47
    if-gez v5, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/zalexdev/stryker/utils/VmRingView;->c()V

    .line 50
    .line 51
    .line 52
    iput v2, p0, Lcom/zalexdev/stryker/utils/VmRingView;->u:F

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/zalexdev/stryker/utils/VmRingView;->d()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    if-nez v1, :cond_5

    .line 62
    .line 63
    iget v1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->u:F

    .line 64
    .line 65
    cmpg-float v2, v1, v0

    .line 66
    .line 67
    if-gez v2, :cond_4

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    move v0, v1

    .line 71
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/zalexdev/stryker/utils/VmRingView;->d()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/zalexdev/stryker/utils/VmRingView;->c()V

    .line 75
    .line 76
    .line 77
    iget-boolean v1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->w:Z

    .line 78
    .line 79
    if-nez v1, :cond_6

    .line 80
    .line 81
    iput p1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->u:F

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_6
    const/4 v1, 0x2

    .line 88
    new-array v1, v1, [F

    .line 89
    .line 90
    aput v0, v1, v3

    .line 91
    .line 92
    aput p1, v1, v4

    .line 93
    .line 94
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-wide/16 v0, 0x1c2

    .line 99
    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 101
    .line 102
    .line 103
    new-instance v0, Ll4/p;

    .line 104
    .line 105
    invoke-direct {v0, p0, v4}, Ll4/p;-><init>(Lcom/zalexdev/stryker/utils/VmRingView;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->y:Landroid/animation/ValueAnimator;

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 114
    .line 115
    .line 116
    :goto_3
    return-void
.end method

.method public setState(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget v0, p0, Lcom/zalexdev/stryker/utils/VmRingView;->s:I

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->s:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/zalexdev/stryker/utils/VmRingView;->c()V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->t:F

    iput p1, p0, Lcom/zalexdev/stryker/utils/VmRingView;->u:F

    :cond_3
    invoke-virtual {p0}, Lcom/zalexdev/stryker/utils/VmRingView;->d()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
