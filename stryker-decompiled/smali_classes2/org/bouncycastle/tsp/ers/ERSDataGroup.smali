.class public Lorg/bouncycastle/tsp/ers/ERSDataGroup;
.super Lorg/bouncycastle/tsp/ers/ERSCachingData;
.source "SourceFile"


# instance fields
.field protected dataObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSCachingData;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSDataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/tsp/ers/ERSData;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSCachingData;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSDataGroup;->dataObjects:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lorg/bouncycastle/tsp/ers/ERSData;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSCachingData;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSDataGroup;->dataObjects:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public calculateHash(Lorg/bouncycastle/operator/DigestCalculator;)[B
    .locals 3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tsp/ers/ERSDataGroup;->getHashes(Lorg/bouncycastle/operator/DigestCalculator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;Ljava/util/Iterator;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getHashes(Lorg/bouncycastle/operator/DigestCalculator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/operator/DigestCalculator;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSDataGroup;->dataObjects:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->buildHashList(Lorg/bouncycastle/operator/DigestCalculator;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSDataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
