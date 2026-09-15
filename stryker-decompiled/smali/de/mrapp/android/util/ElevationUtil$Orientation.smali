.class public final enum Lde/mrapp/android/util/ElevationUtil$Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/util/ElevationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/android/util/ElevationUtil$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/android/util/ElevationUtil$Orientation;

.field public static final enum BOTTOM:Lde/mrapp/android/util/ElevationUtil$Orientation;

.field public static final enum BOTTOM_LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

.field public static final enum BOTTOM_RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;

.field public static final enum LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

.field public static final enum RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;

.field public static final enum TOP:Lde/mrapp/android/util/ElevationUtil$Orientation;

.field public static final enum TOP_LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

.field public static final enum TOP_RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lde/mrapp/android/util/ElevationUtil$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/util/ElevationUtil$Orientation;->LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    new-instance v1, Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-string v2, "TOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lde/mrapp/android/util/ElevationUtil$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lde/mrapp/android/util/ElevationUtil$Orientation;->TOP:Lde/mrapp/android/util/ElevationUtil$Orientation;

    new-instance v2, Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-string v3, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lde/mrapp/android/util/ElevationUtil$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lde/mrapp/android/util/ElevationUtil$Orientation;->RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    new-instance v3, Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-string v4, "BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lde/mrapp/android/util/ElevationUtil$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lde/mrapp/android/util/ElevationUtil$Orientation;->BOTTOM:Lde/mrapp/android/util/ElevationUtil$Orientation;

    new-instance v4, Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-string v5, "TOP_LEFT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lde/mrapp/android/util/ElevationUtil$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lde/mrapp/android/util/ElevationUtil$Orientation;->TOP_LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    new-instance v5, Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-string v6, "TOP_RIGHT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lde/mrapp/android/util/ElevationUtil$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lde/mrapp/android/util/ElevationUtil$Orientation;->TOP_RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    new-instance v6, Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-string v7, "BOTTOM_LEFT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lde/mrapp/android/util/ElevationUtil$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lde/mrapp/android/util/ElevationUtil$Orientation;->BOTTOM_LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    new-instance v7, Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-string v8, "BOTTOM_RIGHT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lde/mrapp/android/util/ElevationUtil$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lde/mrapp/android/util/ElevationUtil$Orientation;->BOTTOM_RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    filled-new-array/range {v0 .. v7}, [Lde/mrapp/android/util/ElevationUtil$Orientation;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/util/ElevationUtil$Orientation;->$VALUES:[Lde/mrapp/android/util/ElevationUtil$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lde/mrapp/android/util/ElevationUtil$Orientation;->value:I

    return-void
.end method

.method public static fromValue(I)Lde/mrapp/android/util/ElevationUtil$Orientation;
    .locals 5

    .line 1
    invoke-static {}, Lde/mrapp/android/util/ElevationUtil$Orientation;->values()[Lde/mrapp/android/util/ElevationUtil$Orientation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lde/mrapp/android/util/ElevationUtil$Orientation;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ne v4, p0, :cond_0

    .line 16
    .line 17
    return-object v3

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v1, "Invalid enum value: "

    .line 24
    .line 25
    invoke-static {v1, p0}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/android/util/ElevationUtil$Orientation;
    .locals 1

    const-class v0, Lde/mrapp/android/util/ElevationUtil$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/util/ElevationUtil$Orientation;

    return-object p0
.end method

.method public static values()[Lde/mrapp/android/util/ElevationUtil$Orientation;
    .locals 1

    sget-object v0, Lde/mrapp/android/util/ElevationUtil$Orientation;->$VALUES:[Lde/mrapp/android/util/ElevationUtil$Orientation;

    invoke-virtual {v0}, [Lde/mrapp/android/util/ElevationUtil$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/android/util/ElevationUtil$Orientation;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lde/mrapp/android/util/ElevationUtil$Orientation;->value:I

    return v0
.end method
