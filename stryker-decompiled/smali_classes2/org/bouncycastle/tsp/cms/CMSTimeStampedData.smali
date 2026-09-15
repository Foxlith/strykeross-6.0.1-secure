.class public Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

.field private timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedData;

.field private util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    const-string v0, "Malformed content: "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->initialize(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->initialize(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private initialize(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 3

    iput-object p1, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->timestampedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/TimeStampedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/TimeStampedData;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedData;

    new-instance v0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;-><init>(Lorg/bouncycastle/asn1/cms/TimeStampedData;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed content - type must be "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addTimeStamp(Lorg/bouncycastle/tsp/TimeStampToken;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getTimeStamps()[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    new-instance v2, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    aput-object v2, v1, v0

    new-instance p1, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;

    new-instance v0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v2, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->timestampedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/cms/TimeStampedData;

    iget-object v4, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedData;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/TimeStampedData;->getDataUri()Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedData;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/TimeStampedData;->getMetaData()Lorg/bouncycastle/asn1/cms/MetaData;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedData;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/cms/TimeStampedData;->getContent()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    new-instance v7, Lorg/bouncycastle/asn1/cms/Evidence;

    new-instance v8, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    invoke-direct {v8, v1}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;-><init>([Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)V

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/cms/Evidence;-><init>(Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;)V

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/bouncycastle/asn1/cms/TimeStampedData;-><init>(Lorg/bouncycastle/asn1/ASN1IA5String;Lorg/bouncycastle/asn1/cms/MetaData;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/cms/Evidence;)V

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object p1
.end method

.method public calculateNextHash(Lorg/bouncycastle/operator/DigestCalculator;)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->calculateNextHash(Lorg/bouncycastle/operator/DigestCalculator;)[B

    move-result-object p1

    return-object p1
.end method

.method public getContent()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/TimeStampedData;->getContent()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/TimeStampedData;->getContent()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataUri()Ljava/net/URI;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->timeStampedData:Lorg/bouncycastle/asn1/cms/TimeStampedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/TimeStampedData;->getDataUri()Lorg/bouncycastle/asn1/DERIA5String;

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

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getMediaType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculatorProvider;)Lorg/bouncycastle/operator/DigestCalculator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculatorProvider;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p1

    return-object p1
.end method

.method public getOtherMetaData()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getOtherMetaData()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStampTokens()[Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getTimeStampTokens()[Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v0

    return-object v0
.end method

.method public initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V

    return-void
.end method

.method public validate(Lorg/bouncycastle/operator/DigestCalculatorProvider;[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->validate(Lorg/bouncycastle/operator/DigestCalculatorProvider;[B)V

    return-void
.end method

.method public validate(Lorg/bouncycastle/operator/DigestCalculatorProvider;[BLorg/bouncycastle/tsp/TimeStampToken;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;->util:Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->validate(Lorg/bouncycastle/operator/DigestCalculatorProvider;[BLorg/bouncycastle/tsp/TimeStampToken;)V

    return-void
.end method
