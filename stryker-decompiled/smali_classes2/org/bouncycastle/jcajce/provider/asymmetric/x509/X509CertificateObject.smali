.class Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject$X509CertificateEncodingException;
    }
.end annotation


# instance fields
.field private attrCarrier:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

.field private final cacheLock:Ljava/lang/Object;

.field private volatile hashValue:I

.field private volatile hashValueSet:Z

.field private internalCertificateValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

.field private issuerValue:Ljavax/security/auth/x500/X500Principal;

.field private publicKeyValue:Ljava/security/PublicKey;

.field private subjectValue:Ljavax/security/auth/x500/X500Principal;

.field private validityValues:[J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/x509/Certificate;)V
    .locals 7

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->createBasicConstraints(Lorg/bouncycastle/asn1/x509/Certificate;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v3

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->createKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;)[Z

    move-result-object v4

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->createSigAlgName(Lorg/bouncycastle/asn1/x509/Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->createSigAlgParams(Lorg/bouncycastle/asn1/x509/Certificate;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/x509/Certificate;Lorg/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->attrCarrier:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    return-void
.end method

.method private static createBasicConstraints(Lorg/bouncycastle/asn1/x509/Certificate;)Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "2.5.29.19"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionOctets(Lorg/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    .line 22
    .line 23
    const-string v1, "cannot construct BasicConstraints: "

    .line 24
    .line 25
    invoke-static {v1, p0}, Ll1/e;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method private static createKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;)[Z
    .locals 7

    .line 1
    :try_start_0
    const-string v0, "2.5.29.15"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionOctets(Lorg/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBitString;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    array-length v1, v0

    .line 24
    mul-int/lit8 v1, v1, 0x8

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    sub-int/2addr v1, p0

    .line 31
    const/16 p0, 0x9

    .line 32
    .line 33
    if-ge v1, p0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move p0, v1

    .line 37
    :goto_0
    new-array p0, p0, [Z

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    move v3, v2

    .line 41
    :goto_1
    if-eq v3, v1, :cond_3

    .line 42
    .line 43
    div-int/lit8 v4, v3, 0x8

    .line 44
    .line 45
    aget-byte v4, v0, v4

    .line 46
    .line 47
    rem-int/lit8 v5, v3, 0x8

    .line 48
    .line 49
    const/16 v6, 0x80

    .line 50
    .line 51
    ushr-int v5, v6, v5

    .line 52
    .line 53
    and-int/2addr v4, v5

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move v4, v2

    .line 59
    :goto_2
    aput-boolean v4, p0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    return-object p0

    .line 67
    :goto_3
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    .line 68
    .line 69
    const-string v1, "cannot construct KeyUsage: "

    .line 70
    .line 71
    invoke-static {v1, p0}, Ll1/e;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0
.end method

.method private static createSigAlgName(Lorg/bouncycastle/asn1/x509/Certificate;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    .line 12
    .line 13
    const-string v1, "cannot construct SigAlgName: "

    .line 14
    .line 15
    invoke-static {v1, p0}, Ll1/e;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method private static createSigAlgParams(Lorg/bouncycastle/asn1/x509/Certificate;)[B
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "DER"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    .line 26
    .line 27
    const-string v1, "cannot construct SigAlgParams: "

    .line 28
    .line 29
    invoke-static {v1, p0}, Ll1/e;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method private getInternalCertificate()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lorg/bouncycastle/asn1/x509/Certificate;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v11, v0

    move-object v10, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject$X509CertificateEncodingException;

    invoke-direct {v2, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject$X509CertificateEncodingException;-><init>(Ljava/lang/Throwable;)V

    move-object v10, v0

    move-object v11, v2

    :goto_0
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->bcHelper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lorg/bouncycastle/asn1/x509/Certificate;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->basicConstraints:Lorg/bouncycastle/asn1/x509/BasicConstraints;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->keyUsage:[Z

    iget-object v8, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgName:Ljava/lang/String;

    iget-object v9, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgParams:[B

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/x509/Certificate;Lorg/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B[BLjava/security/cert/CertificateEncodingException;)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    if-nez v2, :cond_1

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method


# virtual methods
.method public checkValidity(Ljava/util/Date;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getValidityValues()[J

    move-result-object p1

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "certificate not valid till "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Certificate;->getStartDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/security/cert/CertificateExpiredException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "certificate expired on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Certificate;->getEndDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValueSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValueSet:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValue:I

    iget v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValue:I

    if-eq v0, v2, :cond_3

    return v1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getSignature()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/Certificate;->getSignature()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getInternalCertificate()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    move-result-object v0

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getInternalCertificate()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getInternalCertificate()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    move-result-object v0

    goto :goto_0
.end method

.method public getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->attrCarrier:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->attrCarrier:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getInternalCertificate()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->issuerValue:Ljavax/security/auth/x500/X500Principal;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->issuerValue:Ljavax/security/auth/x500/X500Principal;

    if-nez v2, :cond_1

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->issuerValue:Ljavax/security/auth/x500/X500Principal;

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->issuerValue:Ljavax/security/auth/x500/X500Principal;

    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->publicKeyValue:Ljava/security/PublicKey;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->publicKeyValue:Ljava/security/PublicKey;

    if-nez v2, :cond_2

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->publicKeyValue:Ljava/security/PublicKey;

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->publicKeyValue:Ljava/security/PublicKey;

    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->subjectValue:Ljavax/security/auth/x500/X500Principal;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->subjectValue:Ljavax/security/auth/x500/X500Principal;

    if-nez v2, :cond_1

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->subjectValue:Ljavax/security/auth/x500/X500Principal;

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->subjectValue:Ljavax/security/auth/x500/X500Principal;

    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getValidityValues()[J
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->validityValues:[J

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    new-array v0, v0, [J

    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->validityValues:[J

    if-nez v2, :cond_1

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->validityValues:[J

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->validityValues:[J

    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValueSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getInternalCertificate()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValue:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValueSet:Z

    :cond_0
    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValue:I

    return v0
.end method

.method public originalHashCode()I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getInternalCertificate()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x1

    move v3, v0

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    aget-byte v4, v1, v2
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3

    :catch_0
    return v0
.end method

.method public setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->attrCarrier:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method
