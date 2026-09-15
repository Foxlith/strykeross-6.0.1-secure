.class public Lorg/osmdroid/config/DefaultConfigurationProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/config/IConfigurationProvider;


# static fields
.field public static final DEFAULT_USER_AGENT:Ljava/lang/String; = "osmdroid"


# instance fields
.field protected animationSpeedDefault:I

.field protected animationSpeedShort:I

.field protected cacheMapTileCount:S

.field protected cacheTileOvershoot:S

.field protected debugMapTileDownloader:Z

.field protected debugMapView:Z

.field protected debugMode:Z

.field protected debugTileProviders:Z

.field protected enforceTileSystemBounds:Z

.field protected expirationAdder:J

.field protected expirationOverride:Ljava/lang/Long;

.field protected gpsWaitTime:J

.field protected httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

.field protected httpProxy:Ljava/net/Proxy;

.field protected isMapViewHardwareAccelerated:Z

.field private final mAdditionalHttpRequestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalizedUserAgent:Ljava/lang/String;

.field protected mTileDownloaderFollowRedirects:Z

.field protected mTileGCBulkPauseInMillis:J

.field protected mTileGCBulkSize:I

.field protected mTileGCFrequencyInMillis:J

.field protected mapViewRecycler:Z

.field protected osmdroidBasePath:Ljava/io/File;

.field protected osmdroidTileCache:Ljava/io/File;

.field protected tileDownloadMaxQueueSize:S

.field protected tileDownloadThreads:S

.field protected tileFileSystemCacheMaxBytes:J

.field protected tileFileSystemCacheTrimBytes:J

.field protected tileFileSystemMaxQueueSize:S

.field protected tileFileSystemThreads:S

.field protected userAgentHttpHeader:Ljava/lang/String;

.field protected userAgentValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    iput-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    iput-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    iput-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    const-string v2, "osmdroid"

    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentValue:Ljava/lang/String;

    const-string v2, "User-Agent"

    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentHttpHeader:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mAdditionalHttpRequestProperties:Ljava/util/Map;

    const/16 v2, 0x9

    iput-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    const/4 v2, 0x2

    iput-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    const/16 v2, 0x8

    iput-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    const/16 v2, 0x28

    iput-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    iput-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    const-wide/32 v2, 0x25800000

    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheMaxBytes:J

    const-wide/32 v2, 0x1f400000

    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheTrimBytes:J

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpProxy:Ljava/net/Proxy;

    const/16 v2, 0x3e8

    iput v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    const/16 v2, 0x1f4

    iput v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    iput-boolean v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    iput-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheTileOvershoot:S

    const-wide/32 v2, 0x493e0

    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCFrequencyInMillis:J

    const/16 v2, 0x14

    iput v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkSize:I

    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkPauseInMillis:J

    iput-boolean v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileDownloaderFollowRedirects:Z

    iput-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->enforceTileSystemBounds:Z

    return-void
.end method

.method private static commit(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private computeNormalizedUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method private static load(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6
    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static save(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 2
    invoke-static {p3}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getAdditionalHttpRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mAdditionalHttpRequestProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getAnimationSpeedDefault()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    return v0
.end method

.method public getAnimationSpeedShort()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    return v0
.end method

.method public getCacheMapTileCount()S
    .locals 1

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    return v0
.end method

.method public getCacheMapTileOvershoot()S
    .locals 1

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheTileOvershoot:S

    return v0
.end method

.method public getExpirationExtendedDuration()J
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    return-wide v0
.end method

.method public getExpirationOverrideDuration()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    return-object v0
.end method

.method public getGpsWaitTime()J
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    return-wide v0
.end method

.method public getHttpHeaderDateTimeFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getHttpProxy()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpProxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getNormalizedUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mNormalizedUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getOsmdroidBasePath()Ljava/io/File;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getOsmdroidBasePath(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getBestWritableStorage(Landroid/content/Context;)Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "osmdroid"

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, v0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OsmDroid"

    const-string v1, "Directory not created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    :cond_2
    iget-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    return-object p1
.end method

.method public getOsmdroidTileCache()Ljava/io/File;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getOsmdroidTileCache(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v1, "tiles"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    return-object p1
.end method

.method public getTileDownloadMaxQueueSize()S
    .locals 1

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    return v0
.end method

.method public getTileDownloadThreads()S
    .locals 1

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    return v0
.end method

.method public getTileFileSystemCacheMaxBytes()J
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheMaxBytes:J

    return-wide v0
.end method

.method public getTileFileSystemCacheTrimBytes()J
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheTrimBytes:J

    return-wide v0
.end method

.method public getTileFileSystemMaxQueueSize()S
    .locals 1

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    return v0
.end method

.method public getTileFileSystemThreads()S
    .locals 1

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    return v0
.end method

.method public getTileGCBulkPauseInMillis()J
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkPauseInMillis:J

    return-wide v0
.end method

.method public getTileGCBulkSize()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkSize:I

    return v0
.end method

.method public getTileGCFrequencyInMillis()J
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCFrequencyInMillis:J

    return-wide v0
.end method

.method public getUserAgentHttpHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentHttpHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentValue:Ljava/lang/String;

    return-object v0
.end method

.method public isDebugMapTileDownloader()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    return v0
.end method

.method public isDebugMapView()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    return v0
.end method

.method public isDebugMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    return v0
.end method

.method public isDebugTileProviders()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    return v0
.end method

.method public isEnforceTileSystemBounds()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->enforceTileSystemBounds:Z

    return v0
.end method

.method public isMapTileDownloaderFollowRedirects()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileDownloaderFollowRedirects:Z

    return v0
.end method

.method public isMapViewHardwareAccelerated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    return v0
.end method

.method public isMapViewRecyclerFriendly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6

    invoke-direct {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->computeNormalizedUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mNormalizedUserAgent:Ljava/lang/String;

    const-string v0, "osmdroid.basePath"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "osmdroid.cachePath"

    if-eqz v2, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    const-string v0, "osmdroid.DebugMode"

    iget-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugMode(Z)V

    const-string v0, "osmdroid.DebugDownloading"

    iget-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugMapTileDownloader(Z)V

    const-string v0, "osmdroid.DebugMapView"

    iget-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugMapView(Z)V

    const-string v0, "osmdroid.DebugTileProvider"

    iget-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugTileProviders(Z)V

    const-string v0, "osmdroid.HardwareAcceleration"

    iget-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setMapViewHardwareAccelerated(Z)V

    const-string v0, "osmdroid.userAgentValue"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setUserAgentValue(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mAdditionalHttpRequestProperties:Ljava/util/Map;

    const-string v0, "osmdroid.additionalHttpRequestProperty."

    invoke-static {p2, p1, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->load(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;)V

    const-string p1, "osmdroid.gpsWaitTime"

    iget-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    invoke-interface {p2, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setGpsWaitTime(J)V

    const-string p1, "osmdroid.tileDownloadThreads"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileDownloadThreads(S)V

    const-string p1, "osmdroid.tileFileSystemThreads"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemThreads(S)V

    const-string p1, "osmdroid.tileDownloadMaxQueueSize"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileDownloadMaxQueueSize(S)V

    const-string p1, "osmdroid.tileFileSystemMaxQueueSize"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemMaxQueueSize(S)V

    const-string p1, "osmdroid.ExpirationExtendedDuration"

    iget-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    invoke-interface {p2, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setExpirationExtendedDuration(J)V

    const-string p1, "osmdroid.mapViewRecycler"

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setMapViewRecyclerFriendly(Z)V

    const-string p1, "osmdroid.ZoomSpeedDefault"

    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setAnimationSpeedDefault(I)V

    const-string p1, "osmdroid.animationSpeedShort"

    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setAnimationSpeedShort(I)V

    const-string p1, "osmdroid.cacheTileOvershoot"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheTileOvershoot:S

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setCacheMapTileOvershoot(S)V

    const-string p1, "osmdroid.TileDownloaderFollowRedirects"

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileDownloaderFollowRedirects:Z

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setMapTileDownloaderFollowRedirects(Z)V

    const-string p1, "osmdroid.enforceTileSystemBounds"

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setEnforceTileSystemBounds(Z)V

    const-string p1, "osmdroid.ExpirationOverride"

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v2, -0x1

    invoke-interface {p2, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-nez p1, :cond_4

    iput-object v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "osmdroid"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v4, "tiles"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_3
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v4}, Lorg/osmdroid/config/DefaultConfigurationProvider;->commit(Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {p0, v1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    invoke-virtual {p0, v2}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setUserAgentValue(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/config/DefaultConfigurationProvider;->save(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :cond_4
    :goto_1
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "cache.db"

    .line 1
    invoke-static {p2, v0, v1}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    goto :goto_2

    :cond_5
    const-wide/16 p1, 0x0

    :goto_2
    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v2

    add-long/2addr v0, p1

    cmp-long p1, v2, v0

    if-lez p1, :cond_6

    long-to-double p1, v0

    const-wide v0, 0x3fee666666666666L    # 0.95

    mul-double/2addr v0, p1

    double-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemCacheMaxBytes(J)V

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr p1, v0

    double-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemCacheTrimBytes(J)V

    :cond_6
    return-void
.end method

.method public save(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "osmdroid.basePath"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "osmdroid.cachePath"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "osmdroid.DebugMode"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugMode()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "osmdroid.DebugDownloading"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugMapTileDownloader()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "osmdroid.DebugMapView"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugMapView()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "osmdroid.DebugTileProvider"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugTileProviders()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "osmdroid.HardwareAcceleration"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "osmdroid.TileDownloaderFollowRedirects"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapTileDownloaderFollowRedirects()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "osmdroid.userAgentValue"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getUserAgentValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mAdditionalHttpRequestProperties:Ljava/util/Map;

    const-string v1, "osmdroid.additionalHttpRequestProperty."

    invoke-static {p2, p1, v0, v1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->save(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Ljava/lang/String;)V

    const-string p2, "osmdroid.gpsWaitTime"

    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p2, "osmdroid.cacheMapTileCount"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "osmdroid.tileDownloadThreads"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "osmdroid.tileFileSystemThreads"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "osmdroid.tileDownloadMaxQueueSize"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "osmdroid.tileFileSystemMaxQueueSize"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "osmdroid.ExpirationExtendedDuration"

    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    if-eqz p2, :cond_0

    const-string v0, "osmdroid.ExpirationOverride"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string p2, "osmdroid.ZoomSpeedDefault"

    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "osmdroid.animationSpeedShort"

    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "osmdroid.mapViewRecycler"

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p2, "osmdroid.cacheTileOvershoot"

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheTileOvershoot:S

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "osmdroid.enforceTileSystemBounds"

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->enforceTileSystemBounds:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->commit(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public setAnimationSpeedDefault(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    return-void
.end method

.method public setAnimationSpeedShort(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    return-void
.end method

.method public setCacheMapTileCount(S)V
    .locals 0

    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    return-void
.end method

.method public setCacheMapTileOvershoot(S)V
    .locals 0

    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheTileOvershoot:S

    return-void
.end method

.method public setDebugMapTileDownloader(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    return-void
.end method

.method public setDebugMapView(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    return-void
.end method

.method public setDebugTileProviders(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    return-void
.end method

.method public setEnforceTileSystemBounds(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->enforceTileSystemBounds:Z

    return-void
.end method

.method public setExpirationExtendedDuration(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    iput-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    :goto_0
    return-void
.end method

.method public setExpirationOverrideDuration(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    return-void
.end method

.method public setGpsWaitTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    return-void
.end method

.method public setHttpHeaderDateTimeFormat(Ljava/text/SimpleDateFormat;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public setHttpProxy(Ljava/net/Proxy;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpProxy:Ljava/net/Proxy;

    return-void
.end method

.method public setMapTileDownloaderFollowRedirects(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileDownloaderFollowRedirects:Z

    return-void
.end method

.method public setMapViewHardwareAccelerated(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    return-void
.end method

.method public setMapViewRecyclerFriendly(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    return-void
.end method

.method public setOsmdroidBasePath(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    return-void
.end method

.method public setOsmdroidTileCache(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    return-void
.end method

.method public setTileDownloadMaxQueueSize(S)V
    .locals 0

    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    return-void
.end method

.method public setTileDownloadThreads(S)V
    .locals 0

    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    return-void
.end method

.method public setTileFileSystemCacheMaxBytes(J)V
    .locals 0

    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheMaxBytes:J

    return-void
.end method

.method public setTileFileSystemCacheTrimBytes(J)V
    .locals 0

    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheTrimBytes:J

    return-void
.end method

.method public setTileFileSystemMaxQueueSize(S)V
    .locals 0

    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    return-void
.end method

.method public setTileFileSystemThreads(S)V
    .locals 0

    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    return-void
.end method

.method public setTileGCBulkPauseInMillis(J)V
    .locals 0

    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkPauseInMillis:J

    return-void
.end method

.method public setTileGCBulkSize(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkSize:I

    return-void
.end method

.method public setTileGCFrequencyInMillis(J)V
    .locals 0

    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCFrequencyInMillis:J

    return-void
.end method

.method public setUserAgentHttpHeader(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentHttpHeader:Ljava/lang/String;

    return-void
.end method

.method public setUserAgentValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentValue:Ljava/lang/String;

    return-void
.end method
