.class public Lorg/bouncycastle/cms/bc/BcRSAKeyTransRecipientInfoGenerator;
.super Lorg/bouncycastle/cms/bc/BcKeyTransRecipientInfoGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/bouncycastle/operator/bc/BcRSAAsymmetricKeyWrapper;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/bc/BcRSAAsymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/bc/BcKeyTransRecipientInfoGenerator;-><init>(Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;)V

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/operator/bc/BcRSAAsymmetricKeyWrapper;

    invoke-direct {v0, p2, p3}, Lorg/bouncycastle/operator/bc/BcRSAAsymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/bc/BcKeyTransRecipientInfoGenerator;-><init>([BLorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;)V

    return-void
.end method
