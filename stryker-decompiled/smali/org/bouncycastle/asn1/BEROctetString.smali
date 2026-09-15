.class public Lorg/bouncycastle/asn1/BEROctetString;
.super Lorg/bouncycastle/asn1/ASN1OctetString;
.source "SourceFile"


# static fields
.field private static final DEFAULT_SEGMENT_LIMIT:I = 0x3e8


# instance fields
.field private final elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final segmentLimit:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B[Lorg/bouncycastle/asn1/ASN1OctetString;I)V

    return-void
.end method

.method private constructor <init>([B[Lorg/bouncycastle/asn1/ASN1OctetString;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    iput-object p2, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    iput p3, p0, Lorg/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1

    .line 4
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([Lorg/bouncycastle/asn1/ASN1OctetString;I)V

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1OctetString;I)V
    .locals 1

    .line 5
    invoke-static {p1}, Lorg/bouncycastle/asn1/BEROctetString;->flattenOctetStrings([Lorg/bouncycastle/asn1/ASN1OctetString;)[B

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B[Lorg/bouncycastle/asn1/ASN1OctetString;I)V

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/asn1/BEROctetString;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    return p0
.end method

.method public static synthetic access$100(Lorg/bouncycastle/asn1/BEROctetString;)[Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public static flattenOctetStrings([Lorg/bouncycastle/asn1/ASN1OctetString;)[B
    .locals 7

    array-length v0, p0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    move v1, v2

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v4, p0, v1

    iget-object v4, v4, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v3, [B

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v5, p0, v3

    iget-object v5, v5, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v6, v5

    invoke-static {v5, v2, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    aget-object p0, p0, v2

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    return-object p0

    :cond_3
    sget-object p0, Lorg/bouncycastle/asn1/ASN1OctetString;->EMPTY_OCTETS:[B

    return-object p0
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BEROctetString;->encodeConstructed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v2, v0

    invoke-static {p1, p2, v0, v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    return-void

    :cond_0
    const/16 v0, 0x24

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    iget-object p2, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writePrimitives([Lorg/bouncycastle/asn1/ASN1Primitive;)V

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v2, v0

    if-ge p2, v2, :cond_2

    array-length v0, v0

    sub-int/2addr v0, p2

    iget v2, p0, Lorg/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {p1, v2, v3, p2, v0}, Lorg/bouncycastle/asn1/DEROctetString;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    return-void
.end method

.method public encodeConstructed()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    if-le v0, v1, :cond_0

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
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BEROctetString;->encodeConstructed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/DEROctetString;->encodedLength(ZI)I

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v0, v0

    iget v2, p0, Lorg/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    div-int/2addr v0, v2

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;->encodedLength(ZI)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr p1, v2

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v2, v2

    iget v3, p0, Lorg/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    mul-int/2addr v0, v3

    sub-int/2addr v2, v0

    if-lez v2, :cond_3

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;->encodedLength(ZI)I

    move-result v0

    add-int/2addr p1, v0

    :cond_3
    return p1
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/BEROctetString$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/BEROctetString$1;-><init>(Lorg/bouncycastle/asn1/BEROctetString;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/BEROctetString$2;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/BEROctetString$2;-><init>(Lorg/bouncycastle/asn1/BEROctetString;)V

    return-object v0
.end method
