.class public interface abstract Lorg/osmdroid/config/IConfigurationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAdditionalHttpRequestProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnimationSpeedDefault()I
.end method

.method public abstract getAnimationSpeedShort()I
.end method

.method public abstract getCacheMapTileCount()S
.end method

.method public abstract getCacheMapTileOvershoot()S
.end method

.method public abstract getExpirationExtendedDuration()J
.end method

.method public abstract getExpirationOverrideDuration()Ljava/lang/Long;
.end method

.method public abstract getGpsWaitTime()J
.end method

.method public abstract getHttpHeaderDateTimeFormat()Ljava/text/SimpleDateFormat;
.end method

.method public abstract getHttpProxy()Ljava/net/Proxy;
.end method

.method public abstract getNormalizedUserAgent()Ljava/lang/String;
.end method

.method public abstract getOsmdroidBasePath()Ljava/io/File;
.end method

.method public abstract getOsmdroidBasePath(Landroid/content/Context;)Ljava/io/File;
.end method

.method public abstract getOsmdroidTileCache()Ljava/io/File;
.end method

.method public abstract getOsmdroidTileCache(Landroid/content/Context;)Ljava/io/File;
.end method

.method public abstract getTileDownloadMaxQueueSize()S
.end method

.method public abstract getTileDownloadThreads()S
.end method

.method public abstract getTileFileSystemCacheMaxBytes()J
.end method

.method public abstract getTileFileSystemCacheTrimBytes()J
.end method

.method public abstract getTileFileSystemMaxQueueSize()S
.end method

.method public abstract getTileFileSystemThreads()S
.end method

.method public abstract getTileGCBulkPauseInMillis()J
.end method

.method public abstract getTileGCBulkSize()I
.end method

.method public abstract getTileGCFrequencyInMillis()J
.end method

.method public abstract getUserAgentHttpHeader()Ljava/lang/String;
.end method

.method public abstract getUserAgentValue()Ljava/lang/String;
.end method

.method public abstract isDebugMapTileDownloader()Z
.end method

.method public abstract isDebugMapView()Z
.end method

.method public abstract isDebugMode()Z
.end method

.method public abstract isDebugTileProviders()Z
.end method

.method public abstract isEnforceTileSystemBounds()Z
.end method

.method public abstract isMapTileDownloaderFollowRedirects()Z
.end method

.method public abstract isMapViewHardwareAccelerated()Z
.end method

.method public abstract isMapViewRecyclerFriendly()Z
.end method

.method public abstract load(Landroid/content/Context;Landroid/content/SharedPreferences;)V
.end method

.method public abstract save(Landroid/content/Context;Landroid/content/SharedPreferences;)V
.end method

.method public abstract setAnimationSpeedDefault(I)V
.end method

.method public abstract setAnimationSpeedShort(I)V
.end method

.method public abstract setCacheMapTileCount(S)V
.end method

.method public abstract setCacheMapTileOvershoot(S)V
.end method

.method public abstract setDebugMapTileDownloader(Z)V
.end method

.method public abstract setDebugMapView(Z)V
.end method

.method public abstract setDebugMode(Z)V
.end method

.method public abstract setDebugTileProviders(Z)V
.end method

.method public abstract setEnforceTileSystemBounds(Z)V
.end method

.method public abstract setExpirationExtendedDuration(J)V
.end method

.method public abstract setExpirationOverrideDuration(Ljava/lang/Long;)V
.end method

.method public abstract setGpsWaitTime(J)V
.end method

.method public abstract setHttpHeaderDateTimeFormat(Ljava/text/SimpleDateFormat;)V
.end method

.method public abstract setHttpProxy(Ljava/net/Proxy;)V
.end method

.method public abstract setMapTileDownloaderFollowRedirects(Z)V
.end method

.method public abstract setMapViewHardwareAccelerated(Z)V
.end method

.method public abstract setMapViewRecyclerFriendly(Z)V
.end method

.method public abstract setOsmdroidBasePath(Ljava/io/File;)V
.end method

.method public abstract setOsmdroidTileCache(Ljava/io/File;)V
.end method

.method public abstract setTileDownloadMaxQueueSize(S)V
.end method

.method public abstract setTileDownloadThreads(S)V
.end method

.method public abstract setTileFileSystemCacheMaxBytes(J)V
.end method

.method public abstract setTileFileSystemCacheTrimBytes(J)V
.end method

.method public abstract setTileFileSystemMaxQueueSize(S)V
.end method

.method public abstract setTileFileSystemThreads(S)V
.end method

.method public abstract setTileGCBulkPauseInMillis(J)V
.end method

.method public abstract setTileGCBulkSize(I)V
.end method

.method public abstract setTileGCFrequencyInMillis(J)V
.end method

.method public abstract setUserAgentHttpHeader(Ljava/lang/String;)V
.end method

.method public abstract setUserAgentValue(Ljava/lang/String;)V
.end method
