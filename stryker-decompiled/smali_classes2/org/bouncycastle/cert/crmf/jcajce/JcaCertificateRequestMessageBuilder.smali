.class public Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessageBuilder;
.super Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public setAuthInfoSender(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessageBuilder;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->setAuthInfoSender(Lorg/bouncycastle/asn1/x509/GeneralName;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;

    :cond_0
    return-object p0
.end method

.method public setIssuer(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessageBuilder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;

    :cond_0
    return-object p0
.end method

.method public setPublicKey(Ljava/security/PublicKey;)Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessageBuilder;
    .locals 0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->setPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;

    return-object p0
.end method

.method public setSubject(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessageBuilder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->setSubject(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;

    :cond_0
    return-object p0
.end method
