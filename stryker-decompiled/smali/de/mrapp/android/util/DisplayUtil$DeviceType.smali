.class public final enum Lde/mrapp/android/util/DisplayUtil$DeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/util/DisplayUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/android/util/DisplayUtil$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/android/util/DisplayUtil$DeviceType;

.field public static final enum PHABLET:Lde/mrapp/android/util/DisplayUtil$DeviceType;

.field public static final enum PHONE:Lde/mrapp/android/util/DisplayUtil$DeviceType;

.field public static final enum TABLET:Lde/mrapp/android/util/DisplayUtil$DeviceType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lde/mrapp/android/util/DisplayUtil$DeviceType;

    const/4 v1, 0x0

    const-string v2, "phone"

    const-string v3, "PHONE"

    invoke-direct {v0, v3, v1, v2}, Lde/mrapp/android/util/DisplayUtil$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lde/mrapp/android/util/DisplayUtil$DeviceType;->PHONE:Lde/mrapp/android/util/DisplayUtil$DeviceType;

    new-instance v1, Lde/mrapp/android/util/DisplayUtil$DeviceType;

    const/4 v2, 0x1

    const-string v3, "phablet"

    const-string v4, "PHABLET"

    invoke-direct {v1, v4, v2, v3}, Lde/mrapp/android/util/DisplayUtil$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lde/mrapp/android/util/DisplayUtil$DeviceType;->PHABLET:Lde/mrapp/android/util/DisplayUtil$DeviceType;

    new-instance v2, Lde/mrapp/android/util/DisplayUtil$DeviceType;

    const/4 v3, 0x2

    const-string v4, "tablet"

    const-string v5, "TABLET"

    invoke-direct {v2, v5, v3, v4}, Lde/mrapp/android/util/DisplayUtil$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lde/mrapp/android/util/DisplayUtil$DeviceType;->TABLET:Lde/mrapp/android/util/DisplayUtil$DeviceType;

    filled-new-array {v0, v1, v2}, [Lde/mrapp/android/util/DisplayUtil$DeviceType;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/util/DisplayUtil$DeviceType;->$VALUES:[Lde/mrapp/android/util/DisplayUtil$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lde/mrapp/android/util/DisplayUtil$DeviceType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lde/mrapp/android/util/DisplayUtil$DeviceType;
    .locals 5

    .line 1
    invoke-static {}, Lde/mrapp/android/util/DisplayUtil$DeviceType;->values()[Lde/mrapp/android/util/DisplayUtil$DeviceType;

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
    invoke-virtual {v3}, Lde/mrapp/android/util/DisplayUtil$DeviceType;->getValue()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    return-object v3

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lde/mrapp/android/util/DisplayUtil$DeviceType;->PHONE:Lde/mrapp/android/util/DisplayUtil$DeviceType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/android/util/DisplayUtil$DeviceType;
    .locals 1

    const-class v0, Lde/mrapp/android/util/DisplayUtil$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/util/DisplayUtil$DeviceType;

    return-object p0
.end method

.method public static values()[Lde/mrapp/android/util/DisplayUtil$DeviceType;
    .locals 1

    sget-object v0, Lde/mrapp/android/util/DisplayUtil$DeviceType;->$VALUES:[Lde/mrapp/android/util/DisplayUtil$DeviceType;

    invoke-virtual {v0}, [Lde/mrapp/android/util/DisplayUtil$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/android/util/DisplayUtil$DeviceType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/util/DisplayUtil$DeviceType;->value:Ljava/lang/String;

    return-object v0
.end method
