.class public Lorg/bouncycastle/oer/its/CountryAndRegions$CountryAndRegionsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/CountryAndRegions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountryAndRegionsBuilder"
.end annotation


# instance fields
.field private countryOnly:Lorg/bouncycastle/oer/its/CountryOnly;

.field private regionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/CountryAndRegions$CountryAndRegionsBuilder;->regionList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addRegion(Lorg/bouncycastle/oer/its/Region;)Lorg/bouncycastle/oer/its/CountryAndRegions$CountryAndRegionsBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/CountryAndRegions$CountryAndRegionsBuilder;->regionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lorg/bouncycastle/oer/its/CountryAndRegions;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/CountryAndRegions;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/CountryAndRegions$CountryAndRegionsBuilder;->countryOnly:Lorg/bouncycastle/oer/its/CountryOnly;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/CountryAndRegions$CountryAndRegionsBuilder;->regionList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/CountryAndRegions;-><init>(Lorg/bouncycastle/oer/its/CountryOnly;Ljava/util/List;)V

    return-object v0
.end method

.method public setCountryOnly(Lorg/bouncycastle/oer/its/CountryOnly;)Lorg/bouncycastle/oer/its/CountryAndRegions$CountryAndRegionsBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/CountryAndRegions$CountryAndRegionsBuilder;->countryOnly:Lorg/bouncycastle/oer/its/CountryOnly;

    return-object p0
.end method

.method public setRegionList(Ljava/util/List;)Lorg/bouncycastle/oer/its/CountryAndRegions$CountryAndRegionsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/Region;",
            ">;)",
            "Lorg/bouncycastle/oer/its/CountryAndRegions$CountryAndRegionsBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/oer/its/CountryAndRegions$CountryAndRegionsBuilder;->regionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
