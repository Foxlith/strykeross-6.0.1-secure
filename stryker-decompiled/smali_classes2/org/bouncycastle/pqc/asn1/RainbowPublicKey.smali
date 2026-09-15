.class public Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private coeffQuadratic:[[B

.field private coeffScalar:[B

.field private coeffSingular:[[B

.field private docLength:Lorg/bouncycastle/asn1/ASN1Integer;

.field private oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->docLength:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[S)[[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[S)[[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    invoke-static {p4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([S)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffScalar:[B

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->docLength:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [[B

    iput-object v2, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    move v2, v0

    :goto_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    .line 2
    invoke-static {v1, v2}, Ll1/e;->C(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    move-result-object v4

    .line 3
    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [[B

    iput-object v2, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    move v2, v0

    :goto_2
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    .line 4
    invoke-static {v1, v2}, Ll1/e;->C(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    move-result-object v4

    .line 5
    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 6
    invoke-static {p1, v0}, Ll1/e;->C(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffScalar:[B

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCoeffQuadratic()[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public getCoeffScalar()[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffScalar:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([B)[S

    move-result-object v0

    return-object v0
.end method

.method public getCoeffSingular()[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public getDocLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->docLength:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 6

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

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
    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->docLength:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 23
    .line 24
    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    move v3, v2

    .line 29
    :goto_2
    iget-object v4, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    .line 30
    .line 31
    array-length v4, v4

    .line 32
    if-ge v3, v4, :cond_1

    .line 33
    .line 34
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    .line 35
    .line 36
    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    .line 37
    .line 38
    aget-object v5, v5, v3

    .line 39
    .line 40
    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/a;->i(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :goto_3
    iget-object v3, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    .line 54
    .line 55
    array-length v3, v3

    .line 56
    if-ge v2, v3, :cond_2

    .line 57
    .line 58
    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    .line 59
    .line 60
    iget-object v4, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    .line 61
    .line 62
    aget-object v4, v4, v2

    .line 63
    .line 64
    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/a;->i(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    .line 78
    .line 79
    iget-object v3, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffScalar:[B

    .line 80
    .line 81
    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 85
    .line 86
    .line 87
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    .line 88
    .line 89
    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 93
    .line 94
    .line 95
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    .line 96
    .line 97
    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 98
    .line 99
    .line 100
    return-object v1
.end method
