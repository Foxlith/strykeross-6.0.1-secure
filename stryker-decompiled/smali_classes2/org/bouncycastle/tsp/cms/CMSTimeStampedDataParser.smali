.class public Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;
.super Lorg/bouncycastle/cms/CMSContentInfoParser;
.source "SourceFile"


# instance fields
.field private timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

.field private util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSContentInfoParser;-><init>(Ljava/io/InputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/cms/CMSContentInfoParser;->_contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->initialize(Lorg/bouncycastle/asn1/cms/ContentInfoParser;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private initialize(Lorg/bouncycastle/asn1/cms/ContentInfoParser;)V
    .locals 3

    .line 1
    const-string v0, "Malformed content - type must be "

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->timestampedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x10

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "parsing exception: "

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method

.method private parseTimeStamps()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->getContent()Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lorg/bouncycastle/util/io/Streams;->drain(Ljava/io/InputStream;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    new-instance v0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;-><init>(Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    :cond_1
    return-void

    .line 27
    :goto_1
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "unable to parse evidence block: "

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 41
    .line 42
    .line 43
    throw v1
.end method


# virtual methods
.method public calculateNextHash(Lorg/bouncycastle/operator/DigestCalculator;)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->calculateNextHash(Lorg/bouncycastle/operator/DigestCalculator;)[B

    move-result-object p1

    return-object p1
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->getContent()Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->getContent()Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataUri()Ljava/net/URI;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->getDataUri()Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getMediaType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculatorProvider;)Lorg/bouncycastle/operator/DigestCalculator;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->parseTimeStamps()V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculatorProvider;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to extract algorithm ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getOtherMetaData()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getOtherMetaData()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStampTokens()[Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->parseTimeStamps()V

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getTimeStampTokens()[Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v0

    return-object v0
.end method

.method public initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V

    return-void
.end method

.method public validate(Lorg/bouncycastle/operator/DigestCalculatorProvider;[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->parseTimeStamps()V

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->validate(Lorg/bouncycastle/operator/DigestCalculatorProvider;[B)V

    return-void
.end method

.method public validate(Lorg/bouncycastle/operator/DigestCalculatorProvider;[BLorg/bouncycastle/tsp/TimeStampToken;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->parseTimeStamps()V

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataParser;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->validate(Lorg/bouncycastle/operator/DigestCalculatorProvider;[BLorg/bouncycastle/tsp/TimeStampToken;)V

    return-void
.end method
