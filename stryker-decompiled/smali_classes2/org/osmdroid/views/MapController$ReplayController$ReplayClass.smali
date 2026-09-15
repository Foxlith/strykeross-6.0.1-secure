.class Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapController$ReplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReplayClass"
.end annotation


# instance fields
.field private final mClockwise:Ljava/lang/Boolean;

.field private mGeoPoint:Lorg/osmdroid/api/IGeoPoint;

.field private final mOrientation:Ljava/lang/Float;

.field private mPoint:Landroid/graphics/Point;

.field private mReplayType:Lorg/osmdroid/views/MapController$ReplayType;

.field private final mSpeed:Ljava/lang/Long;

.field private final mZoom:Ljava/lang/Double;

.field final synthetic this$1:Lorg/osmdroid/views/MapController$ReplayController;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapController$ReplayController;Lorg/osmdroid/views/MapController$ReplayType;Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;)V
    .locals 9

    .line 1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;-><init>(Lorg/osmdroid/views/MapController$ReplayController;Lorg/osmdroid/views/MapController$ReplayType;Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapController$ReplayController;Lorg/osmdroid/views/MapController$ReplayType;Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->this$1:Lorg/osmdroid/views/MapController$ReplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mReplayType:Lorg/osmdroid/views/MapController$ReplayType;

    iput-object p3, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mPoint:Landroid/graphics/Point;

    iput-object p4, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mGeoPoint:Lorg/osmdroid/api/IGeoPoint;

    iput-object p6, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mSpeed:Ljava/lang/Long;

    iput-object p5, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mZoom:Ljava/lang/Double;

    iput-object p7, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mOrientation:Ljava/lang/Float;

    iput-object p8, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mClockwise:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic access$100(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Lorg/osmdroid/views/MapController$ReplayType;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mReplayType:Lorg/osmdroid/views/MapController$ReplayType;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Lorg/osmdroid/api/IGeoPoint;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mGeoPoint:Lorg/osmdroid/api/IGeoPoint;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mZoom:Ljava/lang/Double;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mSpeed:Ljava/lang/Long;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mOrientation:Ljava/lang/Float;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mClockwise:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mPoint:Landroid/graphics/Point;

    return-object p0
.end method
