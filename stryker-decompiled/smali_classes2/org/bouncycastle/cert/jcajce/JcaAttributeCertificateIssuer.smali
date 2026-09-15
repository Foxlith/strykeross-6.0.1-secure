.class public Lorg/bouncycastle/cert/jcajce/JcaAttributeCertificateIssuer;
.super Lorg/bouncycastle/cert/AttributeCertificateIssuer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/jcajce/JcaAttributeCertificateIssuer;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/AttributeCertificateIssuer;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    return-void
.end method
