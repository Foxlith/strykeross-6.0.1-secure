.class public interface abstract Lorg/osmdroid/api/IMapController;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract animateTo(II)V
.end method

.method public abstract animateTo(Lorg/osmdroid/api/IGeoPoint;)V
.end method

.method public abstract animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;)V
.end method

.method public abstract animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Float;)V
.end method

.method public abstract animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Boolean;)V
.end method

.method public abstract scrollBy(II)V
.end method

.method public abstract setCenter(Lorg/osmdroid/api/IGeoPoint;)V
.end method

.method public abstract setZoom(D)D
.end method

.method public abstract setZoom(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract stopAnimation(Z)V
.end method

.method public abstract stopPanning()V
.end method

.method public abstract zoomIn()Z
.end method

.method public abstract zoomIn(Ljava/lang/Long;)Z
.end method

.method public abstract zoomInFixing(II)Z
.end method

.method public abstract zoomInFixing(IILjava/lang/Long;)Z
.end method

.method public abstract zoomOut()Z
.end method

.method public abstract zoomOut(Ljava/lang/Long;)Z
.end method

.method public abstract zoomOutFixing(II)Z
.end method

.method public abstract zoomTo(D)Z
.end method

.method public abstract zoomTo(DLjava/lang/Long;)Z
.end method

.method public abstract zoomTo(I)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract zoomTo(ILjava/lang/Long;)Z
.end method

.method public abstract zoomToFixing(DII)Z
.end method

.method public abstract zoomToFixing(DIILjava/lang/Long;)Z
.end method

.method public abstract zoomToFixing(III)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract zoomToFixing(IIILjava/lang/Long;)Z
.end method

.method public abstract zoomToSpan(DD)V
.end method

.method public abstract zoomToSpan(II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
