.class public Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# instance fields
.field private data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getResponseExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    iget-object p1, p1, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCerts()[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getCerts()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getCerts()Lorg/bouncycastle/asn1/ASN1Sequence;

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
    sget-object v0, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->EMPTY_CERTS:[Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object v0

    :cond_2
    sget-object v0, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->EMPTY_CERTS:[Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->getCriticalExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

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

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->getExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->getNonCriticalExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProducedAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getProducedAt()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->extractDate(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getResponderId()Lorg/bouncycastle/cert/ocsp/RespID;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cert/ocsp/RespID;

    iget-object v1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getResponderID()Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/ocsp/RespID;-><init>(Lorg/bouncycastle/asn1/ocsp/ResponderID;)V

    return-object v0
.end method

.method public getResponses()[Lorg/bouncycastle/cert/ocsp/SingleResp;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getResponses()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v2, v1, [Lorg/bouncycastle/cert/ocsp/SingleResp;

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v1, :cond_0

    new-instance v4, Lorg/bouncycastle/cert/ocsp/SingleResp;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/cert/ocsp/SingleResp;-><init>(Lorg/bouncycastle/asn1/ocsp/SingleResponse;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getSignature()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignature()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getTBSResponseData()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasExtensions()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

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

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "DER"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getSignature()[B

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return p1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    new-instance v0, Lorg/bouncycastle/cert/ocsp/OCSPException;

    .line 44
    .line 45
    const-string v1, "exception processing sig: "

    .line 46
    .line 47
    invoke-static {v1, p1}, Ll1/e;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method
