.class public Lorg/osmdroid/tileprovider/modules/MapTileDownloader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;
    }
.end annotation


# instance fields
.field private final mFilesystemCache:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

.field private final mNetworkAvailablityCheck:Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

.field private mTileDownloader:Lorg/osmdroid/tileprovider/modules/TileDownloader;

.field private final mTileLoader:Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;

.field private final mTileSource:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrlBackoff:Lorg/osmdroid/util/UrlBackoff;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;)V
    .locals 7

    .line 3
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileDownloadThreads()S

    move-result v5

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileDownloadMaxQueueSize()S

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;II)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p4, p5}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;-><init>(II)V

    new-instance p4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p4, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p4, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;

    invoke-direct {p4, p0}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)V

    iput-object p4, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileLoader:Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;

    new-instance p4, Lorg/osmdroid/util/UrlBackoff;

    invoke-direct {p4}, Lorg/osmdroid/util/UrlBackoff;-><init>()V

    iput-object p4, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mUrlBackoff:Lorg/osmdroid/util/UrlBackoff;

    new-instance p4, Lorg/osmdroid/tileprovider/modules/TileDownloader;

    invoke-direct {p4}, Lorg/osmdroid/tileprovider/modules/TileDownloader;-><init>()V

    iput-object p4, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileDownloader:Lorg/osmdroid/tileprovider/modules/TileDownloader;

    iput-object p2, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mFilesystemCache:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    iput-object p3, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mNetworkAvailablityCheck:Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mFilesystemCache:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/tileprovider/modules/TileDownloader;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileDownloader:Lorg/osmdroid/tileprovider/modules/TileDownloader;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mNetworkAvailablityCheck:Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/util/UrlBackoff;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mUrlBackoff:Lorg/osmdroid/util/UrlBackoff;

    return-object p0
.end method


# virtual methods
.method public detach()V
    .locals 1

    invoke-super {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->detach()V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mFilesystemCache:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->onDetach()V

    :cond_0
    return-void
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->getMaximumZoomLevel()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getMaximumZoomLevel()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->getMinimumZoomLevel()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Online Tile Download Provider"

    return-object v0
.end method

.method public getThreadGroupName()Ljava/lang/String;
    .locals 1

    const-string v0, "downloader"

    return-object v0
.end method

.method public getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileLoader:Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;

    return-object v0
.end method

.method public bridge synthetic getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;

    move-result-object v0

    return-object v0
.end method

.method public getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    return-object v0
.end method

.method public getUsesDataConnection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setTileDownloader(Lorg/osmdroid/tileprovider/modules/TileDownloader;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileDownloader:Lorg/osmdroid/tileprovider/modules/TileDownloader;

    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    instance-of v0, p1, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
