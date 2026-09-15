.class public Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;
.super Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;
.source "SourceFile"


# instance fields
.field private helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;-><init>(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;-><init>(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;)V

    iput-object p3, p0, Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/oer/its/CertificateId;Ljava/security/interfaces/ECPublicKey;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;->build(Lorg/bouncycastle/oer/its/CertificateId;Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPublicKey;)Lorg/bouncycastle/its/ITSCertificate;

    move-result-object p1

    return-object p1
.end method

.method public build(Lorg/bouncycastle/oer/its/CertificateId;Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPublicKey;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 2

    .line 2
    if-eqz p3, :cond_0

    new-instance v0, Lorg/bouncycastle/its/jcajce/JceITSPublicEncryptionKey;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v0, p3, v1}, Lorg/bouncycastle/its/jcajce/JceITSPublicEncryptionKey;-><init>(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance p3, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {p3, p2, v1}, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;-><init>(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    invoke-super {p0, p1, p3, v0}, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->build(Lorg/bouncycastle/oer/its/CertificateId;Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/its/ITSPublicEncryptionKey;)Lorg/bouncycastle/its/ITSCertificate;

    move-result-object p1

    return-object p1
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method
