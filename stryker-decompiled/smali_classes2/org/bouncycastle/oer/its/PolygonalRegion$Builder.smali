.class public Lorg/bouncycastle/oer/its/PolygonalRegion$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/PolygonalRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/TwoDLocation;",
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

    iput-object v0, p0, Lorg/bouncycastle/oer/its/PolygonalRegion$Builder;->locations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createPolygonalRegion()Lorg/bouncycastle/oer/its/PolygonalRegion;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/PolygonalRegion;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/PolygonalRegion$Builder;->locations:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/PolygonalRegion;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public setLocations(Ljava/util/List;)Lorg/bouncycastle/oer/its/PolygonalRegion$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/TwoDLocation;",
            ">;)",
            "Lorg/bouncycastle/oer/its/PolygonalRegion$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/oer/its/PolygonalRegion$Builder;->locations:Ljava/util/List;

    return-object p0
.end method

.method public varargs setLocations([Lorg/bouncycastle/oer/its/TwoDLocation;)Lorg/bouncycastle/oer/its/PolygonalRegion$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/oer/its/PolygonalRegion$Builder;->locations:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
