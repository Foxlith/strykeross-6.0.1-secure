.class Lorg/bouncycastle/operator/bc/CamelliaUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineKeyEncAlg(Lorg/bouncycastle/crypto/params/KeyParameter;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p0

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    :cond_0
    const/16 v0, 0xc0

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    if-ne p0, v0, :cond_2

    sget-object p0, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    :goto_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal keysize in Camellia"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
