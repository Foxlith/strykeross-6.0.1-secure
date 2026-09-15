.class public Lorg/osmdroid/views/util/PathProjection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/Projection;",
            "Ljava/util/List<",
            "+",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/osmdroid/views/util/PathProjection;->toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;Z)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;Z)Landroid/graphics/Path;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/Projection;",
            "Ljava/util/List<",
            "+",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Landroid/graphics/Path;",
            "Z)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 2
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_4

    if-eqz p2, :cond_0

    move-object/from16 v1, p2

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->incReserve(I)V

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v3, 0x1

    move v14, v3

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lorg/osmdroid/util/GeoPoint;

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v16

    invoke-virtual {v15}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v15}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v3, v2

    move-wide/from16 v8, v16

    invoke-virtual/range {v3 .. v11}, Lorg/osmdroid/util/TileSystem;->getMercatorFromGeo(DDDLorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;

    move-result-object v3

    iget-wide v4, v3, Lorg/osmdroid/util/PointL;->x:J

    invoke-virtual {v0, v4, v5}, Lorg/osmdroid/views/Projection;->getTileFromMercator(J)I

    move-result v4

    iput v4, v12, Landroid/graphics/Point;->x:I

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v0, v3, v4}, Lorg/osmdroid/views/Projection;->getTileFromMercator(J)I

    move-result v3

    iput v3, v12, Landroid/graphics/Point;->y:I

    new-instance v3, Lorg/osmdroid/util/PointL;

    iget v4, v12, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v4}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v4

    iget v6, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v6}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/PointL;-><init>(JJ)V

    new-instance v11, Lorg/osmdroid/util/PointL;

    iget v4, v12, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v4

    iget v6, v12, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v0, v7}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v6

    invoke-direct {v11, v4, v5, v6, v7}, Lorg/osmdroid/util/PointL;-><init>(JJ)V

    iget-wide v4, v3, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v6, v3, Lorg/osmdroid/util/PointL;->y:J

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object v3, v2

    move-object/from16 v20, v11

    move/from16 v11, v18

    move-object/from16 p1, v13

    move-object v13, v12

    move/from16 v12, v19

    invoke-virtual/range {v3 .. v12}, Lorg/osmdroid/util/TileSystem;->getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;

    move-result-object v18

    move-object/from16 v3, v20

    iget-wide v4, v3, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v6, v3, Lorg/osmdroid/util/PointL;->y:J

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v3, v2

    invoke-virtual/range {v3 .. v12}, Lorg/osmdroid/util/TileSystem;->getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    new-instance v16, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    move-object/from16 v4, v16

    invoke-direct/range {v4 .. v12}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    if-eqz p3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v3

    const-wide/high16 v5, 0x401c000000000000L    # 7.0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    invoke-virtual {v15}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v15}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v7

    const/4 v9, 0x0

    move-object/from16 v4, v16

    invoke-virtual/range {v4 .. v9}, Lorg/osmdroid/util/BoundingBox;->getRelativePositionOfGeoPointInBoundingBoxWithExactGudermannInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_2

    :cond_1
    invoke-virtual {v15}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v15}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v7

    const/4 v9, 0x0

    move-object/from16 v4, v16

    invoke-virtual/range {v4 .. v9}, Lorg/osmdroid/util/BoundingBox;->getRelativePositionOfGeoPointInBoundingBoxWithLinearInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Lorg/osmdroid/views/Projection;->getTileFromMercator(J)I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-long v7, v4

    invoke-virtual {v0, v7, v8}, Lorg/osmdroid/views/Projection;->getTileFromMercator(J)I

    move-result v4

    invoke-direct {v5, v6, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Lorg/osmdroid/util/PointL;

    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v6}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v6

    iget v8, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v8}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/osmdroid/util/PointL;-><init>(JJ)V

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v7, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v7, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v7

    iget-wide v7, v4, Lorg/osmdroid/util/PointL;->x:J

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v9

    mul-int/2addr v9, v6

    int-to-long v9, v9

    sub-long/2addr v7, v9

    iget-wide v9, v4, Lorg/osmdroid/util/PointL;->y:J

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v4

    mul-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v9, v4

    iget v4, v3, Landroid/graphics/PointF;->x:F

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-long v4, v4

    add-long/2addr v7, v4

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-long v3, v3

    add-long/2addr v9, v3

    long-to-float v3, v7

    long-to-float v4, v9

    if-eqz v14, :cond_2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    const/4 v14, 0x0

    move-object/from16 v13, p1

    goto/16 :goto_1

    :cond_3
    return-object v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of GeoPoints needs to be at least 2."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
