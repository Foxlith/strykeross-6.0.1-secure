.class public Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    return-void
.end method


# virtual methods
.method public downloadTile(JILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-static {v0}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$000(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-static {v1}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$200(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/tileprovider/modules/TileDownloader;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-static {v2}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$100(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    move-result-object v6

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lorg/osmdroid/tileprovider/modules/TileDownloader;->downloadTile(JILjava/lang/String;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->release()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->release()V

    throw p1

    :catch_0
    return-object v1
.end method

.method public loadTile(J)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-static {v0}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$000(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-static {v2}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$300(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-static {v2}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$300(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;->getNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->getName()Ljava/lang/String;

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getTileURLString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-static {v2}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$400(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/util/UrlBackoff;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/osmdroid/util/UrlBackoff;->shouldWait(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->downloadTile(JILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-static {p2}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$400(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/util/UrlBackoff;

    move-result-object p2

    if-nez p1, :cond_5

    invoke-virtual {p2, v0}, Lorg/osmdroid/util/UrlBackoff;->next(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2, v0}, Lorg/osmdroid/util/UrlBackoff;->remove(Ljava/lang/String;)Lorg/osmdroid/util/Delay;

    :goto_0
    return-object p1
.end method

.method public tileLoaded(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->removeTileFromQueues(J)V

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getCallback()Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/osmdroid/tileprovider/IMapTileProviderCallback;->mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/osmdroid/tileprovider/BitmapPool;->asyncRecycle(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
