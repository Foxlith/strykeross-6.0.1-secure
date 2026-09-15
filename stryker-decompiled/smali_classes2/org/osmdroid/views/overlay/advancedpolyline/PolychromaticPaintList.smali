.class public Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/PaintList;


# instance fields
.field private final mColorMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mUseGradient:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mPaint:Landroid/graphics/Paint;

    iput-object p2, p0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mColorMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;

    iput-boolean p3, p0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mUseGradient:Z

    return-void
.end method


# virtual methods
.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPaint(IFFFF)Landroid/graphics/Paint;
    .locals 9

    .line 2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mColorMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;->getColorForIndex(I)I

    move-result v6

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mUseGradient:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mColorMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;->getColorForIndex(I)I

    move-result v7

    if-eq v6, v7, :cond_0

    new-instance p1, Landroid/graphics/LinearGradient;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    iget-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mPaint:Landroid/graphics/Paint;

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    iget-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method
