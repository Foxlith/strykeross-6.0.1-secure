.class public Lorg/bouncycastle/its/bc/BcITSPublicVerificationKey;
.super Lorg/bouncycastle/its/ITSPublicVerificationKey;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-static {p1}, Lorg/bouncycastle/its/bc/BcITSPublicVerificationKey;->fromKeyParameters(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/oer/its/PublicVerificationKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/its/ITSPublicVerificationKey;-><init>(Lorg/bouncycastle/oer/its/PublicVerificationKey;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/PublicVerificationKey;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/its/ITSPublicVerificationKey;-><init>(Lorg/bouncycastle/oer/its/PublicVerificationKey;)V

    return-void
.end method

.method public static fromKeyParameters(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/oer/its/PublicVerificationKey;
    .locals 3

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

    new-instance v0, Lorg/bouncycastle/oer/its/PublicVerificationKey;

    invoke-static {}, Lorg/bouncycastle/oer/its/EccP256CurvePoint;->builder()Lorg/bouncycastle/oer/its/EccP256CurvePoint$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/bouncycastle/oer/its/EccP256CurvePoint$Builder;->createUncompressedP256(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/PublicVerificationKey;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/PublicVerificationKey;

    invoke-static {}, Lorg/bouncycastle/oer/its/EccP256CurvePoint;->builder()Lorg/bouncycastle/oer/its/EccP256CurvePoint$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/bouncycastle/oer/its/EccP256CurvePoint$Builder;->createUncompressedP256(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/PublicVerificationKey;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_1
    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/oer/its/PublicVerificationKey;

    invoke-static {}, Lorg/bouncycastle/oer/its/EccP384CurvePoint;->builder()Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->createUncompressedP384(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    move-result-object p0

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/PublicVerificationKey;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown curve in public encryption key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/its/ITSPublicVerificationKey;->verificationKey:Lorg/bouncycastle/oer/its/PublicVerificationKey;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/PublicVerificationKey;->getChoice()I

    move-result v0

    const-string v1, "unknown key type"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    :goto_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/its/ITSPublicVerificationKey;->verificationKey:Lorg/bouncycastle/oer/its/PublicVerificationKey;

    invoke-virtual {v4}, Lorg/bouncycastle/oer/its/PublicVerificationKey;->getCurvePoint()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/oer/its/EccCurvePoint;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/bouncycastle/its/ITSPublicVerificationKey;->verificationKey:Lorg/bouncycastle/oer/its/PublicVerificationKey;

    invoke-virtual {v4}, Lorg/bouncycastle/oer/its/PublicVerificationKey;->getCurvePoint()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/oer/its/EccCurvePoint;

    instance-of v5, v4, Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v4}, Lorg/bouncycastle/oer/its/EccCurvePoint;->getEncodedPoint()[B

    move-result-object v1

    goto :goto_3

    :cond_3
    instance-of v5, v4, Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    if-eqz v5, :cond_4

    goto :goto_2

    :goto_3
    invoke-virtual {v3, v1}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    new-instance v4, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-direct {v4, v0, v2}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    invoke-direct {v3, v1, v4}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v3

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "extension to public verification key not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
