.class public abstract Lorg/bouncycastle/asn1/ASN1Util;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Expected "

    const-string v1, " tag but found "

    .line 1
    invoke-static {v0, p1, v1, p0}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 2

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Expected "

    const-string v1, " tag but found "

    .line 9
    invoke-static {v0, p1, v1, p0}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static getBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public static getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->getBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public static getExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    return-object p0
.end method

.method public static getExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static getExplicitContextBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1Object;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->getExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    return-object p0
.end method

.method public static getExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->getExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static getImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static getImplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;III)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->getImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static getTagText(II)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    const-string v1, "]"

    if-eq p0, v0, :cond_2

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc0

    if-eq p0, v0, :cond_0

    const-string p0, "[UNIVERSAL "

    .line 1
    :goto_0
    invoke-static {p0, p1, v1}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "[PRIVATE "

    goto :goto_0

    :cond_1
    const-string p0, "[CONTEXT "

    goto :goto_0

    :cond_2
    const-string p0, "[APPLICATION "

    goto :goto_0
.end method

.method public static getTagText(Lorg/bouncycastle/asn1/ASN1Tag;)Ljava/lang/String;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Tag;->getTagClass()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Tag;->getTagNumber()I

    move-result p0

    invoke-static {v0, p0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result p0

    invoke-static {v0, p0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;)Ljava/lang/String;
    .locals 1

    .line 9
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagClass()I

    move-result v0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result p0

    invoke-static {v0, p0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static parseContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->parseBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static parseExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static parseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static parseExplicitContextBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->parseExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static parseExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->parseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static parseImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static parseImplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;III)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->parseImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static tryGetBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public static tryGetContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public static tryGetExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    return-object p0
.end method

.method public static tryGetExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static tryGetExplicitContextBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1Object;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    return-object p0
.end method

.method public static tryGetExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static tryGetImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static tryGetImplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;III)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static tryParseBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 0

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static tryParseContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->tryParseBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static tryParseExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 0

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static tryParseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 0

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static tryParseExplicitContextBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->tryParseExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static tryParseExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->tryParseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static tryParseImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 0

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static tryParseImplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;III)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->tryParseImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method
