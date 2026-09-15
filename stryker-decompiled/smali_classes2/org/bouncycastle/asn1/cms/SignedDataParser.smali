.class public Lorg/bouncycastle/asn1/cms/SignedDataParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _certsCalled:Z

.field private _crlsCalled:Z

.field private _nextObject:Ljava/lang/Object;

.field private _seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

.field private _version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedDataParser;
    .locals 2

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/bouncycastle/asn1/cms/SignedDataParser;

    .line 6
    .line 7
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->parser()Lorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Lorg/bouncycastle/asn1/cms/SignedDataParser;

    .line 22
    .line 23
    check-cast p0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 30
    .line 31
    const-string v1, "unknown object encountered: "

    .line 32
    .line 33
    invoke-static {p0, v1}, Ll1/e;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method


# virtual methods
.method public getCertificates()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_certsCalled:Z

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasContextTag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v2
.end method

.method public getCrls()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_certsCalled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_crlsCalled:Z

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v1, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasContextTag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/16 v2, 0x11

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    iput-object v3, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    return-object v0

    :cond_1
    return-object v3

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getCerts() has not been called."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->parser()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    return-object v0
.end method

.method public getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v0
.end method

.method public getSignerInfos()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_certsCalled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_crlsCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getCerts() and/or getCrls() has not been called."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method
