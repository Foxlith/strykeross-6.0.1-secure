.class public Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private b1:[B

.field private b2:[B

.field private invA1:[[B

.field private invA2:[[B

.field private layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

.field private oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;

.field private vi:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    new-array v5, v5, [[B

    iput-object v5, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    move v5, v2

    :goto_1
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v5, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    iput-object v5, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->b1:[B

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    new-array v7, v7, [[B

    iput-object v7, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    move v7, v2

    :goto_2
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    iget-object v8, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v6, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    iput-object v6, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->b2:[B

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v6, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    iput-object v6, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    new-array v6, v6, [[[[B

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    new-array v7, v7, [[[[B

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    new-array v8, v8, [[[B

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    new-array v9, v9, [[B

    move v10, v2

    :goto_3
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    invoke-virtual {v1, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v11, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v13

    new-array v13, v13, [[[B

    aput-object v13, v6, v10

    move v13, v2

    :goto_4
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v14

    if-ge v13, v14, :cond_4

    invoke-virtual {v12, v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/ASN1Sequence;

    aget-object v15, v6, v10

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [[B

    aput-object v2, v15, v13

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v15

    if-ge v2, v15, :cond_3

    aget-object v15, v6, v10

    aget-object v15, v15, v13

    invoke-virtual {v14, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v17

    check-cast v17, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v17

    aput-object v17, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v11, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v12

    new-array v12, v12, [[[B

    aput-object v12, v7, v10

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    invoke-virtual {v2, v12}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/asn1/ASN1Sequence;

    aget-object v14, v7, v10

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v15

    new-array v15, v15, [[B

    aput-object v15, v14, v12

    const/4 v14, 0x0

    :goto_7
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v15

    if-ge v14, v15, :cond_5

    aget-object v15, v7, v10

    aget-object v15, v15, v12

    invoke-virtual {v13, v14}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v17

    check-cast v17, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v17

    aput-object v17, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {v11, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v12

    new-array v12, v12, [[B

    aput-object v12, v8, v10

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v13

    if-ge v12, v13, :cond_7

    aget-object v13, v8, v10

    invoke-virtual {v2, v12}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v14

    aput-object v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_7
    invoke-virtual {v11, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    aput-object v2, v9, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_8
    iget-object v1, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    array-length v1, v1

    sub-int/2addr v1, v3

    new-array v2, v1, [Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    iput-object v2, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_9

    new-instance v3, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    iget-object v4, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    aget-byte v11, v4, v2

    add-int/lit8 v5, v2, 0x1

    aget-byte v12, v4, v5

    aget-object v4, v6, v2

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[[B)[[[S

    move-result-object v13

    aget-object v4, v7, v2

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[[B)[[[S

    move-result-object v14

    aget-object v4, v8, v2

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[B)[[S

    move-result-object v15

    aget-object v4, v9, v2

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([B)[S

    move-result-object v16

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;-><init>(BB[[[S[[[S[[S[S)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    aput-object v3, v4, v2

    move v2, v5

    goto :goto_9

    :cond_9
    return-void
.end method

.method public constructor <init>([[S[S[[S[S[I[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[S)[[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([S)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->b1:[B

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[S)[[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    invoke-static {p4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([S)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->b2:[B

    invoke-static {p5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertIntArray([I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    iput-object p6, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getB1()[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->b1:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([B)[S

    move-result-object v0

    return-object v0
.end method

.method public getB2()[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->b2:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([B)[S

    move-result-object v0

    return-object v0
.end method

.method public getInvA1()[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public getInvA2()[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public getLayers()[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getVi()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArraytoInt([B)[I

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 12

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    :goto_0
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :goto_1
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 18
    .line 19
    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    :goto_2
    iget-object v4, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    .line 25
    .line 26
    array-length v4, v4

    .line 27
    if-ge v3, v4, :cond_1

    .line 28
    .line 29
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    .line 30
    .line 31
    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    .line 32
    .line 33
    aget-object v5, v5, v3

    .line 34
    .line 35
    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/a;->i(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    .line 49
    .line 50
    iget-object v4, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->b1:[B

    .line 51
    .line 52
    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 56
    .line 57
    .line 58
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    .line 59
    .line 60
    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 67
    .line 68
    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 69
    .line 70
    .line 71
    move v3, v2

    .line 72
    :goto_3
    iget-object v4, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    .line 73
    .line 74
    array-length v4, v4

    .line 75
    if-ge v3, v4, :cond_2

    .line 76
    .line 77
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    .line 78
    .line 79
    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    .line 80
    .line 81
    aget-object v5, v5, v3

    .line 82
    .line 83
    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_2
    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/a;->i(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    .line 97
    .line 98
    iget-object v4, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->b2:[B

    .line 99
    .line 100
    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 104
    .line 105
    .line 106
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    .line 107
    .line 108
    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 112
    .line 113
    .line 114
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 115
    .line 116
    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    .line 120
    .line 121
    iget-object v4, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    .line 122
    .line 123
    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 127
    .line 128
    .line 129
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    .line 130
    .line 131
    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 135
    .line 136
    .line 137
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 138
    .line 139
    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 140
    .line 141
    .line 142
    move v3, v2

    .line 143
    :goto_4
    iget-object v4, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    .line 144
    .line 145
    array-length v4, v4

    .line 146
    if-ge v3, v4, :cond_8

    .line 147
    .line 148
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 149
    .line 150
    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 151
    .line 152
    .line 153
    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    .line 154
    .line 155
    aget-object v5, v5, v3

    .line 156
    .line 157
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getCoeffAlpha()[[[S

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[[S)[[[B

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 166
    .line 167
    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 168
    .line 169
    .line 170
    move v7, v2

    .line 171
    :goto_5
    array-length v8, v5

    .line 172
    if-ge v7, v8, :cond_4

    .line 173
    .line 174
    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 175
    .line 176
    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 177
    .line 178
    .line 179
    move v9, v2

    .line 180
    :goto_6
    aget-object v10, v5, v7

    .line 181
    .line 182
    array-length v10, v10

    .line 183
    if-ge v9, v10, :cond_3

    .line 184
    .line 185
    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    .line 186
    .line 187
    aget-object v11, v5, v7

    .line 188
    .line 189
    aget-object v11, v11, v9

    .line 190
    .line 191
    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 195
    .line 196
    .line 197
    add-int/lit8 v9, v9, 0x1

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_3
    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    .line 201
    .line 202
    invoke-direct {v9, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 206
    .line 207
    .line 208
    add-int/lit8 v7, v7, 0x1

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_4
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    .line 212
    .line 213
    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 217
    .line 218
    .line 219
    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    .line 220
    .line 221
    aget-object v5, v5, v3

    .line 222
    .line 223
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getCoeffBeta()[[[S

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[[S)[[[B

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 232
    .line 233
    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 234
    .line 235
    .line 236
    move v7, v2

    .line 237
    :goto_7
    array-length v8, v5

    .line 238
    if-ge v7, v8, :cond_6

    .line 239
    .line 240
    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 241
    .line 242
    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 243
    .line 244
    .line 245
    move v9, v2

    .line 246
    :goto_8
    aget-object v10, v5, v7

    .line 247
    .line 248
    array-length v10, v10

    .line 249
    if-ge v9, v10, :cond_5

    .line 250
    .line 251
    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    .line 252
    .line 253
    aget-object v11, v5, v7

    .line 254
    .line 255
    aget-object v11, v11, v9

    .line 256
    .line 257
    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v8, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 261
    .line 262
    .line 263
    add-int/lit8 v9, v9, 0x1

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_5
    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    .line 267
    .line 268
    invoke-direct {v9, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 272
    .line 273
    .line 274
    add-int/lit8 v7, v7, 0x1

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_6
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    .line 278
    .line 279
    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 283
    .line 284
    .line 285
    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    .line 286
    .line 287
    aget-object v5, v5, v3

    .line 288
    .line 289
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getCoeffGamma()[[S

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[S)[[B

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 298
    .line 299
    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 300
    .line 301
    .line 302
    move v7, v2

    .line 303
    :goto_9
    array-length v8, v5

    .line 304
    if-ge v7, v8, :cond_7

    .line 305
    .line 306
    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    .line 307
    .line 308
    aget-object v9, v5, v7

    .line 309
    .line 310
    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v6, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 314
    .line 315
    .line 316
    add-int/lit8 v7, v7, 0x1

    .line 317
    .line 318
    goto :goto_9

    .line 319
    :cond_7
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    .line 320
    .line 321
    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 325
    .line 326
    .line 327
    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    .line 328
    .line 329
    iget-object v6, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    .line 330
    .line 331
    aget-object v6, v6, v3

    .line 332
    .line 333
    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getCoeffEta()[S

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-static {v6}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([S)[B

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 345
    .line 346
    .line 347
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    .line 348
    .line 349
    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 353
    .line 354
    .line 355
    add-int/lit8 v3, v3, 0x1

    .line 356
    .line 357
    goto/16 :goto_4

    .line 358
    .line 359
    :cond_8
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    .line 360
    .line 361
    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 365
    .line 366
    .line 367
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    .line 368
    .line 369
    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 370
    .line 371
    .line 372
    return-object v1
.end method
