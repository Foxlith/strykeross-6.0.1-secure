.class public Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileApproximater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileApproximater;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    return-void
.end method


# virtual methods
.method public loadTile(J)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->approximateTileFromLowerZoom(J)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p1, -0x3

    invoke-static {p2, p1}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
