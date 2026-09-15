.class public Lorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/DigestDerivationFunction;


# instance fields
.field private algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private kdf:Lorg/bouncycastle/crypto/DigestDerivationFunction;

.field private keySize:I

.field private z:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->kdf:Lorg/bouncycastle/crypto/DigestDerivationFunction;

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 5

    .line 1
    add-int v0, p2, p3

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    if-gt v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 12
    .line 13
    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 14
    .line 15
    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 24
    .line 25
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    .line 26
    .line 27
    iget v3, p0, Lorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->keySize:I

    .line 28
    .line 29
    invoke-static {v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-direct {v1, v3, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 42
    .line 43
    .line 44
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->kdf:Lorg/bouncycastle/crypto/DigestDerivationFunction;

    .line 45
    .line 46
    new-instance v2, Lorg/bouncycastle/crypto/params/KDFParameters;

    .line 47
    .line 48
    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->z:[B

    .line 49
    .line 50
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    .line 51
    .line 52
    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "DER"

    .line 56
    .line 57
    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->kdf:Lorg/bouncycastle/crypto/DigestDerivationFunction;

    .line 68
    .line 69
    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    return p1

    .line 74
    :catch_0
    move-exception p1

    .line 75
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    new-instance p3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v0, "unable to initialise kdf: "

    .line 80
    .line 81
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p3}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p2

    .line 92
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    .line 93
    .line 94
    const-string p2, "output buffer too small"

    .line 95
    .line 96
    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->kdf:Lorg/bouncycastle/crypto/DigestDerivationFunction;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/DigestDerivationFunction;->getDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 1

    check-cast p1, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getKeySize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->keySize:I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getZ()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->z:[B

    return-void
.end method
