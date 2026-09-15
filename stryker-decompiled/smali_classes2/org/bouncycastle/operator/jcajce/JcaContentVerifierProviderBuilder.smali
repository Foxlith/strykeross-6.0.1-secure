.class public Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;,
        Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;,
        Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;
    }
.end annotation


# instance fields
.field private helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Lorg/bouncycastle/operator/ContentVerifier;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->createCompositeVerifier(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;)Lorg/bouncycastle/operator/jcajce/OperatorHelper;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->createRawSig(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->createSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method

.method private createCompositeVerifier(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Lorg/bouncycastle/operator/ContentVerifier;
    .locals 5

    instance-of v0, p2, Lorg/bouncycastle/jcajce/CompositePublicKey;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lorg/bouncycastle/jcajce/CompositePublicKey;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/CompositePublicKey;->getPublicKeys()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/Signature;

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/PublicKey;

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->createSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    :cond_0
    aput-object v1, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;

    invoke-direct {p1, p0, v0}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;-><init>(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;[Ljava/security/Signature;)V

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/Signature;

    :goto_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    :try_start_0
    invoke-direct {p0, v3, p2}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->createSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    aput-object v1, v0, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance p1, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;

    invoke-direct {p1, p0, v0}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;-><init>(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;[Ljava/security/Signature;)V

    return-object p1
.end method

.method private createRawSig(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createRawSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/Signature;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1
.end method

.method private createSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/Signature;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception on setup: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public build(Ljava/security/PublicKey;)Lorg/bouncycastle/operator/ContentVerifierProvider;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;-><init>(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Ljava/security/PublicKey;)V

    return-object v0
.end method

.method public build(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/operator/ContentVerifierProvider;
    .locals 3

    .line 2
    :try_start_0
    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$1;

    invoke-direct {v1, p0, v0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$1;-><init>(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lorg/bouncycastle/cert/X509CertificateHolder;Ljava/security/cert/X509Certificate;)V

    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot process certificate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public build(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/operator/ContentVerifierProvider;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->convertPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Ljava/security/PublicKey;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object p1

    return-object p1
.end method

.method public build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/operator/ContentVerifierProvider;
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->convertCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object p1

    return-object p1
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method
