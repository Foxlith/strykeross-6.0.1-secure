.class public Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;,
        Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;,
        Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;
    }
.end annotation


# instance fields
.field private clickListener:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;

.field private gridBool:[[Z

.field private gridHei:I

.field private gridIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;",
            ">;"
        }
    .end annotation
.end field

.field private gridWid:I

.field private hasMoved:Z

.field private final mBoundingBox:Lorg/osmdroid/util/BoundingBox;

.field private final mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

.field private mSelectedPoint:Ljava/lang/Integer;

.field private final mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

.field private numLabels:I

.field private prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

.field private startBoundingBox:Lorg/osmdroid/util/BoundingBox;

.field private startProjection:Lorg/osmdroid/views/Projection;

.field private viewHei:I

.field private viewWid:I


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->getDefaultStyle()Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;-><init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;)V
    .locals 13

    .line 2
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->hasMoved:Z

    new-instance v0, Lorg/osmdroid/util/BoundingBox;

    invoke-direct {v0}, Lorg/osmdroid/util/BoundingBox;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    iput-object p2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move-object v0, p2

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/api/IGeoPoint;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v4}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_3

    :cond_2
    invoke-interface {v4}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v4}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_5

    :cond_4
    invoke-interface {v4}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v4}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_7

    :cond_6
    invoke-interface {v4}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v4}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    :cond_8
    invoke-interface {v4}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    :cond_9
    if-eqz v0, :cond_a

    new-instance p1, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    goto :goto_1

    :cond_a
    iput-object p2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    :goto_1
    return-void
.end method

.method private computeGrid(Lorg/osmdroid/views/MapView;)V
    .locals 13

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v1

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v3}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v1

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v3}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v1

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v3}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v1

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v3}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_a

    :cond_0
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v5

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v7

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v9

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewHei:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewWid:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    invoke-static {v5, v2}, Ljava/util/Arrays;->fill([ZZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->updateGrid(Lorg/osmdroid/views/MapView;)V

    :cond_3
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridIndex:Ljava/util/List;

    iput v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->numLabels:I

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/api/IGeoPoint;

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v3}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    invoke-interface {v3}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    invoke-interface {v3}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    invoke-interface {v3}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    invoke-virtual {p1, v3, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v5, v5, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v6, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    if-ge v4, v6, :cond_4

    iget v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    if-ge v5, v6, :cond_4

    if-ltz v4, :cond_4

    if-ltz v5, :cond_4

    iget-object v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    aget-object v4, v6, v4

    aget-boolean v6, v4, v5

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    const/4 v11, 0x1

    aput-boolean v11, v4, v5

    iget-object v4, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridIndex:Ljava/util/List;

    new-instance v12, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v5}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    move-object v5, v3

    check-cast v5, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    invoke-virtual {v5}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLabel()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    goto :goto_3

    :cond_7
    move-object v8, v6

    :goto_3
    iget-object v5, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v5}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, v3

    check-cast v5, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    invoke-virtual {v5}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getPointStyle()Landroid/graphics/Paint;

    move-result-object v5

    move-object v9, v5

    goto :goto_4

    :cond_8
    move-object v9, v6

    :goto_4
    iget-object v5, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v5}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v5

    if-eqz v5, :cond_9

    check-cast v3, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    invoke-virtual {v3}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getTextStyle()Landroid/graphics/Paint;

    move-result-object v3

    move-object v10, v3

    goto :goto_5

    :cond_9
    move-object v10, v6

    :goto_5
    move-object v5, v12

    move-object v6, p0

    move-object v7, v1

    invoke-direct/range {v5 .. v10}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;-><init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;Landroid/graphics/Point;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->numLabels:I

    add-int/2addr v3, v11

    iput v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->numLabels:I

    goto/16 :goto_2

    :cond_a
    return-void
.end method

.method private updateGrid(Lorg/osmdroid/views/MapView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewWid:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewHei:I

    iget p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewWid:I

    int-to-float p1, p1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    iget p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewHei:I

    int-to-float p1, p1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    filled-new-array {v0, p1}, [I

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    if-eqz p3, :cond_0

    return-void

    :cond_0
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v12

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1
    sget-object v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$1;->$SwitchMap$org$osmdroid$views$overlay$simplefastpoint$SimpleFastPointOverlayOptions$RenderingAlgorithm:[I

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mAlgorithm:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v0, v15, :cond_16

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto/16 :goto_19

    :cond_2
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->ZOOM_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v0

    iget-object v2, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMinZoomShowLabels:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    move/from16 v16, v15

    goto :goto_0

    :cond_3
    move/from16 v16, v14

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v17

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_4
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/api/IGeoPoint;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    invoke-virtual {v12, v0, v11}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget v1, v11, Landroid/graphics/Point;->x:I

    int-to-float v2, v1

    iget v1, v11, Landroid/graphics/Point;->y:I

    int-to-float v3, v1

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v16, :cond_6

    move v4, v15

    goto :goto_2

    :cond_6
    move v4, v14

    :goto_2
    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLabel()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_3

    :cond_7
    move-object v5, v13

    :goto_3
    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getPointStyle()Landroid/graphics/Paint;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getPointStyle()Landroid/graphics/Paint;

    move-result-object v1

    :goto_4
    move-object v6, v1

    goto :goto_5

    :cond_8
    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    goto :goto_4

    :goto_5
    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v1

    if-eqz v1, :cond_9

    check-cast v0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getTextStyle()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_6
    move-object v7, v0

    goto :goto_7

    :cond_9
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    goto :goto_6

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v0 .. v8}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->drawPointAt(Landroid/graphics/Canvas;FFZLjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;Lorg/osmdroid/views/MapView;)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    if-eqz v0, :cond_c

    iget v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewHei:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_c

    iget v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewWid:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_b

    goto :goto_9

    :cond_b
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    array-length v1, v0

    move v2, v14

    :goto_8
    if-ge v2, v1, :cond_d

    aget-object v3, v0, v2

    invoke-static {v3, v14}, Ljava/util/Arrays;->fill([ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    :goto_9
    invoke-direct {v9, v10}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->updateGrid(Lorg/osmdroid/views/MapView;)V

    :cond_d
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->ZOOM_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v0

    iget-object v2, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMinZoomShowLabels:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_e

    move/from16 v16, v15

    goto :goto_a

    :cond_e
    move/from16 v16, v14

    :goto_a
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v17

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_f
    :goto_b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/api/IGeoPoint;

    if-nez v0, :cond_10

    goto :goto_b

    :cond_10
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_f

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_f

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_f

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_f

    invoke-virtual {v12, v0, v11}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget v1, v11, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v11, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    if-ge v1, v3, :cond_f

    iget v3, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    if-ge v2, v3, :cond_f

    if-ltz v1, :cond_f

    if-ltz v2, :cond_f

    iget-object v3, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    aget-object v1, v3, v1

    aget-boolean v3, v1, v2

    if-eqz v3, :cond_11

    goto :goto_b

    :cond_11
    aput-boolean v15, v1, v2

    iget v1, v11, Landroid/graphics/Point;->x:I

    int-to-float v2, v1

    iget v1, v11, Landroid/graphics/Point;->y:I

    int-to-float v3, v1

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v16, :cond_12

    move v4, v15

    goto :goto_c

    :cond_12
    move v4, v14

    :goto_c
    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v1

    if-eqz v1, :cond_13

    move-object v1, v0

    check-cast v1, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLabel()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_d

    :cond_13
    move-object v5, v13

    :goto_d
    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v1

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getPointStyle()Landroid/graphics/Paint;

    move-result-object v6

    if-eqz v6, :cond_14

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getPointStyle()Landroid/graphics/Paint;

    move-result-object v1

    :goto_e
    move-object v6, v1

    goto :goto_f

    :cond_14
    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    goto :goto_e

    :goto_f
    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v1

    if-eqz v1, :cond_15

    check-cast v0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getTextStyle()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_15

    :goto_10
    move-object v7, v0

    goto :goto_11

    :cond_15
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    goto :goto_10

    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v0 .. v8}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->drawPointAt(Landroid/graphics/Canvas;FFZLjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;Lorg/osmdroid/views/MapView;)V

    goto/16 :goto_b

    :cond_16
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    if-eqz v0, :cond_17

    iget-boolean v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->hasMoved:Z

    if-nez v0, :cond_18

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_17
    invoke-direct {v9, v10}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->computeGrid(Lorg/osmdroid/views/MapView;)V

    :cond_18
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v1

    iget-object v3, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v3}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget-object v2, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    iget-object v4, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v4}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v12, v0, v13}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v8

    invoke-virtual {v12, v1, v13}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v2, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v2, v1, v13}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v13

    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v3

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v7, Landroid/graphics/Point;

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v2, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    invoke-direct {v7, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v1, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    sget-object v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->DENSITY_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    if-ne v1, v2, :cond_19

    iget v2, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->numLabels:I

    iget v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMaxNShownLabels:I

    if-le v2, v0, :cond_1a

    :cond_19
    sget-object v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->ZOOM_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    if-ne v1, v0, :cond_1b

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v0

    iget-object v2, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMinZoomShowLabels:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1b

    :cond_1a
    move/from16 v16, v15

    goto :goto_12

    :cond_1b
    move/from16 v16, v14

    :goto_12
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridIndex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_13
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, v1

    iget v3, v13, Landroid/graphics/Point;->x:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v3

    iget v5, v13, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget v1, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v1

    int-to-float v1, v3

    add-float v3, v1, v4

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v1

    if-eqz v1, :cond_1c

    if-eqz v16, :cond_1c

    move v4, v15

    goto :goto_14

    :cond_1c
    move v4, v14

    :goto_14
    invoke-static {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->access$000(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->access$100(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;)Landroid/graphics/Paint;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-static {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->access$100(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;)Landroid/graphics/Paint;

    move-result-object v1

    :goto_15
    move-object v6, v1

    goto :goto_16

    :cond_1d
    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    goto :goto_15

    :goto_16
    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->access$200(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1e

    :goto_17
    move-object/from16 v18, v0

    goto :goto_18

    :cond_1e
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    goto :goto_17

    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v19, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v8

    move-object/from16 v8, p2

    invoke-virtual/range {v0 .. v8}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->drawPointAt(Landroid/graphics/Canvas;FFZLjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;Lorg/osmdroid/views/MapView;)V

    move-object/from16 v8, v18

    move-object/from16 v7, v19

    goto :goto_13

    :cond_1f
    :goto_19
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->get(I)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    if-eqz v0, :cond_21

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->get(I)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-virtual {v12, v0, v11}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v1, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSymbol:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    sget-object v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;->CIRCLE:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    if-ne v1, v2, :cond_20

    iget v1, v11, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v11, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1a

    :cond_20
    move-object/from16 v4, p1

    iget v1, v11, Landroid/graphics/Point;->x:I

    int-to-float v2, v1

    iget v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    sub-float/2addr v2, v3

    iget v5, v11, Landroid/graphics/Point;->y:I

    int-to-float v6, v5

    sub-float v12, v6, v3

    int-to-float v1, v1

    add-float v13, v1, v3

    int-to-float v1, v5

    add-float v14, v1, v3

    iget-object v15, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_21
    :goto_1a
    return-void
.end method

.method public drawPointAt(Landroid/graphics/Canvas;FFZLjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;Lorg/osmdroid/views/MapView;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p8}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result p8

    neg-float p8, p8

    invoke-virtual {p1, p8, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p8, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, p8, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSymbol:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;->CIRCLE:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    iget p8, p8, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p2, p3, p8, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    sub-float v1, p2, p8

    sub-float v2, p3, p8

    add-float v3, p2, p8

    add-float v4, p3, p8

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    iget-object p4, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget p4, p4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float/2addr p3, p4

    const/high16 p4, 0x40a00000    # 5.0f

    sub-float/2addr p3, p4

    invoke-virtual {p1, p5, p2, p3, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public getSelectedPoint()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStyle()Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    return-object v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 10

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mClickable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v1

    :goto_0
    iget-object v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v6}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    iget-object v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v6, v5}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->get(I)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v6, v5}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->get(I)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v6

    invoke-virtual {v2, v6, v0}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v0, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x42480000    # 50.0f

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v8, v0, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v0, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, v0, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-float/2addr v7, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v8, v0, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, v0, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-static {v8, v9, v6, v7}, Landroid/support/v4/media/session/a;->e(FFFF)F

    move-result v6

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_4

    :cond_3
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move v4, v5

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    return v1

    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->setSelectedPoint(Ljava/lang/Integer;)V

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->clickListener:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;

    if-eqz p1, :cond_7

    iget-object p2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;->onClick(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;Ljava/lang/Integer;)V

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mAlgorithm:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;->MAXIMUM_OPTIMIZATION:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->hasMoved:Z

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->hasMoved:Z

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startProjection:Lorg/osmdroid/views/Projection;

    :goto_0
    return v2
.end method

.method public setOnClickListener(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->clickListener:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;

    return-void
.end method

.method public setSelectedPoint(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_2
    return-void
.end method
