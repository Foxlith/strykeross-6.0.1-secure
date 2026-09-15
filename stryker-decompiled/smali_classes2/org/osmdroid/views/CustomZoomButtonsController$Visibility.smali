.class public final enum Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/CustomZoomButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

.field public static final enum ALWAYS:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

.field public static final enum NEVER:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

.field public static final enum SHOW_AND_FADEOUT:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;->ALWAYS:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    new-instance v1, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    const-string v2, "NEVER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;->NEVER:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    new-instance v2, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    const-string v3, "SHOW_AND_FADEOUT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;->SHOW_AND_FADEOUT:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    filled-new-array {v0, v1, v2}, [Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;->$VALUES:[Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

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

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;
    .locals 1

    const-class v0, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    return-object p0
.end method

.method public static values()[Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;
    .locals 1

    sget-object v0, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;->$VALUES:[Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    invoke-virtual {v0}, [Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    return-object v0
.end method
