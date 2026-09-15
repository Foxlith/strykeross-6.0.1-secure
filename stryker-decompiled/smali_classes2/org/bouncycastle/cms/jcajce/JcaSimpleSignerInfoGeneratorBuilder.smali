.class public Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;,
        Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$NamedHelper;,
        Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$ProviderHelper;
    }
.end annotation


# instance fields
.field private contentDigest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private hasNoSignedAttributes:Z

.field private helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;

.field private signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

.field private unsignedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$1;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;

    return-void
.end method

.method private configureAndBuild()Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;

    invoke-virtual {v1}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;->createDigestCalculatorProvider()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;-><init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    iget-boolean v1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->hasNoSignedAttributes:Z

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->setDirectSignature(Z)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->contentDigest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->setContentDigest(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->setSignedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->unsignedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->setUnsignedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    return-object v0
.end method


# virtual methods
.method public build(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cms/SignerInfoGenerator;
    .locals 1

    .line 1
    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;->createContentSigner(Ljava/lang/String;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;

    move-result-object p1

    invoke-direct {p0}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->configureAndBuild()Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v0, p3}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p2, p1, v0}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cms/SignerInfoGenerator;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/lang/String;Ljava/security/PrivateKey;Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cms/SignerInfoGenerator;
    .locals 1

    .line 2
    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;->createContentSigner(Ljava/lang/String;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;

    move-result-object p1

    invoke-direct {p0}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->configureAndBuild()Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cms/SignerInfoGenerator;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/lang/String;Ljava/security/PrivateKey;[B)Lorg/bouncycastle/cms/SignerInfoGenerator;
    .locals 1

    .line 3
    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;->createContentSigner(Ljava/lang/String;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;

    move-result-object p1

    invoke-direct {p0}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->configureAndBuild()Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;[B)Lorg/bouncycastle/cms/SignerInfoGenerator;

    move-result-object p1

    return-object p1
.end method

.method public setContentDigest(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->contentDigest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public setDirectSignature(Z)Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->hasNoSignedAttributes:Z

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$NamedHelper;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$NamedHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$ProviderHelper;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$ProviderHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->helper:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;

    return-object p0
.end method

.method public setSignedAttributeGenerator(Lorg/bouncycastle/asn1/cms/AttributeTable;)Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>(Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object p0
.end method

.method public setSignedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object p0
.end method

.method public setUnsignedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;->unsignedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object p0
.end method
