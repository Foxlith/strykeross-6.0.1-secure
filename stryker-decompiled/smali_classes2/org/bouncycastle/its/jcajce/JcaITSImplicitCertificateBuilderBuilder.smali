.class public Lorg/bouncycastle/its/jcajce/JcaITSImplicitCertificateBuilderBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private digestCalculatorProviderBuilder:Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSImplicitCertificateBuilderBuilder;->digestCalculatorProviderBuilder:Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;)Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSImplicitCertificateBuilderBuilder;->digestCalculatorProviderBuilder:Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-virtual {v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;-><init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/its/jcajce/JcaITSImplicitCertificateBuilderBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSImplicitCertificateBuilderBuilder;->digestCalculatorProviderBuilder:Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/its/jcajce/JcaITSImplicitCertificateBuilderBuilder;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSImplicitCertificateBuilderBuilder;->digestCalculatorProviderBuilder:Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    return-object p0
.end method
