.class public Lorg/osmdroid/util/MyMath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/util/constants/MathConstants;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanPositiveAngle(D)D
    .locals 3

    :goto_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    const-wide v1, 0x4076800000000000L    # 360.0

    if-gez v0, :cond_0

    add-double/2addr p0, v1

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-double v0, p0, v1

    if-ltz v0, :cond_1

    sub-double/2addr p0, v1

    goto :goto_1

    :cond_1
    return-wide p0
.end method

.method public static computeAngle(JJJJ)D
    .locals 0

    sub-long/2addr p6, p2

    long-to-double p2, p6

    sub-long/2addr p4, p0

    long-to-double p0, p4

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static computeCirclePoint(JJDDLorg/osmdroid/util/PointL;)V
    .locals 2

    invoke-static {p6, p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, p4

    double-to-long v0, v0

    add-long/2addr p0, v0

    iput-wide p0, p8, Lorg/osmdroid/util/PointL;->x:J

    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p0, p4

    double-to-long p0, p0

    add-long/2addr p2, p0

    iput-wide p2, p8, Lorg/osmdroid/util/PointL;->y:J

    return-void
.end method

.method public static floorToInt(D)I
    .locals 3

    double-to-int v0, p0

    int-to-double v1, v0

    cmpg-double p0, v1, p0

    if-gtz p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static floorToLong(D)J
    .locals 4

    double-to-long v0, p0

    long-to-double v2, v0

    cmpg-double p0, v2, p0

    if-gtz p0, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 p0, 0x1

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static getAngleDifference(DDLjava/lang/Boolean;)D
    .locals 2

    sub-double/2addr p2, p0

    invoke-static {p2, p3}, Lorg/osmdroid/util/MyMath;->cleanPositiveAngle(D)D

    move-result-wide p0

    const-wide p2, 0x4076800000000000L    # 360.0

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_0

    return-wide p0

    :cond_0
    sub-double/2addr p0, p2

    return-wide p0

    :cond_1
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpg-double p4, p0, v0

    if-gez p4, :cond_2

    return-wide p0

    :cond_2
    sub-double/2addr p0, p2

    return-wide p0
.end method

.method public static getNextSquareNumberAbove(F)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    move v0, v2

    :goto_0
    int-to-float v3, v2

    cmpl-float v3, v3, p0

    if-lez v3, :cond_0

    return v1

    :cond_0
    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v0, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0
.end method

.method public static gudermann(D)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static gudermannInverse(D)D
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p0, v0

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static mod(II)I
    .locals 0

    if-lez p0, :cond_0

    rem-int/2addr p0, p1

    return p0

    :cond_0
    :goto_0
    if-gez p0, :cond_1

    add-int/2addr p0, p1

    goto :goto_0

    :cond_1
    return p0
.end method
