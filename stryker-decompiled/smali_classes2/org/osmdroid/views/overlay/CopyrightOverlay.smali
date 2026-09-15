.class public Lorg/osmdroid/views/overlay/CopyrightOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SourceFile"


# instance fields
.field protected alignBottom:Z

.field protected alignRight:Z

.field final dm:Landroid/util/DisplayMetrics;

.field private mCopyrightNotice:Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;

.field xOffset:I

.field yOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->xOffset:I

    iput v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->yOffset:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignBottom:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignRight:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->dm:Landroid/util/DisplayMetrics;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object p3

    invoke-virtual {p3}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object p3

    invoke-interface {p3}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getCopyrightNotice()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/osmdroid/views/overlay/CopyrightOverlay;->setCopyrightNotice(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/CopyrightOverlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->mCopyrightNotice:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignRight:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->xOffset:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->xOffset:I

    int-to-float v0, v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :goto_1
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignBottom:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->yOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iget v2, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->yOffset:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v2}, Lorg/osmdroid/views/Projection;->save(Landroid/graphics/Canvas;ZZ)V

    iget-object v3, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->mCopyrightNotice:Ljava/lang/String;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p2, p1, v2}, Lorg/osmdroid/views/Projection;->restore(Landroid/graphics/Canvas;Z)V

    :cond_3
    :goto_3
    return-void
.end method

.method public setAlignBottom(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignBottom:Z

    return-void
.end method

.method public setAlignRight(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignRight:Z

    return-void
.end method

.method public setCopyrightNotice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->mCopyrightNotice:Ljava/lang/String;

    return-void
.end method

.method public setOffset(II)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->xOffset:I

    iput p2, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->yOffset:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
