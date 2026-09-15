.class public Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;
.super Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;
.source "SourceFile"


# instance fields
.field private helper:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;-><init>(Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V

    new-instance p1, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;->helper:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->toASN1Structure()Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;-><init>(Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;-><init>(Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V

    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/security/PublicKey;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->getCertTemplate()Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getPublicKey()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;->helper:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;->toPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->getCertTemplate()Lorg/bouncycastle/asn1/crmf/CertTemplate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    .line 12
    .line 13
    const-string v2, "DER"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "unable to construct DER encoding of name: "

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;->helper:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;->helper:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    return-object p0
.end method
