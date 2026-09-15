.class public abstract Lorg/bouncycastle/cms/RecipientInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

.field protected keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private operator:Lorg/bouncycastle/cms/RecipientOperator;

.field private resultMac:[B

.field protected rid:Lorg/bouncycastle/cms/RecipientId;

.field protected secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/cms/RecipientInformation;->messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    iput-object p4, p0, Lorg/bouncycastle/cms/RecipientInformation;->additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

    return-void
.end method

.method private encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getContent(Lorg/bouncycastle/cms/Recipient;)[B
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/RecipientInformation;->getContentStream(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/CMSTypedStream;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSTypedStream;->getContentStream()Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->streamToByteArray(Ljava/io/InputStream;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "unable to parse internal stream: "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public getContentDigest()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    instance-of v1, v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;->getDigest()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentStream(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/CMSTypedStream;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/RecipientInformation;->getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    iget-object p1, p0, Lorg/bouncycastle/cms/RecipientInformation;->additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/bouncycastle/cms/AuthAttributesProvider;->isAead()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/RecipientOperator;->getAADStream()Ljava/io/OutputStream;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

    invoke-interface {v0}, Lorg/bouncycastle/cms/AuthAttributesProvider;->getAuthAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance p1, Lorg/bouncycastle/cms/CMSTypedStream;

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSSecureReadable;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    iget-object v2, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v2}, Lorg/bouncycastle/cms/CMSSecureReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cms/RecipientOperator;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/cms/CMSTypedStream;

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSSecureReadable;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v1}, Lorg/bouncycastle/cms/CMSSecureReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/cms/CMSTypedStream;

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSSecureReadable;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    iget-object v2, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v2}, Lorg/bouncycastle/cms/CMSSecureReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cms/RecipientOperator;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V

    return-object p1
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSSecureReadable;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getKeyEncryptionAlgOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyEncryptionAlgParams()[B
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/RecipientInformation;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object v0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    const-string v2, "exception getting encryption parameters "

    .line 16
    .line 17
    invoke-static {v2, v0}, Ll1/e;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v1
.end method

.method public getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getMac()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->resultMac:[B

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/bouncycastle/cms/RecipientOperator;->isMacBased()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    .line 18
    .line 19
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/bouncycastle/cms/RecipientInformation;->additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

    .line 22
    .line 23
    invoke-interface {v2}, Lorg/bouncycastle/cms/AuthAttributesProvider;->getAuthAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "DER"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/RecipientOperator;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lorg/bouncycastle/util/io/Streams;->drain(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "unable to drain input: "

    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    .line 63
    .line 64
    invoke-virtual {v0}, Lorg/bouncycastle/cms/RecipientOperator;->getMac()[B

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->resultMac:[B

    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->resultMac:[B

    .line 71
    .line 72
    return-object v0
.end method

.method public getRID()Lorg/bouncycastle/cms/RecipientId;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    return-object v0
.end method

.method public abstract getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;
.end method
