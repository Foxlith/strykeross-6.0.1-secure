.class Lcom/stryker/terminal/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;
.super Lcom/stryker/terminal/DifferentTouchInput$IcsTouchInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/DifferentTouchInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrappyMtkTabletWithBrokenTouchDrivers"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/stryker/terminal/DifferentTouchInput$IcsTouchInput;-><init>(Lcom/stryker/terminal/DifferentTouchInput$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stryker/terminal/DifferentTouchInput$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/stryker/terminal/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/stryker/terminal/DifferentTouchInput$IcsTouchInput;->process(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public processGenericEvent(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/stryker/terminal/DifferentTouchInput$IcsTouchInput;->processGenericEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method
