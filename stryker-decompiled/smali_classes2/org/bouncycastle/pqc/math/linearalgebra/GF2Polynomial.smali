.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bitMask:[I

.field private static final parity:[Z

.field private static rand:Ljava/util/Random;

.field private static final reverseRightMask:[I

.field private static final squaringTable:[S


# instance fields
.field private blocks:I

.field private len:I

.field private value:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->rand:Ljava/util/Random;

    const/16 v0, 0x100

    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    const/16 v0, 0x21

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x4s
        0x5s
        0x10s
        0x11s
        0x14s
        0x15s
        0x40s
        0x41s
        0x44s
        0x45s
        0x50s
        0x51s
        0x54s
        0x55s
        0x100s
        0x101s
        0x104s
        0x105s
        0x110s
        0x111s
        0x114s
        0x115s
        0x140s
        0x141s
        0x144s
        0x145s
        0x150s
        0x151s
        0x154s
        0x155s
        0x400s
        0x401s
        0x404s
        0x405s
        0x410s
        0x411s
        0x414s
        0x415s
        0x440s
        0x441s
        0x444s
        0x445s
        0x450s
        0x451s
        0x454s
        0x455s
        0x500s
        0x501s
        0x504s
        0x505s
        0x510s
        0x511s
        0x514s
        0x515s
        0x540s
        0x541s
        0x544s
        0x545s
        0x550s
        0x551s
        0x554s
        0x555s
        0x1000s
        0x1001s
        0x1004s
        0x1005s
        0x1010s
        0x1011s
        0x1014s
        0x1015s
        0x1040s
        0x1041s
        0x1044s
        0x1045s
        0x1050s
        0x1051s
        0x1054s
        0x1055s
        0x1100s
        0x1101s
        0x1104s
        0x1105s
        0x1110s
        0x1111s
        0x1114s
        0x1115s
        0x1140s
        0x1141s
        0x1144s
        0x1145s
        0x1150s
        0x1151s
        0x1154s
        0x1155s
        0x1400s
        0x1401s
        0x1404s
        0x1405s
        0x1410s
        0x1411s
        0x1414s
        0x1415s
        0x1440s
        0x1441s
        0x1444s
        0x1445s
        0x1450s
        0x1451s
        0x1454s
        0x1455s
        0x1500s
        0x1501s
        0x1504s
        0x1505s
        0x1510s
        0x1511s
        0x1514s
        0x1515s
        0x1540s
        0x1541s
        0x1544s
        0x1545s
        0x1550s
        0x1551s
        0x1554s
        0x1555s
        0x4000s
        0x4001s
        0x4004s
        0x4005s
        0x4010s
        0x4011s
        0x4014s
        0x4015s
        0x4040s
        0x4041s
        0x4044s
        0x4045s
        0x4050s
        0x4051s
        0x4054s
        0x4055s
        0x4100s
        0x4101s
        0x4104s
        0x4105s
        0x4110s
        0x4111s
        0x4114s
        0x4115s
        0x4140s
        0x4141s
        0x4144s
        0x4145s
        0x4150s
        0x4151s
        0x4154s
        0x4155s
        0x4400s
        0x4401s
        0x4404s
        0x4405s
        0x4410s
        0x4411s
        0x4414s
        0x4415s
        0x4440s
        0x4441s
        0x4444s
        0x4445s
        0x4450s
        0x4451s
        0x4454s
        0x4455s
        0x4500s
        0x4501s
        0x4504s
        0x4505s
        0x4510s
        0x4511s
        0x4514s
        0x4515s
        0x4540s
        0x4541s
        0x4544s
        0x4545s
        0x4550s
        0x4551s
        0x4554s
        0x4555s
        0x5000s
        0x5001s
        0x5004s
        0x5005s
        0x5010s
        0x5011s
        0x5014s
        0x5015s
        0x5040s
        0x5041s
        0x5044s
        0x5045s
        0x5050s
        0x5051s
        0x5054s
        0x5055s
        0x5100s
        0x5101s
        0x5104s
        0x5105s
        0x5110s
        0x5111s
        0x5114s
        0x5115s
        0x5140s
        0x5141s
        0x5144s
        0x5145s
        0x5150s
        0x5151s
        0x5154s
        0x5155s
        0x5400s
        0x5401s
        0x5404s
        0x5405s
        0x5410s
        0x5411s
        0x5414s
        0x5415s
        0x5440s
        0x5441s
        0x5444s
        0x5445s
        0x5450s
        0x5451s
        0x5454s
        0x5455s
        0x5500s
        0x5501s
        0x5504s
        0x5505s
        0x5510s
        0x5511s
        0x5514s
        0x5515s
        0x5540s
        0x5541s
        0x5544s
        0x5545s
        0x5550s
        0x5551s
        0x5554s
        0x5555s
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        -0x80000000
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
        0x1ffff
        0x3ffff
        0x7ffff
        0xfffff
        0x1fffff
        0x3fffff
        0x7fffff
        0xffffff
        0x1ffffff
        0x3ffffff
        0x7ffffff
        0xfffffff
        0x1fffffff
        0x3fffffff    # 1.9999999f
        0x7fffffff
        -0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    shr-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    shr-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const-string p1, "ZERO"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->assignZero()V

    goto :goto_0

    :cond_1
    const-string p1, "ONE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->assignOne()V

    goto :goto_0

    :cond_2
    const-string p1, "RANDOM"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->randomize()V

    goto :goto_0

    :cond_3
    const-string p1, "X"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->assignX()V

    goto :goto_0

    :cond_4
    const-string p1, "ALL"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->assignAll()V

    :goto_0
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error: GF2Polynomial was called using "

    const-string v1, " as value!"

    .line 2
    invoke-static {v0, p2, v1}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 8

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    shr-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x0

    aget-byte v1, p1, p2

    if-nez v1, :cond_1

    array-length v1, p1

    sub-int/2addr v1, v0

    new-array v2, v1, [B

    invoke-static {p1, v0, v2, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    :cond_1
    array-length v1, p1

    and-int/lit8 v1, v1, 0x3

    array-length v2, p1

    sub-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x2

    move v3, p2

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v4, v2

    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v1, -0x1

    sub-int/2addr v7, v3

    shl-int/lit8 v7, v7, 0x3

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x4

    shr-int/lit8 v1, v1, 0x2

    if-gt p2, v1, :cond_3

    array-length v1, p1

    sub-int/2addr v1, v0

    shl-int/lit8 v2, p2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, p2

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v2, p2

    add-int/lit8 v4, v1, -0x2

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v2, p2

    add-int/lit8 v1, v1, -0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    or-int/2addr v1, v3

    aput v1, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 p2, p1, 0x1f

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v1, v0

    aget v0, p2, v1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    and-int/lit8 p1, p1, 0x1f

    aget p1, v2, p1

    and-int/2addr p1, v0

    aput p1, p2, v1

    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    return-void
.end method

.method public constructor <init>(ILjava/util/Random;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    shr-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->randomize(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 10

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    shr-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    array-length p1, p2

    sub-int/2addr p1, v0

    const/4 v2, 0x2

    shr-int/2addr p1, v2

    add-int/2addr p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v3, p1, -0x1

    const/high16 v4, -0x1000000

    const/high16 v5, 0xff0000

    const v6, 0xff00

    if-ge v1, v3, :cond_1

    array-length v3, p2

    shl-int/lit8 v7, v1, 0x2

    sub-int/2addr v3, v7

    add-int/lit8 v7, v3, -0x1

    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v8, v1

    add-int/lit8 v9, v3, -0x2

    aget-byte v9, p2, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v6, v9

    or-int/2addr v6, v7

    aput v6, v8, v1

    add-int/lit8 v7, v3, -0x3

    aget-byte v7, p2, v7

    shl-int/lit8 v7, v7, 0x10

    and-int/2addr v5, v7

    or-int/2addr v5, v6

    aput v5, v8, v1

    add-int/lit8 v3, v3, -0x4

    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x18

    and-int/2addr v3, v4

    or-int/2addr v3, v5

    aput v3, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p2

    shl-int/lit8 v1, v3, 0x2

    sub-int/2addr p1, v1

    add-int/lit8 v1, p1, -0x1

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget-byte v8, p2, v1

    and-int/lit16 v8, v8, 0xff

    aput v8, v7, v3

    if-lez v1, :cond_2

    add-int/lit8 v9, p1, -0x2

    aget-byte v9, p2, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v6, v9

    or-int/2addr v6, v8

    aput v6, v7, v3

    :cond_2
    if-le v1, v0, :cond_3

    aget v0, v7, v3

    add-int/lit8 v6, p1, -0x3

    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x10

    and-int/2addr v5, v6

    or-int/2addr v0, v5

    aput v0, v7, v3

    :cond_3
    if-le v1, v2, :cond_4

    aget v0, v7, v3

    add-int/lit8 p1, p1, -0x4

    aget-byte p1, p2, p1

    shl-int/lit8 p1, p1, 0x18

    and-int/2addr p1, v4

    or-int/2addr p1, v0

    aput p1, v7, v3

    :cond_4
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    shr-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    array-length p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    return-void
.end method

.method private doShiftBlocksLeft(I)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-gt v0, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v2, v0, p1

    aget v2, v1, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-array v2, v0, [I

    sub-int/2addr v0, p1

    invoke-static {v1, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    :cond_2
    return-void
.end method

.method private karaMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 7

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget p1, p1, v2

    invoke-static {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    return-object v0

    :cond_0
    const/16 v2, 0x40

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    return-object v0

    :cond_1
    const/16 v2, 0x80

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    return-object v0

    :cond_2
    const/16 v2, 0x100

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    return-object v0

    :cond_3
    const/16 v2, 0x200

    if-gt v1, v2, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult512([I[I)[I

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    return-object v0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->floorLog(I)I

    move-result v1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    aget v1, v2, v1

    add-int/lit8 v2, v1, -0x1

    shr-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->lower(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->upper(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    invoke-direct {p1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->lower(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v5

    invoke-direct {p1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->upper(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object p1

    invoke-direct {v4, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    invoke-direct {v3, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v6

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v5, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-direct {v3, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object p1

    shl-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    invoke-virtual {v0, v6, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method private lower(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    shl-int/lit8 v1, p1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static mult128([I[I)[I
    .locals 14

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x2

    new-array v2, v1, [I

    array-length v3, p0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v3, v1, [I

    array-length v5, p0

    if-le v5, v1, :cond_0

    array-length v5, p0

    sub-int/2addr v5, v1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    new-array p0, v1, [I

    array-length v5, p1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p1, v4, p0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v5, v1, [I

    array-length v6, p1

    if-le v6, v1, :cond_1

    array-length v6, p1

    sub-int/2addr v6, v1

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p1, v1, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 p1, 0x1

    aget v6, v3, p1

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x3

    if-nez v6, :cond_3

    aget v6, v5, p1

    if-nez v6, :cond_3

    aget v6, v3, v4

    if-nez v6, :cond_2

    aget v10, v5, v4

    if-eqz v10, :cond_4

    :cond_2
    aget v10, v5, v4

    invoke-static {v6, v10}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v6

    aget v10, v0, v8

    aget v11, v6, p1

    xor-int/2addr v10, v11

    aput v10, v0, v8

    aget v10, v0, v7

    aget v6, v6, v4

    xor-int/2addr v10, v6

    aput v10, v0, v7

    aget v10, v0, v9

    xor-int/2addr v10, v11

    aput v10, v0, v9

    aget v10, v0, v1

    xor-int/2addr v6, v10

    aput v6, v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v3, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v6

    const/4 v10, 0x7

    aget v11, v0, v10

    aget v12, v6, v9

    xor-int/2addr v11, v12

    aput v11, v0, v10

    const/4 v10, 0x6

    aget v11, v0, v10

    aget v13, v6, v1

    xor-int/2addr v11, v13

    aput v11, v0, v10

    aget v10, v0, v8

    aget v11, v6, p1

    xor-int/2addr v12, v11

    xor-int/2addr v10, v12

    aput v10, v0, v8

    aget v10, v0, v7

    aget v6, v6, v4

    xor-int v12, v6, v13

    xor-int/2addr v10, v12

    aput v10, v0, v7

    aget v10, v0, v9

    xor-int/2addr v10, v11

    aput v10, v0, v9

    aget v10, v0, v1

    xor-int/2addr v6, v10

    aput v6, v0, v1

    :cond_4
    :goto_0
    aget v6, v3, v4

    aget v10, v2, v4

    xor-int/2addr v6, v10

    aput v6, v3, v4

    aget v6, v3, p1

    aget v10, v2, p1

    xor-int/2addr v6, v10

    aput v6, v3, p1

    aget v6, v5, v4

    aget v10, p0, v4

    xor-int/2addr v6, v10

    aput v6, v5, v4

    aget v10, v5, p1

    aget v11, p0, p1

    xor-int/2addr v10, v11

    aput v10, v5, p1

    aget v11, v3, p1

    if-nez v11, :cond_5

    if-nez v10, :cond_5

    aget v3, v3, v4

    invoke-static {v3, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v3

    aget v5, v0, v9

    aget v6, v3, p1

    xor-int/2addr v5, v6

    aput v5, v0, v9

    aget v5, v0, v1

    aget v3, v3, v4

    xor-int/2addr v3, v5

    aput v3, v0, v1

    goto :goto_1

    :cond_5
    invoke-static {v3, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v3

    aget v5, v0, v8

    aget v6, v3, v9

    xor-int/2addr v5, v6

    aput v5, v0, v8

    aget v5, v0, v7

    aget v6, v3, v1

    xor-int/2addr v5, v6

    aput v5, v0, v7

    aget v5, v0, v9

    aget v6, v3, p1

    xor-int/2addr v5, v6

    aput v5, v0, v9

    aget v5, v0, v1

    aget v3, v3, v4

    xor-int/2addr v3, v5

    aput v3, v0, v1

    :goto_1
    aget v3, v2, p1

    if-nez v3, :cond_6

    aget v3, p0, p1

    if-nez v3, :cond_6

    aget v2, v2, v4

    aget p0, p0, v4

    invoke-static {v2, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object p0

    aget v2, v0, v9

    aget v3, p0, p1

    xor-int/2addr v2, v3

    aput v2, v0, v9

    aget v2, v0, v1

    aget p0, p0, v4

    xor-int/2addr v2, p0

    aput v2, v0, v1

    aget v1, v0, p1

    xor-int/2addr v1, v3

    aput v1, v0, p1

    aget p1, v0, v4

    xor-int/2addr p0, p1

    aput p0, v0, v4

    goto :goto_2

    :cond_6
    invoke-static {v2, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object p0

    aget v2, v0, v8

    aget v3, p0, v9

    xor-int/2addr v2, v3

    aput v2, v0, v8

    aget v2, v0, v7

    aget v5, p0, v1

    xor-int/2addr v2, v5

    aput v2, v0, v7

    aget v2, v0, v9

    aget v6, p0, p1

    xor-int/2addr v3, v6

    xor-int/2addr v2, v3

    aput v2, v0, v9

    aget v2, v0, v1

    aget p0, p0, v4

    xor-int v3, p0, v5

    xor-int/2addr v2, v3

    aput v2, v0, v1

    aget v1, v0, p1

    xor-int/2addr v1, v6

    aput v1, v0, p1

    aget p1, v0, v4

    xor-int/2addr p0, p1

    aput p0, v0, v4

    :goto_2
    return-object v0
.end method

.method private static mult256([I[I)[I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x10

    new-array v2, v2, [I

    const/4 v3, 0x4

    new-array v4, v3, [I

    array-length v5, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v5, v3, [I

    array-length v7, v0

    if-le v7, v3, :cond_0

    array-length v7, v0

    sub-int/2addr v7, v3

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v0, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    new-array v0, v3, [I

    array-length v7, v1

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v1, v6, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v7, v3, [I

    array-length v8, v1

    if-le v8, v3, :cond_1

    array-length v8, v1

    sub-int/2addr v8, v3

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v1, v3, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v1, 0x3

    aget v8, v5, v1

    const/16 v9, 0xa

    const/16 v10, 0xb

    const/16 v11, 0x8

    const/16 v12, 0x9

    const/4 v14, 0x7

    const/4 v15, 0x5

    const/16 v16, 0x2

    const/16 v17, 0x1

    if-nez v8, :cond_4

    aget v8, v5, v16

    if-nez v8, :cond_4

    aget v8, v7, v1

    if-nez v8, :cond_4

    aget v8, v7, v16

    if-nez v8, :cond_4

    aget v8, v5, v17

    if-nez v8, :cond_3

    aget v8, v7, v17

    if-nez v8, :cond_3

    aget v8, v5, v6

    if-nez v8, :cond_2

    aget v18, v7, v6

    if-eqz v18, :cond_5

    :cond_2
    aget v13, v7, v6

    invoke-static {v8, v13}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v8

    aget v13, v2, v12

    aget v18, v8, v17

    xor-int v13, v13, v18

    aput v13, v2, v12

    aget v13, v2, v11

    aget v8, v8, v6

    xor-int/2addr v13, v8

    aput v13, v2, v11

    aget v13, v2, v15

    xor-int v13, v13, v18

    aput v13, v2, v15

    aget v13, v2, v3

    xor-int/2addr v8, v13

    aput v8, v2, v3

    goto/16 :goto_0

    :cond_3
    invoke-static {v5, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v8

    aget v13, v2, v10

    aget v18, v8, v1

    xor-int v13, v13, v18

    aput v13, v2, v10

    aget v13, v2, v9

    aget v19, v8, v16

    xor-int v13, v13, v19

    aput v13, v2, v9

    aget v13, v2, v12

    aget v20, v8, v17

    xor-int v13, v13, v20

    aput v13, v2, v12

    aget v13, v2, v11

    aget v8, v8, v6

    xor-int/2addr v13, v8

    aput v13, v2, v11

    aget v13, v2, v14

    xor-int v13, v13, v18

    aput v13, v2, v14

    const/4 v13, 0x6

    aget v18, v2, v13

    xor-int v18, v18, v19

    aput v18, v2, v13

    aget v13, v2, v15

    xor-int v13, v13, v20

    aput v13, v2, v15

    aget v13, v2, v3

    xor-int/2addr v8, v13

    aput v8, v2, v3

    goto :goto_0

    :cond_4
    invoke-static {v5, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v8

    const/16 v13, 0xf

    aget v18, v2, v13

    aget v19, v8, v14

    xor-int v18, v18, v19

    aput v18, v2, v13

    const/16 v13, 0xe

    aget v18, v2, v13

    const/16 v20, 0x6

    aget v21, v8, v20

    xor-int v18, v18, v21

    aput v18, v2, v13

    const/16 v13, 0xd

    aget v18, v2, v13

    aget v20, v8, v15

    xor-int v18, v18, v20

    aput v18, v2, v13

    const/16 v13, 0xc

    aget v18, v2, v13

    aget v22, v8, v3

    xor-int v18, v18, v22

    aput v18, v2, v13

    aget v13, v2, v10

    aget v18, v8, v1

    xor-int v19, v18, v19

    xor-int v13, v13, v19

    aput v13, v2, v10

    aget v13, v2, v9

    aget v19, v8, v16

    xor-int v21, v19, v21

    xor-int v13, v13, v21

    aput v13, v2, v9

    aget v13, v2, v12

    aget v21, v8, v17

    xor-int v20, v21, v20

    xor-int v13, v13, v20

    aput v13, v2, v12

    aget v13, v2, v11

    aget v8, v8, v6

    xor-int v20, v8, v22

    xor-int v13, v13, v20

    aput v13, v2, v11

    aget v13, v2, v14

    xor-int v13, v13, v18

    aput v13, v2, v14

    const/4 v13, 0x6

    aget v18, v2, v13

    xor-int v18, v18, v19

    aput v18, v2, v13

    aget v13, v2, v15

    xor-int v13, v13, v21

    aput v13, v2, v15

    aget v13, v2, v3

    xor-int/2addr v8, v13

    aput v8, v2, v3

    :cond_5
    :goto_0
    aget v8, v5, v6

    aget v13, v4, v6

    xor-int/2addr v8, v13

    aput v8, v5, v6

    aget v8, v5, v17

    aget v13, v4, v17

    xor-int/2addr v8, v13

    aput v8, v5, v17

    aget v8, v5, v16

    aget v13, v4, v16

    xor-int/2addr v8, v13

    aput v8, v5, v16

    aget v8, v5, v1

    aget v13, v4, v1

    xor-int/2addr v8, v13

    aput v8, v5, v1

    aget v8, v7, v6

    aget v13, v0, v6

    xor-int/2addr v8, v13

    aput v8, v7, v6

    aget v8, v7, v17

    aget v13, v0, v17

    xor-int/2addr v8, v13

    aput v8, v7, v17

    aget v8, v7, v16

    aget v13, v0, v16

    xor-int/2addr v8, v13

    aput v8, v7, v16

    aget v8, v7, v1

    aget v13, v0, v1

    xor-int/2addr v8, v13

    aput v8, v7, v1

    invoke-static {v5, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v5

    aget v7, v2, v10

    aget v8, v5, v14

    xor-int/2addr v7, v8

    aput v7, v2, v10

    aget v7, v2, v9

    const/4 v8, 0x6

    aget v13, v5, v8

    xor-int/2addr v7, v13

    aput v7, v2, v9

    aget v7, v2, v12

    aget v8, v5, v15

    xor-int/2addr v7, v8

    aput v7, v2, v12

    aget v7, v2, v11

    aget v8, v5, v3

    xor-int/2addr v7, v8

    aput v7, v2, v11

    aget v7, v2, v14

    aget v8, v5, v1

    xor-int/2addr v7, v8

    aput v7, v2, v14

    const/4 v7, 0x6

    aget v8, v2, v7

    aget v13, v5, v16

    xor-int/2addr v8, v13

    aput v8, v2, v7

    aget v7, v2, v15

    aget v8, v5, v17

    xor-int/2addr v7, v8

    aput v7, v2, v15

    aget v7, v2, v3

    aget v5, v5, v6

    xor-int/2addr v5, v7

    aput v5, v2, v3

    invoke-static {v4, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v0

    aget v4, v2, v10

    aget v5, v0, v14

    xor-int/2addr v4, v5

    aput v4, v2, v10

    aget v4, v2, v9

    const/4 v7, 0x6

    aget v8, v0, v7

    xor-int/2addr v4, v8

    aput v4, v2, v9

    aget v4, v2, v12

    aget v7, v0, v15

    xor-int/2addr v4, v7

    aput v4, v2, v12

    aget v4, v2, v11

    aget v9, v0, v3

    xor-int/2addr v4, v9

    aput v4, v2, v11

    aget v4, v2, v14

    aget v10, v0, v1

    xor-int/2addr v5, v10

    xor-int/2addr v4, v5

    aput v4, v2, v14

    const/4 v4, 0x6

    aget v5, v2, v4

    aget v11, v0, v16

    xor-int/2addr v8, v11

    xor-int/2addr v5, v8

    aput v5, v2, v4

    aget v4, v2, v15

    aget v5, v0, v17

    xor-int/2addr v7, v5

    xor-int/2addr v4, v7

    aput v4, v2, v15

    aget v4, v2, v3

    aget v0, v0, v6

    xor-int v7, v0, v9

    xor-int/2addr v4, v7

    aput v4, v2, v3

    aget v3, v2, v1

    xor-int/2addr v3, v10

    aput v3, v2, v1

    aget v1, v2, v16

    xor-int/2addr v1, v11

    aput v1, v2, v16

    aget v1, v2, v17

    xor-int/2addr v1, v5

    aput v1, v2, v17

    aget v1, v2, v6

    xor-int/2addr v0, v1

    aput v0, v2, v6

    return-object v2
.end method

.method private static mult32(II)[I
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 p1, 0x1

    const-wide/16 v5, 0x0

    move v7, p1

    :goto_0
    const/16 v8, 0x20

    if-gt v7, v8, :cond_2

    sget-object v8, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    add-int/lit8 v9, v7, -0x1

    aget v8, v8, v9

    and-int/2addr v8, p0

    if-eqz v8, :cond_1

    xor-long/2addr v5, v1

    :cond_1
    shl-long/2addr v1, p1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    ushr-long v1, v5, v8

    long-to-int p0, v1

    aput p0, v0, p1

    and-long p0, v5, v3

    long-to-int p0, p0

    const/4 p1, 0x0

    aput p0, v0, p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static mult512([I[I)[I
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x20

    new-array v2, v2, [I

    const/16 v3, 0x8

    new-array v4, v3, [I

    array-length v5, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v5, v3, [I

    array-length v7, v0

    if-le v7, v3, :cond_0

    array-length v7, v0

    sub-int/2addr v7, v3

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v0, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    new-array v0, v3, [I

    array-length v7, v1

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v1, v6, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v7, v3, [I

    array-length v8, v1

    if-le v8, v3, :cond_1

    array-length v8, v1

    sub-int/2addr v8, v3

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v1, v3, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-static {v5, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v1

    const/16 v8, 0x1f

    aget v9, v2, v8

    const/16 v10, 0xf

    aget v11, v1, v10

    xor-int/2addr v9, v11

    aput v9, v2, v8

    const/16 v8, 0x1e

    aget v9, v2, v8

    const/16 v12, 0xe

    aget v13, v1, v12

    xor-int/2addr v9, v13

    aput v9, v2, v8

    const/16 v8, 0x1d

    aget v9, v2, v8

    const/16 v14, 0xd

    aget v15, v1, v14

    xor-int/2addr v9, v15

    aput v9, v2, v8

    const/16 v8, 0x1c

    aget v9, v2, v8

    const/16 v16, 0xc

    aget v17, v1, v16

    xor-int v9, v9, v17

    aput v9, v2, v8

    const/16 v8, 0x1b

    aget v9, v2, v8

    const/16 v18, 0xb

    aget v19, v1, v18

    xor-int v9, v9, v19

    aput v9, v2, v8

    const/16 v8, 0x1a

    aget v9, v2, v8

    const/16 v20, 0xa

    aget v21, v1, v20

    xor-int v9, v9, v21

    aput v9, v2, v8

    const/16 v8, 0x19

    aget v9, v2, v8

    const/16 v22, 0x9

    aget v23, v1, v22

    xor-int v9, v9, v23

    aput v9, v2, v8

    const/16 v8, 0x18

    aget v9, v2, v8

    aget v24, v1, v3

    xor-int v9, v9, v24

    aput v9, v2, v8

    const/16 v8, 0x17

    aget v9, v2, v8

    const/16 v25, 0x7

    aget v26, v1, v25

    xor-int v11, v26, v11

    xor-int/2addr v9, v11

    aput v9, v2, v8

    const/16 v9, 0x16

    aget v11, v2, v9

    const/16 v27, 0x6

    aget v28, v1, v27

    xor-int v13, v28, v13

    xor-int/2addr v11, v13

    aput v11, v2, v9

    const/16 v11, 0x15

    aget v13, v2, v11

    const/16 v29, 0x5

    aget v30, v1, v29

    xor-int v15, v30, v15

    xor-int/2addr v13, v15

    aput v13, v2, v11

    const/16 v13, 0x14

    aget v15, v2, v13

    const/16 v31, 0x4

    aget v32, v1, v31

    xor-int v17, v32, v17

    xor-int v15, v15, v17

    aput v15, v2, v13

    const/16 v15, 0x13

    aget v17, v2, v15

    const/16 v33, 0x3

    aget v34, v1, v33

    xor-int v19, v34, v19

    xor-int v17, v17, v19

    aput v17, v2, v15

    const/16 v17, 0x12

    aget v19, v2, v17

    const/16 v35, 0x2

    aget v36, v1, v35

    xor-int v21, v36, v21

    xor-int v19, v19, v21

    aput v19, v2, v17

    const/16 v19, 0x11

    aget v21, v2, v19

    const/16 v37, 0x1

    aget v38, v1, v37

    xor-int v23, v38, v23

    xor-int v21, v21, v23

    aput v21, v2, v19

    const/16 v19, 0x10

    aget v21, v2, v19

    aget v1, v1, v6

    xor-int v23, v1, v24

    xor-int v21, v21, v23

    aput v21, v2, v19

    aget v19, v2, v10

    xor-int v19, v19, v26

    aput v19, v2, v10

    aget v19, v2, v12

    xor-int v19, v19, v28

    aput v19, v2, v12

    aget v19, v2, v14

    xor-int v19, v19, v30

    aput v19, v2, v14

    aget v19, v2, v16

    xor-int v19, v19, v32

    aput v19, v2, v16

    aget v19, v2, v18

    xor-int v19, v19, v34

    aput v19, v2, v18

    aget v19, v2, v20

    xor-int v19, v19, v36

    aput v19, v2, v20

    aget v19, v2, v22

    xor-int v19, v19, v38

    aput v19, v2, v22

    aget v19, v2, v3

    xor-int v1, v19, v1

    aput v1, v2, v3

    aget v1, v5, v6

    aget v19, v4, v6

    xor-int v1, v1, v19

    aput v1, v5, v6

    aget v1, v5, v37

    aget v19, v4, v37

    xor-int v1, v1, v19

    aput v1, v5, v37

    aget v1, v5, v35

    aget v19, v4, v35

    xor-int v1, v1, v19

    aput v1, v5, v35

    aget v1, v5, v33

    aget v19, v4, v33

    xor-int v1, v1, v19

    aput v1, v5, v33

    aget v1, v5, v31

    aget v19, v4, v31

    xor-int v1, v1, v19

    aput v1, v5, v31

    aget v1, v5, v29

    aget v19, v4, v29

    xor-int v1, v1, v19

    aput v1, v5, v29

    aget v1, v5, v27

    aget v19, v4, v27

    xor-int v1, v1, v19

    aput v1, v5, v27

    aget v1, v5, v25

    aget v19, v4, v25

    xor-int v1, v1, v19

    aput v1, v5, v25

    aget v1, v7, v6

    aget v19, v0, v6

    xor-int v1, v1, v19

    aput v1, v7, v6

    aget v1, v7, v37

    aget v19, v0, v37

    xor-int v1, v1, v19

    aput v1, v7, v37

    aget v1, v7, v35

    aget v19, v0, v35

    xor-int v1, v1, v19

    aput v1, v7, v35

    aget v1, v7, v33

    aget v19, v0, v33

    xor-int v1, v1, v19

    aput v1, v7, v33

    aget v1, v7, v31

    aget v19, v0, v31

    xor-int v1, v1, v19

    aput v1, v7, v31

    aget v1, v7, v29

    aget v19, v0, v29

    xor-int v1, v1, v19

    aput v1, v7, v29

    aget v1, v7, v27

    aget v19, v0, v27

    xor-int v1, v1, v19

    aput v1, v7, v27

    aget v1, v7, v25

    aget v19, v0, v25

    xor-int v1, v1, v19

    aput v1, v7, v25

    invoke-static {v5, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v1

    aget v5, v2, v8

    aget v7, v1, v10

    xor-int/2addr v5, v7

    aput v5, v2, v8

    aget v5, v2, v9

    aget v7, v1, v12

    xor-int/2addr v5, v7

    aput v5, v2, v9

    aget v5, v2, v11

    aget v7, v1, v14

    xor-int/2addr v5, v7

    aput v5, v2, v11

    aget v5, v2, v13

    aget v7, v1, v16

    xor-int/2addr v5, v7

    aput v5, v2, v13

    aget v5, v2, v15

    aget v7, v1, v18

    xor-int/2addr v5, v7

    aput v5, v2, v15

    aget v5, v2, v17

    aget v7, v1, v20

    xor-int/2addr v5, v7

    aput v5, v2, v17

    const/16 v5, 0x11

    aget v7, v2, v5

    aget v19, v1, v22

    xor-int v7, v7, v19

    aput v7, v2, v5

    const/16 v5, 0x10

    aget v7, v2, v5

    aget v19, v1, v3

    xor-int v7, v7, v19

    aput v7, v2, v5

    aget v5, v2, v10

    aget v7, v1, v25

    xor-int/2addr v5, v7

    aput v5, v2, v10

    aget v5, v2, v12

    aget v7, v1, v27

    xor-int/2addr v5, v7

    aput v5, v2, v12

    aget v5, v2, v14

    aget v7, v1, v29

    xor-int/2addr v5, v7

    aput v5, v2, v14

    aget v5, v2, v16

    aget v7, v1, v31

    xor-int/2addr v5, v7

    aput v5, v2, v16

    aget v5, v2, v18

    aget v7, v1, v33

    xor-int/2addr v5, v7

    aput v5, v2, v18

    aget v5, v2, v20

    aget v7, v1, v35

    xor-int/2addr v5, v7

    aput v5, v2, v20

    aget v5, v2, v22

    aget v7, v1, v37

    xor-int/2addr v5, v7

    aput v5, v2, v22

    aget v5, v2, v3

    aget v1, v1, v6

    xor-int/2addr v1, v5

    aput v1, v2, v3

    invoke-static {v4, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v0

    aget v1, v2, v8

    aget v4, v0, v10

    xor-int/2addr v1, v4

    aput v1, v2, v8

    aget v1, v2, v9

    aget v5, v0, v12

    xor-int/2addr v1, v5

    aput v1, v2, v9

    aget v1, v2, v11

    aget v7, v0, v14

    xor-int/2addr v1, v7

    aput v1, v2, v11

    aget v1, v2, v13

    aget v8, v0, v16

    xor-int/2addr v1, v8

    aput v1, v2, v13

    aget v1, v2, v15

    aget v9, v0, v18

    xor-int/2addr v1, v9

    aput v1, v2, v15

    aget v1, v2, v17

    aget v11, v0, v20

    xor-int/2addr v1, v11

    aput v1, v2, v17

    const/16 v1, 0x11

    aget v13, v2, v1

    aget v15, v0, v22

    xor-int/2addr v13, v15

    aput v13, v2, v1

    const/16 v1, 0x10

    aget v13, v2, v1

    aget v17, v0, v3

    xor-int v13, v13, v17

    aput v13, v2, v1

    aget v1, v2, v10

    aget v13, v0, v25

    xor-int/2addr v4, v13

    xor-int/2addr v1, v4

    aput v1, v2, v10

    aget v1, v2, v12

    aget v4, v0, v27

    xor-int/2addr v5, v4

    xor-int/2addr v1, v5

    aput v1, v2, v12

    aget v1, v2, v14

    aget v5, v0, v29

    xor-int/2addr v7, v5

    xor-int/2addr v1, v7

    aput v1, v2, v14

    aget v1, v2, v16

    aget v7, v0, v31

    xor-int/2addr v8, v7

    xor-int/2addr v1, v8

    aput v1, v2, v16

    aget v1, v2, v18

    aget v8, v0, v33

    xor-int/2addr v9, v8

    xor-int/2addr v1, v9

    aput v1, v2, v18

    aget v1, v2, v20

    aget v9, v0, v35

    xor-int v10, v9, v11

    xor-int/2addr v1, v10

    aput v1, v2, v20

    aget v1, v2, v22

    aget v10, v0, v37

    xor-int v11, v10, v15

    xor-int/2addr v1, v11

    aput v1, v2, v22

    aget v1, v2, v3

    aget v0, v0, v6

    xor-int v11, v0, v17

    xor-int/2addr v1, v11

    aput v1, v2, v3

    aget v1, v2, v25

    xor-int/2addr v1, v13

    aput v1, v2, v25

    aget v1, v2, v27

    xor-int/2addr v1, v4

    aput v1, v2, v27

    aget v1, v2, v29

    xor-int/2addr v1, v5

    aput v1, v2, v29

    aget v1, v2, v31

    xor-int/2addr v1, v7

    aput v1, v2, v31

    aget v1, v2, v33

    xor-int/2addr v1, v8

    aput v1, v2, v33

    aget v1, v2, v35

    xor-int/2addr v1, v9

    aput v1, v2, v35

    aget v1, v2, v37

    xor-int/2addr v1, v10

    aput v1, v2, v37

    aget v1, v2, v6

    xor-int/2addr v0, v1

    aput v0, v2, v6

    return-object v2
.end method

.method private static mult64([I[I)[I
    .locals 10

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aget v2, p0, v1

    array-length v3, p0

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    aget p0, p0, v4

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    aget v3, p1, v1

    array-length v5, p1

    if-le v5, v4, :cond_1

    aget p1, p1, v4

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    const/4 v5, 0x2

    if-nez p0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v6

    const/4 v7, 0x3

    aget v8, v0, v7

    aget v9, v6, v4

    xor-int/2addr v8, v9

    aput v8, v0, v7

    aget v7, v0, v5

    aget v6, v6, v1

    xor-int v8, v6, v9

    xor-int/2addr v7, v8

    aput v7, v0, v5

    aget v7, v0, v4

    xor-int/2addr v6, v7

    aput v6, v0, v4

    :cond_3
    xor-int/2addr p0, v2

    xor-int/2addr p1, v3

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object p0

    aget p1, v0, v5

    aget v6, p0, v4

    xor-int/2addr p1, v6

    aput p1, v0, v5

    aget p1, v0, v4

    aget p0, p0, v1

    xor-int/2addr p0, p1

    aput p0, v0, v4

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object p0

    aget p1, v0, v5

    aget v2, p0, v4

    xor-int/2addr p1, v2

    aput p1, v0, v5

    aget p1, v0, v4

    aget p0, p0, v1

    xor-int/2addr v2, p0

    xor-int/2addr p1, v2

    aput p1, v0, v4

    aget p1, v0, v1

    xor-int/2addr p0, p1

    aput p0, v0, v1

    return-object v0
.end method

.method private upper(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v0, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    shl-int/lit8 v2, v0, 0x5

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v2, p1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v3, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v1
.end method

.method private zeroUnusedBits()V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v1, v0, 0x1f

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    and-int/lit8 v0, v0, 0x1f

    aget v0, v4, v0

    and-int/2addr v0, v3

    aput v0, v1, v2

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xor(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object p1

    return-object p1
.end method

.method public addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 1

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-void
.end method

.method public assignAll()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-void
.end method

.method public assignOne()V
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v0, v1, v3

    return-void
.end method

.method public assignX()V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v1, 0x2

    aput v1, v0, v2

    return-void
.end method

.method public assignZero()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method public divide(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v3, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget p1, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v4, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge p1, v4, :cond_0

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {p1, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object p1, v0, v6

    aput-object v2, v0, v5

    return-object v0

    :cond_0
    sub-int/2addr p1, v4

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    :goto_0
    if-ltz p1, :cond_1

    invoke-virtual {v3, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->subtractFromThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget p1, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v4, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int/2addr p1, v4

    goto :goto_0

    :cond_1
    aput-object v1, v0, v6

    aput-object v2, v0, v5

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public expandN(I)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 p1, p1, -0x1

    ushr-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v2, p1, :cond_3

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    return-void

    :cond_3
    new-array v2, p1, [I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iput-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    return-void
.end method

.method public gcd(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Both operands of gcd equal zero."

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object p1

    :cond_3
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    move-object p1, v0

    move-object v0, v1

    :goto_1
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->remainder(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public getBit(I)I
    .locals 4

    if-ltz p1, :cond_2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-le p1, v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v3, p1, 0x5

    aget v0, v0, v3

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 p1, p1, 0x1f

    aget p1, v3, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public increase()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->increaseThis()V

    return-object v0
.end method

.method public increaseThis()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    return-void
.end method

.method public isIrreducible()Z
    .locals 9

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v3, v2, -0x1

    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    const-string v5, "X"

    invoke-direct {v4, v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x1

    move v6, v2

    :goto_0
    shr-int/lit8 v7, v3, 0x1

    if-gt v6, v7, :cond_3

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squareThisPreCalc()V

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->remainder(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    new-instance v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/16 v8, 0x20

    invoke-direct {v7, v8, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->add(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->gcd(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v7

    if-nez v7, :cond_1

    return v1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public isOne()Z
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v1, v1, v3

    if-eq v1, v0, :cond_2

    return v3

    :cond_2
    return v0
.end method

.method public isZero()Z
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v2

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object p1

    return-object p1
.end method

.method public multiplyClassic(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 8

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    const/16 v1, 0x20

    new-array v1, v1, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v3, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    :goto_0
    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_1
    iget v5, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v2, v5, :cond_4

    move v5, v4

    :goto_2
    if-gt v5, v3, :cond_2

    iget-object v6, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v6, v6, v2

    sget-object v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    aget v7, v7, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    aget-object v6, v1, v5

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_3
    if-gt v5, v3, :cond_3

    aget-object v6, v1, v5

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftBlocksLeft()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public quotient(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v2, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget p1, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-ge p1, v3, :cond_0

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    return-object p1

    :cond_0
    sub-int/2addr p1, v3

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    :goto_0
    if-ltz p1, :cond_1

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->subtractFromThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget p1, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public randomize()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->rand:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-void
.end method

.method public randomize(Ljava/util/Random;)V
    .locals 3

    .line 2
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-void
.end method

.method public reduceN()V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_1

    ushr-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    shl-int/lit8 v1, v0, 0x5

    add-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    return-void
.end method

.method public reducePentanomial(I[I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    ushr-int/lit8 v2, v1, 0x5

    and-int/lit8 v3, v1, 0x1f

    rsub-int/lit8 v4, v3, 0x20

    const/4 v5, 0x0

    aget v6, p2, v5

    sub-int v7, v1, v6

    ushr-int/lit8 v7, v7, 0x5

    sub-int v6, v1, v6

    and-int/lit8 v6, v6, 0x1f

    rsub-int/lit8 v6, v6, 0x20

    const/4 v8, 0x1

    aget v9, p2, v8

    sub-int v10, v1, v9

    ushr-int/lit8 v10, v10, 0x5

    sub-int v9, v1, v9

    and-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x20

    const/4 v11, 0x2

    aget v12, p2, v11

    sub-int v13, v1, v12

    ushr-int/lit8 v13, v13, 0x5

    sub-int v12, v1, v12

    and-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x20

    shl-int/lit8 v14, v1, 0x1

    sub-int/2addr v14, v11

    ushr-int/lit8 v11, v14, 0x5

    :goto_0
    const-wide v14, 0xffffffffL

    if-le v11, v2, :cond_0

    iget-object v8, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v8, v11

    int-to-long v0, v5

    and-long/2addr v0, v14

    sub-int v5, v11, v2

    add-int/lit8 v14, v5, -0x1

    aget v15, v8, v14

    move/from16 v16, v2

    move/from16 v17, v3

    shl-long v2, v0, v4

    long-to-int v2, v2

    xor-int/2addr v2, v15

    aput v2, v8, v14

    aget v2, v8, v5

    int-to-long v2, v2

    rsub-int/lit8 v14, v4, 0x20

    ushr-long v14, v0, v14

    xor-long/2addr v2, v14

    long-to-int v2, v2

    aput v2, v8, v5

    sub-int v2, v11, v7

    add-int/lit8 v3, v2, -0x1

    aget v5, v8, v3

    shl-long v14, v0, v6

    long-to-int v14, v14

    xor-int/2addr v5, v14

    aput v5, v8, v3

    aget v3, v8, v2

    int-to-long v14, v3

    rsub-int/lit8 v3, v6, 0x20

    ushr-long v18, v0, v3

    xor-long v14, v14, v18

    long-to-int v3, v14

    aput v3, v8, v2

    sub-int v2, v11, v10

    add-int/lit8 v3, v2, -0x1

    aget v5, v8, v3

    shl-long v14, v0, v9

    long-to-int v14, v14

    xor-int/2addr v5, v14

    aput v5, v8, v3

    aget v3, v8, v2

    int-to-long v14, v3

    rsub-int/lit8 v3, v9, 0x20

    ushr-long v18, v0, v3

    xor-long v14, v14, v18

    long-to-int v3, v14

    aput v3, v8, v2

    sub-int v2, v11, v13

    add-int/lit8 v3, v2, -0x1

    aget v5, v8, v3

    shl-long v14, v0, v12

    long-to-int v14, v14

    xor-int/2addr v5, v14

    aput v5, v8, v3

    aget v3, v8, v2

    int-to-long v14, v3

    rsub-int/lit8 v3, v12, 0x20

    ushr-long/2addr v0, v3

    xor-long/2addr v0, v14

    long-to-int v0, v0

    aput v0, v8, v2

    const/4 v0, 0x0

    aput v0, v8, v11

    add-int/lit8 v11, v11, -0x1

    const/4 v8, 0x1

    move/from16 v1, p1

    move v5, v0

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v0, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    move/from16 v16, v2

    move/from16 v17, v3

    move v0, v5

    iget-object v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v16

    int-to-long v0, v3

    and-long/2addr v0, v14

    shl-long v14, v14, v17

    and-long/2addr v0, v14

    const/4 v3, 0x0

    aget v5, v2, v3

    int-to-long v14, v5

    rsub-int/lit8 v4, v4, 0x20

    ushr-long v4, v0, v4

    xor-long/2addr v4, v14

    long-to-int v4, v4

    aput v4, v2, v3

    sub-int v3, v16, v7

    add-int/lit8 v4, v3, -0x1

    if-ltz v4, :cond_1

    aget v5, v2, v4

    shl-long v7, v0, v6

    long-to-int v7, v7

    xor-int/2addr v5, v7

    aput v5, v2, v4

    :cond_1
    aget v4, v2, v3

    int-to-long v4, v4

    rsub-int/lit8 v6, v6, 0x20

    ushr-long v6, v0, v6

    xor-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v2, v3

    sub-int v3, v16, v10

    add-int/lit8 v4, v3, -0x1

    if-ltz v4, :cond_2

    aget v5, v2, v4

    shl-long v6, v0, v9

    long-to-int v6, v6

    xor-int/2addr v5, v6

    aput v5, v2, v4

    :cond_2
    aget v4, v2, v3

    int-to-long v4, v4

    rsub-int/lit8 v6, v9, 0x20

    ushr-long v6, v0, v6

    xor-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v2, v3

    sub-int v3, v16, v13

    add-int/lit8 v4, v3, -0x1

    if-ltz v4, :cond_3

    aget v5, v2, v4

    shl-long v6, v0, v12

    long-to-int v6, v6

    xor-int/2addr v5, v6

    aput v5, v2, v4

    :cond_3
    aget v4, v2, v3

    int-to-long v4, v4

    rsub-int/lit8 v6, v12, 0x20

    ushr-long/2addr v0, v6

    xor-long/2addr v0, v4

    long-to-int v0, v0

    aput v0, v2, v3

    aget v0, v2, v16

    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    aget v1, v1, v17

    and-int/2addr v0, v1

    aput v0, v2, v16

    move/from16 v0, p1

    add-int/lit8 v1, v0, -0x1

    ushr-int/lit8 v1, v1, 0x5

    const/4 v2, 0x1

    add-int/2addr v1, v2

    move-object/from16 v2, p0

    iput v1, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iput v0, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    return-void
.end method

.method public reduceTrinomial(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    ushr-int/lit8 v2, v1, 0x5

    and-int/lit8 v3, v1, 0x1f

    rsub-int/lit8 v4, v3, 0x20

    sub-int v5, v1, p2

    ushr-int/lit8 v6, v5, 0x5

    and-int/lit8 v5, v5, 0x1f

    rsub-int/lit8 v5, v5, 0x20

    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v7, v7, -0x2

    ushr-int/lit8 v7, v7, 0x5

    :goto_0
    const/4 v8, 0x0

    const-wide v9, 0xffffffffL

    if-le v7, v2, :cond_0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v12, v11, v7

    int-to-long v12, v12

    and-long/2addr v9, v12

    sub-int v12, v7, v2

    add-int/lit8 v13, v12, -0x1

    aget v14, v11, v13

    move v15, v2

    shl-long v1, v9, v4

    long-to-int v1, v1

    xor-int/2addr v1, v14

    aput v1, v11, v13

    aget v1, v11, v12

    int-to-long v1, v1

    rsub-int/lit8 v13, v4, 0x20

    ushr-long v13, v9, v13

    xor-long/2addr v1, v13

    long-to-int v1, v1

    aput v1, v11, v12

    sub-int v1, v7, v6

    add-int/lit8 v2, v1, -0x1

    aget v12, v11, v2

    shl-long v13, v9, v5

    long-to-int v13, v13

    xor-int/2addr v12, v13

    aput v12, v11, v2

    aget v2, v11, v1

    int-to-long v12, v2

    rsub-int/lit8 v2, v5, 0x20

    ushr-long/2addr v9, v2

    xor-long/2addr v9, v12

    long-to-int v2, v9

    aput v2, v11, v1

    aput v8, v11, v7

    add-int/lit8 v7, v7, -0x1

    move/from16 v1, p1

    move v2, v15

    goto :goto_0

    :cond_0
    move v15, v2

    iget-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v15

    int-to-long v11, v2

    and-long/2addr v11, v9

    shl-long/2addr v9, v3

    and-long/2addr v9, v11

    aget v2, v1, v8

    int-to-long v11, v2

    rsub-int/lit8 v2, v4, 0x20

    ushr-long v13, v9, v2

    xor-long/2addr v11, v13

    long-to-int v2, v11

    aput v2, v1, v8

    sub-int v2, v15, v6

    add-int/lit8 v4, v2, -0x1

    if-ltz v4, :cond_1

    aget v6, v1, v4

    shl-long v7, v9, v5

    long-to-int v7, v7

    xor-int/2addr v6, v7

    aput v6, v1, v4

    :cond_1
    aget v4, v1, v2

    int-to-long v6, v4

    rsub-int/lit8 v4, v5, 0x20

    ushr-long v4, v9, v4

    xor-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v1, v2

    aget v2, v1, v15

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    aget v3, v4, v3

    and-int/2addr v2, v3

    aput v2, v1, v15

    move/from16 v1, p1

    add-int/lit8 v2, v1, -0x1

    ushr-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iput v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    return-void
.end method

.method public remainder(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget p1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-ge p1, v2, :cond_0

    return-object v0

    :cond_0
    :goto_0
    sub-int/2addr p1, v2

    if-ltz p1, :cond_1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->subtractFromThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget p1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public resetBit(I)V
    .locals 4

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 p1, p1, 0x1f

    aget p1, v3, p1

    not-int p1, p1

    and-int/2addr p1, v2

    aput p1, v0, v1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setBit(I)V
    .locals 4

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 p1, p1, 0x1f

    aget p1, v3, p1

    or-int/2addr p1, v2

    aput p1, v0, v1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public shiftBlocksLeft()V
    .locals 6

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v2, v2, 0x20

    iput v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v1, v3, :cond_1

    :goto_0
    if-lt v0, v5, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v4, v0, v4

    goto :goto_1

    :cond_1
    new-array v1, v1, [I

    invoke-static {v2, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    :goto_1
    return-void
.end method

.method public shiftLeft()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 6

    .line 1
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    iget v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v1, v2

    :goto_0
    if-lt v1, v2, :cond_0

    iget-object v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    shl-int/2addr v4, v2

    aput v4, v3, v1

    add-int/lit8 v5, v1, -0x1

    aget v5, v3, v5

    ushr-int/lit8 v5, v5, 0x1f

    or-int/2addr v4, v5

    aput v4, v3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v3, 0x0

    aget v4, v1, v3

    shl-int/lit8 v2, v4, 0x1

    aput v2, v1, v3

    return-object v0
.end method

.method public shiftLeft(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 7

    .line 2
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    const/16 v1, 0x20

    if-lt p1, v1, :cond_0

    ushr-int/lit8 v1, p1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->doShiftBlocksLeft(I)V

    :cond_0
    and-int/lit8 p1, p1, 0x1f

    if-eqz p1, :cond_2

    iget v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lt v1, v2, :cond_1

    iget-object v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    shl-int/2addr v4, p1

    aput v4, v3, v1

    add-int/lit8 v5, v1, -0x1

    aget v5, v3, v5

    rsub-int/lit8 v6, p1, 0x20

    ushr-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    shl-int p1, v3, p1

    aput p1, v1, v2

    :cond_2
    return-object v0
.end method

.method public shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V
    .locals 8

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-void

    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    ushr-int/lit8 v0, p2, 0x5

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    add-int v2, v1, v0

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v3, v4, :cond_1

    and-int/lit8 v4, p2, 0x1f

    if-eqz v4, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v6, v5, v3

    iget-object v7, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v7, v7, v1

    rsub-int/lit8 v4, v4, 0x20

    ushr-int v4, v7, v4

    xor-int/2addr v4, v6

    aput v4, v5, v3

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v2

    iget-object v5, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v1

    and-int/lit8 v6, p2, 0x1f

    shl-int/2addr v5, v6

    xor-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public shiftLeftThis()V
    .locals 6

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v1, v0, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-nez v1, :cond_1

    add-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v4, v1

    if-le v0, v4, :cond_0

    new-array v0, v0, [I

    array-length v4, v1

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v0, v3

    :goto_0
    if-lt v0, v3, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    add-int/lit8 v4, v0, -0x1

    aget v5, v1, v4

    ushr-int/lit8 v5, v5, 0x1f

    or-int/2addr v2, v5

    aput v2, v1, v0

    aget v2, v1, v4

    shl-int/2addr v2, v3

    aput v2, v1, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v3

    :goto_1
    if-lt v0, v3, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v1, v0

    shl-int/2addr v4, v3

    aput v4, v1, v0

    add-int/lit8 v5, v0, -0x1

    aget v5, v1, v5

    ushr-int/lit8 v5, v5, 0x1f

    or-int/2addr v4, v5

    aput v4, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v1, v0, v2

    shl-int/2addr v1, v3

    aput v1, v0, v2

    :cond_3
    return-void
.end method

.method public shiftRight()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 6

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v1, -0x2

    if-gt v4, v2, :cond_0

    iget-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v4

    ushr-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    add-int/lit8 v3, v4, 0x1

    aget v5, v1, v3

    shl-int/lit8 v5, v5, 0x1f

    or-int/2addr v2, v5

    aput v2, v1, v4

    move v4, v3

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v3, v1, -0x1

    aget v4, v2, v3

    ushr-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v1, -0x1

    aget v4, v2, v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v1, v5, v1

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v1, v4

    aput v1, v2, v3

    :cond_1
    return-object v0
.end method

.method public shiftRightThis()V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x2

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v1, -0x2

    if-gt v0, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget v4, v1, v3

    shl-int/lit8 v4, v4, 0x1f

    or-int/2addr v2, v4

    aput v2, v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    ushr-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v2, v2, 0x1f

    if-nez v2, :cond_1

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    aget v1, v0, v1

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v1, v3

    aput v1, v0, v2

    :cond_1
    return-void
.end method

.method public squareThisBitwise()V
    .locals 9

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v1, v0, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_4

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v0

    const/4 v5, 0x0

    move v6, v3

    :goto_1
    const/16 v7, 0x10

    if-ge v5, v7, :cond_3

    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_1

    shl-int/lit8 v7, v0, 0x1

    aget v8, v2, v7

    or-int/2addr v8, v6

    aput v8, v2, v7

    :cond_1
    const/high16 v7, 0x10000

    and-int/2addr v7, v4

    if-eqz v7, :cond_2

    shl-int/lit8 v7, v0, 0x1

    add-int/2addr v7, v3

    aget v8, v2, v7

    or-int/2addr v8, v6

    aput v8, v2, v7

    :cond_2
    shl-int/lit8 v6, v6, 0x2

    ushr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    iput-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/2addr v0, v3

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    return-void
.end method

.method public squareThisPreCalc()V
    .locals 10

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v2, v1, 0x1

    const v3, 0xff00

    const/high16 v4, -0x1000000

    const/high16 v5, 0xff0000

    if-lt v0, v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v6, v2, 0x1

    sget-object v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    aget v8, v0, v1

    and-int v9, v8, v5

    ushr-int/lit8 v9, v9, 0x10

    aget-short v9, v7, v9

    and-int/2addr v8, v4

    ushr-int/lit8 v8, v8, 0x18

    aget-short v8, v7, v8

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v8, v9

    aput v8, v0, v6

    aget v6, v0, v1

    and-int/lit16 v8, v6, 0xff

    aget-short v8, v7, v8

    and-int/2addr v6, v3

    ushr-int/lit8 v6, v6, 0x8

    aget-short v6, v7, v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v8

    aput v6, v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v0, v0, 0x1

    :goto_1
    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    goto :goto_3

    :cond_2
    shl-int/lit8 v0, v1, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v1, v2, :cond_3

    shl-int/lit8 v2, v1, 0x1

    sget-object v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v8, v7, v1

    and-int/lit16 v9, v8, 0xff

    aget-short v9, v6, v9

    and-int/2addr v8, v3

    ushr-int/lit8 v8, v8, 0x8

    aget-short v8, v6, v8

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v8, v9

    aput v8, v0, v2

    add-int/lit8 v2, v2, 0x1

    aget v7, v7, v1

    and-int v8, v7, v5

    ushr-int/lit8 v8, v8, 0x10

    aget-short v8, v6, v8

    and-int/2addr v7, v4

    ushr-int/lit8 v7, v7, 0x18

    aget-short v6, v6, v7

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v8

    aput v6, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    shl-int/lit8 v0, v2, 0x1

    goto :goto_1

    :goto_3
    return-void
.end method

.method public subtract(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xor(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object p1

    return-object p1
.end method

.method public subtractFromThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 1

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-void
.end method

.method public testBit(I)Z
    .locals 4

    if-ltz p1, :cond_2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-le p1, v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v3, p1, 0x5

    aget v0, v0, v3

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 p1, p1, 0x1f

    aget p1, v3, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public toByteArray()[B
    .locals 9

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, v0, 0x3

    new-array v2, v0, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    shr-int/lit8 v5, v0, 0x2

    if-ge v4, v5, :cond_0

    shl-int/lit8 v5, v4, 0x2

    sub-int v5, v0, v5

    add-int/lit8 v6, v5, -0x1

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v7, v7, v4

    and-int/lit16 v8, v7, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    add-int/lit8 v6, v5, -0x2

    const v8, 0xff00

    and-int/2addr v8, v7

    ushr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    add-int/lit8 v6, v5, -0x3

    const/high16 v8, 0xff0000

    and-int/2addr v8, v7

    ushr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    add-int/lit8 v5, v5, -0x4

    const/high16 v6, -0x1000000

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v1, :cond_1

    sub-int v0, v1, v3

    add-int/lit8 v0, v0, -0x1

    shl-int/lit8 v0, v0, 0x3

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    const/16 v5, 0xff

    shl-int/2addr v5, v0

    and-int/2addr v4, v5

    ushr-int v0, v4, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public toIntegerArray()[I
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v1, v0, [I

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    new-array v2, v1, [C

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    const-string v3, "0000"

    .line 11
    .line 12
    const-string v4, "0001"

    .line 13
    .line 14
    const-string v5, "0010"

    .line 15
    .line 16
    const-string v6, "0011"

    .line 17
    .line 18
    const-string v7, "0100"

    .line 19
    .line 20
    const-string v8, "0101"

    .line 21
    .line 22
    const-string v9, "0110"

    .line 23
    .line 24
    const-string v10, "0111"

    .line 25
    .line 26
    const-string v11, "1000"

    .line 27
    .line 28
    const-string v12, "1001"

    .line 29
    .line 30
    const-string v13, "1010"

    .line 31
    .line 32
    const-string v14, "1011"

    .line 33
    .line 34
    const-string v15, "1100"

    .line 35
    .line 36
    const-string v16, "1101"

    .line 37
    .line 38
    const-string v17, "1110"

    .line 39
    .line 40
    const-string v18, "1111"

    .line 41
    .line 42
    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-instance v4, Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v5, " "

    .line 52
    .line 53
    move/from16 v6, p1

    .line 54
    .line 55
    if-ne v6, v1, :cond_0

    .line 56
    .line 57
    iget v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 58
    .line 59
    add-int/lit8 v3, v3, -0x1

    .line 60
    .line 61
    :goto_0
    if-ltz v3, :cond_1

    .line 62
    .line 63
    invoke-static {v4}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 68
    .line 69
    aget v6, v6, v3

    .line 70
    .line 71
    ushr-int/lit8 v6, v6, 0x1c

    .line 72
    .line 73
    and-int/lit8 v6, v6, 0xf

    .line 74
    .line 75
    aget-char v6, v2, v6

    .line 76
    .line 77
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v4}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 89
    .line 90
    aget v6, v6, v3

    .line 91
    .line 92
    ushr-int/lit8 v6, v6, 0x18

    .line 93
    .line 94
    and-int/lit8 v6, v6, 0xf

    .line 95
    .line 96
    aget-char v6, v2, v6

    .line 97
    .line 98
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static {v4}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 110
    .line 111
    aget v6, v6, v3

    .line 112
    .line 113
    ushr-int/lit8 v6, v6, 0x14

    .line 114
    .line 115
    and-int/lit8 v6, v6, 0xf

    .line 116
    .line 117
    aget-char v6, v2, v6

    .line 118
    .line 119
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {v4}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 131
    .line 132
    aget v6, v6, v3

    .line 133
    .line 134
    ushr-int/2addr v6, v1

    .line 135
    and-int/lit8 v6, v6, 0xf

    .line 136
    .line 137
    aget-char v6, v2, v6

    .line 138
    .line 139
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-static {v4}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 151
    .line 152
    aget v6, v6, v3

    .line 153
    .line 154
    ushr-int/lit8 v6, v6, 0xc

    .line 155
    .line 156
    and-int/lit8 v6, v6, 0xf

    .line 157
    .line 158
    aget-char v6, v2, v6

    .line 159
    .line 160
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-static {v4}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 172
    .line 173
    aget v6, v6, v3

    .line 174
    .line 175
    ushr-int/lit8 v6, v6, 0x8

    .line 176
    .line 177
    and-int/lit8 v6, v6, 0xf

    .line 178
    .line 179
    aget-char v6, v2, v6

    .line 180
    .line 181
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-static {v4}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 193
    .line 194
    aget v6, v6, v3

    .line 195
    .line 196
    ushr-int/lit8 v6, v6, 0x4

    .line 197
    .line 198
    and-int/lit8 v6, v6, 0xf

    .line 199
    .line 200
    aget-char v6, v2, v6

    .line 201
    .line 202
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-static {v4}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 214
    .line 215
    aget v6, v6, v3

    .line 216
    .line 217
    and-int/lit8 v6, v6, 0xf

    .line 218
    .line 219
    aget-char v6, v2, v6

    .line 220
    .line 221
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-static {v4, v5}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    add-int/lit8 v3, v3, -0x1

    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :cond_0
    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 237
    .line 238
    add-int/lit8 v2, v2, -0x1

    .line 239
    .line 240
    :goto_1
    if-ltz v2, :cond_1

    .line 241
    .line 242
    invoke-static {v4}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 247
    .line 248
    aget v6, v6, v2

    .line 249
    .line 250
    ushr-int/lit8 v6, v6, 0x1c

    .line 251
    .line 252
    and-int/lit8 v6, v6, 0xf

    .line 253
    .line 254
    aget-object v6, v3, v6

    .line 255
    .line 256
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-static {v4}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 268
    .line 269
    aget v6, v6, v2

    .line 270
    .line 271
    ushr-int/lit8 v6, v6, 0x18

    .line 272
    .line 273
    and-int/lit8 v6, v6, 0xf

    .line 274
    .line 275
    aget-object v6, v3, v6

    .line 276
    .line 277
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    invoke-static {v4}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 289
    .line 290
    aget v6, v6, v2

    .line 291
    .line 292
    ushr-int/lit8 v6, v6, 0x14

    .line 293
    .line 294
    and-int/lit8 v6, v6, 0xf

    .line 295
    .line 296
    aget-object v6, v3, v6

    .line 297
    .line 298
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-static {v4}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 310
    .line 311
    aget v6, v6, v2

    .line 312
    .line 313
    ushr-int/2addr v6, v1

    .line 314
    and-int/lit8 v6, v6, 0xf

    .line 315
    .line 316
    aget-object v6, v3, v6

    .line 317
    .line 318
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-static {v4}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 330
    .line 331
    aget v6, v6, v2

    .line 332
    .line 333
    ushr-int/lit8 v6, v6, 0xc

    .line 334
    .line 335
    and-int/lit8 v6, v6, 0xf

    .line 336
    .line 337
    aget-object v6, v3, v6

    .line 338
    .line 339
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-static {v4}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 351
    .line 352
    aget v6, v6, v2

    .line 353
    .line 354
    ushr-int/lit8 v6, v6, 0x8

    .line 355
    .line 356
    and-int/lit8 v6, v6, 0xf

    .line 357
    .line 358
    aget-object v6, v3, v6

    .line 359
    .line 360
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    invoke-static {v4}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 372
    .line 373
    aget v6, v6, v2

    .line 374
    .line 375
    ushr-int/lit8 v6, v6, 0x4

    .line 376
    .line 377
    and-int/lit8 v6, v6, 0xf

    .line 378
    .line 379
    aget-object v6, v3, v6

    .line 380
    .line 381
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-static {v4}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 393
    .line 394
    aget v6, v6, v2

    .line 395
    .line 396
    and-int/lit8 v6, v6, 0xf

    .line 397
    .line 398
    aget-object v6, v3, v6

    .line 399
    .line 400
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    invoke-static {v4, v5}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    add-int/lit8 v2, v2, -0x1

    .line 412
    .line 413
    goto/16 :goto_1

    .line 414
    .line 415
    :cond_1
    return-object v4

    .line 416
    nop

    .line 417
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public vectorMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Z
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v0

    and-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    and-int/lit16 v4, v2, 0xff

    aget-boolean v4, v3, v4

    xor-int/2addr v1, v4

    ushr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-boolean v4, v3, v4

    xor-int/2addr v1, v4

    ushr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-boolean v4, v3, v4

    xor-int/2addr v1, v4

    ushr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-boolean v2, v3, v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public xor(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 6

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v2, v3

    iget-object v5, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v3

    xor-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    :goto_1
    if-ge v3, v0, :cond_1

    iget-object p1, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, p1, v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v3

    xor-int/2addr v2, v4

    aput v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-object v1
.end method

.method public xorBit(I)V
    .locals 4

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 p1, p1, 0x1f

    aget p1, v3, p1

    xor-int/2addr p1, v2

    aput p1, v0, v1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public xorThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-void
.end method
