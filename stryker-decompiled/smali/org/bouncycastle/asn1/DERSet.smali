.class public Lorg/bouncycastle/asn1/DERSet;
.super Lorg/bouncycastle/asn1/ASN1Set;
.source "SourceFile"


# instance fields
.field private contentsLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Set;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Set;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1Set;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;Z)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    return-void
.end method

.method public constructor <init>(Z[Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 4
    invoke-static {p1}, Lorg/bouncycastle/asn1/DERSet;->checkSorted(Z)Z

    move-result p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Set;-><init>(Z[Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 5
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1Set;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;Z)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    return-void
.end method

.method private static checkSorted(Z)Z
    .locals 1

    if-eqz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "DERSet elements should always be in sorted order"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/asn1/DERSet;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/DERSet;

    return-object p0
.end method

.method private getContentsLength()I
    .locals 5

    iget v0, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    :cond_1
    iget v0, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    return v0
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 7

    const/16 v0, 0x31

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getDERSubStream()Lorg/bouncycastle/asn1/DEROutputStream;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_2

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    goto :goto_2

    :cond_0
    new-array v1, v0, [Lorg/bouncycastle/asn1/ASN1Primitive;

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v6, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v4

    invoke-interface {v6}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {v6, v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput v5, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object p1, v1, v2

    invoke-virtual {p1, p2, v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERSet;->getContentsLength()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    :goto_3
    if-ge v2, v0, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object p1, p1, v2

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1, p2, v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public encodedLength(Z)I
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERSet;->getContentsLength()I

    move-result v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p1

    return p1
.end method

.method public toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->isSorted:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Set;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    return-object p0
.end method
