.class public Lorg/bouncycastle/oer/its/GeographicRegion;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final circularRegion:I = 0x0

.field public static final extension:I = 0x4

.field public static final identifiedRegion:I = 0x3

.field public static final polygonalRegion:I = 0x2

.field public static final rectangularRegion:I = 0x1


# instance fields
.field private choice:I

.field private region:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/GeographicRegion;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/GeographicRegion;->region:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/GeographicRegion;
    .locals 2

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/oer/its/GeographicRegion;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/oer/its/GeographicRegion;

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
    if-eqz v0, :cond_5

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_4

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    new-instance v1, Lorg/bouncycastle/oer/its/GeographicRegion;

    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/GeographicRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v1, "unknown region choice "

    .line 47
    .line 48
    invoke-static {v1, v0}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    new-instance v1, Lorg/bouncycastle/oer/its/GeographicRegion;

    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Lorg/bouncycastle/oer/its/SequenceOfIdentifiedRegion;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SequenceOfIdentifiedRegion;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/GeographicRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_3
    new-instance v1, Lorg/bouncycastle/oer/its/GeographicRegion;

    .line 71
    .line 72
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Lorg/bouncycastle/oer/its/PolygonalRegion;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/PolygonalRegion;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/GeographicRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_4
    new-instance v1, Lorg/bouncycastle/oer/its/GeographicRegion;

    .line 85
    .line 86
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Lorg/bouncycastle/oer/its/SequenceOfRectangularRegion;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SequenceOfRectangularRegion;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/GeographicRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 95
    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_5
    new-instance v1, Lorg/bouncycastle/oer/its/GeographicRegion;

    .line 99
    .line 100
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0}, Lorg/bouncycastle/oer/its/CircularRegion;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/CircularRegion;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/GeographicRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 109
    .line 110
    .line 111
    return-object v1
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/its/GeographicRegion;->choice:I

    return v0
.end method

.method public getRegion()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/GeographicRegion;->region:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/GeographicRegion;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/GeographicRegion;->region:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
