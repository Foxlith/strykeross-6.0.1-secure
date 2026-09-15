.class final enum Lorg/osmdroid/views/MapController$ReplayType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/osmdroid/views/MapController$ReplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/views/MapController$ReplayType;

.field public static final enum AnimateToGeoPoint:Lorg/osmdroid/views/MapController$ReplayType;

.field public static final enum AnimateToPoint:Lorg/osmdroid/views/MapController$ReplayType;

.field public static final enum SetCenterPoint:Lorg/osmdroid/views/MapController$ReplayType;

.field public static final enum ZoomToSpanPoint:Lorg/osmdroid/views/MapController$ReplayType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/osmdroid/views/MapController$ReplayType;

    const-string v1, "ZoomToSpanPoint"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/MapController$ReplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/MapController$ReplayType;->ZoomToSpanPoint:Lorg/osmdroid/views/MapController$ReplayType;

    new-instance v1, Lorg/osmdroid/views/MapController$ReplayType;

    const-string v2, "AnimateToPoint"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/views/MapController$ReplayType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/osmdroid/views/MapController$ReplayType;->AnimateToPoint:Lorg/osmdroid/views/MapController$ReplayType;

    new-instance v2, Lorg/osmdroid/views/MapController$ReplayType;

    const-string v3, "AnimateToGeoPoint"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/osmdroid/views/MapController$ReplayType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/osmdroid/views/MapController$ReplayType;->AnimateToGeoPoint:Lorg/osmdroid/views/MapController$ReplayType;

    new-instance v3, Lorg/osmdroid/views/MapController$ReplayType;

    const-string v4, "SetCenterPoint"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/osmdroid/views/MapController$ReplayType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/osmdroid/views/MapController$ReplayType;->SetCenterPoint:Lorg/osmdroid/views/MapController$ReplayType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/osmdroid/views/MapController$ReplayType;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/views/MapController$ReplayType;->$VALUES:[Lorg/osmdroid/views/MapController$ReplayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/views/MapController$ReplayType;
    .locals 1

    const-class v0, Lorg/osmdroid/views/MapController$ReplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/osmdroid/views/MapController$ReplayType;

    return-object p0
.end method

.method public static values()[Lorg/osmdroid/views/MapController$ReplayType;
    .locals 1

    sget-object v0, Lorg/osmdroid/views/MapController$ReplayType;->$VALUES:[Lorg/osmdroid/views/MapController$ReplayType;

    invoke-virtual {v0}, [Lorg/osmdroid/views/MapController$ReplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/views/MapController$ReplayType;

    return-object v0
.end method
