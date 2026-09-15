.class Lcom/stryker/terminal/DifferentTouchInput$IcsTouchInputWithHistory;
.super Lcom/stryker/terminal/DifferentTouchInput$IcsTouchInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/DifferentTouchInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IcsTouchInputWithHistory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/DifferentTouchInput$IcsTouchInputWithHistory$Holder;
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
    invoke-direct {p0}, Lcom/stryker/terminal/DifferentTouchInput$IcsTouchInputWithHistory;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lt v1, v2, :cond_2

    move v1, v0

    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v5

    const/high16 v6, 0x44800000    # 1024.0f

    mul-float/2addr v5, v6

    float-to-int v7, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalSize(I)F

    move-result v5

    mul-float/2addr v5, v6

    float-to-int v8, v5

    move v5, v1

    move v6, v7

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/stryker/terminal/DemoGLSurfaceView;->nativeMotionEvent(IIIIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-super {p0, p1}, Lcom/stryker/terminal/DifferentTouchInput$IcsTouchInput;->process(Landroid/view/MotionEvent;)V

    return-void
.end method
