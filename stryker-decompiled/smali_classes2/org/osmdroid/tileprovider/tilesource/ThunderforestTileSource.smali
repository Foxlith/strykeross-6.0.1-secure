.class public Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.source "SourceFile"


# static fields
.field public static final CYCLE:I = 0x0

.field public static final LANDSCAPE:I = 0x2

.field public static final MOBILE_ATLAS:I = 0x7

.field public static final NEIGHBOURHOOD:I = 0x8

.field public static final OUTDOORS:I = 0x3

.field public static final PIONEER:I = 0x6

.field public static final SPINAL_MAP:I = 0x5

.field private static final THUNDERFOREST_MAPID:Ljava/lang/String; = "THUNDERFOREST_MAPID"

.field public static final TRANSPORT:I = 0x1

.field public static final TRANSPORT_DARK:I = 0x4

.field private static final baseUrl:[Ljava/lang/String;

.field private static final uiMap:[Ljava/lang/String;

.field private static final urlMap:[Ljava/lang/String;


# instance fields
.field private final mMap:I

.field private final mMapId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "cycle"

    const-string v1, "transport"

    const-string v2, "landscape"

    const-string v3, "outdoors"

    const-string v4, "transport-dark"

    const-string v5, "spinal-map"

    const-string v6, "pioneer"

    const-string v7, "mobile-atlas"

    const-string v8, "neighbourhood"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->urlMap:[Ljava/lang/String;

    const-string v1, "CycleMap"

    const-string v2, "Transport"

    const-string v3, "Landscape"

    const-string v4, "Outdoors"

    const-string v5, "TransportDark"

    const-string v6, "Spinal"

    const-string v7, "Pioneer"

    const-string v8, "MobileAtlas"

    const-string v9, "Neighbourhood"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->uiMap:[Ljava/lang/String;

    const-string v0, "https://b.tile.thunderforest.com/{map}/"

    const-string v1, "https://c.tile.thunderforest.com/{map}/"

    const-string v2, "https://a.tile.thunderforest.com/{map}/"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->baseUrl:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->uiMap:[Ljava/lang/String;

    aget-object v2, v0, p2

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x100

    const-string v6, ".png"

    sget-object v7, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->baseUrl:[Ljava/lang/String;

    const-string v8, "Maps \u00a9 Thunderforest, Data \u00a9 OpenStreetMap contributors."

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->mMap:I

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->retrieveMapId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->mMapId:Ljava/lang/String;

    return-void
.end method

.method public static haveMapId(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "THUNDERFOREST_MAPID"

    invoke-static {p0, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final mapName(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_1

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->uiMap:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getTileURLString(J)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->urlMap:[Ljava/lang/String;

    iget v3, p0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->mMap:I

    aget-object v2, v2, v3

    const-string v3, "{map}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".png?apikey="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->mMapId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final retrieveMapId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "THUNDERFOREST_MAPID"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
