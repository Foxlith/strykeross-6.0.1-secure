.class public Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingRanges;
.super Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;
.source "SourceFile"


# instance fields
.field private final mColorRanges:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mStrictComparison:Z


# direct methods
.method public constructor <init>(Ljava/util/SortedMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingRanges;->mColorRanges:Ljava/util/SortedMap;

    iput-boolean p2, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingRanges;->mStrictComparison:Z

    return-void
.end method


# virtual methods
.method public computeColor(F)I
    .locals 5

    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingRanges;->mColorRanges:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-boolean v4, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingRanges;->mStrictComparison:Z

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingRanges;->mColorRanges:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne v2, p1, :cond_3

    iget-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingRanges;->mColorRanges:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_3
    return v1
.end method
