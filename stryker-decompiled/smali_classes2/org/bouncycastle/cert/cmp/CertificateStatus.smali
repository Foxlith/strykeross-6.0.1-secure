.class public Lorg/bouncycastle/cert/cmp/CertificateStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private certStatus:Lorg/bouncycastle/asn1/cmp/CertStatus;

.field private digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;Lorg/bouncycastle/asn1/cmp/CertStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/CertificateStatus;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    iput-object p2, p0, Lorg/bouncycastle/cert/cmp/CertificateStatus;->certStatus:Lorg/bouncycastle/asn1/cmp/CertStatus;

    return-void
.end method


# virtual methods
.method public getCertRequestID()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateStatus;->certStatus:Lorg/bouncycastle/asn1/cmp/CertStatus;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CertStatus;->getCertReqId()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getStatusInfo()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateStatus;->certStatus:Lorg/bouncycastle/asn1/cmp/CertStatus;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CertStatus;->getStatusInfo()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public isVerified(Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/operator/DigestCalculatorProvider;)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateStatus;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p2, v0}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p2
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p1

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/cert/cmp/CMPUtil;->derEncodeToStream(Lorg/bouncycastle/asn1/ASN1Object;Ljava/io/OutputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/cert/cmp/CertificateStatus;->certStatus:Lorg/bouncycastle/asn1/cmp/CertStatus;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/CertStatus;->getCertHash()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/cmp/CMPException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to create digester: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Lorg/bouncycastle/cert/cmp/CMPException;

    const-string p2, "cannot find algorithm for digest from signature"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
