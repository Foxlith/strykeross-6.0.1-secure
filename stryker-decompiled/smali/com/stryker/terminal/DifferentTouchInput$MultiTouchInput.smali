.class Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;
.super Lcom/stryker/terminal/DifferentTouchInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/DifferentTouchInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiTouchInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;,
        Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$Holder;
    }
.end annotation


# static fields
.field public static final TOUCH_EVENTS_MAX:I = 0x10


# instance fields
.field protected touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/stryker/terminal/DifferentTouchInput;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    iput-object v1, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    new-instance v3, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;-><init>(Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;Lcom/stryker/terminal/DifferentTouchInput$1;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public process(Landroid/view/MotionEvent;)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_2

    iget-object v5, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v4

    iget-boolean v6, v5, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    if-eqz v6, :cond_1

    iput-boolean v2, v5, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    iget v6, v5, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->x:I

    iget v7, v5, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->y:I

    iget v9, v5, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    iget v10, v5, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    move v5, v6

    move v6, v7

    move v7, v0

    move v8, v4

    invoke-static/range {v5 .. v10}, Lcom/stryker/terminal/DemoGLSurfaceView;->nativeMotionEvent(IIIIII)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/high16 v4, 0x44800000    # 1024.0f

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v11, v2

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v11, v5, :cond_4

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    if-lt v5, v1, :cond_3

    const/16 v5, 0xf

    :cond_3
    move v8, v5

    iget-object v5, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v8

    iput-boolean v3, v5, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->x:I

    iget-object v5, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v8

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->y:I

    iget-object v5, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v8

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, v5, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    iget-object v5, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v8

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, v5, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    iget-object v5, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v8

    iget v6, v5, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->x:I

    iget v7, v5, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->y:I

    iget v9, v5, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    iget v10, v5, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    move v5, v6

    move v6, v7

    move v7, v0

    invoke-static/range {v5 .. v10}, Lcom/stryker/terminal/DemoGLSurfaceView;->nativeMotionEvent(IIIIII)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v5, 0x6

    const/4 v6, 0x2

    if-eq v0, v6, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v7, 0x5

    if-eq v0, v7, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v5, :cond_d

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v5, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v5, 0xff00

    and-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_6
    const/4 v0, -0x1

    :goto_2
    move v5, v2

    :goto_3
    if-ge v5, v1, :cond_d

    move v7, v2

    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-ge v7, v8, :cond_8

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    if-ne v5, v8, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-lt v7, v8, :cond_9

    iget-object v7, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v7, v7, v5

    iget-boolean v8, v7, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    if-eqz v8, :cond_c

    const/4 v9, 0x1

    iput-boolean v2, v7, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    :goto_6
    iget v8, v7, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->x:I

    iget v10, v7, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->y:I

    iget v11, v7, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    iget v12, v7, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    move v7, v8

    move v8, v10

    move v10, v5

    invoke-static/range {v7 .. v12}, Lcom/stryker/terminal/DemoGLSurfaceView;->nativeMotionEvent(IIIIII)V

    goto :goto_8

    :cond_9
    if-ne v0, v5, :cond_a

    iget-object v8, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v9, v8, v0

    iget-boolean v9, v9, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    if-eqz v9, :cond_a

    aget-object v8, v8, v5

    iput-boolean v2, v8, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    move v9, v3

    goto :goto_7

    :cond_a
    iget-object v8, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v8, v8, v5

    iget-boolean v9, v8, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    if-eqz v9, :cond_b

    move v9, v6

    goto :goto_7

    :cond_b
    iput-boolean v3, v8, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    move v9, v2

    :goto_7
    iget-object v8, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v8, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v8, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->x:I

    iget-object v8, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v8, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v8, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->y:I

    iget-object v8, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v8, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v10

    mul-float/2addr v10, v4

    float-to-int v10, v10

    iput v10, v8, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    iget-object v8, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v8, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    iput v7, v8, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    iget-object v7, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v7, v7, v5

    goto :goto_6

    :cond_c
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_d
    return-void
.end method

.method public processGenericEvent(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;->process(Landroid/view/MotionEvent;)V

    return-void
.end method
