.class public Lorg/bouncycastle/cert/X509CertificateHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4b244cad1L


# instance fields
.field private transient extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private transient x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/Certificate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->init(Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->parseBytes([B)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-void
.end method

.method private init(Lorg/bouncycastle/asn1/x509/Certificate;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method private static parseBytes([B)Lorg/bouncycastle/asn1/x509/Certificate;
    .locals 3

    const-string v0, "malformed data: "

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/cert/CertUtils;->parseNonEmptyASN1([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->init(Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    iget-object p1, p1, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/CertUtils;->getCriticalExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExtensionOIDs()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/CertUtils;->getExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/CertUtils;->getNonCriticalExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getEndDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getStartDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getSignature()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public getVersionNumber()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public hasExtensions()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getSignature()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    .line 12
    .line 13
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v1, v2}, Lorg/bouncycastle/cert/CertUtils;->isAlgIdEqual(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getSignature()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {p1, v1}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "DER"

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Object;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSignature()[B

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    :catch_0
    move-exception p1

    .line 53
    new-instance v0, Lorg/bouncycastle/cert/CertException;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "unable to process signature: "

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_0
    new-instance p1, Lorg/bouncycastle/cert/CertException;

    .line 71
    .line 72
    const-string v0, "signature invalid - algorithm identifier mismatch"

    .line 73
    .line 74
    invoke-direct {p1, v0}, Lorg/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method public isValidOn(Ljava/util/Date;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getStartDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getEndDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    return-object v0
.end method
