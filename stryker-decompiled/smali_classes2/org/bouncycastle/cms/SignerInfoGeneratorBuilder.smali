.class public Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contentDigest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final digAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

.field private digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

.field private directSignature:Z

.field private sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

.field private signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

.field private unsignedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;

    invoke-direct {v0}, Lorg/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;-><init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->digAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    return-void
.end method

.method private createGenerator(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/cms/SignerIdentifier;)Lorg/bouncycastle/cms/SignerInfoGenerator;
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->contentDigest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-interface {v1, v0}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->digAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-boolean v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->directSignature:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/cms/SignerInfoGenerator;

    invoke-interface {v4}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    invoke-direct {v0, p2, p1, v1, v2}, Lorg/bouncycastle/cms/SignerInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v0, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/bouncycastle/cms/SignerInfoGenerator;

    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    new-instance v6, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v6}, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>()V

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cms/SignerInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V

    return-object v0

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    new-instance v0, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    :cond_4
    new-instance v0, Lorg/bouncycastle/cms/SignerInfoGenerator;

    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iget-object v6, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    iget-object v7, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cms/SignerInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V

    return-object v0
.end method


# virtual methods
.method public build(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cms/SignerInfoGenerator;
    .locals 3

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->createGenerator(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/cms/SignerIdentifier;)Lorg/bouncycastle/cms/SignerInfoGenerator;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/cms/SignerInfoGenerator;->setAssociatedCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)V

    return-object p1
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;[B)Lorg/bouncycastle/cms/SignerInfoGenerator;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->createGenerator(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/cms/SignerIdentifier;)Lorg/bouncycastle/cms/SignerInfoGenerator;

    move-result-object p1

    return-object p1
.end method

.method public setContentDigest(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->contentDigest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public setDirectSignature(Z)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->directSignature:Z

    return-object p0
.end method

.method public setSignedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object p0
.end method

.method public setUnsignedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object p0
.end method
