.class public abstract Lorg/osmdroid/views/overlay/Overlay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/util/constants/OverlayConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/Overlay$Snappable;
    }
.end annotation


# static fields
.field protected static final SHADOW_X_SKEW:F = -0.9f

.field protected static final SHADOW_Y_SCALE:F = 0.5f

.field private static final mRect:Landroid/graphics/Rect;

.field private static sOrdinal:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected mBounds:Lorg/osmdroid/util/BoundingBox;

.field private mEnabled:Z

.field private final tileSystem:Lorg/osmdroid/util/TileSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/Overlay;->sOrdinal:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/Overlay;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/Overlay;->mEnabled:Z

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Overlay;->tileSystem:Lorg/osmdroid/util/TileSystem;

    new-instance v10, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v6

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v8

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v10, p0, Lorg/osmdroid/views/overlay/Overlay;->mBounds:Lorg/osmdroid/util/BoundingBox;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Overlay;->mEnabled:Z

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/views/overlay/Overlay;->tileSystem:Lorg/osmdroid/util/TileSystem;

    new-instance v9, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {p1}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v9, p0, Lorg/osmdroid/views/overlay/Overlay;->mBounds:Lorg/osmdroid/util/BoundingBox;

    return-void
.end method

.method public static declared-synchronized drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZF)V
    .locals 3

    const-class p4, Lorg/osmdroid/views/overlay/Overlay;

    monitor-enter p4

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    neg-float p5, p5

    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p0, p5, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    sget-object p5, Lorg/osmdroid/views/overlay/Overlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v0, p5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iget v1, p5, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iget v2, p5, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p2

    iget p2, p5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p3

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p4

    throw p0
.end method

.method public static final getSafeMenuId()I
    .locals 1

    sget-object v0, Lorg/osmdroid/views/overlay/Overlay;->sOrdinal:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public static final getSafeMenuIdSequence(I)I
    .locals 1

    sget-object v0, Lorg/osmdroid/views/overlay/Overlay;->sOrdinal:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 0

    .line 2
    return-void
.end method

.method public getBounds()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Overlay;->mBounds:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Overlay;->mEnabled:Z

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 0

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Overlay;->mEnabled:Z

    return-void
.end method
