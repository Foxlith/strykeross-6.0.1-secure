.class public Lorg/bouncycastle/asn1/DLExternal;
.super Lorg/bouncycastle/asn1/ASN1External;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/asn1/DLFactory;->createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/DLSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DLExternal;-><init>(Lorg/bouncycastle/asn1/DLSequence;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Primitive;ILorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/asn1/ASN1External;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Primitive;ILorg/bouncycastle/asn1/ASN1Primitive;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Primitive;Lorg/bouncycastle/asn1/DERTaggedObject;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/asn1/ASN1External;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Primitive;Lorg/bouncycastle/asn1/DERTaggedObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DLSequence;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1External;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method


# virtual methods
.method public buildSequence()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1External;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1External;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DLTaggedObject;

    iget v2, p0, Lorg/bouncycastle/asn1/ASN1External;->encoding:I

    if-nez v2, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/asn1/ASN1External;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DLSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    return-object p0
.end method
