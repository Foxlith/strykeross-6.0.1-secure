.class public Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B

.field private T:[[[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    const/16 v1, 0x20

    const/4 v2, 0x2

    const/16 v3, 0x10

    if-nez v0, :cond_0

    filled-new-array {v1, v3, v2}, [I

    move-result-object v0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->areEqual([B[B)B

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->copy([B[B)V

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v1, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    aget-object v4, v0, p1

    const/4 v5, 0x1

    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    aget-object v6, v4, v5

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B[J)V

    aget-object v0, v4, v5

    invoke-static {v0, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP3([J[J)V

    goto :goto_2

    :cond_2
    add-int/lit8 v6, p1, -0x1

    aget-object v0, v0, v6

    aget-object v0, v0, v5

    aget-object v6, v4, v5

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP4([J[J)V

    :goto_2
    move v0, v2

    :goto_3
    if-ge v0, v3, :cond_3

    shr-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    aget-object v7, v4, v0

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->divideP([J[J)V

    aget-object v6, v4, v0

    aget-object v7, v4, v5

    add-int/lit8 v8, v0, 0x1

    aget-object v8, v4, v8

    invoke-static {v6, v7, v8}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([J[J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public multiplyH([B)V
    .locals 13

    const-wide/16 v0, 0x0

    const/16 v2, 0xf

    move v4, v2

    move-wide v2, v0

    :goto_0
    const/4 v5, 0x0

    if-ltz v4, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    add-int v7, v4, v4

    add-int/lit8 v8, v7, 0x1

    aget-object v8, v6, v8

    aget-byte v9, p1, v4

    and-int/lit8 v10, v9, 0xf

    aget-object v8, v8, v10

    aget-object v6, v6, v7

    and-int/lit16 v7, v9, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    aget-object v6, v6, v7

    aget-wide v9, v8, v5

    aget-wide v11, v6, v5

    xor-long/2addr v9, v11

    xor-long/2addr v0, v9

    const/4 v5, 0x1

    aget-wide v7, v8, v5

    aget-wide v5, v6, v5

    xor-long/2addr v5, v7

    xor-long/2addr v2, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1, p1, v5}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    const/16 v0, 0x8

    invoke-static {v2, v3, p1, v0}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    return-void
.end method
