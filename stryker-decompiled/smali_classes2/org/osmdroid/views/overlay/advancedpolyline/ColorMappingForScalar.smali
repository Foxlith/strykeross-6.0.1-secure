.class public abstract Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;


# instance fields
.field private final mColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;->mColors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;->mColors:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;->computeColor(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract computeColor(F)I
.end method

.method public getColorForIndex(I)I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;->mColors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public set(IF)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;->mColors:Ljava/util/List;

    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;->computeColor(F)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
