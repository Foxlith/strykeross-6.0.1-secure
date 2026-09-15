.class public abstract Lorg/bouncycastle/asn1/ASN1UniversalString;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1String;


# static fields
.field static final TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

.field private static final table:[C


# instance fields
.field final contents:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1UniversalString$1;

    const-class v1, Lorg/bouncycastle/asn1/ASN1UniversalString;

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1UniversalString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1UniversalString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/asn1/ASN1UniversalString;->table:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>([BZ)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    return-void
.end method

.method public static createPrimitive([B)Lorg/bouncycastle/asn1/ASN1UniversalString;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/DERUniversalString;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/DERUniversalString;-><init>([BZ)V

    return-object v0
.end method

.method private static encodeHexByte(Ljava/lang/StringBuffer;I)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/asn1/ASN1UniversalString;->table:[C

    ushr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static encodeHexDL(Ljava/lang/StringBuffer;I)V
    .locals 6

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalString;->encodeHexByte(Ljava/lang/StringBuffer;I)V

    return-void

    :cond_0
    const/4 v1, 0x5

    new-array v2, v1, [B

    move v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    int-to-byte v5, p1

    aput-byte v5, v2, v4

    ushr-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_2

    rsub-int/lit8 p1, v4, 0x5

    add-int/lit8 v3, v3, -0x2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v2, v3

    :goto_1
    add-int/lit8 p1, v3, 0x1

    aget-byte v0, v2, v3

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1UniversalString;->encodeHexByte(Ljava/lang/StringBuffer;I)V

    if-lt p1, v1, :cond_1

    return-void

    :cond_1
    move v3, p1

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UniversalString;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1UniversalString;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1UniversalString;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1UniversalString;

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1UniversalString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1UniversalString;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoding error getInstance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, v1}, Ll1/e;->A(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal object in getInstance: "

    .line 3
    invoke-static {p0, v1}, Ll1/e;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1UniversalString;

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1UniversalString;
    .locals 1

    .line 11
    sget-object v0, Lorg/bouncycastle/asn1/ASN1UniversalString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1UniversalString;

    return-object p0
.end method


# virtual methods
.method public final asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1UniversalString;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/ASN1UniversalString;

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    iget-object p1, p1, Lorg/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method public final encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 2

    const/16 v0, 0x1c

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    return-void
.end method

.method public final encodeConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final encodedLength(Z)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p1

    return p1
.end method

.method public final getOctets()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfDL(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "#1C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/ASN1UniversalString;->encodeHexDL(Ljava/lang/StringBuffer;I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    aget-byte v3, v3, v2

    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1UniversalString;->encodeHexByte(Ljava/lang/StringBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1UniversalString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
