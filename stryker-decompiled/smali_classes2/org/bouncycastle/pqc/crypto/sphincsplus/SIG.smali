.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final r:[B

.field private final sig_fors:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

.field private final sig_ht:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;


# direct methods
.method public constructor <init>(IIIIII[B)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->r:[B

    const/4 v1, 0x0

    invoke-static {p7, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, p2, [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_fors:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    move v2, p1

    move v0, v1

    :goto_0
    if-eq v0, p2, :cond_1

    new-array v3, p1, [B

    invoke-static {p7, v2, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p1

    new-array v4, p3, [[B

    move v5, v1

    :goto_1
    if-eq v5, p3, :cond_0

    new-array v6, p1, [B

    aput-object v6, v4, v5

    invoke-static {p7, v2, v6, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_fors:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    invoke-direct {v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;-><init>([B[[B)V

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array p2, p4, [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_ht:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    move p2, v1

    :goto_2
    if-eq p2, p4, :cond_3

    mul-int p3, p6, p1

    new-array v0, p3, [B

    invoke-static {p7, v2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p3

    new-array p3, p5, [[B

    move v3, v1

    :goto_3
    if-eq v3, p5, :cond_2

    new-array v4, p1, [B

    aput-object v4, p3, v3

    invoke-static {p7, v2, v4, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_ht:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    invoke-direct {v4, v0, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;-><init>([B[[B)V

    aput-object v4, v3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    array-length p1, p7

    if-ne v2, p1, :cond_4

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "signature wrong length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getR()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->r:[B

    return-object v0
.end method

.method public getSIG_FORS()[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_fors:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    return-object v0
.end method

.method public getSIG_HT()[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_ht:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    return-object v0
.end method
