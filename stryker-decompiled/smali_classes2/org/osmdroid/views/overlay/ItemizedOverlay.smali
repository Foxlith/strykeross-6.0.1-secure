.class public abstract Lorg/osmdroid/views/overlay/ItemizedOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/Overlay$Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lorg/osmdroid/views/overlay/OverlayItem;",
        ">",
        "Lorg/osmdroid/views/overlay/Overlay;",
        "Lorg/osmdroid/views/overlay/Overlay$Snappable;"
    }
.end annotation


# instance fields
.field private itemRect:Landroid/graphics/Rect;

.field private final mCurScreenCoords:Landroid/graphics/Point;

.field protected final mDefaultMarker:Landroid/graphics/drawable/Drawable;

.field protected mDrawFocusedItem:Z

.field protected mDrawnItemsLimit:I

.field private mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TItem;"
        }
    .end annotation
.end field

.field private mInternalItemDisplayedList:[Z

.field private final mInternalItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private final mMarkerRect:Landroid/graphics/Rect;

.field private mOnFocusChangeListener:Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;

.field private final mOrientedMarkerRect:Landroid/graphics/Rect;

.field private mPendingFocusChangedEvent:Z

.field private final mRect:Landroid/graphics/Rect;

.field private screenRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawnItemsLimit:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMarkerRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOrientedMarkerRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawFocusedItem:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mPendingFocusChangedEvent:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->itemRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->screenRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDefaultMarker:Landroid/graphics/drawable/Drawable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must pass a default marker to ItemizedOverlay."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;
    .locals 6

    if-nez p2, :cond_0

    sget-object p2, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Lorg/osmdroid/views/overlay/ItemizedOverlay$1;->$SwitchMap$org$osmdroid$views$overlay$OverlayItem$HotspotPlace:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    packed-switch v3, :pswitch_data_0

    move v3, v4

    goto :goto_0

    :pswitch_0
    neg-int v3, v0

    goto :goto_0

    :pswitch_1
    neg-int v3, v0

    div-int/2addr v3, v5

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    if-eq p2, v5, :cond_2

    const/16 v2, 0x8

    if-eq p2, v2, :cond_2

    const/16 v2, 0xa

    if-eq p2, v2, :cond_1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-eq p2, v2, :cond_2

    const/4 v2, 0x6

    if-eq p2, v2, :cond_1

    goto :goto_1

    :cond_1
    neg-int v4, v1

    goto :goto_1

    :cond_2
    neg-int p2, v1

    div-int/lit8 v4, p2, 0x2

    :goto_1
    add-int/2addr v0, v3

    add-int/2addr v1, v4

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public calculateItemRect(Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarkerHotspot()Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    :cond_1
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawFocusedItem:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    if-ne v1, p1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getDefaultMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    sget-object v2, Lorg/osmdroid/views/overlay/ItemizedOverlay$1;->$SwitchMap$org$osmdroid$views$overlay$OverlayItem$HotspotPlace:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget v0, p2, Landroid/graphics/Point;->x:I

    sub-int v1, v0, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int p1, p2, p1

    invoke-virtual {p3, v1, p1, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :pswitch_1
    iget v0, p2, Landroid/graphics/Point;->x:I

    sub-int v1, v0, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr p1, p2

    invoke-virtual {p3, v1, p2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :pswitch_2
    iget v0, p2, Landroid/graphics/Point;->x:I

    sub-int v1, v0, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 p1, p1, 0x2

    sub-int v2, p2, p1

    add-int/2addr p2, p1

    invoke-virtual {p3, v1, v2, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :pswitch_3
    iget v0, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    sub-int v2, v0, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    add-int/2addr p1, p2

    invoke-virtual {p3, v2, p2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :pswitch_4
    iget v0, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    sub-int v2, v0, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int p1, p2, p1

    add-int/2addr v0, v1

    invoke-virtual {p3, v2, p1, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :pswitch_5
    iget v0, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    sub-int v2, v0, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 p1, p1, 0x2

    sub-int v3, p2, p1

    add-int/2addr v0, v1

    add-int/2addr p2, p1

    invoke-virtual {p3, v2, v3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :pswitch_6
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int p1, p2, p1

    add-int/2addr v1, v0

    invoke-virtual {p3, v0, p1, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :pswitch_7
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v0

    add-int/2addr p1, p2

    invoke-virtual {p3, v0, p2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :pswitch_8
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 p1, p1, 0x2

    sub-int v2, p2, p1

    add-int/2addr v1, v0

    add-int/2addr p2, p1

    invoke-virtual {p3, v0, v2, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract createItem(I)Lorg/osmdroid/views/overlay/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 4

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mPendingFocusChangedEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOnFocusChangeListener:Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    invoke-interface {v0, p0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;->onFocusChanged(Lorg/osmdroid/views/overlay/ItemizedOverlay;Lorg/osmdroid/views/overlay/OverlayItem;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mPendingFocusChangedEvent:Z

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawnItemsLimit:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    if-eqz v1, :cond_1

    array-length v1, v1

    if-eq v1, v0, :cond_2

    :cond_1
    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    invoke-virtual {p2, v2, v3}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->itemRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2, v3}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->calculateItemRect(Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    invoke-virtual {p0, p1, v1, v3, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->onDrawItem(Landroid/graphics/Canvas;Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/Point;Lorg/osmdroid/views/Projection;)Z

    move-result v1

    aput-boolean v1, v2, v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getDefaultMarker(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDefaultMarker:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/osmdroid/views/overlay/OverlayItem;->setState(Landroid/graphics/drawable/Drawable;I)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDefaultMarker:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getDisplayedItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getDrawnItemsLimit()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawnItemsLimit:I

    return v0
.end method

.method public getFocus()Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    return-object v0
.end method

.method public final getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/overlay/OverlayItem;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hitTest(Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Landroid/graphics/drawable/Drawable;",
            "II)Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public isEventOnItem(Lorg/osmdroid/views/overlay/OverlayItem;IILorg/osmdroid/views/MapView;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;II",
            "Lorg/osmdroid/views/MapView;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p4}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawFocusedItem:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    if-ne v1, p1, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getDefaultMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarkerHotspot()Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    iget-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p4}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result p1

    neg-float p1, p1

    float-to-double v5, p1

    iget-object v7, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOrientedMarkerRect:Landroid/graphics/Rect;

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/util/RectL;->getBounds(Landroid/graphics/Rect;IIDLandroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOrientedMarkerRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 0

    return-void
.end method

.method public onDrawItem(Landroid/graphics/Canvas;Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/Point;Lorg/osmdroid/views/Projection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "TItem;",
            "Landroid/graphics/Point;",
            "Lorg/osmdroid/views/Projection;",
            ")Z"
        }
    .end annotation

    iget-boolean p3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawFocusedItem:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    if-ne p3, p2, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p3}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getDefaultMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p3}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :goto_1
    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarkerHotspot()Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    iget v6, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMarkerRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, p2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v1

    float-to-double v3, v1

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOrientedMarkerRect:Landroid/graphics/Rect;

    move v1, v6

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/RectL;->getBounds(Landroid/graphics/Rect;IIDLandroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOrientedMarkerRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p4}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v1

    neg-float v1, v1

    int-to-float v3, v6

    int-to-float p2, p2

    invoke-virtual {p1, v1, v3, p2}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_2
    iget-object p2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p4}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result p2

    cmpl-float p2, p2, v2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    iget-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMarkerRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_4
    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 5

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v4

    invoke-virtual {p0, v4, v1, v2, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->isEventOnItem(Lorg/osmdroid/views/overlay/OverlayItem;IILorg/osmdroid/views/MapView;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->onTap(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result p1

    return p1
.end method

.method public onTap(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final populate()V
    .locals 4

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->size()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->createItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    return-void
.end method

.method public setDrawFocusedItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawFocusedItem:Z

    return-void
.end method

.method public setDrawnItemsLimit(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawnItemsLimit:I

    return-void
.end method

.method public setFocus(Lorg/osmdroid/views/overlay/OverlayItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mPendingFocusChangedEvent:Z

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    return-void
.end method

.method public setOnFocusChangeListener(Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOnFocusChangeListener:Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;

    return-void
.end method

.method public abstract size()I
.end method
