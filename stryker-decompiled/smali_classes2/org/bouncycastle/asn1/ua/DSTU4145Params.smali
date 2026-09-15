.class public Lorg/bouncycastle/asn1/ua/DSTU4145Params;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DKE:[B


# instance fields
.field private dke:[B

.field private ecbinary:Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

.field private namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        -0x2at
        -0x15t
        0x45t
        -0xft
        0x3ct
        0x70t
        -0x7et
        -0x80t
        -0x3ct
        -0x6at
        0x7bt
        0x23t
        0x1ft
        0x5et
        -0x53t
        -0xat
        0x58t
        -0x15t
        -0x5ct
        -0x40t
        0x37t
        0x29t
        0x1dt
        0x38t
        -0x27t
        0x6bt
        -0x10t
        0x25t
        -0x36t
        0x4et
        0x17t
        -0x8t
        -0x17t
        0x72t
        0xdt
        -0x3at
        0x15t
        -0x4ct
        0x3at
        0x28t
        -0x69t
        0x5ft
        0xbt
        -0x3ft
        -0x22t
        -0x5dt
        0x64t
        0x38t
        -0x4bt
        0x64t
        -0x16t
        0x2ct
        0x17t
        -0x61t
        -0x30t
        0x12t
        0x3et
        0x6dt
        -0x48t
        -0x6t
        -0x3bt
        0x79t
        0x4t
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    iput-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    iput-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    iput-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->ecbinary:Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    return-void
.end method

.method public static getDefaultDKE()[B
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ua/DSTU4145Params;
    .locals 4

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string v0, "object parse error"

    .line 9
    .line 10
    if-eqz p0, :cond_4

    .line 11
    .line 12
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    new-instance v2, Lorg/bouncycastle/asn1/ua/DSTU4145Params;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/ua/DSTU4145Params;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v2, Lorg/bouncycastle/asn1/ua/DSTU4145Params;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/ua/DSTU4145Params;-><init>(Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v3, 0x2

    .line 57
    if-ne v1, v3, :cond_3

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-static {p0, v1}, Ll1/e;->C(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    iput-object p0, v2, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    .line 65
    .line 66
    array-length p0, p0

    .line 67
    sget-object v1, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    .line 68
    .line 69
    array-length v1, v1

    .line 70
    if-ne p0, v1, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_3
    :goto_1
    return-object v2

    .line 80
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method


# virtual methods
.method public getDKE()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getECBinary()Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->ecbinary:Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    return-object v0
.end method

.method public getNamedCurve()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public isNamedCurve()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->ecbinary:Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    sget-object v2, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
