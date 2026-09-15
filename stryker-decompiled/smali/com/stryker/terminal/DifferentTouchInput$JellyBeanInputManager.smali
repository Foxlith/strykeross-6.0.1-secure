.class Lcom/stryker/terminal/DifferentTouchInput$JellyBeanInputManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/DifferentTouchInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JellyBeanInputManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/DifferentTouchInput$JellyBeanInputManager$Listener;,
        Lcom/stryker/terminal/DifferentTouchInput$JellyBeanInputManager$Holder;
    }
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
    invoke-direct {p0}, Lcom/stryker/terminal/DifferentTouchInput$JellyBeanInputManager;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Landroid/content/Context;)V
    .locals 2

    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    new-instance v0, Lcom/stryker/terminal/DifferentTouchInput$JellyBeanInputManager$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/DifferentTouchInput$JellyBeanInputManager$Listener;-><init>(Lcom/stryker/terminal/DifferentTouchInput$1;)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method
