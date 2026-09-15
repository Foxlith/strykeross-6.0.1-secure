.class public Lorg/osmdroid/events/ScrollEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/events/MapEvent;


# instance fields
.field protected source:Lorg/osmdroid/views/MapView;

.field protected x:I

.field protected y:I


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/events/ScrollEvent;->source:Lorg/osmdroid/views/MapView;

    iput p2, p0, Lorg/osmdroid/events/ScrollEvent;->x:I

    iput p3, p0, Lorg/osmdroid/events/ScrollEvent;->y:I

    return-void
.end method


# virtual methods
.method public getSource()Lorg/osmdroid/views/MapView;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/events/ScrollEvent;->source:Lorg/osmdroid/views/MapView;

    return-object v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/events/ScrollEvent;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/events/ScrollEvent;->y:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ScrollEvent [source="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/osmdroid/events/ScrollEvent;->source:Lorg/osmdroid/views/MapView;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", x="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/osmdroid/events/ScrollEvent;->x:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", y="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lorg/osmdroid/events/ScrollEvent;->y:I

    .line 29
    .line 30
    const-string v2, "]"

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
