.class public abstract Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$SigVerifier;
    }
.end annotation


# instance fields
.field protected digestProvider:Lorg/bouncycastle/operator/bc/BcDigestProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    iput-object v0, p0, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;->digestProvider:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/operator/bc/BcSignerOutputStream;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;->createSignatureStream(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/operator/bc/BcSignerOutputStream;

    move-result-object p0

    return-object p0
.end method

.method private createSignatureStream(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/operator/bc/BcSignerOutputStream;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;->createSigner(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/Signer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/bouncycastle/crypto/Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-instance p2, Lorg/bouncycastle/operator/bc/BcSignerOutputStream;

    invoke-direct {p2, p1}, Lorg/bouncycastle/operator/bc/BcSignerOutputStream;-><init>(Lorg/bouncycastle/crypto/Signer;)V

    return-object p2
.end method


# virtual methods
.method public build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/operator/ContentVerifierProvider;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$1;-><init>(Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;Lorg/bouncycastle/cert/X509CertificateHolder;)V

    return-object v0
.end method

.method public build(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/operator/ContentVerifierProvider;
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$2;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$2;-><init>(Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public abstract createSigner(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/Signer;
.end method

.method public abstract extractKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.end method
