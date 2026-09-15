.class public Lorg/bouncycastle/asn1/cms/ContentInfoParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

.field private contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->content:Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    return-void
.end method


# virtual methods
.method public getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object p1, p0, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->content:Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1Util;->parseExplicitContextBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
