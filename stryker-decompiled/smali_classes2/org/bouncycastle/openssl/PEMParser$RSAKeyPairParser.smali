.class Lorg/bouncycastle/openssl/PEMParser$RSAKeyPairParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/openssl/PEMKeyPairParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openssl/PEMParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RSAKeyPairParser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openssl/PEMParser;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/openssl/PEMParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/openssl/PEMParser$RSAKeyPairParser;->this$0:Lorg/bouncycastle/openssl/PEMParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/openssl/PEMParser$RSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;)V

    return-void
.end method


# virtual methods
.method public parse([B)Lorg/bouncycastle/openssl/PEMKeyPair;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/RSAPublicKey;

    .line 18
    .line 19
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 31
    .line 32
    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    .line 34
    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    .line 35
    .line 36
    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lorg/bouncycastle/openssl/PEMKeyPair;

    .line 40
    .line 41
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 42
    .line 43
    invoke-direct {v3, v1, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 47
    .line 48
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/openssl/PEMKeyPair;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 52
    .line 53
    .line 54
    return-object v2

    .line 55
    :catch_0
    move-exception p1

    .line 56
    goto :goto_0

    .line 57
    :catch_1
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    new-instance p1, Lorg/bouncycastle/openssl/PEMException;

    .line 60
    .line 61
    const-string v0, "malformed sequence in RSA private key"

    .line 62
    .line 63
    invoke-direct {p1, v0}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    new-instance v0, Lorg/bouncycastle/openssl/PEMException;

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "problem creating RSA private key: "

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, v1}, Ll1/e;->A(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :goto_1
    throw p1
.end method
