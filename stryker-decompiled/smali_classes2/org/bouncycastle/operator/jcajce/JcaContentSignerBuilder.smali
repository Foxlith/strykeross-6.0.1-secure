.class public Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

.field private random:Ljava/security/SecureRandom;

.field private sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private sigAlgSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private signatureAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->signatureAlgorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->signatureAlgorithm:Ljava/lang/String;

    instance-of p1, p2, Ljava/security/spec/PSSParameterSpec;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/security/spec/PSSParameterSpec;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgSpec:Ljava/security/spec/AlgorithmParameterSpec;

    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p2}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->createPSSParams(Ljava/security/spec/PSSParameterSpec;)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    :cond_0
    instance-of p1, p2, Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;

    if-eqz p1, :cond_1

    check-cast p2, Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgSpec:Ljava/security/spec/AlgorithmParameterSpec;

    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_alg_composite:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p2}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->createCompParams(Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    if-nez p2, :cond_2

    const-string p2, "null"

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_2
    const-string v0, "unknown sigParamSpec: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method private buildComposite(Lorg/bouncycastle/jcajce/CompositePrivateKey;)Lorg/bouncycastle/operator/ContentSigner;
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/CompositePrivateKey;->getPrivateKeys()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    new-array v2, v1, [Ljava/security/Signature;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eq v4, v5, :cond_1

    .line 28
    .line 29
    iget-object v5, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v5, v6}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/Signature;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    aput-object v5, v2, v4

    .line 44
    .line 45
    iget-object v6, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->random:Ljava/security/SecureRandom;

    .line 46
    .line 47
    if-eqz v6, :cond_0

    .line 48
    .line 49
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Ljava/security/PrivateKey;

    .line 54
    .line 55
    iget-object v7, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->random:Ljava/security/SecureRandom;

    .line 56
    .line 57
    invoke-virtual {v5, v6, v7}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception p1

    .line 62
    goto :goto_3

    .line 63
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Ljava/security/PrivateKey;

    .line 68
    .line 69
    invoke-virtual {v5, v6}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    aget-object p1, v2, v3

    .line 76
    .line 77
    invoke-static {p1}, Lorg/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/4 v0, 0x1

    .line 82
    :goto_2
    if-eq v0, v1, :cond_2

    .line 83
    .line 84
    new-instance v3, Lorg/bouncycastle/util/io/TeeOutputStream;

    .line 85
    .line 86
    aget-object v4, v2, v0

    .line 87
    .line 88
    invoke-static {v4}, Lorg/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-direct {v3, p1, v4}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v0, v0, 0x1

    .line 96
    .line 97
    move-object p1, v3

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;

    .line 100
    .line 101
    invoke-direct {v0, p0, p1, v2}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;-><init>(Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;Ljava/io/OutputStream;[Ljava/security/Signature;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    return-object v0

    .line 105
    :goto_3
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v2, "cannot create signer: "

    .line 110
    .line 111
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    throw v0
.end method

.method private static createCompParams(Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 6

    new-instance v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->getAlgorithmNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->getParameterSpecs()Ljava/util/List;

    move-result-object p0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/spec/AlgorithmParameterSpec;

    if-nez v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_2

    :cond_0
    instance-of v5, v4, Ljava/security/spec/PSSParameterSpec;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/security/spec/PSSParameterSpec;

    invoke-static {v4}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->createPSSParams(Ljava/security/spec/PSSParameterSpec;)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v4

    goto :goto_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unrecognized parameterSpec"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method

.method private static createPSSParams(Ljava/security/spec/PSSParameterSpec;)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    .locals 7

    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v2, v0, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object v0, v2

    :cond_1
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v0, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result p0

    int-to-long v5, p0

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v2, v1, v3, v0, v4}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;)V

    return-object v2
.end method


# virtual methods
.method public build(Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/jcajce/CompositePrivateKey;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/bouncycastle/jcajce/CompositePrivateKey;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->buildComposite(Lorg/bouncycastle/jcajce/CompositePrivateKey;)Lorg/bouncycastle/operator/ContentSigner;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/Signature;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 21
    .line 22
    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->random:Ljava/security/SecureRandom;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, p1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    new-instance p1, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;

    .line 36
    .line 37
    invoke-direct {p1, p0, v0, v1}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;-><init>(Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;Ljava/security/Signature;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :goto_1
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "cannot create signer: "

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
