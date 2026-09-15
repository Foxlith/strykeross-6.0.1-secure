.class public Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/RegionAndSubregions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private region:Lorg/bouncycastle/oer/its/Region;

.field private subRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/Uint16;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRegionAndSubregions()Lorg/bouncycastle/oer/its/RegionAndSubregions;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/RegionAndSubregions;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;->region:Lorg/bouncycastle/oer/its/Region;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;->subRegions:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/RegionAndSubregions;-><init>(Lorg/bouncycastle/oer/its/Region;Ljava/util/List;)V

    return-object v0
.end method

.method public setRegion(Lorg/bouncycastle/oer/its/Region;)Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;->region:Lorg/bouncycastle/oer/its/Region;

    return-object p0
.end method

.method public varargs setSubRegion([Lorg/bouncycastle/oer/its/Uint16;)Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;->subRegions:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setSubRegions(Ljava/util/List;)Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/Uint16;",
            ">;)",
            "Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/oer/its/RegionAndSubregions$Builder;->subRegions:Ljava/util/List;

    return-object p0
.end method
