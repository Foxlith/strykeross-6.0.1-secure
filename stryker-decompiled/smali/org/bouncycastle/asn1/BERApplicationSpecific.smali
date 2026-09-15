.class public Lorg/bouncycastle/asn1/BERApplicationSpecific;
.super Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/BERApplicationSpecific;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 3

    .line 2
    new-instance v0, Lorg/bouncycastle/asn1/BERTaggedObject;

    const/16 v1, 0x40

    invoke-static {p2}, Lorg/bouncycastle/asn1/BERFactory;->createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/BERSequence;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    .line 4
    new-instance v0, Lorg/bouncycastle/asn1/BERTaggedObject;

    const/16 v1, 0x40

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-void
.end method
