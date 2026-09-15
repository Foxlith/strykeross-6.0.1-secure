.class public Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:Lorg/bouncycastle/asn1/ASN1OctetStringParser;

.field private dataUri:Lorg/bouncycastle/asn1/ASN1IA5String;

.field private metaData:Lorg/bouncycastle/asn1/cms/MetaData;

.field private parser:Lorg/bouncycastle/asn1/ASN1SequenceParser;

.field private temporalEvidence:Lorg/bouncycastle/asn1/cms/Evidence;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->parser:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1IA5String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->dataUri:Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Lorg/bouncycastle/asn1/cms/MetaData;

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/MetaData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/MetaData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    :cond_2
    instance-of p1, v0, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    if-eqz p1, :cond_3

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->content:Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    :cond_3
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->parser()Lorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->content:Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    return-object v0
.end method

.method public getDataUri()Lorg/bouncycastle/asn1/DERIA5String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->dataUri:Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/bouncycastle/asn1/DERIA5String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->dataUri:Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast v0, Lorg/bouncycastle/asn1/DERIA5String;

    :goto_1
    return-object v0
.end method

.method public getDataUriIA5()Lorg/bouncycastle/asn1/ASN1IA5String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->dataUri:Lorg/bouncycastle/asn1/ASN1IA5String;

    return-object v0
.end method

.method public getMetaData()Lorg/bouncycastle/asn1/cms/MetaData;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    return-object v0
.end method

.method public getTemporalEvidence()Lorg/bouncycastle/asn1/cms/Evidence;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->temporalEvidence:Lorg/bouncycastle/asn1/cms/Evidence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->parser:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/Evidence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Evidence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->temporalEvidence:Lorg/bouncycastle/asn1/cms/Evidence;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->temporalEvidence:Lorg/bouncycastle/asn1/cms/Evidence;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method
