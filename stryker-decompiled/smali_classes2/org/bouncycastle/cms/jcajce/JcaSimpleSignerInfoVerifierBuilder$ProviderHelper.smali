.class Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$ProviderHelper;
.super Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProviderHelper"
.end annotation


# instance fields
.field private final provider:Ljava/security/Provider;

.field final synthetic this$0:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;Ljava/security/Provider;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$ProviderHelper;->this$0:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$1;)V

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$ProviderHelper;->provider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public createContentVerifierProvider(Ljava/security/PublicKey;)Lorg/bouncycastle/operator/ContentVerifierProvider;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$ProviderHelper;->provider:Ljava/security/Provider;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Ljava/security/PublicKey;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object p1

    return-object p1
.end method

.method public createContentVerifierProvider(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/operator/ContentVerifierProvider;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$ProviderHelper;->provider:Ljava/security/Provider;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object p1

    return-object p1
.end method

.method public createContentVerifierProvider(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/operator/ContentVerifierProvider;
    .locals 2

    .line 3
    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$ProviderHelper;->provider:Ljava/security/Provider;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object p1

    return-object p1
.end method

.method public createDigestCalculatorProvider()Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$ProviderHelper;->provider:Ljava/security/Provider;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v0

    return-object v0
.end method
