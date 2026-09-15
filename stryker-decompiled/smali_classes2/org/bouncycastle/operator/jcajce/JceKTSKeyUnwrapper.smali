.class public Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;
.super Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;
.source "SourceFile"


# instance fields
.field private extraMappings:Ljava/util/Map;

.field private helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

.field private partyUInfo:[B

.field private partyVInfo:[B

.field private privKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;[B[B)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    new-instance p1, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;->extraMappings:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;->privKey:Ljava/security/PrivateKey;

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;->partyUInfo:[B

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;->partyVInfo:[B

    return-void
.end method


# virtual methods
.method public generateUnwrappedKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/GenericKey;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/GenericHybridParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/GenericHybridParameters;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;->extraMappings:Ljava/util/Map;

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createAsymmetricWrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)Ljavax/crypto/Cipher;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    .line 30
    .line 31
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/GenericHybridParameters;->getDem()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->getWrappingAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/GenericHybridParameters;->getKem()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/RsaKemParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RsaKemParameters;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/RsaKemParameters;->getKeyLength()Ljava/math/BigInteger;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    mul-int/lit8 v4, v4, 0x8

    .line 64
    .line 65
    :try_start_0
    new-instance v5, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    .line 66
    .line 67
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/GenericHybridParameters;->getDem()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v6, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;->partyUInfo:[B

    .line 72
    .line 73
    iget-object v7, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;->partyVInfo:[B

    .line 74
    .line 75
    invoke-direct {v5, v0, v6, v7}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->build()Lorg/bouncycastle/crypto/util/DEROtherInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v5, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    .line 83
    .line 84
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/DEROtherInfo;->getEncoded()[B

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {v5, v2, v4, v0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;-><init>(Ljava/lang/String;I[B)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/RsaKemParameters;->getKeyDerivationFunction()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v5, v0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->withKdfAlgorithm(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->build()Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;->privKey:Ljava/security/PrivateKey;

    .line 104
    .line 105
    const/4 v3, 0x4

    .line 106
    invoke-virtual {v1, v3, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    .line 110
    .line 111
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v0, v2}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->getKeyAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/4 v2, 0x3

    .line 120
    invoke-virtual {v1, p2, v0, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    .line 121
    .line 122
    .line 123
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceGenericKey;

    .line 125
    .line 126
    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/operator/jcajce/JceGenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V

    .line 127
    .line 128
    .line 129
    return-object v0

    .line 130
    :catch_0
    move-exception p1

    .line 131
    new-instance p2, Lorg/bouncycastle/operator/OperatorException;

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v1, "Unable to unwrap contents key: "

    .line 136
    .line 137
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {p1, v0}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    throw p2
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method
