.class Lorg/bouncycastle/openssl/PEMParser$ECDSAKeyPairParser;
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
    name = "ECDSAKeyPairParser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openssl/PEMParser;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/openssl/PEMParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/openssl/PEMParser$ECDSAKeyPairParser;->this$0:Lorg/bouncycastle/openssl/PEMParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/openssl/PEMParser$ECDSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;)V

    return-void
.end method


# virtual methods
.method public parse([B)Lorg/bouncycastle/openssl/PEMKeyPair;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lorg/bouncycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/sec/ECPrivateKey;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 10
    .line 11
    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/sec/ECPrivateKey;->getParametersObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 21
    .line 22
    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/sec/ECPrivateKey;->getPublicKey()Lorg/bouncycastle/asn1/ASN1BitString;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 32
    .line 33
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/sec/ECPrivateKey;->getPublicKey()Lorg/bouncycastle/asn1/ASN1BitString;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v2, v0, p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lorg/bouncycastle/openssl/PEMKeyPair;

    .line 45
    .line 46
    invoke-direct {p1, v2, v1}, Lorg/bouncycastle/openssl/PEMKeyPair;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    new-instance p1, Lorg/bouncycastle/openssl/PEMKeyPair;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/openssl/PEMKeyPair;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :goto_0
    new-instance v0, Lorg/bouncycastle/openssl/PEMException;

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "problem creating EC private key: "

    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v1}, Ll1/e;->A(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :goto_1
    throw p1
.end method
