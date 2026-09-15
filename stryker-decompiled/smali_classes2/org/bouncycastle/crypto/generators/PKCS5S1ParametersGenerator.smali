.class public Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;
.super Lorg/bouncycastle/crypto/PBEParametersGenerator;
.source "SourceFile"


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method private generateDerivedKey()[B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v4, v3

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v4, v3

    invoke-interface {v2, v3, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v1, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v5, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    return-object p1
.end method

.method public generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedKey()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t generate a derived key "

    const-string v2, " bytes long."

    .line 1
    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 4

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedKey()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t generate a derived key "

    const-string v1, " bytes long."

    .line 8
    invoke-static {p2, v0, v1}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
