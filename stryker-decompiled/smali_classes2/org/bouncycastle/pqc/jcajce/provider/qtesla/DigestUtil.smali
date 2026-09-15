.class Lorg/bouncycastle/pqc/jcajce/provider/qtesla/DigestUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;
    .locals 2

    .line 1
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    .line 10
    .line 11
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    .line 24
    .line 25
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    new-instance p0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    .line 38
    .line 39
    const/16 v0, 0x80

    .line 40
    .line 41
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_2
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    new-instance p0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    .line 54
    .line 55
    const/16 v0, 0x100

    .line 56
    .line 57
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string v1, "unrecognized digest OID: "

    .line 64
    .line 65
    invoke-static {v1, p0}, Ll1/e;->i(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method

.method public static getDigestResult(Lorg/bouncycastle/crypto/Digest;)[B
    .locals 4

    invoke-static {p0}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/DigestUtil;->getDigestSize(Lorg/bouncycastle/crypto/Digest;)I

    move-result v0

    new-array v1, v0, [B

    instance-of v2, p0, Lorg/bouncycastle/crypto/Xof;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast p0, Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p0, v1, v3, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :goto_0
    return-object v1
.end method

.method public static getDigestSize(Lorg/bouncycastle/crypto/Digest;)I
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    if-eqz v0, :cond_0

    mul-int/lit8 p0, p0, 0x2

    :cond_0
    return p0
.end method
