.class Lorg/bouncycastle/cert/jcajce/DefaultCertHelper;
.super Lorg/bouncycastle/cert/jcajce/CertHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cert/jcajce/CertHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 0

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    return-object p1
.end method
