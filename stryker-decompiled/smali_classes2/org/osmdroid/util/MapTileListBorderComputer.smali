.class public Lorg/osmdroid/util/MapTileListBorderComputer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/util/MapTileListComputer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mBorder:I

.field private final mIncludeAll:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/osmdroid/util/MapTileListBorderComputer;->mBorder:I

    iput-boolean p2, p0, Lorg/osmdroid/util/MapTileListBorderComputer;->mIncludeAll:Z

    return-void
.end method


# virtual methods
.method public computeFromSource(Lorg/osmdroid/util/MapTileList;Lorg/osmdroid/util/MapTileList;)Lorg/osmdroid/util/MapTileList;
    .locals 10

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/osmdroid/util/MapTileList;

    invoke-direct {p2}, Lorg/osmdroid/util/MapTileList;-><init>()V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileList;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_9

    invoke-virtual {p1, v0}, Lorg/osmdroid/util/MapTileList;->get(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v3

    invoke-static {v1, v2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v4

    invoke-static {v1, v2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v2, v3

    iget v5, p0, Lorg/osmdroid/util/MapTileListBorderComputer;->mBorder:I

    neg-int v5, v5

    :goto_2
    iget v6, p0, Lorg/osmdroid/util/MapTileListBorderComputer;->mBorder:I

    if-gt v5, v6, :cond_8

    neg-int v6, v6

    :goto_3
    iget v7, p0, Lorg/osmdroid/util/MapTileListBorderComputer;->mBorder:I

    if-gt v6, v7, :cond_7

    add-int v7, v4, v5

    add-int v8, v1, v6

    :goto_4
    if-gez v7, :cond_1

    add-int/2addr v7, v2

    goto :goto_4

    :cond_1
    :goto_5
    if-gez v8, :cond_2

    add-int/2addr v8, v2

    goto :goto_5

    :cond_2
    :goto_6
    if-lt v7, v2, :cond_3

    sub-int/2addr v7, v2

    goto :goto_6

    :cond_3
    :goto_7
    if-lt v8, v2, :cond_4

    sub-int/2addr v8, v2

    goto :goto_7

    :cond_4
    invoke-static {v3, v7, v8}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v7

    invoke-virtual {p2, v7, v8}, Lorg/osmdroid/util/MapTileList;->contains(J)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p1, v7, v8}, Lorg/osmdroid/util/MapTileList;->contains(J)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lorg/osmdroid/util/MapTileListBorderComputer;->mIncludeAll:Z

    if-nez v9, :cond_6

    goto :goto_8

    :cond_6
    invoke-virtual {p2, v7, v8}, Lorg/osmdroid/util/MapTileList;->put(J)V

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    return-object p2
.end method

.method public getBorder()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/util/MapTileListBorderComputer;->mBorder:I

    return v0
.end method

.method public isIncludeAll()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/util/MapTileListBorderComputer;->mIncludeAll:Z

    return v0
.end method
