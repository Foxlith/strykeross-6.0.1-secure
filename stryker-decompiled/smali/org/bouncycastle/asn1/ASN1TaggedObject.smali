.class public abstract Lorg/bouncycastle/asn1/ASN1TaggedObject;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;


# static fields
.field private static final DECLARED_EXPLICIT:I = 0x1

.field private static final DECLARED_IMPLICIT:I = 0x2

.field private static final PARSED_EXPLICIT:I = 0x3

.field private static final PARSED_IMPLICIT:I = 0x4


# instance fields
.field final explicitness:I

.field final obj:Lorg/bouncycastle/asn1/ASN1Encodable;

.field final tagClass:I

.field final tagNo:I


# direct methods
.method public constructor <init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p4, :cond_2

    if-eqz p2, :cond_1

    and-int/lit16 v0, p2, 0xc0

    if-ne v0, p2, :cond_1

    instance-of v0, p4, Lorg/bouncycastle/asn1/ASN1Choice;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iput p2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iput p3, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iput-object p4, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "invalid tag class: "

    .line 1
    invoke-static {p3, p2}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'obj\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 7
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 8
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method private static checkedCast(Lorg/bouncycastle/asn1/ASN1Primitive;)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "unexpected object: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createConstructedDL(IILorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DLTaggedObject;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DLTaggedObject;

    const/4 v1, 0x4

    invoke-static {p2}, Lorg/bouncycastle/asn1/DLFactory;->createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/DLSequence;

    move-result-object p2

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    const/16 p1, 0x40

    if-eq p0, p1, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/DLApplicationSpecific;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DLApplicationSpecific;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object p0
.end method

.method public static createConstructedIL(IILorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/BERTaggedObject;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/BERTaggedObject;

    const/4 v1, 0x4

    invoke-static {p2}, Lorg/bouncycastle/asn1/BERFactory;->createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/BERSequence;

    move-result-object p2

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    const/16 p1, 0x40

    if-eq p0, p1, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/BERApplicationSpecific;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/BERApplicationSpecific;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object p0
.end method

.method public static createPrimitive(II[B)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/DLTaggedObject;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 p2, 0x4

    invoke-direct {v0, p2, p0, p1, v1}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/16 p1, 0x40

    if-eq p0, p1, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/DLApplicationSpecific;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DLApplicationSpecific;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->checkedCast(Lorg/bouncycastle/asn1/ASN1Primitive;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct tagged object from byte[]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance: "

    .line 3
    invoke-static {p0, v1}, Ll1/e;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 2

    .line 11
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v0

    const/16 v1, 0x80

    if-ne v1, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "this method not valid for implicitly tagged tagged objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "this method only valid for CONTEXT_SPECIFIC tags"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 4

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget v2, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iget v2, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iget v2, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iget-object v2, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    if-ne v0, v2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v3

    if-nez v3, :cond_5

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1

    :cond_5
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method public abstract getASN1Encoding()Ljava/lang/String;
.end method

.method public getBaseObject()Lorg/bouncycastle/asn1/ASN1Object;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Object;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    invoke-static {p2}, Lorg/bouncycastle/asn1/ASN1UniversalTypes;->get(I)Lorg/bouncycastle/asn1/ASN1UniversalType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZLorg/bouncycastle/asn1/ASN1UniversalType;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported UNIVERSAL tag number: "

    .line 1
    invoke-static {v0, p2}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBaseUniversal(ZLorg/bouncycastle/asn1/ASN1UniversalType;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 7
    const-string v0, "object explicit - implicit expected."

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->checkedCast(Lorg/bouncycastle/asn1/ASN1Primitive;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x1

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    if-eq p1, v1, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-virtual {p2, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->checkedCast(Lorg/bouncycastle/asn1/ASN1Primitive;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromImplicitConstructed(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    :cond_3
    check-cast p1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromImplicitPrimitive(Lorg/bouncycastle/asn1/DEROctetString;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->rebuildConstructed(Lorg/bouncycastle/asn1/ASN1Primitive;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromImplicitConstructed(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getContents()[B
    .locals 7

    const-string v0, "failed to get contents"

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getASN1Encoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    invoke-static {v2, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result v3

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-gez v3, :cond_1

    add-int/lit8 v3, v2, -0x2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ltz v3, :cond_2

    new-array v5, v3, [B

    array-length v6, v1

    sub-int/2addr v6, v2

    invoke-static {v1, v6, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v2, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Object;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->checkedCast(Lorg/bouncycastle/asn1/ASN1Primitive;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    and-int/lit16 v0, p1, 0xc0

    .line 4
    .line 5
    if-ne v0, p1, :cond_2

    .line 6
    .line 7
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->replaceTag(II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 21
    .line 22
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->checkedCast(Lorg/bouncycastle/asn1/ASN1Primitive;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string p2, "object explicit - implicit expected."

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v0, "invalid base tag class: "

    .line 46
    .line 47
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p2
.end method

.method public final getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    return-object p0
.end method

.method public getObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    const/16 v0, 0x80

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this method only valid for CONTEXT_SPECIFIC tags"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 2

    const/16 v0, 0x80

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;

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

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    return v0
.end method

.method public getTagNo()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    return v0
.end method

.method public hasContextTag(I)Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

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

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    mul-int/lit16 v0, v0, 0x1eef

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0xf0

    :goto_0
    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isConstructed()Z
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v0

    return v0
.end method

.method public isExplicit()Z
    .locals 3

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public isParsed()Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    const/16 v0, 0x11

    if-eq p2, v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->parser()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object p1

    return-object p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->parser()Lorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->parser()Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object p1

    return-object p1

    :cond_3
    check-cast p1, Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->parser()Lorg/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object p1

    return-object p1
.end method

.method public parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public parseImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    return-object p1
.end method

.method public abstract rebuildConstructed(Lorg/bouncycastle/asn1/ASN1Primitive;)Lorg/bouncycastle/asn1/ASN1Sequence;
.end method

.method public abstract replaceTag(II)Lorg/bouncycastle/asn1/ASN1TaggedObject;
.end method

.method public toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iget v2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iget v3, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-object v4, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/DLTaggedObject;

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iget v2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iget v3, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-object v4, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iget v2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
