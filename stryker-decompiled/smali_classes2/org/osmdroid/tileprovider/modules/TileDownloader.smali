.class public Lorg/osmdroid/tileprovider/modules/TileDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;
    }
.end annotation


# instance fields
.field private compatibilitySocketFactorySet:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeExpirationTime(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getExpirationOverrideDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long/2addr p1, p3

    return-wide p1

    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getExpirationExtendedDuration()J

    move-result-wide v0

    invoke-virtual {p0, p2}, Lorg/osmdroid/tileprovider/modules/TileDownloader;->getHttpCacheControlDuration(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    add-long/2addr p1, p3

    add-long/2addr p1, v0

    return-wide p1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/modules/TileDownloader;->getHttpExpiresTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1

    :cond_2
    const-wide/32 p1, 0x240c8400

    add-long/2addr p3, p1

    add-long/2addr p3, v0

    return-wide p3
.end method

.method public downloadTile(JILjava/lang/String;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;)Landroid/graphics/drawable/Drawable;
    .locals 19

    .line 1
    move/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "https://"

    const-string v4, " : "

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-le v1, v5, :cond_0

    return-object v6

    :cond_0
    invoke-virtual/range {p6 .. p6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getTileSourcePolicy()Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    move-result-object v5

    invoke-virtual {v5}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->normalizesUserAgent()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v5

    invoke-interface {v5}, Lorg/osmdroid/config/IConfigurationProvider;->getNormalizedUserAgent()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v6

    :goto_0
    if-nez v5, :cond_2

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v5

    invoke-interface {v5}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentValue()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual/range {p6 .. p6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getTileSourcePolicy()Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->acceptsUserAgent(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "OsmDroid"

    if-nez v7, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please configure a relevant user agent; current value is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_3
    const/4 v7, 0x1

    :try_start_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v9

    invoke-interface {v9}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v9

    invoke-interface {v9}, Lorg/osmdroid/config/IConfigurationProvider;->getHttpProxy()Ljava/net/Proxy;

    move-result-object v9

    if-eqz v9, :cond_4

    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v10

    invoke-interface {v10}, Lorg/osmdroid/config/IConfigurationProvider;->getHttpProxy()Ljava/net/Proxy;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v9

    :goto_1
    check-cast v9, Ljava/net/HttpURLConnection;

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object v1, v6

    move-object v2, v1

    move-object v3, v2

    move-object v9, v3

    move-object v14, v9

    goto/16 :goto_16

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v1, v6

    move-object v2, v1

    move-object v3, v2

    move-object v9, v3

    move-object v14, v9

    goto/16 :goto_18

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v1, v6

    move-object v2, v1

    move-object v3, v2

    move-object v9, v3

    move-object v14, v9

    goto/16 :goto_19

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    move-object v3, v2

    move-object v5, v3

    move-object v9, v5

    goto/16 :goto_1a

    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v1, v6

    move-object v2, v1

    move-object v3, v2

    move-object v9, v3

    move-object v14, v9

    goto/16 :goto_1b

    :cond_4
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_2
    :try_start_1
    invoke-virtual {v9, v7}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v10

    invoke-interface {v10}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentHttpHeader()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v5

    invoke-interface {v5}, Lorg/osmdroid/config/IConfigurationProvider;->getAdditionalHttpRequestProperties()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v11, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v1, v6

    move-object v2, v1

    :goto_4
    move-object v3, v2

    :goto_5
    move-object v14, v3

    goto/16 :goto_16

    :catch_4
    move-exception v0

    move-object v5, v0

    move-object v1, v6

    move-object v2, v1

    :goto_6
    move-object v3, v2

    :goto_7
    move-object v14, v3

    goto/16 :goto_18

    :catch_5
    move-exception v0

    move-object v5, v0

    move-object v1, v6

    move-object v2, v1

    :goto_8
    move-object v3, v2

    :goto_9
    move-object v14, v3

    goto/16 :goto_19

    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    move-object v3, v2

    move-object v5, v3

    goto/16 :goto_1a

    :catch_7
    move-exception v0

    move-object v5, v0

    move-object v1, v6

    move-object v2, v1

    :goto_a
    move-object v3, v2

    :goto_b
    move-object v14, v3

    goto/16 :goto_1b

    :cond_5
    invoke-virtual {v9}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v10, 0xc8

    if-eq v5, v10, :cond_c

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v10, 0x12d

    const-string v11, " HTTP response: "

    if-eq v5, v10, :cond_6

    const/16 v10, 0x12e

    if-eq v5, v10, :cond_6

    const/16 v10, 0x133

    if-eq v5, v10, :cond_6

    const/16 v10, 0x134

    if-eq v5, v10, :cond_6

    goto/16 :goto_e

    :cond_6
    :try_start_2
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v5

    invoke-interface {v5}, Lorg/osmdroid/config/IConfigurationProvider;->isMapTileDownloaderFollowRedirects()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "Location"

    invoke-virtual {v9, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, -0x1

    if-ne v12, v14, :cond_8

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v12, "http://"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v12, 0x50

    goto :goto_c

    :cond_7
    const/16 v12, 0x1bb

    :cond_8
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v13, :cond_9

    goto :goto_d

    :cond_9
    const-string v3, "http"

    :goto_d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http redirect for MapTile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, v1, 0x1

    move-object/from16 v12, p0

    move-wide/from16 v13, p1

    move-object/from16 v16, v5

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    invoke-virtual/range {v12 .. v18}, Lorg/osmdroid/tileprovider/modules/TileDownloader;->downloadTile(JILjava/lang/String;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :try_start_3
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    :catch_8
    return-object v1

    :cond_b
    :goto_e
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem downloading MapTile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapTileDownloader()Z

    sget v1, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/2addr v1, v7

    sput v1, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v1}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :try_start_5
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    :catch_9
    return-object v6

    :cond_c
    :try_start_6
    const-string v1, "Content-Type"

    invoke-virtual {v9, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapTileDownloader()Z

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "image"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " success, however the mime type does not appear to be an image "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_1e
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_7 .. :try_end_7} :catch_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1b
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v5, 0x2000

    invoke-direct {v3, v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_1a
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_17
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    invoke-virtual/range {p6 .. p6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getTileSourcePolicy()Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v9, v10, v11}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->computeExpirationTime(Ljava/net/HttpURLConnection;J)J

    move-result-wide v10

    invoke-static {v1, v3}, Lorg/osmdroid/tileprovider/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_16
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_13
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz p5, :cond_e

    :try_start_a
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_11
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object v5, v14

    move-wide/from16 v14, p1

    move-object/from16 v16, v5

    :try_start_b
    invoke-interface/range {v12 .. v17}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->saveFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;JLjava/io/InputStream;Ljava/lang/Long;)Z

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->reset()V

    :goto_f
    move-object/from16 v10, p6

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object v4, v0

    move-object v14, v5

    goto/16 :goto_16

    :catch_a
    move-exception v0

    move-object v14, v5

    :goto_10
    move-object v5, v0

    goto/16 :goto_18

    :catch_b
    move-exception v0

    move-object v14, v5

    :goto_11
    move-object v5, v0

    goto/16 :goto_19

    :catch_c
    move-exception v0

    :goto_12
    move-object v6, v1

    move-object v1, v0

    goto/16 :goto_1a

    :catch_d
    move-exception v0

    move-object v14, v5

    :goto_13
    move-object v5, v0

    goto/16 :goto_1b

    :catchall_3
    move-exception v0

    move-object v5, v14

    move-object v4, v0

    goto/16 :goto_16

    :catch_e
    move-exception v0

    move-object v5, v14

    goto :goto_10

    :catch_f
    move-exception v0

    move-object v5, v14

    goto :goto_11

    :catch_10
    move-exception v0

    move-object v5, v14

    goto :goto_12

    :catch_11
    move-exception v0

    move-object v5, v14

    goto :goto_13

    :cond_e
    move-object v5, v14

    goto :goto_f

    :goto_14
    invoke-virtual {v10, v5}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_d
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    invoke-static {v1}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v3}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v5}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v2}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :try_start_c
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_12

    :catch_12
    return-object v4

    :catchall_4
    move-exception v0

    move-object v4, v0

    move-object v14, v6

    goto/16 :goto_16

    :catch_13
    move-exception v0

    move-object v5, v0

    move-object v14, v6

    goto/16 :goto_18

    :catch_14
    move-exception v0

    move-object v5, v0

    move-object v14, v6

    goto/16 :goto_19

    :catch_15
    move-exception v0

    move-object v5, v6

    goto :goto_12

    :catch_16
    move-exception v0

    move-object v5, v0

    move-object v14, v6

    goto/16 :goto_1b

    :catchall_5
    move-exception v0

    move-object v4, v0

    move-object v3, v6

    goto/16 :goto_5

    :catch_17
    move-exception v0

    move-object v5, v0

    move-object v3, v6

    goto/16 :goto_7

    :catch_18
    move-exception v0

    move-object v5, v0

    move-object v3, v6

    goto/16 :goto_9

    :catch_19
    move-exception v0

    move-object v3, v6

    :goto_15
    move-object v5, v3

    goto :goto_12

    :catch_1a
    move-exception v0

    move-object v5, v0

    move-object v3, v6

    goto/16 :goto_b

    :catchall_6
    move-exception v0

    move-object v4, v0

    move-object v2, v6

    goto/16 :goto_4

    :catch_1b
    move-exception v0

    move-object v5, v0

    move-object v2, v6

    goto/16 :goto_6

    :catch_1c
    move-exception v0

    move-object v5, v0

    move-object v2, v6

    goto/16 :goto_8

    :catch_1d
    move-exception v0

    move-object v2, v6

    move-object v3, v2

    goto :goto_15

    :catch_1e
    move-exception v0

    move-object v5, v0

    move-object v2, v6

    goto/16 :goto_a

    :cond_f
    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :try_start_d
    throw v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1f

    :catch_1f
    return-object v6

    :goto_16
    :try_start_e
    sget v5, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/2addr v5, v7

    sput v5, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error downloading MapTile: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :goto_17
    invoke-static {v1}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v3}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v14}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v2}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :try_start_f
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_20

    goto/16 :goto_1c

    :catchall_7
    move-exception v0

    move-object v4, v0

    goto/16 :goto_1d

    :goto_18
    :try_start_10
    sget v10, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/2addr v10, v7

    sput v10, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException downloading MapTile: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :goto_19
    sget v10, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/2addr v10, v7

    sput v10, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tile not found: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_17

    :goto_1a
    :try_start_11
    sget v10, Lorg/osmdroid/tileprovider/util/Counters;->countOOM:I

    add-int/2addr v10, v7

    sput v10, Lorg/osmdroid/tileprovider/util/Counters;->countOOM:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LowMemoryException downloading MapTile: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lorg/osmdroid/tileprovider/modules/CantContinueException;

    invoke-direct {v4, v1}, Lorg/osmdroid/tileprovider/modules/CantContinueException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :catchall_8
    move-exception v0

    move-object v4, v0

    move-object v14, v5

    move-object v1, v6

    goto :goto_1d

    :goto_1b
    :try_start_12
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UnknownHostException downloading MapTile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/2addr v4, v7

    sput v4, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto/16 :goto_17

    :catch_20
    :goto_1c
    return-object v6

    :goto_1d
    invoke-static {v1}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v3}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v14}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v2}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :try_start_13
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_21

    :catch_21
    throw v4
.end method

.method public downloadTile(JLorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 2
    const/4 v3, 0x0

    invoke-virtual {p4, p1, p2}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getTileURLString(J)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/osmdroid/tileprovider/modules/TileDownloader;->downloadTile(JILjava/lang/String;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getHttpCacheControlDuration(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, "max-age="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapTileDownloader()Z

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHttpExpiresTime(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getHttpHeaderDateTimeFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapTileDownloader()Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
