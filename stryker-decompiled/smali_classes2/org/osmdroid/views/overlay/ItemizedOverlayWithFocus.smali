.class public Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;
.super Lorg/osmdroid/views/overlay/ItemizedIconOverlay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lorg/osmdroid/views/overlay/OverlayItem;",
        ">",
        "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<",
        "TItem;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final DEFAULTMARKER_BACKGROUNDCOLOR:I

.field private DESCRIPTION_BOX_CORNERWIDTH:I

.field private DESCRIPTION_BOX_PADDING:I

.field private DESCRIPTION_LINE_HEIGHT:I

.field private DESCRIPTION_MAXWIDTH:I

.field private DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

.field private FONT_SIZE_DP:I

.field private UNKNOWN:Ljava/lang/String;

.field private fontSizePixels:I

.field private mContext:Landroid/content/Context;

.field protected mDescriptionPaint:Landroid/graphics/Paint;

.field protected mFocusItemsOnTap:Z

.field protected mFocusedItemIndex:I

.field private final mFocusedScreenCoords:Landroid/graphics/Point;

.field protected mMarkerBackgroundPaint:Landroid/graphics/Paint;

.field protected mMarkerFocusedBackgroundColor:I

.field protected mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

.field private final mRect:Landroid/graphics/Rect;

.field protected mTitlePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<",
            "TItem;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p1}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<",
            "TItem;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p5, p6}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    const/16 p1, 0xb9

    const/16 p2, 0x4a

    const/16 p5, 0x65

    invoke-static {p5, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DEFAULTMARKER_BACKGROUNDCOLOR:I

    const/4 p2, 0x3

    iput p2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    iput p2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    const/4 p2, 0x2

    iput p2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

    const/16 p2, 0xe

    iput p2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->FONT_SIZE_DP:I

    const/16 p2, 0x258

    iput p2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    const/16 p2, 0x1e

    iput p2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iput-object p6, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    if-nez p3, :cond_0

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lorg/osmdroid/library/R$drawable;->marker_default_focused_base:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget-object p3, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {p0, p2, p3}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

    :goto_0
    const/high16 p2, -0x80000000

    if-eq p4, p2, :cond_1

    goto :goto_1

    :cond_1
    move p4, p1

    :goto_1
    iput p4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBackgroundColor:I

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->calculateDrawSettings()V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->unSetFocusedItem()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<",
            "TItem;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->marker_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    return-void
.end method

.method private calculateDrawSettings()V
    .locals 5

    iget v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->FONT_SIZE_DP:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->fontSizePixels:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->unknown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->UNKNOWN:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->fontSizePixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->fontSizePixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    iget v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/OverlayItem;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

    :cond_2
    move-object v8, v2

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    move-object/from16 v9, p2

    invoke-virtual {v9, v2, v3}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->UNKNOWN:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->UNKNOWN:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v4, v3, [F

    iget-object v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    if-ge v10, v3, :cond_b

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isLetter(C)Z

    move-result v16

    if-nez v16, :cond_5

    move v14, v10

    :cond_5
    aget v16, v4, v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v15, 0xa

    if-ne v6, v15, :cond_6

    add-int/lit8 v6, v10, 0x1

    invoke-virtual {v1, v11, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v14, v6

    move v12, v11

    const/4 v13, 0x0

    move v11, v14

    :goto_3
    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    int-to-float v6, v13

    add-float v6, v6, v16

    iget v15, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    int-to-float v15, v15

    cmpl-float v6, v6, v15

    if-lez v6, :cond_a

    if-ne v11, v14, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-nez v6, :cond_8

    move v10, v14

    :cond_8
    invoke-virtual {v1, v11, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v11, 0xa

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-eqz v6, :cond_9

    add-int/lit8 v6, v10, -0x1

    move v11, v10

    move v14, v11

    const/4 v13, 0x0

    move v10, v6

    goto :goto_3

    :cond_9
    move v11, v10

    move v14, v11

    const/4 v13, 0x0

    :cond_a
    int-to-float v6, v13

    add-float v6, v6, v16

    float-to-int v6, v6

    move v13, v6

    goto :goto_3

    :goto_5
    add-int/2addr v10, v6

    goto :goto_2

    :cond_b
    if-eq v10, v11, :cond_c

    invoke-virtual {v1, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    iget v6, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    mul-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v3

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

    sub-int v10, v3, v10

    array-length v11, v1

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iget v12, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v10, v5

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v5

    const/4 v11, 0x0

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v5

    neg-float v5, v5

    iget-object v12, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v13, v12, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    invoke-virtual {v7, v5, v13, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_d
    iget-object v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v12, -0x1000000

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/RectF;

    add-int/lit8 v12, v4, -0x1

    int-to-float v12, v12

    add-int/lit8 v13, v10, -0x1

    int-to-float v13, v13

    add-int/lit8 v14, v6, 0x1

    int-to-float v14, v14

    add-int/lit8 v15, v3, 0x1

    int-to-float v15, v15

    invoke-direct {v5, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v12, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    int-to-float v13, v12

    int-to-float v12, v12

    iget-object v14, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v13, v12, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    iget v12, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBackgroundColor:I

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/RectF;

    int-to-float v12, v4

    int-to-float v10, v10

    int-to-float v6, v6

    int-to-float v13, v3

    invoke-direct {v5, v12, v10, v6, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v10, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    int-to-float v13, v10

    int-to-float v10, v10

    iget-object v14, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v13, v10, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v5

    array-length v5, v1

    const/4 v10, 0x1

    sub-int/2addr v5, v10

    :goto_6
    if-ltz v5, :cond_e

    aget-object v10, v1, v5

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    int-to-float v13, v4

    int-to-float v14, v3

    iget-object v15, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v13, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v10, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    sub-int/2addr v3, v10

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_e
    int-to-float v1, v4

    iget v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    int-to-float v5, v3

    iget-object v10, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v12

    move v3, v5

    move v4, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v1

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f
    return-void
.end method

.method public getFocusedItem()Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    iget v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayItem;

    return-object v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onSingleTapUpHelper(ILorg/osmdroid/views/overlay/OverlayItem;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;",
            "Lorg/osmdroid/views/MapView;",
            ")Z"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusItemsOnTap:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    invoke-virtual {p3}, Landroid/view/View;->postInvalidate()V

    :cond_0
    iget-object p3, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    invoke-interface {p3, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;->onItemSingleTapUp(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setDescriptionBoxCornerWidth(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    return-void
.end method

.method public setDescriptionBoxPadding(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    return-void
.end method

.method public setDescriptionLineHeight(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->calculateDrawSettings()V

    return-void
.end method

.method public setDescriptionMaxWidth(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->calculateDrawSettings()V

    return-void
.end method

.method public setDescriptionTitleExtraLineHeight(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

    return-void
.end method

.method public setFocusItemsOnTap(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusItemsOnTap:Z

    return-void
.end method

.method public setFocusedItem(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    return-void
.end method

.method public setFocusedItem(Lorg/osmdroid/views/overlay/OverlayItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->setFocusedItem(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setFontSize(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->FONT_SIZE_DP:I

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->calculateDrawSettings()V

    return-void
.end method

.method public setMarkerBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBackgroundColor:I

    return-void
.end method

.method public setMarkerDescriptionForegroundColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setMarkerTitleForegroundColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public unSetFocusedItem()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    return-void
.end method
