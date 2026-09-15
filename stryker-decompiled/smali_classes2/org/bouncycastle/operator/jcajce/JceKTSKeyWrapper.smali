.class public Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;
.super Lorg/bouncycastle/operator/AsymmetricKeyWrapper;
.source "SourceFile"


# instance fields
.field private helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

.field private final keySizeInBits:I

.field private final partyUInfo:[B

.field private final partyVInfo:[B

.field private publicKey:Ljava/security/PublicKey;

.field private random:Ljava/security/SecureRandom;

.field private final symmetricWrappingAlg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;I[B[B)V
    .locals 10

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_rsa_KEM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/cms/GenericHybridParameters;

    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->id_kem_rsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/cms/RsaKemParameters;

    new-instance v6, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v7, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_kdf_kdf3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v8, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v7, p3, 0x7

    div-int/lit8 v7, v7, 0x8

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/cms/RsaKemParameters;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)V

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {p2, p3}, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;->determineKeyEncAlg(Ljava/lang/String;I)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/cms/GenericHybridParameters;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/operator/AsymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->publicKey:Ljava/security/PublicKey;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->symmetricWrappingAlg:Ljava/lang/String;

    iput p3, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->keySizeInBits:I

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->partyUInfo:[B

    invoke-static {p5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->partyVInfo:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/lang/String;I[B[B)V
    .locals 6

    .line 2
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;-><init>(Ljava/security/PublicKey;Ljava/lang/String;I[B[B)V

    return-void
.end method


# virtual methods
.method public generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/bouncycastle/operator/AsymmetricKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createAsymmetricWrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)Ljavax/crypto/Cipher;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    new-instance v1, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    .line 21
    .line 22
    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->symmetricWrappingAlg:Ljava/lang/String;

    .line 23
    .line 24
    iget v3, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->keySizeInBits:I

    .line 25
    .line 26
    invoke-static {v2, v3}, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;->determineKeyEncAlg(Ljava/lang/String;I)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->partyUInfo:[B

    .line 31
    .line 32
    iget-object v4, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->partyVInfo:[B

    .line 33
    .line 34
    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->build()Lorg/bouncycastle/crypto/util/DEROtherInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    .line 42
    .line 43
    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->symmetricWrappingAlg:Ljava/lang/String;

    .line 44
    .line 45
    iget v4, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->keySizeInBits:I

    .line 46
    .line 47
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/DEROtherInfo;->getEncoded()[B

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v2, v3, v4, v1}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;-><init>(Ljava/lang/String;I[B)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->build()Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->publicKey:Ljava/security/PublicKey;

    .line 59
    .line 60
    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->random:Ljava/security/SecureRandom;

    .line 61
    .line 62
    const/4 v4, 0x3

    .line 63
    invoke-virtual {v0, v4, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lorg/bouncycastle/operator/jcajce/OperatorUtils;->getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    .line 71
    .line 72
    .line 73
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-object p1

    .line 75
    :catch_0
    move-exception p1

    .line 76
    new-instance v0, Lorg/bouncycastle/operator/OperatorException;

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v2, "Unable to wrap contents key: "

    .line 81
    .line 82
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p1, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    throw v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
