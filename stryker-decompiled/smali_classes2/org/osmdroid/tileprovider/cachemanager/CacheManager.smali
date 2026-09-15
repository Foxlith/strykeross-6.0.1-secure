.class public Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper;,
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;,
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;,
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;,
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    }
.end annotation


# instance fields
.field protected final mMaxZoomLevel:I

.field protected final mMinZoomLevel:I

.field protected mPendingTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTileDownloader:Lorg/osmdroid/tileprovider/modules/TileDownloader;

.field protected final mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

.field protected final mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

.field protected verifyCancel:Z


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;II)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;II)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/osmdroid/tileprovider/modules/TileDownloader;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/modules/TileDownloader;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileDownloader:Lorg/osmdroid/tileprovider/modules/TileDownloader;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->verifyCancel:Z

    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    iput-object p2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    iput p3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMinZoomLevel:I

    iput p4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMaxZoomLevel:I

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileWriter()Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;-><init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 4

    .line 4
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()D

    move-result-wide v2

    double-to-int p1, v2

    invoke-direct {p0, v0, p2, v1, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;II)V

    return-void
.end method

.method public static getCoordinatesFromMapTile(III)Lorg/osmdroid/util/GeoPoint;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/TileSystem;->getLatitudeFromTileY(II)D

    move-result-wide v0

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lorg/osmdroid/util/TileSystem;->getLongitudeFromTileX(II)D

    move-result-wide p0

    new-instance p2, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {p2, v0, v1, p0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object p2
.end method

.method public static getFileName(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, p1, p2}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileRelativeFilenameString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tile"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMapTileFromCoordinates(DDI)Landroid/graphics/Point;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p4}, Lorg/osmdroid/util/TileSystem;->getTileYFromLatitude(DI)I

    move-result p0

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lorg/osmdroid/util/TileSystem;->getTileXFromLongitude(DI)I

    move-result p1

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method public static getTilesCoverage(Ljava/util/ArrayList;I)Ljava/util/Collection;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;I)",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    move/from16 v0, p1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x1

    shl-int v3, v2, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9, v0}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v8

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v10

    if-eqz v10, :cond_c

    if-eqz v5, :cond_b

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v14

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v16

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v14

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v16

    cmpl-double v10, v14, v16

    if-lez v10, :cond_0

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_1
    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    sub-double/2addr v14, v12

    goto :goto_2

    :cond_0
    const-wide v14, 0x4012d97c7f3321d2L    # 4.71238898038469

    goto :goto_1

    :goto_2
    new-instance v10, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v12

    move/from16 v17, v3

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-direct {v10, v12, v13, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    :goto_3
    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v12

    cmpl-double v2, v2, v12

    if-lez v2, :cond_1

    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v12

    cmpg-double v2, v2, v12

    if-ltz v2, :cond_2

    :cond_1
    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v12

    cmpg-double v2, v2, v12

    if-gez v2, :cond_a

    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v12

    cmpl-double v2, v2, v12

    if-lez v2, :cond_a

    :cond_2
    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v12

    cmpl-double v2, v2, v12

    if-lez v2, :cond_3

    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v12

    cmpg-double v2, v2, v12

    if-ltz v2, :cond_4

    :cond_3
    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v12

    cmpg-double v2, v2, v12

    if-gez v2, :cond_a

    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v12

    cmpl-double v2, v2, v12

    if-lez v2, :cond_a

    :cond_4
    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v12

    const-wide v18, 0x4066800000000000L    # 180.0

    div-double v2, v2, v18

    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v20

    mul-double v20, v20, v12

    div-double v20, v20, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    const-wide v24, 0x415854a640000000L    # 6378137.0

    div-double v24, v8, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v26, v26, v22

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v28, v28, v22

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v22, v22, v28

    add-double v22, v22, v26

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->asin(D)D

    move-result-wide v22

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v28, v28, v26

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v11, v26, v28

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v26, v26, v2

    sub-double v2, v24, v26

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    add-double v2, v2, v20

    mul-double v22, v22, v18

    move-object v13, v4

    move-object/from16 v20, v5

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    div-double v4, v22, v11

    invoke-virtual {v10, v4, v5}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    mul-double v2, v2, v18

    div-double/2addr v2, v11

    invoke-virtual {v10, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    new-instance v2, Landroid/graphics/Point;

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v3

    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v0}, Lorg/osmdroid/util/TileSystem;->getTileXFromLongitude(DI)I

    move-result v3

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v4

    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v4, v11, v12, v0}, Lorg/osmdroid/util/TileSystem;->getTileYFromLatitude(DI)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget v3, v2, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_5

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    neg-int v4, v3

    :goto_4
    iget v5, v2, Landroid/graphics/Point;->y:I

    if-ltz v5, :cond_6

    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    neg-int v5, v5

    :goto_5
    add-int/2addr v3, v4

    :goto_6
    iget v6, v2, Landroid/graphics/Point;->x:I

    const/4 v11, 0x1

    add-int/2addr v6, v11

    add-int/2addr v6, v4

    if-gt v3, v6, :cond_8

    iget v6, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v5

    :goto_7
    iget v12, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v12, v11

    add-int/2addr v12, v5

    move/from16 v11, v17

    if-gt v6, v12, :cond_7

    invoke-static {v6, v11}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v12

    move-object/from16 v17, v2

    invoke-static {v3, v11}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v2

    invoke-static {v0, v2, v12}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v17

    move/from16 v17, v11

    const/4 v11, 0x1

    goto :goto_7

    :cond_7
    move-object/from16 v17, v2

    add-int/lit8 v3, v3, 0x1

    move/from16 v17, v11

    goto :goto_6

    :cond_8
    move/from16 v11, v17

    move-object/from16 v17, v2

    move-object/from16 v6, v17

    goto :goto_8

    :cond_9
    move/from16 v11, v17

    :goto_8
    move/from16 v17, v11

    move-object v4, v13

    move-object/from16 v5, v20

    goto/16 :goto_3

    :cond_a
    move-object v13, v4

    move/from16 v11, v17

    const/4 v8, 0x1

    goto :goto_d

    :cond_b
    move v11, v3

    move-object v13, v4

    move v8, v2

    goto :goto_d

    :cond_c
    move v11, v3

    move-object v13, v4

    new-instance v2, Landroid/graphics/Point;

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v3

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v0}, Lorg/osmdroid/util/TileSystem;->getTileXFromLongitude(DI)I

    move-result v3

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v4

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v0}, Lorg/osmdroid/util/TileSystem;->getTileYFromLatitude(DI)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_d

    const/4 v4, 0x0

    goto :goto_9

    :cond_d
    neg-int v4, v3

    :goto_9
    iget v5, v2, Landroid/graphics/Point;->y:I

    if-ltz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_a

    :cond_e
    neg-int v5, v5

    :goto_a
    add-int/2addr v3, v4

    :goto_b
    iget v6, v2, Landroid/graphics/Point;->x:I

    const/4 v8, 0x1

    add-int/2addr v6, v8

    add-int/2addr v6, v4

    if-gt v3, v6, :cond_10

    iget v6, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v5

    :goto_c
    iget v9, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v8

    add-int/2addr v9, v5

    if-gt v6, v9, :cond_f

    invoke-static {v6, v11}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v9

    invoke-static {v3, v11}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v10

    invoke-static {v0, v10, v9}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_10
    move-object v6, v2

    :goto_d
    move-object v5, v7

    move v2, v8

    move v3, v11

    move-object v4, v13

    goto/16 :goto_0

    :cond_11
    return-object v1
.end method

.method public static getTilesCoverage(Lorg/osmdroid/util/BoundingBox;I)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/BoundingBox;",
            "I)",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p0, p1, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverageIterable(Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/util/IterableWithSize;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getTilesCoverage(Ljava/util/ArrayList;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    invoke-static {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverage(Ljava/util/ArrayList;I)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getTilesCoverage(Lorg/osmdroid/util/BoundingBox;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/BoundingBox;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    invoke-static {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverage(Lorg/osmdroid/util/BoundingBox;I)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getTilesCoverageIterable(Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/util/IterableWithSize;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/BoundingBox;",
            "II)",
            "Lorg/osmdroid/util/IterableWithSize<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/osmdroid/util/MapTileAreaList;

    invoke-direct {v0}, Lorg/osmdroid/util/MapTileAreaList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/util/MapTileAreaList;->getList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/osmdroid/util/MapTileArea;

    invoke-direct {v2}, Lorg/osmdroid/util/MapTileArea;-><init>()V

    invoke-static {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesRect(Lorg/osmdroid/util/BoundingBox;I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/osmdroid/util/MapTileArea;->set(ILandroid/graphics/Rect;)Lorg/osmdroid/util/MapTileArea;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getTilesRect(Lorg/osmdroid/util/BoundingBox;I)Landroid/graphics/Rect;
    .locals 8

    const/4 v0, 0x1

    shl-int v1, v0, p1

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Lorg/osmdroid/util/TileSystem;->getTileXFromLongitude(DI)I

    move-result v2

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v3

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p1}, Lorg/osmdroid/util/TileSystem;->getTileYFromLatitude(DI)I

    move-result v3

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v4

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6, p1}, Lorg/osmdroid/util/TileSystem;->getTileXFromLongitude(DI)I

    move-result v4

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v5

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7, p1}, Lorg/osmdroid/util/TileSystem;->getTileYFromLatitude(DI)I

    move-result p0

    sub-int/2addr v2, v4

    add-int/2addr v2, v0

    if-gtz v2, :cond_0

    add-int/2addr v2, v1

    :cond_0
    sub-int/2addr v3, p0

    add-int/2addr v3, v0

    if-gtz v3, :cond_1

    add-int/2addr v3, v1

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr v2, v4

    sub-int/2addr v2, v0

    add-int/2addr v3, p0

    sub-int/2addr v3, v0

    invoke-direct {p1, v4, p0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method


# virtual methods
.method public cacheCapacity()J
    .locals 2

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public cancelAllJobs()V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public checkTile(J)Z
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v0, v1, p1, p2}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z

    move-result p1

    return p1
.end method

.method public cleanAreaAsync(Landroid/content/Context;Ljava/util/ArrayList;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->extendedBoundsFromGeoPoints(Ljava/util/ArrayList;I)Lorg/osmdroid/util/BoundingBox;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->cleanAreaAsync(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object p1

    return-object p1
.end method

.method public cleanAreaAsync(Landroid/content/Context;Ljava/util/List;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;II)",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .line 2
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCleaningAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/List;II)V

    invoke-virtual {p0, p1, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCleaningDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object p1

    invoke-virtual {v6, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    invoke-virtual {p0, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object p1

    return-object p1
.end method

.method public cleanAreaAsync(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7

    .line 3
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCleaningAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/BoundingBox;II)V

    invoke-virtual {p0, p1, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCleaningDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object p1

    invoke-virtual {v6, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    invoke-virtual {p0, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object p1

    return-object p1
.end method

.method public currentCacheUsage()J
    .locals 2

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->directorySize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteTile(J)Z
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v0, v1, p1, p2}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v0, v1, p1, p2}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->remove(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public directorySize(Ljava/io/File;)J
    .locals 6

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    :goto_1
    add-long/2addr v4, v0

    move-wide v0, v4

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->directorySize(Ljava/io/File;)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public downloadAreaAsync(Landroid/content/Context;Ljava/util/ArrayList;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .line 1
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/ArrayList;II)V

    invoke-virtual {p0, p1, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object p1

    invoke-virtual {v6, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    invoke-virtual {p0, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object p1

    return-object p1
.end method

.method public downloadAreaAsync(Landroid/content/Context;Ljava/util/ArrayList;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;",
            ")",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .line 2
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/ArrayList;II)V

    invoke-virtual {v6, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    invoke-virtual {p0, p1, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object p1

    invoke-virtual {v6, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    invoke-virtual {p0, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object p1

    return-object p1
.end method

.method public downloadAreaAsync(Landroid/content/Context;Ljava/util/List;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;II)",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .line 3
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/List;II)V

    invoke-virtual {p0, p1, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object p1

    invoke-virtual {v6, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    invoke-virtual {p0, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object p1

    return-object p1
.end method

.method public downloadAreaAsync(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7

    .line 4
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/BoundingBox;II)V

    invoke-virtual {p0, p1, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object p1

    invoke-virtual {v6, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    invoke-virtual {p0, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object p1

    return-object p1
.end method

.method public downloadAreaAsync(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7

    .line 5
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/BoundingBox;II)V

    invoke-virtual {v6, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    invoke-virtual {p0, p1, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object p1

    invoke-virtual {v6, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    invoke-virtual {p0, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object p1

    return-object p1
.end method

.method public downloadAreaAsyncNoUI(Landroid/content/Context;Ljava/util/ArrayList;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;",
            ")",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .line 1
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/ArrayList;II)V

    invoke-virtual {v6, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    invoke-virtual {p0, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object p1

    return-object p1
.end method

.method public downloadAreaAsyncNoUI(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7

    .line 2
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/BoundingBox;II)V

    invoke-virtual {v6, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    invoke-virtual {p0, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    return-object v6
.end method

.method public execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public extendedBoundsFromGeoPoints(Ljava/util/ArrayList;I)Lorg/osmdroid/util/BoundingBox;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;I)",
            "Lorg/osmdroid/util/BoundingBox;"
        }
    .end annotation

    invoke-static {p1}, Lorg/osmdroid/util/BoundingBox;->fromGeoPoints(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;

    move-result-object p1

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lorg/osmdroid/util/TileSystem;->getTileXFromLongitude(DI)I

    move-result v0

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v1

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2}, Lorg/osmdroid/util/TileSystem;->getTileYFromLatitude(DI)I

    move-result v1

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p2}, Lorg/osmdroid/util/TileSystem;->getTileXFromLongitude(DI)I

    move-result v2

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v3

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p2}, Lorg/osmdroid/util/TileSystem;->getTileYFromLatitude(DI)I

    move-result p1

    new-instance v12, Lorg/osmdroid/util/BoundingBox;

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v3

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v3, p1, p2}, Lorg/osmdroid/util/TileSystem;->getLatitudeFromTileY(II)D

    move-result-wide v4

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, p2}, Lorg/osmdroid/util/TileSystem;->getLongitudeFromTileX(II)D

    move-result-wide v6

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, p2}, Lorg/osmdroid/util/TileSystem;->getLatitudeFromTileY(II)D

    move-result-wide v8

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2, p2}, Lorg/osmdroid/util/TileSystem;->getLongitudeFromTileX(II)D

    move-result-wide v10

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v12
.end method

.method public forceLoadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;J)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileDownloader:Lorg/osmdroid/tileprovider/modules/TileDownloader;

    iget-object v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-virtual {v1, p2, p3, v2, p1}, Lorg/osmdroid/tileprovider/modules/TileDownloader;->downloadTile(JLorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Lorg/osmdroid/tileprovider/modules/CantContinueException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public getCleaningAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;
    .locals 1

    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$4;

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$4;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;)V

    return-object v0
.end method

.method public getCleaningDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;
    .locals 1

    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$2;

    invoke-direct {v0, p0, p1, p2, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$2;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;Landroid/content/Context;)V

    return-object v0
.end method

.method public getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;
    .locals 1

    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;

    invoke-direct {v0, p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;)V

    return-object v0
.end method

.method public getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;
    .locals 1

    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;

    invoke-direct {v0, p0, p1, p2, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;Landroid/content/Context;)V

    return-object v0
.end method

.method public getPendingJobs()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getVerifyCancel()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->verifyCancel:Z

    return v0
.end method

.method public isTileToBeDownloaded(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-interface {v0, p1, p2, p3}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->getExpirationTimestamp(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public loadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;J)Z
    .locals 2

    invoke-static {p1, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getFileName(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-interface {v0, p1, p2, p3}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->forceLoadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;J)Z

    move-result p1

    return p1
.end method

.method public possibleTilesCovered(Ljava/util/ArrayList;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)I"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverage(Ljava/util/ArrayList;II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public possibleTilesInArea(Lorg/osmdroid/util/BoundingBox;II)I
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverageIterable(Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/util/IterableWithSize;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/util/IterableWithSize;->size()I

    move-result p1

    return p1
.end method

.method public setTileDownloader(Lorg/osmdroid/tileprovider/modules/TileDownloader;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileDownloader:Lorg/osmdroid/tileprovider/modules/TileDownloader;

    return-void
.end method

.method public setVerifyCancel(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->verifyCancel:Z

    return-void
.end method
