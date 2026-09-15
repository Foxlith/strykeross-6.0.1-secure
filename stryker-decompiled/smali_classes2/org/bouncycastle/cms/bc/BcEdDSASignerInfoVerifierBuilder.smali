.class public Lorg/bouncycastle/cms/bc/BcEdDSASignerInfoVerifierBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contentVerifierProviderBuilder:Lorg/bouncycastle/operator/bc/BcEdDSAContentVerifierProviderBuilder;

.field private digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

.field private sigAlgIdFinder:Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

.field private sigAlgNameGen:Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/bc/BcEdDSASignerInfoVerifierBuilder;->sigAlgNameGen:Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    iput-object p2, p0, Lorg/bouncycastle/cms/bc/BcEdDSASignerInfoVerifierBuilder;->sigAlgIdFinder:Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    new-instance p1, Lorg/bouncycastle/operator/bc/BcEdDSAContentVerifierProviderBuilder;

    invoke-direct {p1}, Lorg/bouncycastle/operator/bc/BcEdDSAContentVerifierProviderBuilder;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/bc/BcEdDSASignerInfoVerifierBuilder;->contentVerifierProviderBuilder:Lorg/bouncycastle/operator/bc/BcEdDSAContentVerifierProviderBuilder;

    iput-object p4, p0, Lorg/bouncycastle/cms/bc/BcEdDSASignerInfoVerifierBuilder;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cms/SignerInformationVerifier;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/cms/SignerInformationVerifier;

    iget-object v1, p0, Lorg/bouncycastle/cms/bc/BcEdDSASignerInfoVerifierBuilder;->sigAlgNameGen:Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    iget-object v2, p0, Lorg/bouncycastle/cms/bc/BcEdDSASignerInfoVerifierBuilder;->sigAlgIdFinder:Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    iget-object v3, p0, Lorg/bouncycastle/cms/bc/BcEdDSASignerInfoVerifierBuilder;->contentVerifierProviderBuilder:Lorg/bouncycastle/operator/bc/BcEdDSAContentVerifierProviderBuilder;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;->build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/cms/bc/BcEdDSASignerInfoVerifierBuilder;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/bouncycastle/cms/SignerInformationVerifier;-><init>(Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method

.method public build(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/cms/SignerInformationVerifier;
    .locals 4

    .line 2
    new-instance v0, Lorg/bouncycastle/cms/SignerInformationVerifier;

    iget-object v1, p0, Lorg/bouncycastle/cms/bc/BcEdDSASignerInfoVerifierBuilder;->sigAlgNameGen:Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    iget-object v2, p0, Lorg/bouncycastle/cms/bc/BcEdDSASignerInfoVerifierBuilder;->sigAlgIdFinder:Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    iget-object v3, p0, Lorg/bouncycastle/cms/bc/BcEdDSASignerInfoVerifierBuilder;->contentVerifierProviderBuilder:Lorg/bouncycastle/operator/bc/BcEdDSAContentVerifierProviderBuilder;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;->build(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/cms/bc/BcEdDSASignerInfoVerifierBuilder;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/bouncycastle/cms/SignerInformationVerifier;-><init>(Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method
