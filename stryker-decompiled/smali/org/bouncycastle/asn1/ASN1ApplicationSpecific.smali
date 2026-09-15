.class public abstract Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1ApplicationSpecificParser;


# instance fields
.field final taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->checkTagClass(I)I

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return-void
.end method

.method private static checkTagClass(I)I
    .locals 1

    const/16 v0, 0x40

    if-ne v0, p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;
    .locals 3

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p0, [B

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :try_start_0
    check-cast p0, [B

    .line 13
    .line 14
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Failed to construct object from byte[]: "

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v1, "unknown object in getInstance: "

    .line 44
    .line 45
    invoke-static {p0, v1}, Ll1/e;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    .line 54
    .line 55
    return-object p0
.end method


# virtual methods
.method public asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    iget-object p1, p1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V

    return-void
.end method

.method public encodeConstructed()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v0

    return v0
.end method

.method public encodedLength(Z)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result p1

    return p1
.end method

.method public getApplicationTag()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    return v0
.end method

.method public getContents()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getContents()[B

    move-result-object v0

    return-object v0
.end method

.method public getEnclosedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    return-object p0
.end method

.method public getObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getEnclosedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1
.end method

.method public getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 0

    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string p2, "this method only valid for CONTEXT_SPECIFIC tags"

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTagClass()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public getTagNo()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    return v0
.end method

.method public getTaggedObject()Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return-object v0
.end method

.method public hasApplicationTag(I)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/16 v1, 0x40

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result p1

    return p1
.end method

.method public hasContextTag(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasTag(II)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hashCode()I

    move-result v0

    return v0
.end method

.method public isConstructed()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isConstructed()Z

    move-result v0

    return v0
.end method

.method public parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1
.end method

.method public parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public parseImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->parseImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p1

    return-object p1
.end method

.method public readObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0
.end method

.method public toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/DLApplicationSpecific;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DLApplicationSpecific;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0
.end method
