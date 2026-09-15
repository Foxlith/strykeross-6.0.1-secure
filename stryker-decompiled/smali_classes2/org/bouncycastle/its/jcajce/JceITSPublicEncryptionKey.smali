.class public Lorg/bouncycastle/its/jcajce/JceITSPublicEncryptionKey;
.super Lorg/bouncycastle/its/ITSPublicEncryptionKey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/its/jcajce/JceITSPublicEncryptionKey$Builder;
    }
.end annotation


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/its/jcajce/JceITSPublicEncryptionKey;->fromPublicKey(Ljava/security/PublicKey;)Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/its/ITSPublicEncryptionKey;-><init>(Lorg/bouncycastle/oer/its/PublicEncryptionKey;)V

    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JceITSPublicEncryptionKey;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/PublicEncryptionKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/its/ITSPublicEncryptionKey;-><init>(Lorg/bouncycastle/oer/its/PublicEncryptionKey;)V

    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JceITSPublicEncryptionKey;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method

.method public static fromPublicKey(Ljava/security/PublicKey;)Lorg/bouncycastle/oer/its/PublicEncryptionKey;
    .locals 5

    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    sget-object v1, Lorg/bouncycastle/oer/its/SymmAlgorithm;->aes128Ccm:Lorg/bouncycastle/oer/its/SymmAlgorithm;

    new-instance v2, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;

    invoke-direct {v2}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;->setChoice(I)Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/oer/its/EccP256CurvePoint;->builder()Lorg/bouncycastle/oer/its/EccP256CurvePoint$Builder;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/bouncycastle/oer/its/EccP256CurvePoint$Builder;->createUncompressedP256(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;->setValue(Lorg/bouncycastle/oer/its/EccCurvePoint;)Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;->createBasePublicEncryptionKey()Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/oer/its/PublicEncryptionKey;-><init>(Lorg/bouncycastle/oer/its/SymmAlgorithm;Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;)V

    return-object p0

    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    sget-object v1, Lorg/bouncycastle/oer/its/SymmAlgorithm;->aes128Ccm:Lorg/bouncycastle/oer/its/SymmAlgorithm;

    new-instance v2, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;

    invoke-direct {v2}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;->setChoice(I)Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/oer/its/EccP256CurvePoint;->builder()Lorg/bouncycastle/oer/its/EccP256CurvePoint$Builder;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/bouncycastle/oer/its/EccP256CurvePoint$Builder;->createUncompressedP256(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;->setValue(Lorg/bouncycastle/oer/its/EccCurvePoint;)Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;->createBasePublicEncryptionKey()Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/oer/its/PublicEncryptionKey;-><init>(Lorg/bouncycastle/oer/its/SymmAlgorithm;Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown curve in public encryption key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "must be ECPublicKey instance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getKey()Ljava/security/PublicKey;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/its/ITSPublicEncryptionKey;->encryptionKey:Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/PublicEncryptionKey;->getBasePublicEncryptionKey()Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;->getChoice()I

    move-result v1

    const-string v2, "unknown key type"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/its/ITSPublicEncryptionKey;->encryptionKey:Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    invoke-virtual {v3}, Lorg/bouncycastle/oer/its/PublicEncryptionKey;->getBasePublicEncryptionKey()Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/oer/its/EccCurvePoint;

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/its/EccCurvePoint;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    instance-of v4, v0, Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/EccCurvePoint;->getEncodedPoint()[B

    move-result-object v0

    goto :goto_2

    :cond_2
    instance-of v4, v0, Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    if-eqz v4, :cond_3

    goto :goto_1

    :goto_2
    invoke-virtual {v3, v0}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JceITSPublicEncryptionKey;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v3, "EC"

    invoke-interface {v2, v3}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertToSpec(Lorg/bouncycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lorg/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v0

    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v3, v0, v1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "extension to public verification key not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
