.class public Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;
.super Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/tsp/TimeStampToken;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->generate(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/io/InputStream;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;

    move-result-object p1

    return-object p1
.end method

.method public generate(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/io/InputStream;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;
    .locals 8

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2, v0}, Lorg/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception encapsulating content: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    new-instance p2, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    new-instance v0, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iget-object p1, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;->dataUri:Ljava/net/URI;

    if-eqz p1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object p1, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;->dataUri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    :cond_2
    new-instance p1, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;

    new-instance v2, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v3, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->timestampedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/cms/TimeStampedData;

    iget-object v5, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    new-instance v6, Lorg/bouncycastle/asn1/cms/Evidence;

    new-instance v7, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    invoke-direct {v7, v0}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;-><init>(Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)V

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/cms/Evidence;-><init>(Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;)V

    invoke-direct {v4, v1, v5, p2, v6}, Lorg/bouncycastle/asn1/cms/TimeStampedData;-><init>(Lorg/bouncycastle/asn1/ASN1IA5String;Lorg/bouncycastle/asn1/cms/MetaData;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/cms/Evidence;)V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p1, v2}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object p1
.end method

.method public generate(Lorg/bouncycastle/tsp/TimeStampToken;[B)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;
    .locals 1

    .line 7
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->generate(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/io/InputStream;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;

    move-result-object p1

    return-object p1
.end method
