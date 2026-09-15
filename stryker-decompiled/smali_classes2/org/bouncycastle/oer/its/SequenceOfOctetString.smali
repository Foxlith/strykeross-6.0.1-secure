.class public Lorg/bouncycastle/oer/its/SequenceOfOctetString;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private octetStrings:[[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/oer/its/SequenceOfOctetString;->toByteArrays(Lorg/bouncycastle/asn1/ASN1Sequence;)[[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SequenceOfOctetString;->octetStrings:[[B

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SequenceOfOctetString;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/oer/its/SequenceOfOctetString;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/SequenceOfOctetString;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/SequenceOfOctetString;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/SequenceOfOctetString;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toByteArrays(Lorg/bouncycastle/asn1/ASN1Sequence;)[[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [[B

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    invoke-static {p0, v1}, Ll1/e;->C(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object v0
.end method


# virtual methods
.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/SequenceOfOctetString;->octetStrings:[[B

    array-length v0, v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/oer/its/SequenceOfOctetString;->octetStrings:[[B

    array-length v2, v2

    if-eq v1, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/SequenceOfOctetString;->octetStrings:[[B

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
