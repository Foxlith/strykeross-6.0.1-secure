.class public Lorg/bouncycastle/cert/ocsp/OCSPReq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_CERTS:[Lorg/bouncycastle/cert/X509CertificateHolder;


# instance fields
.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/bouncycastle/cert/X509CertificateHolder;

    sput-object v0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->EMPTY_CERTS:[Lorg/bouncycastle/cert/X509CertificateHolder;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V
    .locals 3

    .line 1
    const-string v0, "malformed request: "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getRequestExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p1, Lorg/bouncycastle/cert/CertIOException;

    const-string v1, "malformed request: no request data found"

    invoke-direct {p1, v1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/asn1/ASN1Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/OCSPRequest;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getRequestExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 3
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/ocsp/OCSPReq;-><init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V

    return-void
.end method


# virtual methods
.method public getCerts()[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/Signature;->getCerts()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v2, v1, [Lorg/bouncycastle/cert/X509CertificateHolder;

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v1, :cond_0

    new-instance v4, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    sget-object v0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->EMPTY_CERTS:[Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object v0

    :cond_2
    sget-object v0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->EMPTY_CERTS:[Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->getCriticalExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

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

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->getExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->getNonCriticalExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRequestList()[Lorg/bouncycastle/cert/ocsp/Req;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getRequestList()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v2, v1, [Lorg/bouncycastle/cert/ocsp/Req;

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v1, :cond_0

    new-instance v4, Lorg/bouncycastle/cert/ocsp/Req;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ocsp/Request;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/Request;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/cert/ocsp/Req;-><init>(Lorg/bouncycastle/asn1/ocsp/Request;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getRequestorName()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getRequestorName()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/cert/ocsp/OCSPReq;->isSigned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/Signature;->getSignature()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/cert/ocsp/OCSPReq;->isSigned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/Signature;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasExtensions()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/cert/ocsp/OCSPReq;->isSigned()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/bouncycastle/asn1/ocsp/Signature;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/Signature;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    .line 26
    .line 27
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "DER"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/bouncycastle/cert/ocsp/OCSPReq;->getSignature()[B

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    .line 45
    .line 46
    .line 47
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return p1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    new-instance v0, Lorg/bouncycastle/cert/ocsp/OCSPException;

    .line 51
    .line 52
    const-string v1, "exception processing signature: "

    .line 53
    .line 54
    invoke-static {v1, p1}, Ll1/e;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_0
    new-instance p1, Lorg/bouncycastle/cert/ocsp/OCSPException;

    .line 63
    .line 64
    const-string v0, "attempt to verify signature on unsigned object"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public isSigned()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
