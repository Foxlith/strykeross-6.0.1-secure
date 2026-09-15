.class public Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;,
        Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$NamedHelper;,
        Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$ProviderHelper;
    }
.end annotation


# instance fields
.field private helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$1;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    return-void
.end method


# virtual methods
.method public build(Ljava/security/PublicKey;)Lorg/bouncycastle/cms/SignerInformationVerifier;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/cms/SignerInformationVerifier;

    new-instance v1, Lorg/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;

    invoke-direct {v1}, Lorg/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;-><init>()V

    new-instance v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v2}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;->createContentVerifierProvider(Ljava/security/PublicKey;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    invoke-virtual {v3}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;->createDigestCalculatorProvider()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/bouncycastle/cms/SignerInformationVerifier;-><init>(Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method

.method public build(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cms/SignerInformationVerifier;
    .locals 4

    .line 2
    new-instance v0, Lorg/bouncycastle/cms/SignerInformationVerifier;

    new-instance v1, Lorg/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;

    invoke-direct {v1}, Lorg/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;-><init>()V

    new-instance v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v2}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;->createContentVerifierProvider(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    invoke-virtual {v3}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;->createDigestCalculatorProvider()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/bouncycastle/cms/SignerInformationVerifier;-><init>(Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method

.method public build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cms/SignerInformationVerifier;
    .locals 4

    .line 3
    new-instance v0, Lorg/bouncycastle/cms/SignerInformationVerifier;

    new-instance v1, Lorg/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;

    invoke-direct {v1}, Lorg/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;-><init>()V

    new-instance v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v2}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;->createContentVerifierProvider(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    invoke-virtual {v3}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;->createDigestCalculatorProvider()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/bouncycastle/cms/SignerInformationVerifier;-><init>(Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$NamedHelper;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$NamedHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$ProviderHelper;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$ProviderHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    return-object p0
.end method
