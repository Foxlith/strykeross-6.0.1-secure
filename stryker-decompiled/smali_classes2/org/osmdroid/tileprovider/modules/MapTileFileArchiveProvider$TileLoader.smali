.class public Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    return-void
.end method


# virtual methods
.method public loadTile(J)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    invoke-static {v0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->access$000(Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_3

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    invoke-static {v2, p1, p2, v0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->access$100(Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;JLorg/osmdroid/tileprovider/tilesource/ITileSource;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    invoke-interface {v0, v2}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    if-eqz v2, :cond_4

    :goto_2
    invoke-static {v2}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    :try_start_2
    const-string p2, "OsmDroid"

    const-string v0, "Error loading tile"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_4
    return-object v1

    :catchall_2
    move-exception p1

    if-eqz v2, :cond_5

    invoke-static {v2}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_5
    throw p1
.end method
