.class public Lorg/bouncycastle/operator/bc/BcRSAContentVerifierProviderBuilder;
.super Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;
.source "SourceFile"


# instance fields
.field private digestAlgorithmFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/bc/BcRSAContentVerifierProviderBuilder;->digestAlgorithmFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    return-void
.end method


# virtual methods
.method public createSigner(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/Signer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcRSAContentVerifierProviderBuilder;->digestAlgorithmFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;->digestProvider:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/bc/BcDigestProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/crypto/signers/RSADigestSigner;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/signers/RSADigestSigner;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-object v0
.end method

.method public extractKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    return-object p1
.end method
