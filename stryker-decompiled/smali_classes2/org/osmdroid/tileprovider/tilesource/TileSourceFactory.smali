.class public Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BASE_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final CLOUDMADESMALLTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final CLOUDMADESTANDARDTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ChartbundleENRH:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ChartbundleENRL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ChartbundleWAC:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final FIETS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final HIKEBIKEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final OPEN_SEAMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final OpenTopo:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final PUBLIC_TRANSPORT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ROADS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final USGS_SAT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final USGS_TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final WIKIMEDIA:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field private static mTileSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/tilesource/ITileSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 29

    new-instance v9, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "Mapnik"

    const/4 v2, 0x0

    const/16 v3, 0x13

    const/16 v4, 0x100

    const-string v5, ".png"

    const-string v0, "https://b.tile.openstreetmap.org/"

    const-string v6, "https://c.tile.openstreetmap.org/"

    const-string v7, "https://a.tile.openstreetmap.org/"

    filled-new-array {v7, v0, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u00a9 OpenStreetMap contributors"

    new-instance v8, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    const/4 v0, 0x2

    const/16 v10, 0xf

    invoke-direct {v8, v0, v10}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;-><init>(II)V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;)V

    sput-object v9, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v12, "Wikimedia"

    const/4 v13, 0x1

    const/16 v14, 0x13

    const/16 v15, 0x100

    const-string v16, ".png"

    const-string v1, "https://maps.wikimedia.org/osm-intl/"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v17

    const-string v18, "Wikimedia maps | Map data \u00a9 OpenStreetMap contributors"

    new-instance v1, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v10}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;-><init>(II)V

    move-object v11, v0

    move-object/from16 v19, v1

    invoke-direct/range {v11 .. v19}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->WIKIMEDIA:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v1, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v20, "OSMPublicTransport"

    const/16 v21, 0x0

    const/16 v22, 0x11

    const/16 v23, 0x100

    const-string v24, ".png"

    const-string v2, "http://openptmap.org/tiles/"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v25

    const-string v26, "\u00a9 OpenStreetMap contributors"

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v26}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->PUBLIC_TRANSPORT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    sput-object v9, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v10, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;

    const-string v3, "CloudMadeStandardTiles"

    const/4 v4, 0x0

    const/16 v5, 0x12

    const/16 v6, 0x100

    const-string v7, ".png"

    const-string v11, "http://a.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    const-string v12, "http://b.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    const-string v13, "http://c.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    filled-new-array {v11, v12, v13}, [Ljava/lang/String;

    move-result-object v8

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v10, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CLOUDMADESTANDARDTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v2, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;

    const-string v15, "CloudMadeSmallTiles"

    const/16 v16, 0x0

    const/16 v17, 0x15

    const/16 v18, 0x40

    const-string v19, ".png"

    filled-new-array {v11, v12, v13}, [Ljava/lang/String;

    move-result-object v20

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CLOUDMADESMALLTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v2, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v22, "Fiets"

    const/16 v23, 0x3

    const/16 v24, 0x12

    const/16 v25, 0x100

    const-string v26, ".png"

    const-string v3, "https://overlay.openstreetmap.nl/openfietskaart-overlay/"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v27

    const-string v28, "\u00a9 OpenStreetMap contributors"

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v28}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->FIETS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v2, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v11, "BaseNL"

    const/4 v12, 0x0

    const/16 v13, 0x12

    const/16 v14, 0x100

    const-string v15, ".png"

    const-string v3, "https://overlay.openstreetmap.nl/basemap/"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v16

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->BASE_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v2, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v18, "RoadsNL"

    const/16 v19, 0x0

    const/16 v20, 0x12

    const/16 v21, 0x100

    const-string v22, ".png"

    const-string v3, "https://overlay.openstreetmap.nl/roads/"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v23

    const-string v24, "\u00a9 OpenStreetMap contributors"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v24}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ROADS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v2, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v11, "HikeBikeMap"

    const-string v15, ".png"

    const-string v3, "https://tiles.wmflabs.org/hikebike/"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v16

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->HIKEBIKEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v3, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v18, "OpenSeaMap"

    const/16 v19, 0x3

    const-string v22, ".png"

    const-string v4, "https://tiles.openseamap.org/seamark/"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v23

    const-string v24, "OpenSeaMap"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->OPEN_SEAMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v3, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory$1;

    const-string v11, "USGS National Map Topo"

    const/16 v13, 0xf

    const-string v15, ""

    const-string v4, "https://basemap.nationalmap.gov/arcgis/rest/services/USGSTopo/MapServer/tile/"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "USGS"

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory$1;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v4, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory$2;

    const-string v19, "USGS National Map Sat"

    const/16 v20, 0x0

    const/16 v21, 0xf

    const/16 v22, 0x100

    const-string v23, ""

    const-string v5, "https://basemap.nationalmap.gov/arcgis/rest/services/USGSImageryTopo/MapServer/tile/"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    const-string v25, "USGS"

    move-object/from16 v18, v4

    invoke-direct/range {v18 .. v25}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory$2;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_SAT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v11, "ChartbundleWAC"

    const/4 v12, 0x4

    const/16 v13, 0xc

    const-string v15, ".png?type=google"

    const-string v6, "https://wms.chartbundle.com/tms/v1.0/wac/"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "chartbundle.com"

    move-object v10, v5

    invoke-direct/range {v10 .. v17}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ChartbundleWAC:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v6, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v19, "ChartbundleENRH"

    const/16 v20, 0x4

    const/16 v21, 0xc

    const-string v23, ".png?type=google"

    const-string v7, "https://wms.chartbundle.com/tms/v1.0/enrh/"

    const-string v8, "chartbundle.com"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v18, v6

    invoke-direct/range {v18 .. v24}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v6, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ChartbundleENRH:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v7, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v11, "ChartbundleENRL"

    const-string v15, ".png?type=google"

    const-string v10, "https://wms.chartbundle.com/tms/v1.0/enrl/"

    filled-new-array {v10, v8}, [Ljava/lang/String;

    move-result-object v16

    move-object v10, v7

    invoke-direct/range {v10 .. v16}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v7, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ChartbundleENRL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v8, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v18, "OpenTopoMap"

    const/16 v19, 0x0

    const/16 v20, 0x11

    const/16 v21, 0x100

    const-string v22, ".png"

    const-string v10, "https://b.tile.opentopomap.org/"

    const-string v11, "https://c.tile.opentopomap.org/"

    const-string v12, "https://a.tile.opentopomap.org/"

    filled-new-array {v12, v10, v11}, [Ljava/lang/String;

    move-result-object v23

    const-string v24, "Kartendaten: \u00a9 OpenStreetMap-Mitwirkende, SRTM | Kartendarstellung: \u00a9 OpenTopoMap (CC-BY-SA)"

    move-object/from16 v17, v8

    invoke-direct/range {v17 .. v24}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->OpenTopo:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sput-object v10, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static containsTileSource(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getTileSource(I)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->ordinal()I

    move-result v2

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No tile source at position: "

    .line 1
    invoke-static {v1, p0}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTileSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 3

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No such tile source: "

    .line 7
    invoke-static {v1, p0}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTileSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/tilesource/ITileSource;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    return-object v0
.end method

.method public static removeTileSources(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    sget-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v2}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method
