.class public Lorg/osmdroid/views/overlay/LineDrawer;
.super Lorg/osmdroid/util/LineBuilder;
.source "SourceFile"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

.field private mPaintList:Lorg/osmdroid/views/overlay/PaintList;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/osmdroid/util/LineBuilder;-><init>(I)V

    return-void
.end method

.method private additionalFlush()V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/util/IntegerAccepter;->flush()V

    :cond_0
    return-void
.end method

.method private static compact([FI)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_2

    aget v2, p0, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, p0, v3

    add-int/lit8 v4, v0, 0x2

    aget v4, p0, v4

    add-int/lit8 v5, v0, 0x3

    aget v5, p0, v5

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    cmpl-float v2, v3, v5

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    invoke-static {p0, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    add-int/lit8 v1, v1, 0x4

    :goto_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public flush()V
    .locals 14

    invoke-virtual {p0}, Lorg/osmdroid/util/LineBuilder;->getSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LineDrawer;->additionalFlush()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/util/LineBuilder;->getLines()[F

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mPaintList:Lorg/osmdroid/views/overlay/PaintList;

    invoke-interface {v2}, Lorg/osmdroid/views/overlay/PaintList;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v1, v0}, Lorg/osmdroid/views/overlay/LineDrawer;->compact([FI)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v4, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :cond_1
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LineDrawer;->additionalFlush()V

    return-void

    :cond_2
    :goto_0
    mul-int/lit8 v2, v0, 0x4

    if-ge v3, v2, :cond_4

    aget v2, v1, v3

    add-int/lit8 v4, v3, 0x1

    aget v10, v1, v4

    add-int/lit8 v4, v3, 0x2

    aget v11, v1, v4

    add-int/lit8 v4, v3, 0x3

    aget v12, v1, v4

    cmpl-float v4, v2, v11

    if-nez v4, :cond_3

    cmpl-float v4, v10, v12

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    div-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, v5}, Lorg/osmdroid/util/IntegerAccepter;->getValue(I)I

    move-result v5

    iget-object v13, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mPaintList:Lorg/osmdroid/views/overlay/PaintList;

    move v6, v2

    move v7, v10

    move v8, v11

    move v9, v12

    invoke-interface/range {v4 .. v9}, Lorg/osmdroid/views/overlay/PaintList;->getPaint(IFFFF)Landroid/graphics/Paint;

    move-result-object v9

    move-object v4, v13

    move v5, v2

    move v6, v10

    move v7, v11

    move v8, v12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LineDrawer;->additionalFlush()V

    return-void
.end method

.method public setCanvas(Landroid/graphics/Canvas;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public setIntegerAccepter(Lorg/osmdroid/util/IntegerAccepter;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/osmdroid/views/overlay/advancedpolyline/MonochromaticPaintList;

    invoke-direct {v0, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/MonochromaticPaintList;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/LineDrawer;->setPaint(Lorg/osmdroid/views/overlay/PaintList;)V

    return-void
.end method

.method public setPaint(Lorg/osmdroid/views/overlay/PaintList;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mPaintList:Lorg/osmdroid/views/overlay/PaintList;

    return-void
.end method
