.class public final Landroidx/cardview/widget/f;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field public static final q:D


# instance fields
.field public final a:I

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/RectF;

.field public f:F

.field public g:Landroid/graphics/Path;

.field public h:F

.field public i:F

.field public j:F

.field public k:Landroid/content/res/ColorStateList;

.field public l:Z

.field public final m:I

.field public final n:I

.field public o:Z

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Landroidx/cardview/widget/f;->q:D

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/cardview/widget/f;->l:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/cardview/widget/f;->o:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/cardview/widget/f;->p:Z

    .line 11
    .line 12
    const v1, 0x7f06003a

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, p0, Landroidx/cardview/widget/f;->m:I

    .line 20
    .line 21
    const v1, 0x7f060039

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Landroidx/cardview/widget/f;->n:I

    .line 29
    .line 30
    const v1, 0x7f070053

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Landroidx/cardview/widget/f;->a:I

    .line 38
    .line 39
    new-instance p1, Landroid/graphics/Paint;

    .line 40
    .line 41
    const/4 v1, 0x5

    .line 42
    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Landroidx/cardview/widget/f;->b:Landroid/graphics/Paint;

    .line 46
    .line 47
    if-nez p2, :cond_0

    .line 48
    .line 49
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    :cond_0
    iput-object p2, p0, Landroidx/cardview/widget/f;->k:Landroid/content/res/ColorStateList;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v2, p0, Landroidx/cardview/widget/f;->k:Landroid/content/res/ColorStateList;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {p2, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iget-object p2, p0, Landroidx/cardview/widget/f;->b:Landroid/graphics/Paint;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    .line 73
    .line 74
    new-instance p1, Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Landroidx/cardview/widget/f;->c:Landroid/graphics/Paint;

    .line 80
    .line 81
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    .line 85
    .line 86
    const/high16 p2, 0x3f000000    # 0.5f

    .line 87
    .line 88
    add-float/2addr p3, p2

    .line 89
    float-to-int p2, p3

    .line 90
    int-to-float p2, p2

    .line 91
    iput p2, p0, Landroidx/cardview/widget/f;->f:F

    .line 92
    .line 93
    new-instance p2, Landroid/graphics/RectF;

    .line 94
    .line 95
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p2, p0, Landroidx/cardview/widget/f;->e:Landroid/graphics/RectF;

    .line 99
    .line 100
    new-instance p2, Landroid/graphics/Paint;

    .line 101
    .line 102
    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 103
    .line 104
    .line 105
    iput-object p2, p0, Landroidx/cardview/widget/f;->d:Landroid/graphics/Paint;

    .line 106
    .line 107
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p4, p5}, Landroidx/cardview/widget/f;->c(FF)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public static a(FFZ)F
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroidx/cardview/widget/f;->q:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double/2addr v2, p0

    add-double/2addr v2, v0

    double-to-float p0, v2

    :cond_0
    return p0
.end method

.method public static b(FFZ)F
    .locals 6

    .line 1
    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p0, v0

    if-eqz p2, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroidx/cardview/widget/f;->q:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double/2addr v2, p0

    add-double/2addr v2, v0

    double-to-float p0, v2

    :cond_0
    return p0
.end method


# virtual methods
.method public final c(FF)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    const-string v2, ". Must be >= 0"

    .line 5
    .line 6
    if-ltz v1, :cond_6

    .line 7
    .line 8
    cmpg-float v0, p2, v0

    .line 9
    .line 10
    if-ltz v0, :cond_5

    .line 11
    .line 12
    const/high16 v0, 0x3f000000    # 0.5f

    .line 13
    .line 14
    add-float/2addr p1, v0

    .line 15
    float-to-int p1, p1

    .line 16
    rem-int/lit8 v1, p1, 0x2

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    :cond_0
    int-to-float p1, p1

    .line 24
    add-float/2addr p2, v0

    .line 25
    float-to-int p2, p2

    .line 26
    rem-int/lit8 v1, p2, 0x2

    .line 27
    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    add-int/lit8 p2, p2, -0x1

    .line 31
    .line 32
    :cond_1
    int-to-float p2, p2

    .line 33
    cmpl-float v1, p1, p2

    .line 34
    .line 35
    if-lez v1, :cond_3

    .line 36
    .line 37
    iget-boolean p1, p0, Landroidx/cardview/widget/f;->p:Z

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    iput-boolean v2, p0, Landroidx/cardview/widget/f;->p:Z

    .line 42
    .line 43
    :cond_2
    move p1, p2

    .line 44
    :cond_3
    iget v1, p0, Landroidx/cardview/widget/f;->j:F

    .line 45
    .line 46
    cmpl-float v1, v1, p1

    .line 47
    .line 48
    if-nez v1, :cond_4

    .line 49
    .line 50
    iget v1, p0, Landroidx/cardview/widget/f;->h:F

    .line 51
    .line 52
    cmpl-float v1, v1, p2

    .line 53
    .line 54
    if-nez v1, :cond_4

    .line 55
    .line 56
    return-void

    .line 57
    :cond_4
    iput p1, p0, Landroidx/cardview/widget/f;->j:F

    .line 58
    .line 59
    iput p2, p0, Landroidx/cardview/widget/f;->h:F

    .line 60
    .line 61
    const/high16 p2, 0x3fc00000    # 1.5f

    .line 62
    .line 63
    mul-float/2addr p1, p2

    .line 64
    iget p2, p0, Landroidx/cardview/widget/f;->a:I

    .line 65
    .line 66
    int-to-float p2, p2

    .line 67
    add-float/2addr p1, p2

    .line 68
    add-float/2addr p1, v0

    .line 69
    float-to-int p1, p1

    .line 70
    int-to-float p1, p1

    .line 71
    iput p1, p0, Landroidx/cardview/widget/f;->i:F

    .line 72
    .line 73
    iput-boolean v2, p0, Landroidx/cardview/widget/f;->l:Z

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v1, "Invalid max shadow size "

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v1, "Invalid shadow size "

    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p2
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-boolean v1, v0, Landroidx/cardview/widget/f;->l:Z

    .line 6
    .line 7
    iget-object v8, v0, Landroidx/cardview/widget/f;->d:Landroid/graphics/Paint;

    .line 8
    .line 9
    iget-object v9, v0, Landroidx/cardview/widget/f;->c:Landroid/graphics/Paint;

    .line 10
    .line 11
    iget-object v10, v0, Landroidx/cardview/widget/f;->e:Landroid/graphics/RectF;

    .line 12
    .line 13
    const/high16 v11, 0x43870000    # 270.0f

    .line 14
    .line 15
    const/high16 v12, 0x43340000    # 180.0f

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/high16 v13, 0x42b40000    # 90.0f

    .line 19
    .line 20
    const/4 v14, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget v5, v0, Landroidx/cardview/widget/f;->h:F

    .line 28
    .line 29
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 30
    .line 31
    mul-float/2addr v6, v5

    .line 32
    iget v15, v1, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    int-to-float v15, v15

    .line 35
    add-float/2addr v15, v5

    .line 36
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 37
    .line 38
    int-to-float v2, v2

    .line 39
    add-float/2addr v2, v6

    .line 40
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 41
    .line 42
    int-to-float v3, v3

    .line 43
    sub-float/2addr v3, v5

    .line 44
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 45
    .line 46
    int-to-float v1, v1

    .line 47
    sub-float/2addr v1, v6

    .line 48
    invoke-virtual {v10, v15, v2, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Landroid/graphics/RectF;

    .line 52
    .line 53
    iget v2, v0, Landroidx/cardview/widget/f;->f:F

    .line 54
    .line 55
    neg-float v3, v2

    .line 56
    invoke-direct {v1, v3, v3, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Landroid/graphics/RectF;

    .line 60
    .line 61
    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 62
    .line 63
    .line 64
    iget v3, v0, Landroidx/cardview/widget/f;->i:F

    .line 65
    .line 66
    neg-float v3, v3

    .line 67
    invoke-virtual {v2, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 68
    .line 69
    .line 70
    iget-object v3, v0, Landroidx/cardview/widget/f;->g:Landroid/graphics/Path;

    .line 71
    .line 72
    if-nez v3, :cond_0

    .line 73
    .line 74
    new-instance v3, Landroid/graphics/Path;

    .line 75
    .line 76
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v3, v0, Landroidx/cardview/widget/f;->g:Landroid/graphics/Path;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object v3, v0, Landroidx/cardview/widget/f;->g:Landroid/graphics/Path;

    .line 86
    .line 87
    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 88
    .line 89
    invoke-virtual {v3, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 90
    .line 91
    .line 92
    iget-object v3, v0, Landroidx/cardview/widget/f;->g:Landroid/graphics/Path;

    .line 93
    .line 94
    iget v5, v0, Landroidx/cardview/widget/f;->f:F

    .line 95
    .line 96
    neg-float v5, v5

    .line 97
    invoke-virtual {v3, v5, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 98
    .line 99
    .line 100
    iget-object v3, v0, Landroidx/cardview/widget/f;->g:Landroid/graphics/Path;

    .line 101
    .line 102
    iget v5, v0, Landroidx/cardview/widget/f;->i:F

    .line 103
    .line 104
    neg-float v5, v5

    .line 105
    invoke-virtual {v3, v5, v14}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 106
    .line 107
    .line 108
    iget-object v3, v0, Landroidx/cardview/widget/f;->g:Landroid/graphics/Path;

    .line 109
    .line 110
    invoke-virtual {v3, v2, v12, v13, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 111
    .line 112
    .line 113
    iget-object v2, v0, Landroidx/cardview/widget/f;->g:Landroid/graphics/Path;

    .line 114
    .line 115
    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 116
    .line 117
    invoke-virtual {v2, v1, v11, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Landroidx/cardview/widget/f;->g:Landroid/graphics/Path;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 123
    .line 124
    .line 125
    iget v1, v0, Landroidx/cardview/widget/f;->f:F

    .line 126
    .line 127
    iget v2, v0, Landroidx/cardview/widget/f;->i:F

    .line 128
    .line 129
    add-float/2addr v2, v1

    .line 130
    div-float/2addr v1, v2

    .line 131
    new-instance v2, Landroid/graphics/RadialGradient;

    .line 132
    .line 133
    const/16 v19, 0x0

    .line 134
    .line 135
    const/16 v20, 0x0

    .line 136
    .line 137
    iget v3, v0, Landroidx/cardview/widget/f;->f:F

    .line 138
    .line 139
    iget v5, v0, Landroidx/cardview/widget/f;->i:F

    .line 140
    .line 141
    add-float v21, v3, v5

    .line 142
    .line 143
    iget v3, v0, Landroidx/cardview/widget/f;->m:I

    .line 144
    .line 145
    iget v5, v0, Landroidx/cardview/widget/f;->n:I

    .line 146
    .line 147
    filled-new-array {v3, v3, v5}, [I

    .line 148
    .line 149
    .line 150
    move-result-object v22

    .line 151
    const/4 v6, 0x3

    .line 152
    new-array v15, v6, [F

    .line 153
    .line 154
    aput v14, v15, v4

    .line 155
    .line 156
    const/16 v17, 0x1

    .line 157
    .line 158
    aput v1, v15, v17

    .line 159
    .line 160
    const/4 v1, 0x2

    .line 161
    const/high16 v16, 0x3f800000    # 1.0f

    .line 162
    .line 163
    aput v16, v15, v1

    .line 164
    .line 165
    sget-object v30, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 166
    .line 167
    move-object/from16 v18, v2

    .line 168
    .line 169
    move-object/from16 v23, v15

    .line 170
    .line 171
    move-object/from16 v24, v30

    .line 172
    .line 173
    invoke-direct/range {v18 .. v24}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 177
    .line 178
    .line 179
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 180
    .line 181
    const/16 v24, 0x0

    .line 182
    .line 183
    iget v2, v0, Landroidx/cardview/widget/f;->f:F

    .line 184
    .line 185
    neg-float v2, v2

    .line 186
    iget v15, v0, Landroidx/cardview/widget/f;->i:F

    .line 187
    .line 188
    add-float v25, v2, v15

    .line 189
    .line 190
    const/16 v26, 0x0

    .line 191
    .line 192
    sub-float v27, v2, v15

    .line 193
    .line 194
    filled-new-array {v3, v3, v5}, [I

    .line 195
    .line 196
    .line 197
    move-result-object v28

    .line 198
    new-array v2, v6, [F

    .line 199
    .line 200
    fill-array-data v2, :array_0

    .line 201
    .line 202
    .line 203
    move-object/from16 v23, v1

    .line 204
    .line 205
    move-object/from16 v29, v2

    .line 206
    .line 207
    invoke-direct/range {v23 .. v30}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    .line 215
    .line 216
    iput-boolean v4, v0, Landroidx/cardview/widget/f;->l:Z

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_1
    const/16 v17, 0x1

    .line 220
    .line 221
    :goto_1
    iget v1, v0, Landroidx/cardview/widget/f;->j:F

    .line 222
    .line 223
    const/high16 v15, 0x40000000    # 2.0f

    .line 224
    .line 225
    div-float/2addr v1, v15

    .line 226
    invoke-virtual {v7, v14, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 227
    .line 228
    .line 229
    iget v1, v0, Landroidx/cardview/widget/f;->f:F

    .line 230
    .line 231
    neg-float v2, v1

    .line 232
    iget v3, v0, Landroidx/cardview/widget/f;->i:F

    .line 233
    .line 234
    sub-float v16, v2, v3

    .line 235
    .line 236
    iget v2, v0, Landroidx/cardview/widget/f;->a:I

    .line 237
    .line 238
    int-to-float v2, v2

    .line 239
    add-float/2addr v1, v2

    .line 240
    iget v2, v0, Landroidx/cardview/widget/f;->j:F

    .line 241
    .line 242
    div-float/2addr v2, v15

    .line 243
    add-float v18, v2, v1

    .line 244
    .line 245
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    mul-float v19, v18, v15

    .line 250
    .line 251
    sub-float v1, v1, v19

    .line 252
    .line 253
    cmpl-float v1, v1, v14

    .line 254
    .line 255
    if-lez v1, :cond_2

    .line 256
    .line 257
    move/from16 v20, v17

    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_2
    move/from16 v20, v4

    .line 261
    .line 262
    :goto_2
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    sub-float v1, v1, v19

    .line 267
    .line 268
    cmpl-float v1, v1, v14

    .line 269
    .line 270
    if-lez v1, :cond_3

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_3
    move/from16 v17, v4

    .line 274
    .line 275
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    iget v1, v10, Landroid/graphics/RectF;->left:F

    .line 280
    .line 281
    add-float v1, v1, v18

    .line 282
    .line 283
    iget v2, v10, Landroid/graphics/RectF;->top:F

    .line 284
    .line 285
    add-float v2, v2, v18

    .line 286
    .line 287
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 288
    .line 289
    .line 290
    iget-object v1, v0, Landroidx/cardview/widget/f;->g:Landroid/graphics/Path;

    .line 291
    .line 292
    invoke-virtual {v7, v1, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 293
    .line 294
    .line 295
    if-eqz v20, :cond_4

    .line 296
    .line 297
    const/4 v2, 0x0

    .line 298
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    sub-float v4, v1, v19

    .line 303
    .line 304
    iget v1, v0, Landroidx/cardview/widget/f;->f:F

    .line 305
    .line 306
    neg-float v5, v1

    .line 307
    move-object/from16 v1, p1

    .line 308
    .line 309
    move/from16 v3, v16

    .line 310
    .line 311
    move v14, v6

    .line 312
    move-object v6, v8

    .line 313
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 314
    .line 315
    .line 316
    goto :goto_4

    .line 317
    :cond_4
    move v14, v6

    .line 318
    :goto_4
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 322
    .line 323
    .line 324
    move-result v14

    .line 325
    iget v1, v10, Landroid/graphics/RectF;->right:F

    .line 326
    .line 327
    sub-float v1, v1, v18

    .line 328
    .line 329
    iget v2, v10, Landroid/graphics/RectF;->bottom:F

    .line 330
    .line 331
    sub-float v2, v2, v18

    .line 332
    .line 333
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 337
    .line 338
    .line 339
    iget-object v1, v0, Landroidx/cardview/widget/f;->g:Landroid/graphics/Path;

    .line 340
    .line 341
    invoke-virtual {v7, v1, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 342
    .line 343
    .line 344
    if-eqz v20, :cond_5

    .line 345
    .line 346
    const/4 v2, 0x0

    .line 347
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    sub-float v4, v1, v19

    .line 352
    .line 353
    iget v1, v0, Landroidx/cardview/widget/f;->f:F

    .line 354
    .line 355
    neg-float v1, v1

    .line 356
    iget v3, v0, Landroidx/cardview/widget/f;->i:F

    .line 357
    .line 358
    add-float v5, v1, v3

    .line 359
    .line 360
    move-object/from16 v1, p1

    .line 361
    .line 362
    move/from16 v3, v16

    .line 363
    .line 364
    move-object v6, v8

    .line 365
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 366
    .line 367
    .line 368
    :cond_5
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 372
    .line 373
    .line 374
    move-result v12

    .line 375
    iget v1, v10, Landroid/graphics/RectF;->left:F

    .line 376
    .line 377
    add-float v1, v1, v18

    .line 378
    .line 379
    iget v2, v10, Landroid/graphics/RectF;->bottom:F

    .line 380
    .line 381
    sub-float v2, v2, v18

    .line 382
    .line 383
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 387
    .line 388
    .line 389
    iget-object v1, v0, Landroidx/cardview/widget/f;->g:Landroid/graphics/Path;

    .line 390
    .line 391
    invoke-virtual {v7, v1, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 392
    .line 393
    .line 394
    if-eqz v17, :cond_6

    .line 395
    .line 396
    const/4 v2, 0x0

    .line 397
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    sub-float v4, v1, v19

    .line 402
    .line 403
    iget v1, v0, Landroidx/cardview/widget/f;->f:F

    .line 404
    .line 405
    neg-float v5, v1

    .line 406
    move-object/from16 v1, p1

    .line 407
    .line 408
    move/from16 v3, v16

    .line 409
    .line 410
    move-object v6, v8

    .line 411
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 412
    .line 413
    .line 414
    :cond_6
    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 415
    .line 416
    .line 417
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 418
    .line 419
    .line 420
    move-result v11

    .line 421
    iget v1, v10, Landroid/graphics/RectF;->right:F

    .line 422
    .line 423
    sub-float v1, v1, v18

    .line 424
    .line 425
    iget v2, v10, Landroid/graphics/RectF;->top:F

    .line 426
    .line 427
    add-float v2, v2, v18

    .line 428
    .line 429
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->rotate(F)V

    .line 433
    .line 434
    .line 435
    iget-object v1, v0, Landroidx/cardview/widget/f;->g:Landroid/graphics/Path;

    .line 436
    .line 437
    invoke-virtual {v7, v1, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 438
    .line 439
    .line 440
    if-eqz v17, :cond_7

    .line 441
    .line 442
    const/4 v2, 0x0

    .line 443
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    sub-float v4, v1, v19

    .line 448
    .line 449
    iget v1, v0, Landroidx/cardview/widget/f;->f:F

    .line 450
    .line 451
    neg-float v5, v1

    .line 452
    move-object/from16 v1, p1

    .line 453
    .line 454
    move/from16 v3, v16

    .line 455
    .line 456
    move-object v6, v8

    .line 457
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 458
    .line 459
    .line 460
    :cond_7
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 461
    .line 462
    .line 463
    iget v1, v0, Landroidx/cardview/widget/f;->j:F

    .line 464
    .line 465
    neg-float v1, v1

    .line 466
    div-float/2addr v1, v15

    .line 467
    const/4 v2, 0x0

    .line 468
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 469
    .line 470
    .line 471
    const/4 v1, 0x0

    .line 472
    throw v1

    .line 473
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    iget v0, p0, Landroidx/cardview/widget/f;->h:F

    iget v1, p0, Landroidx/cardview/widget/f;->f:F

    iget-boolean v2, p0, Landroidx/cardview/widget/f;->o:Z

    invoke-static {v0, v1, v2}, Landroidx/cardview/widget/f;->b(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroidx/cardview/widget/f;->h:F

    iget v2, p0, Landroidx/cardview/widget/f;->f:F

    iget-boolean v3, p0, Landroidx/cardview/widget/f;->o:Z

    invoke-static {v1, v2, v3}, Landroidx/cardview/widget/f;->a(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public final isStateful()Z
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/f;->k:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/cardview/widget/f;->l:Z

    return-void
.end method

.method public final onStateChange([I)Z
    .locals 2

    iget-object v0, p0, Landroidx/cardview/widget/f;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Landroidx/cardview/widget/f;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/cardview/widget/f;->l:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/f;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroidx/cardview/widget/f;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroidx/cardview/widget/f;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/f;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
