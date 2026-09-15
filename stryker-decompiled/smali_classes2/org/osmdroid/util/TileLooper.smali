.class public abstract Lorg/osmdroid/util/TileLooper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private horizontalWrapEnabled:Z

.field protected mTileZoomLevel:I

.field protected final mTiles:Landroid/graphics/Rect;

.field private verticalWrapEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/osmdroid/util/TileLooper;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    iput-boolean p1, p0, Lorg/osmdroid/util/TileLooper;->horizontalWrapEnabled:Z

    iput-boolean p2, p0, Lorg/osmdroid/util/TileLooper;->verticalWrapEnabled:Z

    return-void
.end method


# virtual methods
.method public finaliseLoop()V
    .locals 0

    return-void
.end method

.method public abstract handleTile(JII)V
.end method

.method public initialiseLoop()V
    .locals 0

    return-void
.end method

.method public isHorizontalWrapEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/util/TileLooper;->horizontalWrapEnabled:Z

    return v0
.end method

.method public isVerticalWrapEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/util/TileLooper;->verticalWrapEnabled:Z

    return v0
.end method

.method public loop(DLorg/osmdroid/util/RectL;)V
    .locals 3

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->getTileSize(D)D

    move-result-wide v0

    iget-object v2, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    invoke-static {p3, v0, v1, v2}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(Lorg/osmdroid/util/RectL;DLandroid/graphics/Rect;)Landroid/graphics/Rect;

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->getInputTileZoomLevel(D)I

    move-result p1

    iput p1, p0, Lorg/osmdroid/util/TileLooper;->mTileZoomLevel:I

    invoke-virtual {p0}, Lorg/osmdroid/util/TileLooper;->initialiseLoop()V

    const/4 p1, 0x1

    iget p2, p0, Lorg/osmdroid/util/TileLooper;->mTileZoomLevel:I

    shl-int/2addr p1, p2

    iget-object p2, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    :goto_0
    iget-object p3, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-gt p2, v0, :cond_4

    iget p3, p3, Landroid/graphics/Rect;->top:I

    :goto_1
    iget-object v0, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-gt p3, v0, :cond_3

    iget-boolean v0, p0, Lorg/osmdroid/util/TileLooper;->horizontalWrapEnabled:Z

    if-nez v0, :cond_0

    if-ltz p2, :cond_2

    if-ge p2, p1, :cond_2

    :cond_0
    iget-boolean v0, p0, Lorg/osmdroid/util/TileLooper;->verticalWrapEnabled:Z

    if-nez v0, :cond_1

    if-ltz p3, :cond_2

    if-ge p3, p1, :cond_2

    :cond_1
    invoke-static {p2, p1}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v0

    invoke-static {p3, p1}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v1

    iget v2, p0, Lorg/osmdroid/util/TileLooper;->mTileZoomLevel:I

    invoke-static {v2, v0, v1}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/osmdroid/util/TileLooper;->handleTile(JII)V

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/osmdroid/util/TileLooper;->finaliseLoop()V

    return-void
.end method

.method public setHorizontalWrapEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/util/TileLooper;->horizontalWrapEnabled:Z

    return-void
.end method

.method public setVerticalWrapEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/util/TileLooper;->verticalWrapEnabled:Z

    return-void
.end method
