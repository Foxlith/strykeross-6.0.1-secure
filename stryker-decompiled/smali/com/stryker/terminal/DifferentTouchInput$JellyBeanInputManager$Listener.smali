.class Lcom/stryker/terminal/DifferentTouchInput$JellyBeanInputManager$Listener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/DifferentTouchInput$JellyBeanInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stryker/terminal/DifferentTouchInput$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stryker/terminal/DifferentTouchInput$JellyBeanInputManager$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 0

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/DifferentTouchInput$JellyBeanInputManager$Listener;->onInputDeviceRemoved(I)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-static {}, Lcom/stryker/terminal/DifferentTouchInput;->access$1500()[I

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    array-length v2, v2

    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/stryker/terminal/DifferentTouchInput;->access$1500()[I

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    aget v2, v2, v1

    .line 15
    .line 16
    if-ne v2, p1, :cond_0

    .line 17
    .line 18
    const-string v2, "libSDL: gamepad removed: deviceId "

    .line 19
    .line 20
    const-string v3, " gamepadId "

    .line 21
    .line 22
    invoke-static {v2, p1, v3}, Landroid/support/v4/media/session/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    add-int/lit8 v3, v1, 0x1

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "SDL"

    .line 36
    .line 37
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/stryker/terminal/DifferentTouchInput;->access$1500()[I

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    aput v0, v2, v1

    .line 45
    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method
