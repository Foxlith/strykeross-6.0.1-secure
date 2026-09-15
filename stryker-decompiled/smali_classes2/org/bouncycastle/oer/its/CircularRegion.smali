.class public Lorg/bouncycastle/oer/its/CircularRegion;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/oer/its/RegionInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/CircularRegion$Builder;
    }
.end annotation


# instance fields
.field private final center:Lorg/bouncycastle/oer/its/TwoDLocation;

.field private final radius:Lorg/bouncycastle/oer/its/Uint16;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/TwoDLocation;Lorg/bouncycastle/oer/its/Uint16;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/CircularRegion;->center:Lorg/bouncycastle/oer/its/TwoDLocation;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/CircularRegion;->radius:Lorg/bouncycastle/oer/its/Uint16;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/CircularRegion;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/oer/its/CircularRegion;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/CircularRegion;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/CircularRegion;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/TwoDLocation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/TwoDLocation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/Uint16;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Uint16;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/CircularRegion;-><init>(Lorg/bouncycastle/oer/its/TwoDLocation;Lorg/bouncycastle/oer/its/Uint16;)V

    return-object v0
.end method


# virtual methods
.method public getCenter()Lorg/bouncycastle/oer/its/TwoDLocation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/CircularRegion;->center:Lorg/bouncycastle/oer/its/TwoDLocation;

    return-object v0
.end method

.method public getRadius()Lorg/bouncycastle/oer/its/Uint16;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/CircularRegion;->radius:Lorg/bouncycastle/oer/its/Uint16;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/CircularRegion;->center:Lorg/bouncycastle/oer/its/TwoDLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/CircularRegion;->radius:Lorg/bouncycastle/oer/its/Uint16;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
