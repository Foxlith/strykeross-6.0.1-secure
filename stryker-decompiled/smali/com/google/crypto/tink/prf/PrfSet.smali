.class public abstract Lcom/google/crypto/tink/prf/PrfSet;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computePrimary([BI)[B
    .locals 2

    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/PrfSet;->getPrfs()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/PrfSet;->getPrimaryId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/prf/Prf;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/prf/Prf;->compute([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract getPrfs()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/crypto/tink/prf/Prf;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryId()I
.end method
