.class public abstract Lorg/bouncycastle/tsp/ers/ERSCachingData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/tsp/ers/ERSData;


# instance fields
.field private preCalcs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData;->preCalcs:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract calculateHash(Lorg/bouncycastle/operator/DigestCalculator;)[B
.end method

.method public getHash(Lorg/bouncycastle/operator/DigestCalculator;)[B
    .locals 2

    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData;->preCalcs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData;->preCalcs:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/tsp/ers/ERSCachingData;->calculateHash(Lorg/bouncycastle/operator/DigestCalculator;)[B

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData;->preCalcs:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
