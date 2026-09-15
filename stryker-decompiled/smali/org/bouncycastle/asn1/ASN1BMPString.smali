.class public abstract Lorg/bouncycastle/asn1/ASN1BMPString;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1String;


# static fields
.field static final TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field final string:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1BMPString$1;

    const-class v1, Lorg/bouncycastle/asn1/ASN1BMPString;

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1BMPString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1BMPString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'string\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_2

    array-length v0, p1

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    aget-byte v4, p1, v3

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "malformed BMPString encoding encountered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'string\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([C)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'string\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createPrimitive([B)Lorg/bouncycastle/asn1/ASN1BMPString;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DERBMPString;-><init>([B)V

    return-object v0
.end method

.method public static createPrimitive([C)Lorg/bouncycastle/asn1/ASN1BMPString;
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DERBMPString;-><init>([C)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BMPString;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1BMPString;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BMPString;

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1BMPString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1BMPString;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoding error in getInstance: "

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
    check-cast p0, Lorg/bouncycastle/asn1/ASN1BMPString;

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1BMPString;
    .locals 1

    .line 11
    sget-object v0, Lorg/bouncycastle/asn1/ASN1BMPString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1BMPString;

    return-object p0
.end method


# virtual methods
.method public final asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1BMPString;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/ASN1BMPString;

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    iget-object p1, p1, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([C[C)Z

    move-result p1

    return p1
.end method

.method public final encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    array-length v0, v0

    const/16 v1, 0x1e

    invoke-virtual {p1, p2, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    mul-int/lit8 p2, v0, 0x2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    const/16 p2, 0x8

    new-array v1, p2, [B

    and-int/lit8 v2, v0, -0x4

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ge v4, v2, :cond_0

    iget-object v7, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    aget-char v8, v7, v4

    add-int/lit8 v9, v4, 0x1

    aget-char v9, v7, v9

    add-int/lit8 v10, v4, 0x2

    aget-char v10, v7, v10

    add-int/lit8 v11, v4, 0x3

    aget-char v7, v7, v11

    add-int/lit8 v4, v4, 0x4

    shr-int/lit8 v11, v8, 0x8

    int-to-byte v11, v11

    aput-byte v11, v1, v3

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    shr-int/lit8 v5, v9, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    int-to-byte v5, v9

    const/4 v6, 0x3

    aput-byte v5, v1, v6

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x4

    aput-byte v5, v1, v6

    const/4 v5, 0x5

    int-to-byte v6, v10

    aput-byte v6, v1, v5

    shr-int/lit8 v5, v7, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x6

    aput-byte v5, v1, v6

    const/4 v5, 0x7

    int-to-byte v6, v7

    aput-byte v6, v1, v5

    invoke-virtual {p1, v1, v3, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    if-ge v4, v0, :cond_2

    move p2, v3

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    aget-char v2, v2, v4

    add-int/2addr v4, v5

    add-int/lit8 v7, p2, 0x1

    shr-int/lit8 v8, v2, 0x8

    int-to-byte v8, v8

    aput-byte v8, v1, p2

    add-int/2addr p2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    if-lt v4, v0, :cond_1

    invoke-virtual {p1, v1, v3, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    :cond_2
    return-void
.end method

.method public final encodeConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final encodedLength(Z)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p1

    return p1
.end method

.method public final getString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
