.class abstract Lorg/bouncycastle/cert/jcajce/CertHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
.end method

.method public getCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cert/jcajce/CertHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    return-object p1
.end method
