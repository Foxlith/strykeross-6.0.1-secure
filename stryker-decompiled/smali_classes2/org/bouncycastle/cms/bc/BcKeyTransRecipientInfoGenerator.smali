.class public abstract Lorg/bouncycastle/cms/bc/BcKeyTransRecipientInfoGenerator;
.super Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;Lorg/bouncycastle/operator/AsymmetricKeyWrapper;)V

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;-><init>([BLorg/bouncycastle/operator/AsymmetricKeyWrapper;)V

    return-void
.end method
