.class public Lorg/bouncycastle/its/bc/BcITSExplicitCertificateBuilder;
.super Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;-><init>(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;)V

    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/oer/its/CertificateId;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/its/bc/BcITSExplicitCertificateBuilder;->build(Lorg/bouncycastle/oer/its/CertificateId;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/its/ITSCertificate;

    move-result-object p1

    return-object p1
.end method

.method public build(Lorg/bouncycastle/oer/its/CertificateId;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    .line 2
    if-eqz p3, :cond_0

    new-instance v0, Lorg/bouncycastle/its/bc/BcITSPublicEncryptionKey;

    invoke-direct {v0, p3}, Lorg/bouncycastle/its/bc/BcITSPublicEncryptionKey;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance p3, Lorg/bouncycastle/its/bc/BcITSPublicVerificationKey;

    invoke-direct {p3, p2}, Lorg/bouncycastle/its/bc/BcITSPublicVerificationKey;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    invoke-super {p0, p1, p3, v0}, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->build(Lorg/bouncycastle/oer/its/CertificateId;Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/its/ITSPublicEncryptionKey;)Lorg/bouncycastle/its/ITSCertificate;

    move-result-object p1

    return-object p1
.end method
