.class public Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;
.super Lorg/bouncycastle/its/ITSCertificateBuilder;
.source "SourceFile"


# instance fields
.field private final signer:Lorg/bouncycastle/its/operator/ITSContentSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/bouncycastle/its/ITSCertificateBuilder;-><init>(Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;)V

    iput-object p1, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/oer/its/CertificateId;Lorg/bouncycastle/its/ITSPublicVerificationKey;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->build(Lorg/bouncycastle/oer/its/CertificateId;Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/its/ITSPublicEncryptionKey;)Lorg/bouncycastle/its/ITSCertificate;

    move-result-object p1

    return-object p1
.end method

.method public build(Lorg/bouncycastle/oer/its/CertificateId;Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/its/ITSPublicEncryptionKey;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 7

    .line 2
    new-instance v0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    iget-object v1, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;-><init>(Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setCertificateId(Lorg/bouncycastle/oer/its/CertificateId;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/bouncycastle/its/ITSPublicEncryptionKey;->toASN1Structure()Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setEncryptionKey(Lorg/bouncycastle/oer/its/PublicEncryptionKey;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    :cond_0
    invoke-static {}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator;->builder()Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/its/ITSPublicVerificationKey;->toASN1Structure()Lorg/bouncycastle/oer/its/PublicVerificationKey;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;->publicVerificationKey(Lorg/bouncycastle/oer/its/PublicVerificationKey;)Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;->createVerificationKeyIndicator()Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setVerificationKeyIndicator(Lorg/bouncycastle/oer/its/VerificationKeyIndicator;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->createToBeSignedCertificate()Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {p2}, Lorg/bouncycastle/its/operator/ITSContentSigner;->isForSelfSigning()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->getVerificationKeyIndicator()Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {p2}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/Certificate;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/oer/its/Certificate;->getCertificateBase()Lorg/bouncycastle/oer/its/CertificateBase;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/oer/its/CertificateBase;->getToBeSignedCertificate()Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->getVerificationKeyIndicator()Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    move-result-object p2

    :goto_0
    iget-object p3, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {p3}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    :try_start_0
    sget-object v0, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->tbsCertificate:Lorg/bouncycastle/oer/OERDefinition$Element;

    invoke-static {p1, v0}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator;->getChoice()I

    move-result p2

    if-eqz p2, :cond_4

    const/4 p3, 0x1

    if-eq p2, p3, :cond_3

    const/4 p3, 0x3

    if-ne p2, p3, :cond_2

    sget-object p2, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object p3, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {p3}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getSignature()[B

    move-result-object p3

    invoke-static {p2, p3}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toITS(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/oer/its/Signature;

    move-result-object p2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unknown key type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    sget-object p2, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object p3, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {p3}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getSignature()[B

    move-result-object p3

    invoke-static {p2, p3}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toITS(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/oer/its/Signature;

    move-result-object p2

    goto :goto_1

    :cond_4
    sget-object p2, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object p3, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {p3}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getSignature()[B

    move-result-object p3

    invoke-static {p2, p3}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toITS(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/oer/its/Signature;

    move-result-object p2

    :goto_1
    new-instance p3, Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    invoke-direct {p3}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;-><init>()V

    invoke-static {}, Lorg/bouncycastle/oer/its/IssuerIdentifier;->builder()Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v2}, Lorg/bouncycastle/its/operator/ITSContentSigner;->isForSelfSigning()Z

    move-result v2

    const-string v3, "unknown digest"

    if-eqz v2, :cond_7

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lorg/bouncycastle/oer/its/HashAlgorithm;->sha256:Lorg/bouncycastle/oer/its/HashAlgorithm;

    :goto_2
    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->self(Lorg/bouncycastle/oer/its/HashAlgorithm;)Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;

    goto :goto_3

    :cond_5
    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lorg/bouncycastle/oer/its/HashAlgorithm;->sha384:Lorg/bouncycastle/oer/its/HashAlgorithm;

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-object v2, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v2}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getAssociatedCertificateDigest()[B

    move-result-object v2

    new-instance v4, Lorg/bouncycastle/oer/its/HashedId$HashedId8;

    array-length v5, v2

    add-int/lit8 v5, v5, -0x8

    array-length v6, v2

    invoke-static {v2, v5, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/bouncycastle/oer/its/HashedId$HashedId8;-><init>([B)V

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v4}, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->sha256AndDigest(Lorg/bouncycastle/oer/its/HashedId;)Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;

    goto :goto_3

    :cond_8
    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v4}, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->sha384AndDigest(Lorg/bouncycastle/oer/its/HashedId;)Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;

    :goto_3
    iget-object v1, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p3, v1}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->setVersion(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    sget-object v1, Lorg/bouncycastle/oer/its/CertificateType;->Explicit:Lorg/bouncycastle/oer/its/CertificateType;

    invoke-virtual {p3, v1}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->setType(Lorg/bouncycastle/oer/its/CertificateType;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->createIssuerIdentifier()Lorg/bouncycastle/oer/its/IssuerIdentifier;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->setIssuer(Lorg/bouncycastle/oer/its/IssuerIdentifier;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    invoke-virtual {p3, p1}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->setToBeSignedCertificate(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    invoke-virtual {p3, p2}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->setSignature(Lorg/bouncycastle/oer/its/Signature;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    new-instance p1, Lorg/bouncycastle/oer/its/Certificate$Builder;

    invoke-direct {p1}, Lorg/bouncycastle/oer/its/Certificate$Builder;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->createCertificateBase()Lorg/bouncycastle/oer/its/CertificateBase;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/oer/its/Certificate$Builder;->setCertificateBase(Lorg/bouncycastle/oer/its/CertificateBase;)Lorg/bouncycastle/oer/its/Certificate$Builder;

    new-instance p2, Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/Certificate$Builder;->createCertificate()Lorg/bouncycastle/oer/its/Certificate;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/its/ITSCertificate;-><init>(Lorg/bouncycastle/oer/its/Certificate;)V

    return-object p2

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot produce certificate signature"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
