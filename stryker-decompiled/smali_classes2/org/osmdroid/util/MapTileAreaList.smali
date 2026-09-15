.class public Lorg/osmdroid/util/MapTileAreaList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/util/MapTileContainer;
.implements Lorg/osmdroid/util/IterableWithSize;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/osmdroid/util/MapTileContainer;",
        "Lorg/osmdroid/util/IterableWithSize<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/util/MapTileArea;",
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

    iput-object v0, p0, Lorg/osmdroid/util/MapTileAreaList;->mList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lorg/osmdroid/util/MapTileAreaList;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/util/MapTileAreaList;->mList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public contains(J)Z
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/util/MapTileAreaList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/MapTileArea;

    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/util/MapTileArea;->contains(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/MapTileArea;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/util/MapTileAreaList;->mList:Ljava/util/List;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/osmdroid/util/MapTileAreaList$1;

    invoke-direct {v0, p0}, Lorg/osmdroid/util/MapTileAreaList$1;-><init>(Lorg/osmdroid/util/MapTileAreaList;)V

    return-object v0
.end method

.method public size()I
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/util/MapTileAreaList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/MapTileArea;

    invoke-virtual {v2}, Lorg/osmdroid/util/MapTileArea;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
