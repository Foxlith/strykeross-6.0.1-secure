.class public final enum Lde/mrapp/android/util/DisplayUtil$Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/util/DisplayUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/android/util/DisplayUtil$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/android/util/DisplayUtil$Orientation;

.field public static final enum LANDSCAPE:Lde/mrapp/android/util/DisplayUtil$Orientation;

.field public static final enum PORTRAIT:Lde/mrapp/android/util/DisplayUtil$Orientation;

.field public static final enum SQUARE:Lde/mrapp/android/util/DisplayUtil$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lde/mrapp/android/util/DisplayUtil$Orientation;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/util/DisplayUtil$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/mrapp/android/util/DisplayUtil$Orientation;->PORTRAIT:Lde/mrapp/android/util/DisplayUtil$Orientation;

    new-instance v1, Lde/mrapp/android/util/DisplayUtil$Orientation;

    const-string v2, "LANDSCAPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lde/mrapp/android/util/DisplayUtil$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lde/mrapp/android/util/DisplayUtil$Orientation;->LANDSCAPE:Lde/mrapp/android/util/DisplayUtil$Orientation;

    new-instance v2, Lde/mrapp/android/util/DisplayUtil$Orientation;

    const-string v3, "SQUARE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lde/mrapp/android/util/DisplayUtil$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lde/mrapp/android/util/DisplayUtil$Orientation;->SQUARE:Lde/mrapp/android/util/DisplayUtil$Orientation;

    filled-new-array {v0, v1, v2}, [Lde/mrapp/android/util/DisplayUtil$Orientation;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/util/DisplayUtil$Orientation;->$VALUES:[Lde/mrapp/android/util/DisplayUtil$Orientation;

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

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/android/util/DisplayUtil$Orientation;
    .locals 1

    const-class v0, Lde/mrapp/android/util/DisplayUtil$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/util/DisplayUtil$Orientation;

    return-object p0
.end method

.method public static values()[Lde/mrapp/android/util/DisplayUtil$Orientation;
    .locals 1

    sget-object v0, Lde/mrapp/android/util/DisplayUtil$Orientation;->$VALUES:[Lde/mrapp/android/util/DisplayUtil$Orientation;

    invoke-virtual {v0}, [Lde/mrapp/android/util/DisplayUtil$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/android/util/DisplayUtil$Orientation;

    return-object v0
.end method
