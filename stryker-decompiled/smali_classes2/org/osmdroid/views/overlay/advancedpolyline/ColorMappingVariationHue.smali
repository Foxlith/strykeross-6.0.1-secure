.class public Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariationHue;
.super Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;
.source "SourceFile"


# instance fields
.field private mLuminance:F

.field private mSaturation:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 2

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;-><init>()V

    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {p3, v0, v1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;->constrain(FFF)F

    move-result p3

    invoke-static {p4, v0, v1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;->constrain(FFF)F

    move-result p4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p5, v0, v1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;->constrain(FFF)F

    move-result p5

    iput p5, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariationHue;->mSaturation:F

    invoke-static {p6, v0, v1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;->constrain(FFF)F

    move-result p5

    iput p5, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariationHue;->mLuminance:F

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->init(FFFF)V

    return-void
.end method


# virtual methods
.method public getHue(F)F
    .locals 0

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mapScalar(F)F

    move-result p1

    return p1
.end method

.method public getLuminance(F)F
    .locals 0

    iget p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariationHue;->mLuminance:F

    return p1
.end method

.method public getSaturation(F)F
    .locals 0

    iget p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariationHue;->mSaturation:F

    return p1
.end method
