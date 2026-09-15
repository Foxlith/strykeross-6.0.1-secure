.class public Lorg/bouncycastle/cert/ocsp/CertificateID;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HASH_SHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private final id:Lorg/bouncycastle/asn1/ocsp/CertID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/cert/ocsp/CertificateID;->HASH_SHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/CertID;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'id\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cert/X509CertificateHolder;Ljava/math/BigInteger;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/cert/ocsp/CertificateID;->createCertID(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    return-void
.end method

.method private static createCertID(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/asn1/ocsp/CertID;
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "DER"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    .line 26
    .line 27
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 54
    .line 55
    .line 56
    new-instance p1, Lorg/bouncycastle/asn1/DEROctetString;

    .line 57
    .line 58
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lorg/bouncycastle/asn1/ocsp/CertID;

    .line 66
    .line 67
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-direct {v1, p0, v0, p1, p2}, Lorg/bouncycastle/asn1/ocsp/CertID;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :catch_0
    move-exception p0

    .line 76
    new-instance p1, Lorg/bouncycastle/cert/ocsp/OCSPException;

    .line 77
    .line 78
    const-string p2, "problem creating ID: "

    .line 79
    .line 80
    invoke-static {p2, p0}, Ll1/e;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public static deriveCertificateID(Lorg/bouncycastle/cert/ocsp/CertificateID;Ljava/math/BigInteger;)Lorg/bouncycastle/cert/ocsp/CertificateID;
    .locals 5

    new-instance v0, Lorg/bouncycastle/cert/ocsp/CertificateID;

    new-instance v1, Lorg/bouncycastle/asn1/ocsp/CertID;

    iget-object v2, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ocsp/CertID;->getIssuerNameHash()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    iget-object p0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getIssuerKeyHash()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v4, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3, p0, v4}, Lorg/bouncycastle/asn1/ocsp/CertID;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/ocsp/CertificateID;-><init>(Lorg/bouncycastle/asn1/ocsp/CertID;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/cert/ocsp/CertificateID;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/cert/ocsp/CertificateID;

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iget-object p1, p1, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ocsp/CertID;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    return p1
.end method

.method public getHashAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerKeyHash()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getIssuerKeyHash()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuerNameHash()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getIssuerNameHash()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v0

    return v0
.end method

.method public matchesIssuer(Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/operator/DigestCalculatorProvider;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lorg/bouncycastle/cert/ocsp/CertificateID;->createCertID(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/ocsp/OCSPException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to create digest calculator: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ocsp/CertID;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    return-object v0
.end method
