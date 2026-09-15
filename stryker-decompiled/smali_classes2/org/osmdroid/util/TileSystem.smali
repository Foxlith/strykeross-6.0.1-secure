.class public abstract Lorg/osmdroid/util/TileSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EarthRadius:D = 6378137.0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MaxLatitude:D = 85.05112877980659
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MaxLongitude:D = 180.0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MinLatitude:D = -85.05112877980659
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MinLongitude:D = -180.0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static mMaxZoomLevel:I = 0x1d

.field private static mTileSize:I = 0x100

.field public static final primaryKeyMaxZoomLevel:I = 0x1d

.field public static final projectionZoomLevel:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Clip(DDD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static Clip(JJJ)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static ClipToLong(DDZ)J
    .locals 4

    invoke-static {p0, p1}, Lorg/osmdroid/util/MyMath;->floorToLong(D)J

    move-result-wide p0

    if-nez p4, :cond_0

    return-wide p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p4, p0, v0

    if-gtz p4, :cond_1

    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v0, p2, v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->floorToLong(D)J

    move-result-wide v0

    long-to-double v2, p0

    cmpl-double p2, v2, p2

    if-ltz p2, :cond_2

    move-wide p0, v0

    :cond_2
    return-wide p0
.end method

.method public static GroundResolution(DD)D
    .locals 8

    .line 1
    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v6, 0x4066800000000000L    # 180.0

    move-wide v0, p0

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide p0

    invoke-static {p2, p3}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lorg/osmdroid/util/TileSystem;->GroundResolutionMapSize(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static GroundResolution(DI)D
    .locals 2

    .line 2
    int-to-double v0, p2

    invoke-static {p0, p1, v0, v1}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static GroundResolutionMapSize(DD)D
    .locals 6

    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide p0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, v2

    mul-double/2addr p0, v0

    const-wide v0, 0x415854a640000000L    # 6378137.0

    mul-double/2addr p0, v0

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static MapScale(DII)D
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide p0

    int-to-double p2, p3

    mul-double/2addr p0, p2

    const-wide p2, 0x3f9a027525460aa6L    # 0.0254

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static MapSize(D)D
    .locals 2

    .line 1
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v0

    int-to-double v0, v0

    invoke-static {p0, p1}, Lorg/osmdroid/util/TileSystem;->getFactor(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static MapSize(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    int-to-double v0, p0

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static QuadKeyToTileXY(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/graphics/Point;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string v0, "Invalid QuadKey: "

    .line 9
    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    move v4, v3

    .line 25
    :goto_0
    if-ge v2, v1, :cond_1

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    shl-int v6, v5, v2

    .line 29
    .line 30
    sub-int v7, v1, v2

    .line 31
    .line 32
    sub-int/2addr v7, v5

    .line 33
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    packed-switch v5, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :pswitch_0
    add-int/2addr v3, v6

    .line 51
    :pswitch_1
    add-int/2addr v4, v6

    .line 52
    goto :goto_1

    .line 53
    :pswitch_2
    add-int/2addr v3, v6

    .line 54
    :goto_1
    :pswitch_3
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 58
    .line 59
    iput v4, p1, Landroid/graphics/Point;->y:I

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    invoke-static {v0, p0}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static TileXYToQuadKey(III)Ljava/lang/String;
    .locals 5

    new-array v0, p2, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    const/4 v2, 0x1

    shl-int v3, v2, v1

    and-int v4, p0, v3

    if-eqz v4, :cond_0

    const/16 v4, 0x31

    int-to-char v4, v4

    goto :goto_1

    :cond_0
    const/16 v4, 0x30

    :goto_1
    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    int-to-char v3, v4

    add-int/2addr v3, v2

    int-to-char v4, v3

    :cond_1
    sub-int v3, p2, v1

    sub-int/2addr v3, v2

    aput-char v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private clipTile(II)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    shl-int p2, v0, p2

    if-lt p1, p2, :cond_1

    sub-int/2addr p2, v0

    return p2

    :cond_1
    return p1
.end method

.method public static getFactor(D)D
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getInputTileZoomLevel(D)I
    .locals 0

    invoke-static {p0, p1}, Lorg/osmdroid/util/MyMath;->floorToInt(D)I

    move-result p0

    return p0
.end method

.method public static getMaximumZoomLevel()I
    .locals 1

    sget v0, Lorg/osmdroid/util/TileSystem;->mMaxZoomLevel:I

    return v0
.end method

.method public static getMercatorFromTile(ID)J
    .locals 2

    int-to-double v0, p0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getTileFromMercator(JD)I
    .locals 0

    .line 1
    long-to-double p0, p0

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/osmdroid/util/MyMath;->floorToInt(D)I

    move-result p0

    return p0
.end method

.method public static getTileFromMercator(Lorg/osmdroid/util/RectL;DLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 2
    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    invoke-static {v0, v1, p1, p2}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    invoke-static {v0, v1, p1, p2}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    invoke-static {v0, v1, p1, p2}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->bottom:J

    invoke-static {v0, v1, p1, p2}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    return-object p3
.end method

.method public static getTileSize(D)D
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lorg/osmdroid/util/TileSystem;->getInputTileZoomLevel(D)I

    move-result v0

    int-to-double v0, v0

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getTileSize()I
    .locals 1

    .line 2
    sget v0, Lorg/osmdroid/util/TileSystem;->mTileSize:I

    return v0
.end method

.method public static setTileSize(I)V
    .locals 4

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    rsub-int/lit8 v0, v0, 0x3e

    const/16 v1, 0x1d

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lorg/osmdroid/util/TileSystem;->mMaxZoomLevel:I

    sput p0, Lorg/osmdroid/util/TileSystem;->mTileSize:I

    return-void
.end method

.method public static truncateToInt(J)I
    .locals 2

    const-wide/32 v0, 0x7fffffff

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    const-wide/32 v0, -0x80000000

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private static wrap(DDDD)D
    .locals 4

    cmpl-double v0, p2, p4

    if-gtz v0, :cond_3

    sub-double v0, p4, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    cmpl-double v0, p6, v0

    if-gtz v0, :cond_2

    :goto_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    add-double/2addr p0, p6

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-double p2, p0, p4

    if-lez p2, :cond_1

    sub-double/2addr p0, p6

    goto :goto_1

    :cond_1
    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "interval must be equal or smaller than maxValue-minValue: min: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " max:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " int:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p6, "minValue must be smaller than maxValue: "

    invoke-direct {p1, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-nez p6, :cond_0

    new-instance p6, Landroid/graphics/Point;

    invoke-direct {p6}, Landroid/graphics/Point;-><init>()V

    :cond_0
    invoke-static {p5}, Lorg/osmdroid/util/TileSystem;->MapSize(I)I

    move-result p5

    int-to-double v6, p5

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p3

    move-wide v3, v6

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorXFromLongitude(DDZ)J

    move-result-wide p3

    invoke-static {p3, p4}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p3

    iput p3, p6, Landroid/graphics/Point;->x:I

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorYFromLatitude(DDZ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p6, Landroid/graphics/Point;->y:I

    return-object p6
.end method

.method public LatLongToPixelXY(DDDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v6, 0x4066800000000000L    # 180.0

    move-wide/from16 v0, p1

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v9

    const-wide v2, -0x3f99800000000000L    # -180.0

    const-wide v4, 0x4066800000000000L    # 180.0

    const-wide v6, 0x4076800000000000L    # 360.0

    move-wide/from16 v0, p3

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v11

    invoke-static/range {p5 .. p6}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v13

    move-object/from16 v8, p0

    move-object/from16 v15, p7

    invoke-virtual/range {v8 .. v15}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXYMapSize(DDDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object v0

    return-object v0
.end method

.method public LatLongToPixelXYMapSize(DDDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lorg/osmdroid/util/TileSystem;->getMercatorFromGeo(DDDLorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;

    move-result-object v0

    return-object v0
.end method

.method public PixelXYToLatLong(IIDLorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    int-to-long v1, p1

    int-to-long v3, p2

    invoke-static {p3, p4}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v5

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v7, p5

    invoke-virtual/range {v0 .. v9}, Lorg/osmdroid/util/TileSystem;->getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    int-to-long v1, p1

    int-to-long v3, p2

    invoke-static {p3}, Lorg/osmdroid/util/TileSystem;->MapSize(I)I

    move-result p1

    int-to-double v5, p1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v7, p4

    invoke-virtual/range {v0 .. v9}, Lorg/osmdroid/util/TileSystem;->getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public PixelXYToLatLongMapSize(IIDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move v0, p1

    int-to-long v1, v0

    move v0, p2

    int-to-long v3, v0

    move-object v0, p0

    move-wide v5, p3

    move-object v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lorg/osmdroid/util/TileSystem;->getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public PixelXYToLatLongMapSizeWithoutWrap(IIDLorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 4

    if-nez p5, :cond_0

    new-instance p5, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v0, 0x0

    invoke-direct {p5, v0, v1, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    :cond_0
    int-to-double v0, p1

    div-double/2addr v0, p3

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    int-to-double p1, p2

    div-double/2addr p1, p3

    sub-double/2addr v2, p1

    neg-double p1, v2

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, p3

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr p1, v2

    div-double/2addr p1, p3

    const-wide p3, 0x4056800000000000L    # 90.0

    sub-double/2addr p3, p1

    mul-double/2addr v0, v2

    invoke-virtual {p5, p3, p4}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    invoke-virtual {p5, v0, v1}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    return-object p5
.end method

.method public PixelXYToLatLongWithoutWrap(IIDLorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 6

    invoke-static {p3, p4}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLongMapSizeWithoutWrap(IIDLorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public PixelXYToTileXY(IIDLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-nez p5, :cond_0

    new-instance p5, Landroid/graphics/Point;

    invoke-direct {p5}, Landroid/graphics/Point;-><init>()V

    :cond_0
    int-to-long v0, p1

    invoke-static {v0, v1, p3, p4}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result p1

    iput p1, p5, Landroid/graphics/Point;->x:I

    int-to-long p1, p2

    invoke-static {p1, p2, p3, p4}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result p1

    iput p1, p5, Landroid/graphics/Point;->y:I

    return-object p5
.end method

.method public PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v0

    int-to-double v4, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/util/TileSystem;->PixelXYToTileXY(IIDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public PixelXYToTileXY(Landroid/graphics/Rect;DLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v0

    iput v0, p4, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v0

    iput v0, p4, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v0

    iput v0, p4, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-long v0, p1

    invoke-static {v0, v1, p2, p3}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result p1

    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    return-object p4
.end method

.method public TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    :cond_0
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v0

    int-to-double v0, v0

    invoke-static {p1, v0, v1}, Lorg/osmdroid/util/TileSystem;->getMercatorFromTile(ID)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p3, Landroid/graphics/Point;->x:I

    invoke-static {p2, v0, v1}, Lorg/osmdroid/util/TileSystem;->getMercatorFromTile(ID)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p3, Landroid/graphics/Point;->y:I

    return-object p3
.end method

.method public TileXYToPixelXY(IIDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    if-nez p5, :cond_0

    new-instance p5, Lorg/osmdroid/util/PointL;

    invoke-direct {p5}, Lorg/osmdroid/util/PointL;-><init>()V

    :cond_0
    invoke-static {p1, p3, p4}, Lorg/osmdroid/util/TileSystem;->getMercatorFromTile(ID)J

    move-result-wide v0

    iput-wide v0, p5, Lorg/osmdroid/util/PointL;->x:J

    invoke-static {p2, p3, p4}, Lorg/osmdroid/util/TileSystem;->getMercatorFromTile(ID)J

    move-result-wide p1

    iput-wide p1, p5, Lorg/osmdroid/util/PointL;->y:J

    return-object p5
.end method

.method public cleanLatitude(D)D
    .locals 6

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v4

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public cleanLongitude(D)D
    .locals 6

    :goto_0
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p1, v0

    const-wide v1, 0x4076800000000000L    # 360.0

    if-gez v0, :cond_0

    add-double/2addr p1, v1

    goto :goto_0

    :cond_0
    :goto_1
    const-wide v3, 0x4066800000000000L    # 180.0

    cmpl-double v0, p1, v3

    if-lez v0, :cond_1

    sub-double/2addr p1, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v4

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public getBoundingBoxZoom(Lorg/osmdroid/util/BoundingBox;II)D
    .locals 8

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v3

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getLongitudeZoom(DDI)D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v5

    move-object v2, p0

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lorg/osmdroid/util/TileSystem;->getLatitudeZoom(DDI)D

    move-result-wide p1

    const-wide/16 v2, 0x1

    cmpl-double p3, v0, v2

    if-nez p3, :cond_0

    return-wide p1

    :cond_0
    cmpl-double p3, p1, v2

    if-nez p3, :cond_1

    return-wide v0

    :cond_1
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public getCleanMercator(JDZ)J
    .locals 8

    if-eqz p5, :cond_0

    long-to-double v0, p1

    const-wide/16 v2, 0x0

    move-wide v4, p3

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide p1

    goto :goto_0

    :cond_0
    long-to-double p1, p1

    :goto_0
    invoke-static {p1, p2, p3, p4, p5}, Lorg/osmdroid/util/TileSystem;->ClipToLong(DDZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;
    .locals 6

    if-nez p7, :cond_0

    new-instance p7, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v0, 0x0

    invoke-direct {p7, v0, v1, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    :cond_0
    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    move v5, p9

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getXY01FromMercator(JDZ)D

    move-result-wide p3

    invoke-virtual {p0, p3, p4, p9}, Lorg/osmdroid/util/TileSystem;->getLatitudeFromY01(DZ)D

    move-result-wide p3

    invoke-virtual {p7, p3, p4}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    move-wide v1, p1

    move v5, p8

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getXY01FromMercator(JDZ)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p8}, Lorg/osmdroid/util/TileSystem;->getLongitudeFromX01(DZ)D

    move-result-wide p1

    invoke-virtual {p7, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    return-object p7
.end method

.method public getLatitudeFromTileY(II)D
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/util/TileSystem;->clipTile(II)I

    move-result p1

    int-to-double v0, p1

    const/4 p1, 0x1

    shl-int/2addr p1, p2

    int-to-double p1, p1

    div-double/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/util/TileSystem;->getLatitudeFromY01(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public abstract getLatitudeFromY01(D)D
.end method

.method public getLatitudeFromY01(DZ)D
    .locals 6

    .line 1
    if-eqz p3, :cond_0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/util/TileSystem;->getLatitudeFromY01(D)D

    move-result-wide v0

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public getLatitudeZoom(DDI)D
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/util/TileSystem;->getY01FromLatitude(DZ)D

    move-result-wide p1

    invoke-virtual {p0, p3, p4, v0}, Lorg/osmdroid/util/TileSystem;->getY01FromLatitude(DZ)D

    move-result-wide p3

    sub-double/2addr p3, p1

    const-wide/16 p1, 0x0

    cmpg-double p1, p3, p1

    if-gtz p1, :cond_0

    const-wide/16 p1, 0x1

    return-wide p1

    :cond_0
    int-to-double p1, p5

    div-double/2addr p1, p3

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result p3

    int-to-double p3, p3

    div-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    invoke-static {p3, p4}, Ljava/lang/Math;->log(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    return-wide p1
.end method

.method public getLongitudeFromTileX(II)D
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/util/TileSystem;->clipTile(II)I

    move-result p1

    int-to-double v0, p1

    const/4 p1, 0x1

    shl-int/2addr p1, p2

    int-to-double p1, p1

    div-double/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/util/TileSystem;->getLongitudeFromX01(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public abstract getLongitudeFromX01(D)D
.end method

.method public getLongitudeFromX01(DZ)D
    .locals 6

    .line 1
    if-eqz p3, :cond_0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/util/TileSystem;->getLongitudeFromX01(D)D

    move-result-wide v0

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public getLongitudeZoom(DDI)D
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p3, p4, v0}, Lorg/osmdroid/util/TileSystem;->getX01FromLongitude(DZ)D

    move-result-wide p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/util/TileSystem;->getX01FromLongitude(DZ)D

    move-result-wide p1

    sub-double/2addr p1, p3

    const-wide/16 p3, 0x0

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v0

    :cond_0
    cmpl-double p3, p1, p3

    if-nez p3, :cond_1

    const-wide/16 p1, 0x1

    return-wide p1

    :cond_1
    int-to-double p3, p5

    div-double/2addr p3, p1

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result p1

    int-to-double p1, p1

    div-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    invoke-static {p3, p4}, Ljava/lang/Math;->log(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    return-wide p1
.end method

.method public abstract getMaxLatitude()D
.end method

.method public abstract getMaxLongitude()D
.end method

.method public getMercatorFromGeo(DDDLorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;
    .locals 6

    if-nez p7, :cond_0

    new-instance p7, Lorg/osmdroid/util/PointL;

    invoke-direct {p7}, Lorg/osmdroid/util/PointL;-><init>()V

    :cond_0
    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    move v5, p8

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorXFromLongitude(DDZ)J

    move-result-wide p3

    iput-wide p3, p7, Lorg/osmdroid/util/PointL;->x:J

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorYFromLatitude(DDZ)J

    move-result-wide p1

    iput-wide p1, p7, Lorg/osmdroid/util/PointL;->y:J

    return-object p7
.end method

.method public getMercatorFromXY01(DDZ)J
    .locals 0

    mul-double/2addr p1, p3

    invoke-static {p1, p2, p3, p4, p5}, Lorg/osmdroid/util/TileSystem;->ClipToLong(DDZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMercatorXFromLongitude(DDZ)J
    .locals 6

    invoke-virtual {p0, p1, p2, p5}, Lorg/osmdroid/util/TileSystem;->getX01FromLongitude(DZ)D

    move-result-wide v1

    move-object v0, p0

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorFromXY01(DDZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMercatorYFromLatitude(DDZ)J
    .locals 6

    invoke-virtual {p0, p1, p2, p5}, Lorg/osmdroid/util/TileSystem;->getY01FromLatitude(DZ)D

    move-result-wide v1

    move-object v0, p0

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorFromXY01(DDZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public abstract getMinLatitude()D
.end method

.method public abstract getMinLongitude()D
.end method

.method public getRandomLatitude(D)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/osmdroid/util/TileSystem;->getRandomLatitude(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public getRandomLatitude(DD)D
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v0

    sub-double/2addr v0, p3

    mul-double/2addr v0, p1

    add-double/2addr v0, p3

    return-wide v0
.end method

.method public getRandomLongitude(D)D
    .locals 4

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    mul-double/2addr v0, p1

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide p1

    add-double/2addr p1, v0

    return-wide p1
.end method

.method public getTileXFromLongitude(DI)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/util/TileSystem;->getX01FromLongitude(D)D

    move-result-wide p1

    const/4 v0, 0x1

    shl-int/2addr v0, p3

    int-to-double v0, v0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-direct {p0, p1, p3}, Lorg/osmdroid/util/TileSystem;->clipTile(II)I

    move-result p1

    return p1
.end method

.method public getTileYFromLatitude(DI)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/util/TileSystem;->getY01FromLatitude(D)D

    move-result-wide p1

    const/4 v0, 0x1

    shl-int/2addr v0, p3

    int-to-double v0, v0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-direct {p0, p1, p3}, Lorg/osmdroid/util/TileSystem;->clipTile(II)I

    move-result p1

    return p1
.end method

.method public abstract getX01FromLongitude(D)D
.end method

.method public getX01FromLongitude(DZ)D
    .locals 6

    .line 1
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v4

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/util/TileSystem;->getX01FromLongitude(D)D

    move-result-wide v0

    if-eqz p3, :cond_1

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public getXY01FromMercator(JDZ)D
    .locals 6

    long-to-double p1, p1

    if-eqz p5, :cond_0

    div-double v0, p1, p3

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide p1

    goto :goto_0

    :cond_0
    div-double/2addr p1, p3

    :goto_0
    return-wide p1
.end method

.method public abstract getY01FromLatitude(D)D
.end method

.method public getY01FromLatitude(DZ)D
    .locals 6

    .line 1
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v4

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/util/TileSystem;->getY01FromLatitude(D)D

    move-result-wide v0

    if-eqz p3, :cond_1

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public isValidLatitude(D)Z
    .locals 2

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v0

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isValidLongitude(D)Z
    .locals 2

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v0

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toStringLatitudeSpan()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringLongitudeSpan()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
