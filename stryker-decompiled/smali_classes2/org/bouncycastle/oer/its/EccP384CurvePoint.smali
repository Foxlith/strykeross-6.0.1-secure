.class public Lorg/bouncycastle/oer/its/EccP384CurvePoint;
.super Lorg/bouncycastle/oer/its/EccCurvePoint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;
    }
.end annotation


# static fields
.field public static final compressedY0:I = 0x2

.field public static final compressedY1:I = 0x3

.field public static final fill:I = 0x1

.field public static final uncompressedP384:I = 0x4

.field public static final xOnly:I


# instance fields
.field private final choice:I

.field private final value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/oer/its/EccCurvePoint;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/EccP384CurvePoint;
    .locals 3

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    if-eq v0, v1, :cond_3

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "unknown tag "

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v1}, Ll1/e;->l(Lorg/bouncycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Null;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Null;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :goto_0
    new-instance v1, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;

    .line 74
    .line 75
    invoke-direct {v1}, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    invoke-virtual {v1, p0}, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->setChoice(I)Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->setValue(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->access$000(Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;)Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint;->choice:I

    return v0
.end method

.method public getEncodedPoint()[B
    .locals 5

    .line 1
    iget v0, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint;->choice:I

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 17
    .line 18
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0, v3}, Ll1/e;->C(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {v0, v2}, Ll1/e;->C(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-array v2, v2, [B

    .line 31
    .line 32
    aput-byte v1, v2, v3

    .line 33
    .line 34
    invoke-static {v2, v4, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v1, "unknown point choice"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 48
    .line 49
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    array-length v4, v0

    .line 58
    add-int/2addr v4, v2

    .line 59
    new-array v4, v4, [B

    .line 60
    .line 61
    aput-byte v1, v4, v3

    .line 62
    .line 63
    array-length v1, v0

    .line 64
    invoke-static {v0, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    :goto_0
    move-object v0, v4

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 70
    .line 71
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    array-length v4, v0

    .line 80
    add-int/2addr v4, v2

    .line 81
    new-array v4, v4, [B

    .line 82
    .line 83
    aput-byte v1, v4, v3

    .line 84
    .line 85
    array-length v1, v0

    .line 86
    invoke-static {v0, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :goto_1
    return-object v0

    .line 91
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    const-string v1, "x Only not implemented"

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
