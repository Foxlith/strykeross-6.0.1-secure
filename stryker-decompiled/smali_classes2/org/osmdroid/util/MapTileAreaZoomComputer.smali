.class public Lorg/osmdroid/util/MapTileAreaZoomComputer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/util/MapTileAreaComputer;


# instance fields
.field private final mZoomDelta:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    return-void
.end method


# virtual methods
.method public computeFromSource(Lorg/osmdroid/util/MapTileArea;Lorg/osmdroid/util/MapTileArea;)Lorg/osmdroid/util/MapTileArea;
    .locals 6

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/osmdroid/util/MapTileArea;

    invoke-direct {p2}, Lorg/osmdroid/util/MapTileArea;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/osmdroid/util/MapTileArea;->reset()Lorg/osmdroid/util/MapTileArea;

    return-object p2

    :cond_1
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getZoom()I

    move-result v0

    iget v1, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    add-int v2, v0, v1

    if-ltz v2, :cond_4

    sget v0, Lorg/osmdroid/util/MapTileIndex;->mMaxZoomLevel:I

    if-le v2, v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getLeft()I

    move-result v0

    if-gtz v1, :cond_3

    iget v1, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    neg-int v1, v1

    shr-int v3, v0, v1

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getTop()I

    move-result v0

    iget v1, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    neg-int v1, v1

    shr-int v4, v0, v1

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getRight()I

    move-result v0

    iget v1, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    neg-int v1, v1

    shr-int v5, v0, v1

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getBottom()I

    move-result p1

    iget v0, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    neg-int v0, v0

    shr-int/2addr p1, v0

    :goto_1
    move-object v0, p2

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/MapTileArea;->set(IIIII)Lorg/osmdroid/util/MapTileArea;

    return-object p2

    :cond_3
    iget v1, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    shl-int v3, v0, v1

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getTop()I

    move-result v0

    iget v1, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    shl-int v4, v0, v1

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getRight()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    shl-int/2addr v0, v1

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getBottom()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    shl-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p2}, Lorg/osmdroid/util/MapTileArea;->reset()Lorg/osmdroid/util/MapTileArea;

    return-object p2
.end method
