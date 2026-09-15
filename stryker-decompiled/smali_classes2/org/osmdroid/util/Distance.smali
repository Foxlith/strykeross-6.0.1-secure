.class public Lorg/osmdroid/util/Distance;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dotProduct(DDDDDD)D
    .locals 0

    sub-double/2addr p4, p0

    sub-double/2addr p8, p0

    mul-double/2addr p8, p4

    sub-double/2addr p6, p2

    sub-double/2addr p10, p2

    mul-double/2addr p10, p6

    add-double/2addr p10, p8

    return-wide p10
.end method

.method public static getProjectionFactorToLine(DDDDDD)D
    .locals 12

    cmpl-double v0, p4, p8

    if-nez v0, :cond_0

    cmpl-double v0, p6, p10

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    move-wide/from16 v0, p4

    move-wide/from16 v2, p6

    move-wide/from16 v4, p8

    move-wide/from16 v6, p10

    move-wide v8, p0

    move-wide v10, p2

    invoke-static/range {v0 .. v11}, Lorg/osmdroid/util/Distance;->dotProduct(DDDDDD)D

    move-result-wide v0

    invoke-static/range {p4 .. p11}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getProjectionFactorToSegment(DDDDDD)D
    .locals 0

    invoke-static/range {p0 .. p11}, Lorg/osmdroid/util/Distance;->getProjectionFactorToLine(DDDDDD)D

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmpg-double p4, p0, p2

    if-gez p4, :cond_0

    return-wide p2

    :cond_0
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    cmpl-double p4, p0, p2

    if-lez p4, :cond_1

    return-wide p2

    :cond_1
    return-wide p0
.end method

.method public static getSquaredDistanceToLine(DDDDDD)D
    .locals 14

    invoke-static/range {p0 .. p11}, Lorg/osmdroid/util/Distance;->getProjectionFactorToLine(DDDDDD)D

    move-result-wide v12

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v13}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToProjection(DDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getSquaredDistanceToPoint(DDDD)D
    .locals 0

    sub-double/2addr p0, p4

    sub-double/2addr p2, p6

    mul-double/2addr p0, p0

    mul-double/2addr p2, p2

    add-double/2addr p2, p0

    return-wide p2
.end method

.method public static getSquaredDistanceToProjection(DDDDDDD)D
    .locals 4

    sub-double v0, p8, p4

    mul-double v0, v0, p12

    add-double/2addr v0, p4

    sub-double v2, p10, p6

    mul-double v2, v2, p12

    add-double/2addr v2, p6

    move-wide p4, p0

    move-wide p6, p2

    move-wide p8, v0

    move-wide p10, v2

    invoke-static/range {p4 .. p11}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getSquaredDistanceToSegment(DDDDDD)D
    .locals 14

    invoke-static/range {p0 .. p11}, Lorg/osmdroid/util/Distance;->getProjectionFactorToSegment(DDDDDD)D

    move-result-wide v12

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v13}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToProjection(DDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method
