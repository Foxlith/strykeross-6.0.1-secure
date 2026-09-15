.class public Lorg/bouncycastle/oer/its/RegionAndSubregions;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/oer/its/RegionInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;
    }
.end annotation


# instance fields
.field private final region:Lorg/bouncycastle/oer/its/Region;

.field private final subRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/Uint16;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/Region;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/oer/its/Region;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/Uint16;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/RegionAndSubregions;->region:Lorg/bouncycastle/oer/its/Region;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/RegionAndSubregions;->subRegions:Ljava/util/List;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/RegionAndSubregions;
    .locals 5

    instance-of v0, p0, Lorg/bouncycastle/oer/its/RegionAndSubregions;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/RegionAndSubregions;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;

    invoke-direct {v1}, Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/its/Region;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Region;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;->setRegion(Lorg/bouncycastle/oer/its/Region;)Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    new-array v3, v2, [Lorg/bouncycastle/oer/its/Uint16;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/oer/its/Uint16;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Uint16;

    move-result-object v4

    aput-object v4, v3, p0

    invoke-virtual {v1, v3}, Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;->setSubRegion([Lorg/bouncycastle/oer/its/Uint16;)Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;->createRegionAndSubregions()Lorg/bouncycastle/oer/its/RegionAndSubregions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/RegionAndSubregions;->region:Lorg/bouncycastle/oer/its/Region;

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/oer/its/RegionAndSubregions;->subRegions:Ljava/util/List;

    invoke-static {v1}, Lorg/bouncycastle/oer/its/Utils;->toSequence(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
