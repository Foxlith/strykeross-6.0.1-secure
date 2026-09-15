.class Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$ProviderHelper;
.super Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProviderHelper"
.end annotation


# instance fields
.field private final provider:Ljava/security/Provider;

.field final synthetic this$0:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;Ljava/security/Provider;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$ProviderHelper;->this$0:Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$Helper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder;Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$1;)V

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$ProviderHelper;->provider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public createContentSigner(Ljava/lang/String;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;
    .locals 1

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    invoke-direct {v0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$ProviderHelper;->provider:Ljava/security/Provider;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;

    move-result-object p1

    return-object p1
.end method

.method public createDigestCalculatorProvider()Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoGeneratorBuilder$ProviderHelper;->provider:Ljava/security/Provider;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v0

    return-object v0
.end method
