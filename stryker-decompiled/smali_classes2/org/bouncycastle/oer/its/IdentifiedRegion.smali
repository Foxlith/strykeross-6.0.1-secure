.class public Lorg/bouncycastle/oer/its/IdentifiedRegion;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;
.implements Lorg/bouncycastle/oer/its/RegionInterface;


# static fields
.field public static final countAndSubregions:I = 0x2

.field public static final countryAndRegions:I = 0x1

.field public static final countryOnly:I = 0x0

.field public static final extension:I = 0x3


# instance fields
.field private choice:I

.field private region:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/IdentifiedRegion;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/IdentifiedRegion;->region:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/IdentifiedRegion;
    .locals 2

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/oer/its/IdentifiedRegion;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/oer/its/IdentifiedRegion;

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
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-eq v0, v1, :cond_3

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    new-instance v1, Lorg/bouncycastle/oer/its/IdentifiedRegion;

    .line 32
    .line 33
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/IdentifiedRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v1, "unknown choice "

    .line 44
    .line 45
    invoke-static {v1, v0}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_2
    new-instance v1, Lorg/bouncycastle/oer/its/IdentifiedRegion;

    .line 54
    .line 55
    invoke-static {p0}, Lorg/bouncycastle/oer/its/RegionAndSubregions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/RegionAndSubregions;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/IdentifiedRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 60
    .line 61
    .line 62
    return-object v1

    .line 63
    :cond_3
    new-instance v1, Lorg/bouncycastle/oer/its/IdentifiedRegion;

    .line 64
    .line 65
    invoke-static {p0}, Lorg/bouncycastle/oer/its/CountryAndRegions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/CountryAndRegions;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/IdentifiedRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_4
    new-instance v1, Lorg/bouncycastle/oer/its/IdentifiedRegion;

    .line 74
    .line 75
    invoke-static {p0}, Lorg/bouncycastle/oer/its/CountryOnly;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/CountryOnly;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/IdentifiedRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 80
    .line 81
    .line 82
    return-object v1
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/IdentifiedRegion;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/IdentifiedRegion;->region:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Object;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
