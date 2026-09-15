.class abstract Lcom/stryker/terminal/DifferentTouchInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/DifferentTouchInput$AutoDetectTouchInput;,
        Lcom/stryker/terminal/DifferentTouchInput$GingerbreadTouchInput;,
        Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;,
        Lcom/stryker/terminal/DifferentTouchInput$SingleTouchInput;,
        Lcom/stryker/terminal/DifferentTouchInput$JellyBeanInputManager;,
        Lcom/stryker/terminal/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;,
        Lcom/stryker/terminal/DifferentTouchInput$IcsTouchInputWithHistory;,
        Lcom/stryker/terminal/DifferentTouchInput$IcsTouchInput;
    }
.end annotation


# static fields
.field public static ExternalMouseDetected:I

.field private static gamepadIds:[I

.field public static touchInput:Lcom/stryker/terminal/DifferentTouchInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/stryker/terminal/DifferentTouchInput;->getInstance()Lcom/stryker/terminal/DifferentTouchInput;

    move-result-object v0

    sput-object v0, Lcom/stryker/terminal/DifferentTouchInput;->touchInput:Lcom/stryker/terminal/DifferentTouchInput;

    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lcom/stryker/terminal/DifferentTouchInput;->gamepadIds:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$1500()[I
    .locals 1

    sget-object v0, Lcom/stryker/terminal/DifferentTouchInput;->gamepadIds:[I

    return-object v0
.end method

.method public static getInstance()Lcom/stryker/terminal/DifferentTouchInput;
    .locals 9

    const-string v0, "SDL"

    const-class v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getPointerCount"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    move v4, v8

    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getPointerId"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v8

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device board: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/stryker/terminal/DifferentTouchInput$AutoDetectTouchInput$Holder;->access$000()Lcom/stryker/terminal/DifferentTouchInput$AutoDetectTouchInput;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    :try_start_1
    invoke-static {}, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$Holder;->access$200()Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Lcom/stryker/terminal/DifferentTouchInput$SingleTouchInput$Holder;->access$300()Lcom/stryker/terminal/DifferentTouchInput$SingleTouchInput;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    invoke-static {}, Lcom/stryker/terminal/DifferentTouchInput$SingleTouchInput$Holder;->access$300()Lcom/stryker/terminal/DifferentTouchInput$SingleTouchInput;

    move-result-object v0

    return-object v0
.end method

.method public static processGamepadDeviceId(Landroid/view/InputDevice;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    and-int/lit8 v2, v1, 0x10

    .line 10
    .line 11
    const/16 v3, 0x10

    .line 12
    .line 13
    if-eq v2, v3, :cond_1

    .line 14
    .line 15
    const/16 v2, 0x401

    .line 16
    .line 17
    and-int/2addr v1, v2

    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/view/InputDevice;->getId()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    move v1, v0

    .line 26
    :cond_2
    sget-object v2, Lcom/stryker/terminal/DifferentTouchInput;->gamepadIds:[I

    .line 27
    .line 28
    array-length v3, v2

    .line 29
    if-ge v1, v3, :cond_3

    .line 30
    .line 31
    aget v2, v2, v1

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    if-ne v2, p0, :cond_2

    .line 36
    .line 37
    return v1

    .line 38
    :cond_3
    move v1, v0

    .line 39
    :goto_0
    sget-object v2, Lcom/stryker/terminal/DifferentTouchInput;->gamepadIds:[I

    .line 40
    .line 41
    array-length v3, v2

    .line 42
    if-ge v1, v3, :cond_5

    .line 43
    .line 44
    aget v2, v2, v1

    .line 45
    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    const-string v0, "libSDL: gamepad added: deviceId "

    .line 49
    .line 50
    const-string v2, " gamepadId "

    .line 51
    .line 52
    invoke-static {v0, p0, v2}, Landroid/support/v4/media/session/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    add-int/lit8 v2, v1, 0x1

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v3, "SDL"

    .line 66
    .line 67
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    sget-object v0, Lcom/stryker/terminal/DifferentTouchInput;->gamepadIds:[I

    .line 71
    .line 72
    aput p0, v0, v1

    .line 73
    .line 74
    return v2

    .line 75
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    return v0
.end method

.method public static registerInputManagerCallbacks(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/stryker/terminal/DifferentTouchInput$JellyBeanInputManager$Holder;->access$1300()Lcom/stryker/terminal/DifferentTouchInput$JellyBeanInputManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stryker/terminal/DifferentTouchInput$JellyBeanInputManager;->register(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract process(Landroid/view/MotionEvent;)V
.end method

.method public abstract processGenericEvent(Landroid/view/MotionEvent;)V
.end method
