.class public Lorg/bouncycastle/asn1/BERTaggedObjectParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field final _parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

.field final _tagClass:I

.field final _tagNo:I


# direct methods
.method public constructor <init>(IILorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    iput p2, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    iput-object p3, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method


# virtual methods
.method public getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    iget v1, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    iget v2, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1StreamParser;->loadTaggedIL(II)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 2

    const/16 v0, 0x80

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->getTagClass()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p1}, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string p2, "this method only valid for CONTEXT_SPECIFIC tags"

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTagClass()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    return v0
.end method

.method public getTagNo()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    return v0
.end method

.method public hasContextTag(I)Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasTag(II)Z
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isConstructed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1StreamParser;->parseObject(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1StreamParser;->parseImplicitConstructedIL(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1
.end method

.method public parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->parseTaggedObject()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public parseImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 2

    const/16 v0, 0x40

    if-ne v0, p1, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/BERApplicationSpecificParser;

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;

    iget-object v1, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p1, p2, v1}, Lorg/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
