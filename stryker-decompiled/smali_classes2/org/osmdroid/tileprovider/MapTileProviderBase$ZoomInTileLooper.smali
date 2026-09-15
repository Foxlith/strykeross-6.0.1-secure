.class Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;
.super Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/MapTileProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZoomInTileLooper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;


# direct methods
.method private constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    return-void
.end method


# virtual methods
.method public computeTile(JII)V
    .locals 2

    iget p3, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mOldTileZoomLevel:I

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result p4

    iget v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mDiff:I

    shr-int/2addr p4, v0

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v0

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mDiff:I

    shr-int/2addr v0, v1

    invoke-static {p3, p4, v0}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide p3

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v0, p3, p4}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(J)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p4, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p4, :cond_0

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    iget p4, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mDiff:I

    invoke-static {p3, p1, p2, p4}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->approximateTileFromLowerZoom(Landroid/graphics/drawable/BitmapDrawable;JI)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p4, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mNewTiles:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
