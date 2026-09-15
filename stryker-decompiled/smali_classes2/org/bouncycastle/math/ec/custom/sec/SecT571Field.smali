.class public Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final M59:J = 0x7ffffffffffffffL

.field private static final ROOT_Z:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->ROOT_Z:[J

    return-void

    :array_0
    .array-data 8
        0x2be1195f08cafb99L    # 2.5016400602366306E-97
        -0x6a0f73507b9a83ddL    # -5.27848393260514E-203
        -0x3507b9a83dcd41efL    # -1.4531635499737842E53
        0x657c232be1195f08L    # 7.297283174828906E180
        -0x7b9a83dcf73507cL
        0x7c232be1195f08caL    # 9.34156735235881E289
        -0x41ee6a0f73507b9bL    # -1.02362256409199E-9
        0x5f08caf84657c232L    # 6.340366030377565E149
        0x784657c232be119L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add([JI[JI[JI)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static add([J[J[J)V
    .locals 5

    .line 2
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static addBothTo([JI[JI[JI)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    add-int v1, p5, v0

    aget-wide v2, p4, v1

    add-int v4, p1, v0

    aget-wide v4, p0, v4

    add-int v6, p3, v0

    aget-wide v6, p2, v6

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addBothTo([J[J[J)V
    .locals 7

    .line 2
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    aget-wide v1, p2, v0

    aget-wide v3, p0, v0

    aget-wide v5, p1, v0

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addExt([J[J[J)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addOne([J[J)V
    .locals 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static addTo([J[J)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 1

    const/16 v0, 0x23b

    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat;->fromBigInteger64(ILjava/math/BigInteger;)[J

    move-result-object p0

    return-object p0
.end method

.method public static halfTrace([J[J)V
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat576;->copy64([J[J)V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x23b

    if-ge v1, v2, :cond_0

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addTo([J[J)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static implMultiply([J[J[J)V
    .locals 43

    const/16 v7, 0x10

    new-array v8, v7, [J

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const/16 v0, 0x9

    if-ge v10, v0, :cond_0

    aget-wide v1, p0, v10

    aget-wide v3, p1, v10

    shl-int/lit8 v6, v10, 0x1

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    aget-wide v1, p2, v9

    const/4 v10, 0x1

    aget-wide v3, p2, v10

    const/4 v11, 0x2

    aget-wide v5, p2, v11

    xor-long/2addr v5, v1

    xor-long v12, v5, v3

    aput-wide v12, p2, v10

    const/4 v14, 0x3

    aget-wide v15, p2, v14

    xor-long/2addr v3, v15

    const/4 v15, 0x4

    aget-wide v16, p2, v15

    xor-long v5, v5, v16

    xor-long v16, v5, v3

    aput-wide v16, p2, v11

    const/16 v18, 0x5

    aget-wide v19, p2, v18

    xor-long v3, v3, v19

    const/16 v19, 0x6

    aget-wide v20, p2, v19

    xor-long v5, v5, v20

    xor-long v20, v5, v3

    aput-wide v20, p2, v14

    const/16 v22, 0x7

    aget-wide v23, p2, v22

    xor-long v3, v3, v23

    const/16 v23, 0x8

    aget-wide v24, p2, v23

    xor-long v5, v5, v24

    xor-long v24, v5, v3

    aput-wide v24, p2, v15

    aget-wide v26, p2, v0

    xor-long v3, v3, v26

    const/16 v26, 0xa

    aget-wide v27, p2, v26

    xor-long v5, v5, v27

    xor-long v27, v5, v3

    aput-wide v27, p2, v18

    const/16 v29, 0xb

    aget-wide v30, p2, v29

    xor-long v3, v3, v30

    const/16 v30, 0xc

    aget-wide v31, p2, v30

    xor-long v5, v5, v31

    xor-long v31, v5, v3

    aput-wide v31, p2, v19

    const/16 v33, 0xd

    aget-wide v34, p2, v33

    xor-long v3, v3, v34

    const/16 v34, 0xe

    aget-wide v35, p2, v34

    xor-long v5, v5, v35

    xor-long v35, v5, v3

    aput-wide v35, p2, v22

    const/16 v37, 0xf

    aget-wide v38, p2, v37

    xor-long v3, v3, v38

    aget-wide v38, p2, v7

    xor-long v5, v5, v38

    xor-long v38, v5, v3

    aput-wide v38, p2, v23

    const/16 v40, 0x11

    aget-wide v41, p2, v40

    xor-long v3, v3, v41

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    xor-long v0, v12, v3

    aput-wide v0, p2, v26

    xor-long v0, v16, v3

    aput-wide v0, p2, v29

    xor-long v0, v20, v3

    aput-wide v0, p2, v30

    xor-long v0, v24, v3

    aput-wide v0, p2, v33

    xor-long v0, v27, v3

    aput-wide v0, p2, v34

    xor-long v0, v31, v3

    aput-wide v0, p2, v37

    xor-long v0, v35, v3

    aput-wide v0, p2, v7

    xor-long v0, v38, v3

    aput-wide v0, p2, v40

    aget-wide v0, p0, v9

    aget-wide v2, p0, v10

    xor-long v1, v0, v2

    aget-wide v3, p1, v9

    aget-wide v5, p1, v10

    xor-long/2addr v3, v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v9

    aget-wide v2, p0, v11

    xor-long v1, v0, v2

    aget-wide v3, p1, v9

    aget-wide v5, p1, v11

    xor-long/2addr v3, v5

    const/4 v6, 0x2

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v9

    aget-wide v2, p0, v14

    xor-long v1, v0, v2

    aget-wide v3, p1, v9

    aget-wide v5, p1, v14

    xor-long/2addr v3, v5

    const/4 v6, 0x3

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v10

    aget-wide v2, p0, v11

    xor-long v1, v0, v2

    aget-wide v3, p1, v10

    aget-wide v5, p1, v11

    xor-long/2addr v3, v5

    const/4 v6, 0x3

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v9

    aget-wide v2, p0, v15

    xor-long v1, v0, v2

    aget-wide v3, p1, v9

    aget-wide v5, p1, v15

    xor-long/2addr v3, v5

    const/4 v6, 0x4

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v10

    aget-wide v2, p0, v14

    xor-long v1, v0, v2

    aget-wide v3, p1, v10

    aget-wide v5, p1, v14

    xor-long/2addr v3, v5

    const/4 v6, 0x4

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v9

    aget-wide v2, p0, v18

    xor-long v1, v0, v2

    aget-wide v3, p1, v9

    aget-wide v5, p1, v18

    xor-long/2addr v3, v5

    const/4 v6, 0x5

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v10

    aget-wide v2, p0, v15

    xor-long v1, v0, v2

    aget-wide v3, p1, v10

    aget-wide v5, p1, v15

    xor-long/2addr v3, v5

    const/4 v6, 0x5

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v11

    aget-wide v2, p0, v14

    xor-long v1, v0, v2

    aget-wide v3, p1, v11

    aget-wide v5, p1, v14

    xor-long/2addr v3, v5

    const/4 v6, 0x5

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v9

    aget-wide v2, p0, v19

    xor-long v1, v0, v2

    aget-wide v3, p1, v9

    aget-wide v5, p1, v19

    xor-long/2addr v3, v5

    const/4 v6, 0x6

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v10

    aget-wide v2, p0, v18

    xor-long v1, v0, v2

    aget-wide v3, p1, v10

    aget-wide v5, p1, v18

    xor-long/2addr v3, v5

    const/4 v6, 0x6

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v11

    aget-wide v2, p0, v15

    xor-long v1, v0, v2

    aget-wide v3, p1, v11

    aget-wide v5, p1, v15

    xor-long/2addr v3, v5

    const/4 v6, 0x6

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v9

    aget-wide v2, p0, v22

    xor-long v1, v0, v2

    aget-wide v3, p1, v9

    aget-wide v5, p1, v22

    xor-long/2addr v3, v5

    const/4 v6, 0x7

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v10

    aget-wide v2, p0, v19

    xor-long v1, v0, v2

    aget-wide v3, p1, v10

    aget-wide v5, p1, v19

    xor-long/2addr v3, v5

    const/4 v6, 0x7

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v11

    aget-wide v2, p0, v18

    xor-long v1, v0, v2

    aget-wide v3, p1, v11

    aget-wide v5, p1, v18

    xor-long/2addr v3, v5

    const/4 v6, 0x7

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v14

    aget-wide v2, p0, v15

    xor-long v1, v0, v2

    aget-wide v3, p1, v14

    aget-wide v5, p1, v15

    xor-long/2addr v3, v5

    const/4 v6, 0x7

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v9

    aget-wide v2, p0, v23

    xor-long v1, v0, v2

    aget-wide v3, p1, v9

    aget-wide v5, p1, v23

    xor-long/2addr v3, v5

    const/16 v6, 0x8

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v10

    aget-wide v2, p0, v22

    xor-long v1, v0, v2

    aget-wide v3, p1, v10

    aget-wide v5, p1, v22

    xor-long/2addr v3, v5

    const/16 v6, 0x8

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v11

    aget-wide v2, p0, v19

    xor-long v1, v0, v2

    aget-wide v3, p1, v11

    aget-wide v5, p1, v19

    xor-long/2addr v3, v5

    const/16 v6, 0x8

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v14

    aget-wide v2, p0, v18

    xor-long v1, v0, v2

    aget-wide v3, p1, v14

    aget-wide v5, p1, v18

    xor-long/2addr v3, v5

    const/16 v6, 0x8

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v10

    aget-wide v2, p0, v23

    xor-long v1, v0, v2

    aget-wide v3, p1, v10

    aget-wide v5, p1, v23

    xor-long/2addr v3, v5

    const/16 v6, 0x9

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v11

    aget-wide v2, p0, v22

    xor-long v1, v0, v2

    aget-wide v3, p1, v11

    aget-wide v5, p1, v22

    xor-long/2addr v3, v5

    const/16 v6, 0x9

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v14

    aget-wide v2, p0, v19

    xor-long v1, v0, v2

    aget-wide v3, p1, v14

    aget-wide v5, p1, v19

    xor-long/2addr v3, v5

    const/16 v6, 0x9

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v15

    aget-wide v2, p0, v18

    xor-long v1, v0, v2

    aget-wide v3, p1, v15

    aget-wide v5, p1, v18

    xor-long/2addr v3, v5

    const/16 v6, 0x9

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v11

    aget-wide v2, p0, v23

    xor-long v1, v0, v2

    aget-wide v3, p1, v11

    aget-wide v5, p1, v23

    xor-long/2addr v3, v5

    const/16 v6, 0xa

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v14

    aget-wide v2, p0, v22

    xor-long v1, v0, v2

    aget-wide v3, p1, v14

    aget-wide v5, p1, v22

    xor-long/2addr v3, v5

    const/16 v6, 0xa

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v15

    aget-wide v2, p0, v19

    xor-long v1, v0, v2

    aget-wide v3, p1, v15

    aget-wide v5, p1, v19

    xor-long/2addr v3, v5

    const/16 v6, 0xa

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v14

    aget-wide v2, p0, v23

    xor-long v1, v0, v2

    aget-wide v3, p1, v14

    aget-wide v5, p1, v23

    xor-long/2addr v3, v5

    const/16 v6, 0xb

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v15

    aget-wide v2, p0, v22

    xor-long v1, v0, v2

    aget-wide v3, p1, v15

    aget-wide v5, p1, v22

    xor-long/2addr v3, v5

    const/16 v6, 0xb

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v18

    aget-wide v2, p0, v19

    xor-long v1, v0, v2

    aget-wide v3, p1, v18

    aget-wide v5, p1, v19

    xor-long/2addr v3, v5

    const/16 v6, 0xb

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v15

    aget-wide v2, p0, v23

    xor-long v1, v0, v2

    aget-wide v3, p1, v15

    aget-wide v5, p1, v23

    xor-long/2addr v3, v5

    const/16 v6, 0xc

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v18

    aget-wide v2, p0, v22

    xor-long v1, v0, v2

    aget-wide v3, p1, v18

    aget-wide v5, p1, v22

    xor-long/2addr v3, v5

    const/16 v6, 0xc

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v18

    aget-wide v2, p0, v23

    xor-long v1, v0, v2

    aget-wide v3, p1, v18

    aget-wide v5, p1, v23

    xor-long/2addr v3, v5

    const/16 v6, 0xd

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v19

    aget-wide v2, p0, v22

    xor-long v1, v0, v2

    aget-wide v3, p1, v19

    aget-wide v5, p1, v22

    xor-long/2addr v3, v5

    const/16 v6, 0xd

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v19

    aget-wide v2, p0, v23

    xor-long v1, v0, v2

    aget-wide v3, p1, v19

    aget-wide v5, p1, v23

    xor-long/2addr v3, v5

    const/16 v6, 0xe

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v0, p0, v22

    aget-wide v2, p0, v23

    xor-long v1, v0, v2

    aget-wide v3, p1, v22

    aget-wide v5, p1, v23

    xor-long/2addr v3, v5

    const/16 v6, 0xf

    move-object v0, v8

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    return-void
.end method

.method public static implMultiplyPrecomp([J[J[J)V
    .locals 12

    const/16 v0, 0x38

    move v1, v0

    :goto_0
    const/16 v2, 0x9

    if-ltz v1, :cond_1

    const/4 v3, 0x1

    :goto_1
    if-ge v3, v2, :cond_0

    aget-wide v4, p0, v3

    ushr-long/2addr v4, v1

    long-to-int v4, v4

    and-int/lit8 v5, v4, 0xf

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    mul-int/lit8 v7, v5, 0x9

    add-int/lit8 v4, v4, 0x10

    mul-int/lit8 v9, v4, 0x9

    add-int/lit8 v11, v3, -0x1

    move-object v6, p1

    move-object v8, p1

    move-object v10, p2

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addBothTo([JI[JI[JI)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_0
    const/16 v4, 0x10

    const/4 v6, 0x0

    const/16 v7, 0x8

    const-wide/16 v8, 0x0

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ)J

    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    :cond_1
    :goto_2
    if-ltz v0, :cond_4

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_2

    aget-wide v3, p0, v1

    ushr-long/2addr v3, v0

    long-to-int v3, v3

    and-int/lit8 v4, v3, 0xf

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    mul-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x10

    mul-int/lit8 v6, v3, 0x9

    move-object v3, p1

    move-object v5, p1

    move-object v7, p2

    move v8, v1

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addBothTo([JI[JI[JI)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_2
    if-lez v0, :cond_3

    const/16 v3, 0x12

    const/4 v5, 0x0

    const/16 v6, 0x8

    const-wide/16 v7, 0x0

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ)J

    :cond_3
    add-int/lit8 v0, v0, -0x8

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static implMulwAcc([JJJ[JI)V
    .locals 14

    move-wide v0, p1

    const/4 v2, 0x1

    aput-wide p3, p0, v2

    const/4 v3, 0x2

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    ushr-int/lit8 v4, v3, 0x1

    aget-wide v4, p0, v4

    shl-long/2addr v4, v2

    aput-wide v4, p0, v3

    add-int/lit8 v6, v3, 0x1

    xor-long v4, v4, p3

    aput-wide v4, p0, v6

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    long-to-int v3, v0

    and-int/lit8 v4, v3, 0xf

    aget-wide v4, p0, v4

    const/4 v6, 0x4

    ushr-int/2addr v3, v6

    and-int/lit8 v3, v3, 0xf

    aget-wide v7, p0, v3

    shl-long/2addr v7, v6

    xor-long v3, v4, v7

    const-wide/16 v7, 0x0

    const/16 v5, 0x38

    :cond_1
    ushr-long v9, v0, v5

    long-to-int v9, v9

    and-int/lit8 v10, v9, 0xf

    aget-wide v10, p0, v10

    ushr-int/2addr v9, v6

    and-int/lit8 v9, v9, 0xf

    aget-wide v12, p0, v9

    shl-long/2addr v12, v6

    xor-long v9, v10, v12

    shl-long v11, v9, v5

    xor-long/2addr v3, v11

    neg-int v11, v5

    ushr-long/2addr v9, v11

    xor-long/2addr v7, v9

    add-int/lit8 v5, v5, -0x8

    if-gtz v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x7

    if-ge v5, v6, :cond_2

    const-wide v9, -0x101010101010102L

    and-long/2addr v0, v9

    ushr-long/2addr v0, v2

    shl-long v9, p3, v5

    const/16 v6, 0x3f

    shr-long/2addr v9, v6

    and-long/2addr v9, v0

    xor-long/2addr v7, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    aget-wide v0, p5, p6

    xor-long/2addr v0, v3

    aput-wide v0, p5, p6

    add-int/lit8 v0, p6, 0x1

    aget-wide v1, p5, v0

    xor-long/2addr v1, v7

    aput-wide v1, p5, v0

    return-void
.end method

.method public static implSquare([J[J)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-static {p0, v0, v1, p1, v0}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128([JII[JI)V

    return-void
.end method

.method public static invert([J[J)V
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v2

    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    invoke-static {v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    const/4 p0, 0x2

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    invoke-static {v0, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    const/4 p0, 0x5

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    const/16 p0, 0xf

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    const/16 p0, 0x1e

    invoke-static {v2, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    const/16 p0, 0x3c

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    const/16 p0, 0xb4

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static multiply([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMultiply([J[J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMultiply([J[J[J)V

    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addExt([J[J[J)V

    return-void
.end method

.method public static multiplyPrecomp([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMultiplyPrecomp([J[J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    return-void
.end method

.method public static multiplyPrecompAddToExt([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMultiplyPrecomp([J[J[J)V

    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addExt([J[J[J)V

    return-void
.end method

.method public static precompMultiplicand([J)[J
    .locals 16

    const/16 v7, 0x90

    const/16 v0, 0x120

    new-array v15, v0, [J

    const/16 v0, 0x9

    const/4 v1, 0x0

    move-object/from16 v2, p0

    invoke-static {v2, v1, v15, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x7

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v6, v1, 0x12

    const/16 v8, 0x9

    ushr-int/lit8 v10, v6, 0x1

    const-wide/16 v11, 0x0

    move-object v9, v15

    move-object v13, v15

    move v14, v6

    invoke-static/range {v8 .. v14}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit64(I[JIJ[JI)J

    invoke-static {v15, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce5([JI)V

    const/16 v2, 0x9

    add-int/lit8 v8, v1, 0x1b

    move-object v1, v15

    move-object v3, v15

    move v4, v6

    move-object v5, v15

    move v9, v6

    move v6, v8

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([JI[JI[JI)V

    add-int/lit8 v0, v0, -0x1

    move v1, v9

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    move v0, v7

    move-object v1, v15

    move-object v6, v15

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ[JI)J

    return-object v15
.end method

.method public static reduce([J[J)V
    .locals 19

    const/16 v0, 0x9

    aget-wide v0, p0, v0

    const/16 v2, 0x11

    aget-wide v2, p0, v2

    const/16 v4, 0x3b

    ushr-long v5, v2, v4

    xor-long/2addr v0, v5

    const/16 v5, 0x39

    ushr-long v6, v2, v5

    xor-long/2addr v0, v6

    const/16 v6, 0x36

    ushr-long v7, v2, v6

    xor-long/2addr v0, v7

    const/16 v7, 0x31

    ushr-long v8, v2, v7

    xor-long/2addr v0, v8

    const/16 v8, 0x8

    aget-wide v9, p0, v8

    const/4 v11, 0x5

    shl-long v12, v2, v11

    xor-long/2addr v9, v12

    const/4 v12, 0x7

    shl-long v13, v2, v12

    xor-long/2addr v9, v13

    const/16 v13, 0xa

    shl-long v14, v2, v13

    xor-long/2addr v9, v14

    const/16 v14, 0xf

    shl-long/2addr v2, v14

    xor-long/2addr v2, v9

    const/16 v9, 0x10

    :goto_0
    if-lt v9, v13, :cond_0

    aget-wide v15, p0, v9

    add-int/lit8 v10, v9, -0x8

    ushr-long v17, v15, v4

    xor-long v2, v2, v17

    ushr-long v17, v15, v5

    xor-long v2, v2, v17

    ushr-long v17, v15, v6

    xor-long v2, v2, v17

    ushr-long v17, v15, v7

    xor-long v2, v2, v17

    aput-wide v2, p1, v10

    add-int/lit8 v2, v9, -0x9

    aget-wide v2, p0, v2

    shl-long v17, v15, v11

    xor-long v2, v2, v17

    shl-long v17, v15, v12

    xor-long v2, v2, v17

    shl-long v17, v15, v13

    xor-long v2, v2, v17

    shl-long/2addr v15, v14

    xor-long/2addr v2, v15

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_0
    ushr-long v9, v0, v4

    xor-long/2addr v2, v9

    ushr-long v9, v0, v5

    xor-long/2addr v2, v9

    ushr-long v5, v0, v6

    xor-long/2addr v2, v5

    ushr-long v5, v0, v7

    xor-long/2addr v2, v5

    const/4 v5, 0x1

    aput-wide v2, p1, v5

    const/4 v2, 0x0

    aget-wide v5, p0, v2

    shl-long v9, v0, v11

    xor-long/2addr v5, v9

    shl-long v9, v0, v12

    xor-long/2addr v5, v9

    shl-long v9, v0, v13

    xor-long/2addr v5, v9

    shl-long/2addr v0, v14

    xor-long/2addr v0, v5

    aget-wide v5, p1, v8

    ushr-long v3, v5, v4

    xor-long/2addr v0, v3

    const/4 v7, 0x2

    shl-long v9, v3, v7

    xor-long/2addr v0, v9

    shl-long v9, v3, v11

    xor-long/2addr v0, v9

    shl-long/2addr v3, v13

    xor-long/2addr v0, v3

    aput-wide v0, p1, v2

    const-wide v0, 0x7ffffffffffffffL

    and-long/2addr v0, v5

    aput-wide v0, p1, v8

    return-void
.end method

.method public static reduce5([JI)V
    .locals 11

    add-int/lit8 v0, p1, 0x8

    aget-wide v1, p0, v0

    const/16 v3, 0x3b

    ushr-long v3, v1, v3

    aget-wide v5, p0, p1

    const/4 v7, 0x2

    shl-long v7, v3, v7

    xor-long/2addr v7, v3

    const/4 v9, 0x5

    shl-long v9, v3, v9

    xor-long/2addr v7, v9

    const/16 v9, 0xa

    shl-long/2addr v3, v9

    xor-long/2addr v3, v7

    xor-long/2addr v3, v5

    aput-wide v3, p0, p1

    const-wide v3, 0x7ffffffffffffffL

    and-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-void
.end method

.method public static sqrt([J[J)V
    .locals 14

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-wide v4, 0xffffffffL

    const/16 v6, 0x20

    const/4 v7, 0x4

    if-ge v2, v7, :cond_0

    add-int/lit8 v7, v3, 0x1

    aget-wide v8, p0, v3

    invoke-static {v8, v9}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v8

    add-int/lit8 v3, v3, 0x2

    aget-wide v10, p0, v7

    invoke-static {v10, v11}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v10

    and-long/2addr v4, v8

    shl-long v12, v10, v6

    or-long/2addr v4, v12

    aput-wide v4, v0, v2

    ushr-long v4, v8, v6

    const-wide v6, -0x100000000L

    and-long/2addr v6, v10

    or-long/2addr v4, v6

    aput-wide v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aget-wide v2, p0, v3

    invoke-static {v2, v3}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v2

    and-long/2addr v4, v2

    aput-wide v4, v0, v7

    ushr-long/2addr v2, v6

    aput-wide v2, v1, v7

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->ROOT_Z:[J

    invoke-static {v1, p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    return-void
.end method

.method public static square([J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addExt([J[J[J)V

    return-void
.end method

.method public static squareN([JI[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    :goto_0
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static trace([J)I
    .locals 6

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/16 v2, 0x8

    aget-wide v2, p0, v2

    const/16 p0, 0x31

    ushr-long v4, v2, p0

    xor-long/2addr v0, v4

    const/16 p0, 0x39

    ushr-long/2addr v2, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method
