.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;
.super Ljava/security/SignatureSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$MD2;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$MD4;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$MD5;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$RIPEMD128;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$RIPEMD160;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$RIPEMD256;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA1;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA224;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA256;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA384;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA3_224;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA3_256;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA3_384;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA3_512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA512_224;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA512_256;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$noneRSA;
    }
.end annotation


# instance fields
.field private algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    new-instance p2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object p3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {p2, p1, p3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method private derEncode([B)[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    const-string p1, "DER"

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private getType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 6
    .line 7
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 12
    .line 13
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-interface {v0, v1, p1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Supplied key ("

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->getType(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v2, ") is not a RSAPrivateKey instance"

    .line 37
    .line 38
    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .line 6
    .line 7
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 12
    .line 13
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {v0, v1, p1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Supplied key ("

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->getType(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v2, ") is not a RSAPublicKey instance"

    .line 37
    .line 38
    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "engineSetParameter unsupported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "engineSetParameter unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSign()[B
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->derEncode([B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "key too small for signature type"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineUpdate(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->derEncode([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    array-length v1, p1

    array-length v3, v0

    if-ne v1, v3, :cond_0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    return p1

    :cond_0
    array-length v1, p1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    aget-byte v3, v0, v1

    add-int/lit8 v3, v3, -0x2

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    const/4 v3, 0x3

    aget-byte v4, v0, v3

    add-int/lit8 v4, v4, -0x2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v4, 0x4

    add-int/lit8 v4, v4, 0x6

    move v5, v2

    move v6, v5

    :goto_0
    array-length v7, v0

    sub-int/2addr v7, v4

    if-ge v5, v7, :cond_1

    add-int v7, v3, v5

    aget-byte v7, p1, v7

    add-int v8, v4, v5

    aget-byte v8, v0, v8

    xor-int/2addr v7, v8

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget-byte v5, p1, v4

    aget-byte v7, v0, v4

    xor-int/2addr v5, v7

    or-int/2addr v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-nez v6, :cond_3

    move v2, v1

    :cond_3
    return v2

    :cond_4
    invoke-static {v0, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    :catch_0
    return v2
.end method
