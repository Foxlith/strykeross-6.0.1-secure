.class public Lorg/bouncycastle/oer/its/TwoDLocation;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/TwoDLocation$Builder;
    }
.end annotation


# instance fields
.field private final latitude:Lorg/bouncycastle/oer/its/Latitude;

.field private final longitude:Lorg/bouncycastle/oer/its/Longitude;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/Latitude;Lorg/bouncycastle/oer/its/Longitude;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/TwoDLocation;->latitude:Lorg/bouncycastle/oer/its/Latitude;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/TwoDLocation;->longitude:Lorg/bouncycastle/oer/its/Longitude;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/TwoDLocation;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/oer/its/TwoDLocation;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/TwoDLocation;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/TwoDLocation;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/Latitude;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Latitude;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/Longitude;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Longitude;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/TwoDLocation;-><init>(Lorg/bouncycastle/oer/its/Latitude;Lorg/bouncycastle/oer/its/Longitude;)V

    return-object v0
.end method


# virtual methods
.method public getLatitude()Lorg/bouncycastle/oer/its/Latitude;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/TwoDLocation;->latitude:Lorg/bouncycastle/oer/its/Latitude;

    return-object v0
.end method

.method public getLongitude()Lorg/bouncycastle/oer/its/Longitude;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/TwoDLocation;->longitude:Lorg/bouncycastle/oer/its/Longitude;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/TwoDLocation;->latitude:Lorg/bouncycastle/oer/its/Latitude;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/TwoDLocation;->longitude:Lorg/bouncycastle/oer/its/Longitude;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
