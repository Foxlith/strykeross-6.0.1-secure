.class public Lorg/bouncycastle/its/operator/ECDSAEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toITS(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/oer/its/Signature;
    .locals 7

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/bouncycastle/oer/its/Signature;

    new-instance v0, Lorg/bouncycastle/oer/its/EcdsaP256Signature;

    new-instance v4, Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v4, v3, v5}, Lorg/bouncycastle/oer/its/EccP256CurvePoint;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-direct {v5, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v4, v5}, Lorg/bouncycastle/oer/its/EcdsaP256Signature;-><init>(Lorg/bouncycastle/oer/its/EccP256CurvePoint;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/oer/its/Signature;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lorg/bouncycastle/oer/its/Signature;

    new-instance v0, Lorg/bouncycastle/oer/its/EcdsaP256Signature;

    new-instance v4, Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v4, v3, v5}, Lorg/bouncycastle/oer/its/EccP256CurvePoint;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v4, v3}, Lorg/bouncycastle/oer/its/EcdsaP256Signature;-><init>(Lorg/bouncycastle/oer/its/EccP256CurvePoint;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/oer/its/Signature;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lorg/bouncycastle/oer/its/Signature;

    new-instance v0, Lorg/bouncycastle/oer/its/EcdsaP384Signature;

    new-instance v2, Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    const/16 v6, 0x30

    invoke-static {v6, v5}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/oer/its/EccP384CurvePoint;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v6, p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/oer/its/EcdsaP384Signature;-><init>(Lorg/bouncycastle/oer/its/EccP384CurvePoint;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/oer/its/Signature;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown curveID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toX962(Lorg/bouncycastle/oer/its/Signature;)[B
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/Signature;->getChoice()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/Signature;->getChoice()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/Signature;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/EcdsaP384Signature;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/EcdsaP384Signature;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/EcdsaP384Signature;->getrSig()Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/EccP384CurvePoint;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/EcdsaP384Signature;->getsSig()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/Signature;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/EcdsaP256Signature;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/EcdsaP256Signature;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/EcdsaP256Signature;->getrSig()Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/EccP256CurvePoint;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/EcdsaP256Signature;->getsSig()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    goto :goto_0

    :goto_2
    :try_start_0
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/bouncycastle/asn1/ASN1Encodable;

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([B)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    const/4 v0, 0x0

    aput-object v4, v3, v0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {p0}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([B)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    aput-object v0, v3, v1

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "der encoding r & s"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
