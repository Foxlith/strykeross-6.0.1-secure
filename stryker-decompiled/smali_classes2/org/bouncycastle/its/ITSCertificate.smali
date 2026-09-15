.class public Lorg/bouncycastle/its/ITSCertificate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# instance fields
.field private final certificate:Lorg/bouncycastle/oer/its/Certificate;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/Certificate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/Certificate;

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/Certificate;->getCertificateBase()Lorg/bouncycastle/oer/its/CertificateBase;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->certificate:Lorg/bouncycastle/oer/OERDefinition$Element;

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/oer/its/IssuerIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/Certificate;->getCertificateBase()Lorg/bouncycastle/oer/its/CertificateBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/CertificateBase;->getIssuer()Lorg/bouncycastle/oer/its/IssuerIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getPublicEncryptionKey()Lorg/bouncycastle/its/ITSPublicEncryptionKey;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/Certificate;->getCertificateBase()Lorg/bouncycastle/oer/its/CertificateBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/CertificateBase;->getToBeSignedCertificate()Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->getEncryptionKey()Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/its/ITSPublicEncryptionKey;

    invoke-direct {v1, v0}, Lorg/bouncycastle/its/ITSPublicEncryptionKey;-><init>(Lorg/bouncycastle/oer/its/PublicEncryptionKey;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValidityPeriod()Lorg/bouncycastle/its/ITSValidityPeriod;
    .locals 2

    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod;

    iget-object v1, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/Certificate;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/Certificate;->getCertificateBase()Lorg/bouncycastle/oer/its/CertificateBase;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/CertificateBase;->getToBeSignedCertificate()Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->getValidityPeriod()Lorg/bouncycastle/oer/its/ValidityPeriod;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/its/ITSValidityPeriod;-><init>(Lorg/bouncycastle/oer/its/ValidityPeriod;)V

    return-object v0
.end method

.method public isSignatureValid(Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;)Z
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/Certificate;->getCertificateBase()Lorg/bouncycastle/oer/its/CertificateBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/CertificateBase;->getSignature()Lorg/bouncycastle/oer/its/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/Signature;->getChoice()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;->get(I)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/Certificate;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/Certificate;->getCertificateBase()Lorg/bouncycastle/oer/its/CertificateBase;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/CertificateBase;->getToBeSignedCertificate()Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->tbsCertificate:Lorg/bouncycastle/oer/OERDefinition$Element;

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/Certificate;->getCertificateBase()Lorg/bouncycastle/oer/its/CertificateBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/CertificateBase;->getSignature()Lorg/bouncycastle/oer/its/Signature;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toX962(Lorg/bouncycastle/oer/its/Signature;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result p1

    return p1
.end method

.method public toASN1Structure()Lorg/bouncycastle/oer/its/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/Certificate;

    return-object v0
.end method
