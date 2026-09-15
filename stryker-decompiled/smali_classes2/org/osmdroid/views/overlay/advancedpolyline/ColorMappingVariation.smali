.class public abstract Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;
.super Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;
.source "SourceFile"


# instance fields
.field private mEnd:F

.field private mScalarEnd:F

.field private mScalarStart:F

.field private mSlope:F

.field private mStart:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;-><init>()V

    return-void
.end method


# virtual methods
.method public computeColor(F)I
    .locals 2

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->getHue(F)F

    move-result v0

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->getSaturation(F)F

    move-result v1

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->getLuminance(F)F

    move-result p1

    invoke-static {v0, v1, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;->HSLToColor(FFF)I

    move-result p1

    return p1
.end method

.method public abstract getHue(F)F
.end method

.method public abstract getLuminance(F)F
.end method

.method public abstract getSaturation(F)F
.end method

.method public init(FFFF)V
    .locals 1

    iput p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mScalarStart:F

    iput p2, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mScalarEnd:F

    iput p3, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mStart:F

    iput p4, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mEnd:F

    cmpl-float v0, p2, p1

    if-nez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    sub-float/2addr p4, p3

    sub-float/2addr p2, p1

    div-float p1, p4, p2

    :goto_0
    iput p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mSlope:F

    return-void
.end method

.method public mapScalar(F)F
    .locals 2

    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mScalarEnd:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mEnd:F

    return p1

    :cond_0
    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mScalarStart:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_1

    iget p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mStart:F

    return p1

    :cond_1
    sub-float/2addr p1, v0

    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mSlope:F

    mul-float/2addr p1, v0

    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mStart:F

    add-float/2addr p1, v0

    return p1
.end method
