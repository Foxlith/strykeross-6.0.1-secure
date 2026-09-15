.class public Lorg/bouncycastle/its/bc/BcITSPublicEncryptionKey;
.super Lorg/bouncycastle/its/ITSPublicEncryptionKey;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-static {p1}, Lorg/bouncycastle/its/bc/BcITSPublicEncryptionKey;->fromKeyParameters(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/its/ITSPublicEncryptionKey;-><init>(Lorg/bouncycastle/oer/its/PublicEncryptionKey;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/PublicEncryptionKey;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/its/ITSPublicEncryptionKey;-><init>(Lorg/bouncycastle/oer/its/PublicEncryptionKey;)V

    return-void
.end method

.method public static fromKeyParameters(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/oer/its/PublicEncryptionKey;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;->getName()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    sget-object v1, Lorg/bouncycastle/oer/its/SymmAlgorithm;->aes128Ccm:Lorg/bouncycastle/oer/its/SymmAlgorithm;

    new-instance v2, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;

    invoke-direct {v2}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;->setChoice(I)Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/oer/its/EccP256CurvePoint;->builder()Lorg/bouncycastle/oer/its/EccP256CurvePoint$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Lorg/bouncycastle/oer/its/EccP256CurvePoint$Builder;->createUncompressedP256(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;->setValue(Lorg/bouncycastle/oer/its/EccCurvePoint;)Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;->createBasePublicEncryptionKey()Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/PublicEncryptionKey;-><init>(Lorg/bouncycastle/oer/its/SymmAlgorithm;Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;)V

    return-object v0

    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    sget-object v1, Lorg/bouncycastle/oer/its/SymmAlgorithm;->aes128Ccm:Lorg/bouncycastle/oer/its/SymmAlgorithm;

    new-instance v2, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;

    invoke-direct {v2}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;->setChoice(I)Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/oer/its/EccP256CurvePoint;->builder()Lorg/bouncycastle/oer/its/EccP256CurvePoint$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Lorg/bouncycastle/oer/its/EccP256CurvePoint$Builder;->createUncompressedP256(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;->setValue(Lorg/bouncycastle/oer/its/EccCurvePoint;)Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey$Builder;->createBasePublicEncryptionKey()Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/PublicEncryptionKey;-><init>(Lorg/bouncycastle/oer/its/SymmAlgorithm;Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown curve in public encryption key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 6

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

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/its/ITSPublicEncryptionKey;->encryptionKey:Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    invoke-virtual {v5}, Lorg/bouncycastle/oer/its/PublicEncryptionKey;->getBasePublicEncryptionKey()Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    instance-of v5, v5, Lorg/bouncycastle/oer/its/EccCurvePoint;

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/its/EccCurvePoint;

    instance-of v5, v0, Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    if-eqz v5, :cond_2

    :goto_1
    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/EccCurvePoint;->getEncodedPoint()[B

    move-result-object v0

    goto :goto_2

    :cond_2
    instance-of v5, v0, Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    if-eqz v5, :cond_3

    goto :goto_1

    :goto_2
    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    new-instance v4, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-direct {v4, v1, v3}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    invoke-direct {v2, v0, v4}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v2

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
