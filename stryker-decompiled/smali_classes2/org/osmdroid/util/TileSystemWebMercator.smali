.class public Lorg/osmdroid/util/TileSystemWebMercator;
.super Lorg/osmdroid/util/TileSystem;
.source "SourceFile"


# static fields
.field public static final MaxLatitude:D = 85.05112877980658

.field public static final MaxLongitude:D = 180.0

.field public static final MinLatitude:D = -85.05112877980658

.field public static final MinLongitude:D = -180.0


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/osmdroid/util/TileSystem;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitudeFromY01(D)D
    .locals 4

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double/2addr p1, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    const-wide v0, 0x4056800000000000L    # 90.0

    sub-double/2addr v0, p1

    return-wide v0
.end method

.method public getLongitudeFromX01(D)D
    .locals 6

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystemWebMercator;->getMinLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystemWebMercator;->getMaxLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystemWebMercator;->getMinLongitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v2, p1

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public getMaxLatitude()D
    .locals 2

    const-wide v0, 0x40554345b1a549d5L    # 85.05112877980658

    return-wide v0
.end method

.method public getMaxLongitude()D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    return-wide v0
.end method

.method public getMinLatitude()D
    .locals 2

    const-wide v0, -0x3faabcba4e5ab62bL    # -85.05112877980658

    return-wide v0
.end method

.method public getMinLongitude()D
    .locals 2

    const-wide v0, -0x3f99800000000000L    # -180.0

    return-wide v0
.end method

.method public getX01FromLongitude(D)D
    .locals 4

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystemWebMercator;->getMinLongitude()D

    move-result-wide v0

    sub-double/2addr p1, v0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystemWebMercator;->getMaxLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystemWebMercator;->getMinLongitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public getY01FromLatitude(D)D
    .locals 4

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v2, p1, v0

    sub-double/2addr v0, p1

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    const-wide v0, 0x402921fb54442d18L    # 12.566370614359172

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, p1

    return-wide v0
.end method
