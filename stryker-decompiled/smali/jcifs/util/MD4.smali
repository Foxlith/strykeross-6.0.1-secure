.class public Ljcifs/util/MD4;
.super Ljava/security/MessageDigest;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BLOCK_LENGTH:I = 0x40


# instance fields
.field private X:[I

.field private buffer:[B

.field private context:[I

.field private count:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "MD4"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/MD4;->context:[I

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/MD4;->X:[I

    invoke-virtual {p0}, Ljcifs/util/MD4;->engineReset()V

    return-void
.end method

.method private constructor <init>(Ljcifs/util/MD4;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljcifs/util/MD4;-><init>()V

    iget-object v0, p1, Ljcifs/util/MD4;->context:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Ljcifs/util/MD4;->context:[I

    iget-object v0, p1, Ljcifs/util/MD4;->buffer:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    iget-wide v0, p1, Ljcifs/util/MD4;->count:J

    iput-wide v0, p0, Ljcifs/util/MD4;->count:J

    return-void
.end method

.method private FF(IIIIII)I
    .locals 0

    and-int/2addr p3, p2

    not-int p2, p2

    and-int/2addr p2, p4

    or-int/2addr p2, p3

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    shl-int p2, p1, p6

    rsub-int/lit8 p3, p6, 0x20

    ushr-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private GG(IIIIII)I
    .locals 1

    or-int v0, p3, p4

    and-int/2addr p2, v0

    and-int/2addr p3, p4

    or-int/2addr p2, p3

    const p3, 0x5a827999

    invoke-static {p1, p2, p5, p3}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result p1

    shl-int p2, p1, p6

    rsub-int/lit8 p3, p6, 0x20

    ushr-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private HH(IIIIII)I
    .locals 0

    xor-int/2addr p2, p3

    xor-int/2addr p2, p4

    const p3, 0x6ed9eba1

    invoke-static {p1, p2, p5, p3}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result p1

    shl-int p2, p1, p6

    rsub-int/lit8 p3, p6, 0x20

    ushr-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private transform([BI)V
    .locals 28

    move-object/from16 v7, p0

    const/4 v8, 0x0

    move/from16 v0, p2

    move v1, v8

    :goto_0
    const/16 v2, 0x10

    const/4 v9, 0x4

    const/16 v10, 0x8

    if-ge v1, v2, :cond_0

    iget-object v3, v7, Ljcifs/util/MD4;->X:[I

    add-int/lit8 v4, v0, 0x1

    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v0, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v10

    or-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v2, v6, 0x10

    or-int/2addr v2, v4

    add-int/2addr v0, v9

    aget-byte v4, p1, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v7, Ljcifs/util/MD4;->context:[I

    aget v1, v0, v8

    const/4 v11, 0x1

    aget v12, v0, v11

    const/4 v13, 0x2

    aget v14, v0, v13

    const/4 v15, 0x3

    aget v16, v0, v15

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v8

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v2, v12

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v17

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v11

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move v3, v12

    move v4, v14

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v13

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move/from16 v3, v17

    move v4, v12

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v14

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v15

    const/16 v6, 0x13

    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v12

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v9

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v12

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v17

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v18, 0x5

    aget v5, v0, v18

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move v3, v12

    move v4, v14

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v19, 0x6

    aget v5, v0, v19

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move/from16 v3, v17

    move v4, v12

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v14

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v20, 0x7

    aget v5, v0, v20

    const/16 v6, 0x13

    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v12

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v10

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v12

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v17

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v21, 0x9

    aget v5, v0, v21

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move v3, v12

    move v4, v14

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v22, 0xa

    aget v5, v0, v22

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move/from16 v3, v17

    move v4, v12

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v14

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v23, 0xb

    aget v5, v0, v23

    const/16 v6, 0x13

    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v12

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v24, 0xc

    aget v5, v0, v24

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v12

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v17

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v25, 0xd

    aget v5, v0, v25

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move v3, v12

    move v4, v14

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v26, 0xe

    aget v5, v0, v26

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move/from16 v3, v17

    move v4, v12

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v14

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v27, 0xf

    aget v5, v0, v27

    const/16 v6, 0x13

    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v12

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v8

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v12

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v17

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v9

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move v3, v12

    move v4, v14

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v10

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move/from16 v3, v17

    move v4, v12

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v14

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v24

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v12

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v11

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v12

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v17

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v18

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move v3, v12

    move v4, v14

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v21

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move/from16 v3, v17

    move v4, v12

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v14

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v12

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v13

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v12

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v17

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v19

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move v3, v12

    move v4, v14

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v22

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move/from16 v3, v17

    move v4, v12

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v14

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v26

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v12

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v15

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v12

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v17

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v20

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move v3, v12

    move v4, v14

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v16

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v23

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move/from16 v3, v17

    move v4, v12

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v14

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v27

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v12

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v8

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v12

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v17

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v10

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move v3, v12

    move v4, v14

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v10

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v9

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v14

    move v2, v10

    move/from16 v3, v17

    move v4, v12

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v9

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v24

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v12

    move v2, v9

    move v3, v10

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v12

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v13

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v12

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v14

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v22

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v10

    move v2, v14

    move v3, v12

    move v4, v9

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v10

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v19

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v14

    move v4, v12

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v9

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v26

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v12

    move v2, v9

    move v3, v10

    move v4, v14

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v12

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v11

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v14

    move v2, v12

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v14

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v21

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v10

    move v2, v14

    move v3, v12

    move v4, v9

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v10

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v18

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v14

    move v4, v12

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v9

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v12

    move v2, v9

    move v3, v10

    move v4, v14

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v12

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v15

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v14

    move v2, v12

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v14

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v23

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v10

    move v2, v14

    move v3, v12

    move v4, v9

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v10

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v20

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v14

    move v4, v12

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v9

    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v27

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v12

    move v2, v9

    move v3, v10

    move v4, v14

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v0

    iget-object v1, v7, Ljcifs/util/MD4;->context:[I

    aget v2, v1, v8

    add-int/2addr v2, v14

    aput v2, v1, v8

    aget v2, v1, v11

    add-int/2addr v2, v0

    aput v2, v1, v11

    aget v0, v1, v13

    add-int/2addr v0, v9

    aput v0, v1, v13

    aget v0, v1, v15

    add-int/2addr v0, v10

    aput v0, v1, v15

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljcifs/util/MD4;

    invoke-direct {v0, p0}, Ljcifs/util/MD4;-><init>(Ljcifs/util/MD4;)V

    return-object v0
.end method

.method public engineDigest()[B
    .locals 10

    iget-wide v0, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v2, 0x40

    rem-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x38

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, v0, 0x78

    :goto_0
    add-int/lit8 v0, v1, 0x8

    new-array v2, v0, [B

    const/16 v3, -0x80

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    move v3, v4

    :goto_1
    const/16 v5, 0x8

    if-ge v3, v5, :cond_1

    add-int v5, v1, v3

    iget-wide v6, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v8, 0x8

    mul-long/2addr v6, v8

    mul-int/lit8 v8, v3, 0x8

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2, v4, v0}, Ljcifs/util/MD4;->engineUpdate([BII)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    move v1, v4

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    move v3, v4

    :goto_3
    if-ge v3, v2, :cond_2

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v3

    iget-object v6, p0, Ljcifs/util/MD4;->context:[I

    aget v6, v6, v1

    mul-int/lit8 v7, v3, 0x8

    ushr-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljcifs/util/MD4;->engineReset()V

    return-object v0
.end method

.method public engineReset()V
    .locals 4

    iget-object v0, p0, Ljcifs/util/MD4;->context:[I

    const v1, 0x67452301

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const v3, -0x10325477

    aput v3, v0, v1

    const/4 v1, 0x2

    const v3, -0x67452302

    aput v3, v0, v1

    const/4 v1, 0x3

    const v3, 0x10325476

    aput v3, v0, v1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/util/MD4;->count:J

    move v0, v2

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljcifs/util/MD4;->buffer:[B

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public engineUpdate(B)V
    .locals 5

    .line 1
    iget-wide v0, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v2, 0x40

    rem-long v2, v0, v2

    long-to-int v2, v2

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Ljcifs/util/MD4;->count:J

    iget-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    aput-byte p1, v0, v2

    const/16 p1, 0x3f

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Ljcifs/util/MD4;->transform([BI)V

    :cond_0
    return-void
.end method

.method public engineUpdate([BII)V
    .locals 6

    .line 2
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    array-length v4, p1

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    iget-wide v0, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v4, 0x40

    rem-long v4, v0, v4

    long-to-int v4, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/util/MD4;->count:J

    rsub-int/lit8 v0, v4, 0x40

    const/4 v1, 0x0

    if-lt p3, v0, :cond_1

    iget-object v2, p0, Ljcifs/util/MD4;->buffer:[B

    invoke-static {p1, p2, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Ljcifs/util/MD4;->buffer:[B

    invoke-direct {p0, v2, v1}, Ljcifs/util/MD4;->transform([BI)V

    :goto_0
    add-int/lit8 v2, v0, 0x40

    add-int/lit8 v3, v0, 0x3f

    if-ge v3, p3, :cond_0

    add-int/2addr v0, p2

    invoke-direct {p0, p1, v0}, Ljcifs/util/MD4;->transform([BI)V

    move v0, v2

    goto :goto_0

    :cond_0
    move v4, v1

    move v1, v0

    :cond_1
    if-ge v1, p3, :cond_2

    add-int/2addr p2, v1

    iget-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    sub-int/2addr p3, v1

    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method
