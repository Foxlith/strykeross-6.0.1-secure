.class public Lorg/bouncycastle/asn1/BERTaggedObject;
.super Lorg/bouncycastle/asn1/ASN1TaggedObject;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/BERSequence;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(IILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 4
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    or-int/lit8 p2, p2, 0x20

    :cond_1
    iget v3, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-virtual {p1, v2, p2, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZII)V

    :cond_2
    const/4 p2, 0x0

    if-eqz v1, :cond_3

    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    invoke-virtual {v0, p1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V

    :goto_0
    return-void
.end method

.method public encodeConstructed()Z
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public encodedLength(Z)I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x3

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfIdentifier(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v0, p1

    return v0
.end method

.method public getASN1Encoding()Ljava/lang/String;
    .locals 1

    const-string v0, "BER"

    return-object v0
.end method

.method public rebuildConstructed(Lorg/bouncycastle/asn1/ASN1Primitive;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public replaceTag(II)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/BERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
