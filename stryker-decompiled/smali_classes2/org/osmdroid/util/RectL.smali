.class public Lorg/osmdroid/util/RectL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bottom:J

.field public left:J

.field public right:J

.field public top:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p8}, Lorg/osmdroid/util/RectL;->set(JJJJ)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/RectL;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/osmdroid/util/RectL;->set(Lorg/osmdroid/util/RectL;)V

    return-void
.end method

.method public static getBounds(Landroid/graphics/Rect;IIDLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    if-eqz p5, :cond_0

    move-object/from16 v1, p5

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    const-wide/16 v2, 0x0

    cmpl-double v2, p3, v2

    if-nez v2, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->right:I

    return-object v1

    :cond_1
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, p3

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-long v14, v4

    int-to-long v12, v5

    move/from16 v4, p1

    int-to-long v10, v4

    move/from16 v4, p2

    int-to-long v8, v4

    move-wide v4, v14

    move-wide v6, v12

    move-wide/from16 v18, v8

    move-wide v8, v10

    move-wide/from16 v20, v10

    move-wide/from16 v10, v18

    move-wide/from16 v22, v12

    move-wide/from16 v12, v16

    move-wide/from16 v24, v14

    move-wide v14, v2

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v4

    long-to-int v14, v4

    move-wide/from16 v4, v24

    move-wide/from16 v6, v22

    move-wide/from16 v8, v20

    move v0, v14

    move-wide v14, v2

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-long v14, v4

    int-to-long v12, v5

    move-wide v4, v14

    move-wide v6, v12

    move-wide/from16 v22, v12

    move-wide/from16 v12, v16

    move-wide/from16 v24, v14

    move-wide v14, v2

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v4

    long-to-int v14, v4

    move-wide/from16 v4, v24

    move-wide/from16 v6, v22

    move v0, v14

    move-wide v14, v2

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v4

    long-to-int v4, v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-le v5, v4, :cond_2

    iput v4, v1, Landroid/graphics/Rect;->top:I

    :cond_2
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v4, :cond_3

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    :cond_3
    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-le v4, v0, :cond_4

    iput v0, v1, Landroid/graphics/Rect;->left:I

    :cond_4
    iget v4, v1, Landroid/graphics/Rect;->right:I

    if-ge v4, v0, :cond_5

    iput v0, v1, Landroid/graphics/Rect;->right:I

    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-long v14, v4

    int-to-long v12, v5

    move-wide v4, v14

    move-wide v6, v12

    move-wide/from16 v8, v20

    move-wide/from16 v10, v18

    move-wide/from16 v22, v12

    move-wide/from16 v12, v16

    move-wide/from16 v24, v14

    move-wide v14, v2

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v4

    long-to-int v14, v4

    move-wide/from16 v4, v24

    move-wide/from16 v6, v22

    move v0, v14

    move-wide v14, v2

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v4

    long-to-int v4, v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-le v5, v4, :cond_6

    iput v4, v1, Landroid/graphics/Rect;->top:I

    :cond_6
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v4, :cond_7

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    :cond_7
    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-le v4, v0, :cond_8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    :cond_8
    iget v4, v1, Landroid/graphics/Rect;->right:I

    if-ge v4, v0, :cond_9

    iput v0, v1, Landroid/graphics/Rect;->right:I

    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-long v14, v4

    int-to-long v12, v0

    move-wide v4, v14

    move-wide v6, v12

    move-wide/from16 v8, v20

    move-wide/from16 v10, v18

    move-wide/from16 v22, v12

    move-wide/from16 v12, v16

    move-wide/from16 v24, v14

    move-wide v14, v2

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v4

    long-to-int v0, v4

    move-wide/from16 v4, v24

    move-wide/from16 v6, v22

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-le v3, v2, :cond_a

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_a
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v2, :cond_b

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_b
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-le v2, v0, :cond_c

    iput v0, v1, Landroid/graphics/Rect;->left:I

    :cond_c
    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-ge v2, v0, :cond_d

    iput v0, v1, Landroid/graphics/Rect;->right:I

    :cond_d
    return-object v1
.end method

.method public static getBounds(Lorg/osmdroid/util/RectL;JJDLorg/osmdroid/util/RectL;)Lorg/osmdroid/util/RectL;
    .locals 30

    .line 2
    move-object/from16 v0, p0

    if-eqz p7, :cond_0

    move-object/from16 v1, p7

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/osmdroid/util/RectL;

    invoke-direct {v1}, Lorg/osmdroid/util/RectL;-><init>()V

    :goto_0
    const-wide/16 v2, 0x0

    cmpl-double v2, p5, v2

    if-nez v2, :cond_1

    iget-wide v2, v0, Lorg/osmdroid/util/RectL;->top:J

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v2, v0, Lorg/osmdroid/util/RectL;->left:J

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v2, v0, Lorg/osmdroid/util/RectL;->bottom:J

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->bottom:J

    iget-wide v2, v0, Lorg/osmdroid/util/RectL;->right:J

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->right:J

    return-object v1

    :cond_1
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, p5

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget-wide v14, v0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v12, v0, Lorg/osmdroid/util/RectL;->top:J

    move-wide v4, v14

    move-wide v6, v12

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v18, v12

    move-wide/from16 v12, v16

    move-wide/from16 v20, v14

    move-wide v14, v2

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v14

    move-wide/from16 v4, v20

    move-wide/from16 v6, v18

    move-wide/from16 v22, v14

    move-wide v14, v2

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v4

    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->bottom:J

    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->top:J

    move-wide/from16 v4, v22

    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->right:J

    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v14, v0, Lorg/osmdroid/util/RectL;->right:J

    iget-wide v12, v0, Lorg/osmdroid/util/RectL;->top:J

    move-wide v4, v14

    move-wide v6, v12

    move-wide/from16 v18, v12

    move-wide/from16 v12, v16

    move-wide/from16 v20, v14

    move-wide v14, v2

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v14

    move-wide/from16 v4, v20

    move-wide/from16 v6, v18

    move-wide/from16 v24, v14

    move-wide v14, v2

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v4

    iget-wide v6, v1, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_2

    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->top:J

    :cond_2
    iget-wide v6, v1, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_3

    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->bottom:J

    :cond_3
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->left:J

    move-wide/from16 v6, v24

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    iput-wide v6, v1, Lorg/osmdroid/util/RectL;->left:J

    :cond_4
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    iput-wide v6, v1, Lorg/osmdroid/util/RectL;->right:J

    :cond_5
    iget-wide v14, v0, Lorg/osmdroid/util/RectL;->right:J

    iget-wide v12, v0, Lorg/osmdroid/util/RectL;->bottom:J

    move-wide v4, v14

    move-wide v6, v12

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v18, v12

    move-wide/from16 v12, v16

    move-wide/from16 v20, v14

    move-wide v14, v2

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v14

    move-wide/from16 v4, v20

    move-wide/from16 v6, v18

    move-wide/from16 v26, v14

    move-wide v14, v2

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v4

    iget-wide v6, v1, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_6

    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->top:J

    :cond_6
    iget-wide v6, v1, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_7

    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->bottom:J

    :cond_7
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->left:J

    move-wide/from16 v6, v26

    cmp-long v4, v4, v6

    if-lez v4, :cond_8

    iput-wide v6, v1, Lorg/osmdroid/util/RectL;->left:J

    :cond_8
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    iput-wide v6, v1, Lorg/osmdroid/util/RectL;->right:J

    :cond_9
    iget-wide v14, v0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v12, v0, Lorg/osmdroid/util/RectL;->bottom:J

    move-wide v4, v14

    move-wide v6, v12

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v18, v12

    move-wide/from16 v12, v16

    move-wide/from16 v20, v14

    move-wide v14, v2

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v14

    move-wide/from16 v4, v20

    move-wide/from16 v6, v18

    move-wide/from16 v28, v14

    move-wide v14, v2

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v2

    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_a

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->top:J

    :cond_a
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_b

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->bottom:J

    :cond_b
    iget-wide v2, v1, Lorg/osmdroid/util/RectL;->left:J

    move-wide/from16 v4, v28

    cmp-long v0, v2, v4

    if-lez v0, :cond_c

    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->left:J

    :cond_c
    iget-wide v2, v1, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_d

    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->right:J

    :cond_d
    return-object v1
.end method

.method public static getRotatedX(JJDJJ)J
    .locals 13

    .line 1
    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-nez v0, :cond_0

    return-wide p0

    :cond_0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, p4

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    move-wide v1, p0

    move-wide v3, p2

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    invoke-static/range {v1 .. v12}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRotatedX(JJJJDD)J
    .locals 0

    .line 2
    sub-long/2addr p0, p4

    long-to-double p0, p0

    mul-double/2addr p0, p8

    sub-long/2addr p2, p6

    long-to-double p2, p2

    mul-double/2addr p2, p10

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    add-long/2addr p0, p4

    return-wide p0
.end method

.method public static getRotatedY(JJDJJ)J
    .locals 13

    .line 1
    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-nez v0, :cond_0

    return-wide p2

    :cond_0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, p4

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    move-wide v1, p0

    move-wide v3, p2

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    invoke-static/range {v1 .. v12}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRotatedY(JJJJDD)J
    .locals 0

    .line 2
    sub-long/2addr p0, p4

    long-to-double p0, p0

    mul-double/2addr p0, p10

    sub-long/2addr p2, p6

    long-to-double p2, p2

    mul-double/2addr p2, p8

    add-double/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    add-long/2addr p0, p6

    return-wide p0
.end method

.method public static intersects(Lorg/osmdroid/util/RectL;Lorg/osmdroid/util/RectL;)Z
    .locals 4

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v2, p1, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v2, p1, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->top:J

    iget-wide p0, p0, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public centerX()J
    .locals 4

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->right:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public centerY()J
    .locals 4

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->bottom:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public contains(JJ)Z
    .locals 9

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v4, p0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v6, p0, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    cmp-long p1, p1, v2

    if-gez p1, :cond_0

    cmp-long p1, p3, v4

    if-ltz p1, :cond_0

    cmp-long p1, p3, v6

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/osmdroid/util/RectL;

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v4, p1, Lorg/osmdroid/util/RectL;->left:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v4, p1, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->right:J

    iget-wide v4, p1, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->bottom:J

    iget-wide v4, p1, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    const-wide/16 v2, 0x1f

    mul-long/2addr v0, v2

    iget-wide v4, p0, Lorg/osmdroid/util/RectL;->top:J

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Lorg/osmdroid/util/RectL;->right:J

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->bottom:J

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final height()J
    .locals 4

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->bottom:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->top:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public inset(JJ)V
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    iget-wide p1, p0, Lorg/osmdroid/util/RectL;->bottom:J

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lorg/osmdroid/util/RectL;->bottom:J

    return-void
.end method

.method public offset(JJ)V
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    iget-wide p1, p0, Lorg/osmdroid/util/RectL;->bottom:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lorg/osmdroid/util/RectL;->bottom:J

    return-void
.end method

.method public set(JJJJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/osmdroid/util/RectL;->left:J

    iput-wide p3, p0, Lorg/osmdroid/util/RectL;->top:J

    iput-wide p5, p0, Lorg/osmdroid/util/RectL;->right:J

    iput-wide p7, p0, Lorg/osmdroid/util/RectL;->bottom:J

    return-void
.end method

.method public set(Lorg/osmdroid/util/RectL;)V
    .locals 2

    .line 2
    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->left:J

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->top:J

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->right:J

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->bottom:J

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->bottom:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RectL("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lorg/osmdroid/util/RectL;->left:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->top:J

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, " - "

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->right:J

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v1, p0, Lorg/osmdroid/util/RectL;->bottom:J

    .line 37
    .line 38
    const-string v3, ")"

    .line 39
    .line 40
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public union(JJ)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iput-wide p1, p0, Lorg/osmdroid/util/RectL;->left:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iput-wide p1, p0, Lorg/osmdroid/util/RectL;->right:J

    :cond_1
    :goto_0
    iget-wide p1, p0, Lorg/osmdroid/util/RectL;->top:J

    cmp-long p1, p3, p1

    if-gez p1, :cond_2

    iput-wide p3, p0, Lorg/osmdroid/util/RectL;->top:J

    goto :goto_1

    :cond_2
    iget-wide p1, p0, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long p1, p3, p1

    if-lez p1, :cond_3

    iput-wide p3, p0, Lorg/osmdroid/util/RectL;->bottom:J

    :cond_3
    :goto_1
    return-void
.end method

.method public union(JJJJ)V
    .locals 16

    .line 2
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    cmp-long v9, v1, v5

    if-gez v9, :cond_5

    cmp-long v9, v3, v7

    if-gez v9, :cond_5

    iget-wide v9, v0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v11, v0, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v13, v9, v11

    if-gez v13, :cond_4

    iget-wide v13, v0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v7, v0, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v15, v13, v7

    if-gez v15, :cond_3

    cmp-long v9, v9, v1

    if-lez v9, :cond_0

    iput-wide v1, v0, Lorg/osmdroid/util/RectL;->left:J

    :cond_0
    cmp-long v1, v13, v3

    if-lez v1, :cond_1

    iput-wide v3, v0, Lorg/osmdroid/util/RectL;->top:J

    :cond_1
    cmp-long v1, v11, v5

    if-gez v1, :cond_2

    iput-wide v5, v0, Lorg/osmdroid/util/RectL;->right:J

    :cond_2
    move-wide v1, v7

    move-wide/from16 v7, p7

    cmp-long v1, v1, v7

    if-gez v1, :cond_5

    :goto_0
    iput-wide v7, v0, Lorg/osmdroid/util/RectL;->bottom:J

    goto :goto_1

    :cond_3
    move-wide/from16 v7, p7

    :cond_4
    iput-wide v1, v0, Lorg/osmdroid/util/RectL;->left:J

    iput-wide v3, v0, Lorg/osmdroid/util/RectL;->top:J

    iput-wide v5, v0, Lorg/osmdroid/util/RectL;->right:J

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public union(Lorg/osmdroid/util/RectL;)V
    .locals 9

    .line 3
    iget-wide v1, p1, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v3, p1, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v5, p1, Lorg/osmdroid/util/RectL;->right:J

    iget-wide v7, p1, Lorg/osmdroid/util/RectL;->bottom:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/osmdroid/util/RectL;->union(JJJJ)V

    return-void
.end method

.method public final width()J
    .locals 4

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->left:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
