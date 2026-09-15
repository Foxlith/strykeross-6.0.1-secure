.class public final enum Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/OverlayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HotspotPlace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum LEFT_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum LOWER_LEFT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum LOWER_RIGHT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum NONE:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum RIGHT_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum TOP_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum UPPER_LEFT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum UPPER_RIGHT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->NONE:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v2, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v2, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v3, "BOTTOM_CENTER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v3, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v4, "TOP_CENTER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->TOP_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v4, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v5, "RIGHT_CENTER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->RIGHT_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v5, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v6, "LEFT_CENTER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->LEFT_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v6, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v7, "UPPER_RIGHT_CORNER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->UPPER_RIGHT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v7, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v8, "LOWER_RIGHT_CORNER"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->LOWER_RIGHT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v8, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v9, "UPPER_LEFT_CORNER"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->UPPER_LEFT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v9, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v10, "LOWER_LEFT_CORNER"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->LOWER_LEFT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    filled-new-array/range {v0 .. v9}, [Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->$VALUES:[Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

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

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    .locals 1

    const-class v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    return-object p0
.end method

.method public static values()[Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    .locals 1

    sget-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->$VALUES:[Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v0}, [Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    return-object v0
.end method
