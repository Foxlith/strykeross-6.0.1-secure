.class Lorg/bouncycastle/cert/jcajce/ProviderCertHelper;
.super Lorg/bouncycastle/cert/jcajce/CertHelper;
.source "SourceFile"


# instance fields
.field private final provider:Ljava/security/Provider;


# direct methods
.method public constructor <init>(Ljava/security/Provider;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cert/jcajce/CertHelper;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/jcajce/ProviderCertHelper;->provider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/ProviderCertHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    return-object p1
.end method
