.class Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

.field final synthetic val$pCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iput-object p2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;->val$pCtx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgressModulo()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public preCheck()Z
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    instance-of v1, v0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getTileSourcePolicy()Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->acceptsBulkDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicyException;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;->val$pCtx:Landroid/content/Context;

    sget v2, Lorg/osmdroid/library/R$string;->cacheManagerUnsupportedSource:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "OsmDroid"

    const-string v1, "TileSource is not an online tile source"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public tileAction(J)Z
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v1, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1, p1, p2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->loadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;J)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
