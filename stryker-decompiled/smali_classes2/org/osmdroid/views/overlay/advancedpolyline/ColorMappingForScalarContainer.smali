.class public Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mInnerMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;

.field private mScalarMax:F

.field private mScalarMin:F

.field private final mScalars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalars:Ljava/util/List;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalarMin:F

    const/4 v0, 0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalarMax:F

    iput-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mInnerMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;

    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mInnerMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;->add(F)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalars:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalarMin:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    iput p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalarMin:F

    :cond_0
    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalarMax:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    iput p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalarMax:F

    :cond_1
    return-void
.end method

.method public getMappingForScalar()Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mInnerMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;

    return-object v0
.end method

.method public getScalarMax()F
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalarMax:F

    return v0
.end method

.method public getScalarMin()F
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalarMin:F

    return v0
.end method

.method public refresh()V
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mInnerMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;

    invoke-virtual {v3, v1, v2}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;->set(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
