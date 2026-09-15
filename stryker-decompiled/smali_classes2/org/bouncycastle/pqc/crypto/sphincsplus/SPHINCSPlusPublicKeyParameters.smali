.class public Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyParameters;
.source "SourceFile"


# instance fields
.field private final pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;[B)V
    .locals 3

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    move-result-object p1

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    array-length v1, p2

    mul-int/lit8 v2, p1, 0x2

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    invoke-static {p2, v0, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {p2, p1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;-><init>([B[B)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "public key encoding does not match parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->root:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->root:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
