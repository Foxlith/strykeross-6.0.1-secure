.class public Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;
.super Lorg/bouncycastle/its/ITSCertificateBuilder;
.source "SourceFile"


# instance fields
.field private final issuerIdentifier:Lorg/bouncycastle/oer/its/IssuerIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;)V
    .locals 4

    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/its/ITSCertificateBuilder;-><init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;)V

    new-instance p3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p3, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    :try_start_0
    invoke-interface {p2, p3}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p2
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p1

    invoke-static {}, Lorg/bouncycastle/oer/its/IssuerIdentifier;->builder()Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;

    move-result-object p2

    new-instance p3, Lorg/bouncycastle/oer/its/HashedId$HashedId8;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x8

    array-length v3, p1

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/bouncycastle/oer/its/HashedId$HashedId8;-><init>([B)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->sha256AndDigest(Lorg/bouncycastle/oer/its/HashedId;)Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, p3}, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->sha384AndDigest(Lorg/bouncycastle/oer/its/HashedId;)Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;

    :goto_0
    invoke-virtual {p2}, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->createIssuerIdentifier()Lorg/bouncycastle/oer/its/IssuerIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;->issuerIdentifier:Lorg/bouncycastle/oer/its/IssuerIdentifier;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unknown digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public build(Lorg/bouncycastle/oer/its/CertificateId;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;->build(Lorg/bouncycastle/oer/its/CertificateId;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/oer/its/PublicEncryptionKey;)Lorg/bouncycastle/its/ITSCertificate;

    move-result-object p1

    return-object p1
.end method

.method public build(Lorg/bouncycastle/oer/its/CertificateId;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/oer/its/PublicEncryptionKey;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    .line 2
    invoke-static {}, Lorg/bouncycastle/oer/its/EccP256CurvePoint;->builder()Lorg/bouncycastle/oer/its/EccP256CurvePoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/bouncycastle/oer/its/EccP256CurvePoint$Builder;->createUncompressedP256(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    move-result-object p2

    new-instance p3, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    invoke-direct {p3, v0}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;-><init>(Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;)V

    invoke-virtual {p3, p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setCertificateId(Lorg/bouncycastle/oer/its/CertificateId;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    if-eqz p4, :cond_0

    invoke-virtual {p3, p4}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setEncryptionKey(Lorg/bouncycastle/oer/its/PublicEncryptionKey;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    :cond_0
    invoke-static {}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator;->builder()Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;->reconstructionValue(Lorg/bouncycastle/oer/its/EccP256CurvePoint;)Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;->createVerificationKeyIndicator()Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setVerificationKeyIndicator(Lorg/bouncycastle/oer/its/VerificationKeyIndicator;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    new-instance p1, Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    invoke-direct {p1}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;-><init>()V

    iget-object p2, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->setVersion(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    sget-object p2, Lorg/bouncycastle/oer/its/CertificateType;->Implicit:Lorg/bouncycastle/oer/its/CertificateType;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->setType(Lorg/bouncycastle/oer/its/CertificateType;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    iget-object p2, p0, Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;->issuerIdentifier:Lorg/bouncycastle/oer/its/IssuerIdentifier;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->setIssuer(Lorg/bouncycastle/oer/its/IssuerIdentifier;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->createToBeSignedCertificate()Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->setToBeSignedCertificate(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    new-instance p2, Lorg/bouncycastle/oer/its/Certificate$Builder;

    invoke-direct {p2}, Lorg/bouncycastle/oer/its/Certificate$Builder;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->createCertificateBase()Lorg/bouncycastle/oer/its/CertificateBase;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/its/Certificate$Builder;->setCertificateBase(Lorg/bouncycastle/oer/its/CertificateBase;)Lorg/bouncycastle/oer/its/Certificate$Builder;

    new-instance p1, Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {p2}, Lorg/bouncycastle/oer/its/Certificate$Builder;->createCertificate()Lorg/bouncycastle/oer/its/Certificate;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/its/ITSCertificate;-><init>(Lorg/bouncycastle/oer/its/Certificate;)V

    return-object p1
.end method
