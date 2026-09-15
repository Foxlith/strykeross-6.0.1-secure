.class public abstract Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SourceFile"


# instance fields
.field private mBackingBitmap:Landroid/graphics/Bitmap;

.field private mBackingCanvas:Landroid/graphics/Canvas;

.field private final mBackingMatrix:Landroid/graphics/Matrix;

.field private final mCanvasIdentityMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mCanvasIdentityMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mCanvasIdentityMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 4

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->isUsingBackingBitmap()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_3

    :cond_2
    iput-object v1, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingCanvas:Landroid/graphics/Canvas;

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingCanvas:Landroid/graphics/Canvas;

    :cond_3
    iget-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p2, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mCanvasIdentityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mCanvasIdentityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mCanvasIdentityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingBitmap:Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :catch_0
    const-string p1, "OsmDroid"

    const-string p2, "OutOfMemoryError creating backing bitmap in NonAcceleratedOverlay."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {p0, p1, p1, p2, p3}, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    :goto_1
    return-void
.end method

.method public isUsingBackingBitmap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->mBackingCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3, p4}, Lorg/osmdroid/views/overlay/NonAcceleratedOverlay;->onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    return-void
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
.end method
