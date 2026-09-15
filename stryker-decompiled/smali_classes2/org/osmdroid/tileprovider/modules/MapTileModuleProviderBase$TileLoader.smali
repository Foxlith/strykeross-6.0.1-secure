.class public abstract Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "TileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract loadTile(J)Landroid/graphics/drawable/Drawable;
.end method

.method public loadTile(Lorg/osmdroid/tileprovider/MapTileRequestState;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->loadTileIfReachable(J)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public loadTileIfReachable(J)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->isTileReachable(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->loadTile(J)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public nextTile()Lorg/osmdroid/tileprovider/MapTileRequestState;
    .locals 7

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mQueueLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v1, v1, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iget-object v5, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v5, v5, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getName()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v3, v4

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getName()Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v4, v1, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mWorking:Ljava/util/HashMap;

    iget-object v1, v1, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/MapTileRequestState;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v3, :cond_5

    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v1, v1, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/osmdroid/tileprovider/MapTileRequestState;

    :cond_5
    monitor-exit v0

    return-object v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTileLoaderInit()V
    .locals 0

    return-void
.end method

.method public onTileLoaderShutdown()V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 6

    const-string v0, "OsmDroid"

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->onTileLoaderInit()V

    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->nextTile()Lorg/osmdroid/tileprovider/MapTileRequestState;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v2, v2, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v2, v2, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->loadTileIfReachable(J)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Lorg/osmdroid/tileprovider/modules/CantContinueException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error downloading tile: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tile loader can\'t continue: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-static {v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->access$000(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->tileLoadedFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->getState(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v1, v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->tileLoadedExpired(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->getState(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    const/4 v4, -0x3

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, v1, v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->tileLoadedScaled(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, v1, v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->tileLoaded(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->onTileLoaderShutdown()V

    return-void
.end method

.method public tileLoaded(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getName()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->removeTileFromQueues(J)V

    const/4 v0, -0x1

    invoke-static {p2, v0}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getCallback()Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/tileprovider/IMapTileProviderCallback;->mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public tileLoadedExpired(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getName()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->removeTileFromQueues(J)V

    const/4 v0, -0x2

    invoke-static {p2, v0}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getCallback()Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/tileprovider/IMapTileProviderCallback;->mapTileRequestExpiredTile(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public tileLoadedFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 3

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getName()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->removeTileFromQueues(J)V

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getCallback()Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/tileprovider/IMapTileProviderCallback;->mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    return-void
.end method

.method public tileLoadedScaled(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getName()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->removeTileFromQueues(J)V

    const/4 v0, -0x3

    invoke-static {p2, v0}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getCallback()Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/tileprovider/IMapTileProviderCallback;->mapTileRequestExpiredTile(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
