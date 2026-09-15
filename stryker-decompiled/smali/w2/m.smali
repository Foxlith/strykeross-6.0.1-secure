.class public final Lw2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;


# instance fields
.field public final synthetic a:Lorg/osmdroid/api/IMapController;

.field public final synthetic b:D

.field public final synthetic c:D

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/zalexdev/stryker/geomac/GeoMacInline;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/geomac/GeoMacInline;Lorg/osmdroid/api/IMapController;DDLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/m;->e:Lcom/zalexdev/stryker/geomac/GeoMacInline;

    iput-object p2, p0, Lw2/m;->a:Lorg/osmdroid/api/IMapController;

    iput-wide p3, p0, Lw2/m;->b:D

    iput-wide p5, p0, Lw2/m;->c:D

    iput-object p7, p0, Lw2/m;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onItemLongPress(ILjava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Lorg/osmdroid/views/overlay/OverlayItem;

    .line 2
    .line 3
    iget-object p1, p0, Lw2/m;->e:Lcom/zalexdev/stryker/geomac/GeoMacInline;

    .line 4
    .line 5
    iget-object p2, p0, Lw2/m;->d:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/zalexdev/stryker/geomac/GeoMacInline;->f(Lcom/zalexdev/stryker/geomac/GeoMacInline;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method public final onItemSingleTapUp(ILjava/lang/Object;)Z
    .locals 4

    .line 1
    check-cast p2, Lorg/osmdroid/views/overlay/OverlayItem;

    .line 2
    .line 3
    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    .line 4
    .line 5
    iget-wide v0, p0, Lw2/m;->b:D

    .line 6
    .line 7
    iget-wide v2, p0, Lw2/m;->c:D

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lw2/m;->a:Lorg/osmdroid/api/IMapController;

    .line 13
    .line 14
    invoke-interface {p2, p1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 15
    .line 16
    .line 17
    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    .line 18
    .line 19
    invoke-interface {p2, v0, v1}, Lorg/osmdroid/api/IMapController;->setZoom(D)D

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lw2/m;->e:Lcom/zalexdev/stryker/geomac/GeoMacInline;

    .line 23
    .line 24
    iget-object p2, p0, Lw2/m;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1, p2}, Lcom/zalexdev/stryker/geomac/GeoMacInline;->f(Lcom/zalexdev/stryker/geomac/GeoMacInline;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1
.end method
