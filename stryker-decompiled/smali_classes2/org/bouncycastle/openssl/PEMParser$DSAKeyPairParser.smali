.class Lorg/bouncycastle/openssl/PEMParser$DSAKeyPairParser;
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
    name = "DSAKeyPairParser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openssl/PEMParser;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/openssl/PEMParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/openssl/PEMParser$DSAKeyPairParser;->this$0:Lorg/bouncycastle/openssl/PEMParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/openssl/PEMParser$DSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;)V

    return-void
.end method


# virtual methods
.method public parse([B)Lorg/bouncycastle/openssl/PEMKeyPair;
    .locals 12

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
    const/4 v1, 0x6

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x3

    .line 31
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x4

    .line 40
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/4 v4, 0x5

    .line 49
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance v4, Lorg/bouncycastle/openssl/PEMKeyPair;

    .line 58
    .line 59
    new-instance v5, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 60
    .line 61
    new-instance v6, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 62
    .line 63
    sget-object v7, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    .line 65
    new-instance v8, Lorg/bouncycastle/asn1/x509/DSAParameter;

    .line 66
    .line 67
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-direct {v8, v9, v10, v11}, Lorg/bouncycastle/asn1/x509/DSAParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v5, v6, v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 86
    .line 87
    .line 88
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 89
    .line 90
    new-instance v6, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 91
    .line 92
    new-instance v8, Lorg/bouncycastle/asn1/x509/DSAParameter;

    .line 93
    .line 94
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-direct {v8, v0, v1, v2}, Lorg/bouncycastle/asn1/x509/DSAParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {v3, v6, p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/openssl/PEMKeyPair;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 116
    .line 117
    .line 118
    return-object v4

    .line 119
    :catch_0
    move-exception p1

    .line 120
    goto :goto_0

    .line 121
    :catch_1
    move-exception p1

    .line 122
    goto :goto_1

    .line 123
    :cond_0
    new-instance p1, Lorg/bouncycastle/openssl/PEMException;

    .line 124
    .line 125
    const-string v0, "malformed sequence in DSA private key"

    .line 126
    .line 127
    invoke-direct {p1, v0}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    new-instance v0, Lorg/bouncycastle/openssl/PEMException;

    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v2, "problem creating DSA private key: "

    .line 136
    .line 137
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {p1, v1}, Ll1/e;->A(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :goto_1
    throw p1
.end method
