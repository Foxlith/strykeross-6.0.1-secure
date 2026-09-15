.class Lcom/stryker/terminal/frontend/session/view/TerminalView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/frontend/session/view/TerminalView;->commonInit(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private doubleTapX:F

.field private doubleTapY:F

.field private draggedAfterDoubleTap:Z

.field private scrolledWithFinger:Z

.field final synthetic this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget-object v0, v0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->doubleTapX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget-object v2, v2, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v2, v2, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontWidth:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->doubleTapY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget-object v2, v2, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v2, v2, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_5

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->doubleTapX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->doubleTapY:F

    iput-boolean v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->draggedAfterDoubleTap:Z

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    const/16 v2, 0x20

    :goto_0
    invoke-virtual {v0, p1, v2, v1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->draggedAfterDoubleTap:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {v0, p1, v2, v2}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {v0, p1, v2, v1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    :cond_3
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {v0, p1, v2, v2}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->doubleTapX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->doubleTapY:F

    iput-boolean v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->draggedAfterDoubleTap:Z

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    goto :goto_0

    :cond_5
    :goto_1
    return v1
.end method

.method public onDown(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;FF)Z
    .locals 12

    iget-object p2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget-object v0, p2, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p2, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsSelectingText:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p2, p2, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    :cond_1
    iget-object p2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget-object p2, p2, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-virtual {p2}, Lcom/stryker/terminal/backend/TerminalEmulator;->isMouseTrackingActive()Z

    move-result p2

    const/high16 v0, 0x3e800000    # 0.25f

    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget-object v3, v2, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    neg-int v7, p3

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object p3, v2, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    iget p3, p3, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    neg-int v0, p3

    div-int/lit8 v10, v0, 0x2

    div-int/lit8 v11, p3, 0x2

    :goto_0
    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_1

    :cond_2
    iget v5, v2, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    const/4 v6, 0x0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    neg-int v7, p3

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object p3, v2, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-virtual {p3}, Lcom/stryker/terminal/backend/TerminalEmulator;->getScreen()Lcom/stryker/terminal/backend/TerminalBuffer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/stryker/terminal/backend/TerminalBuffer;->getActiveTranscriptRows()I

    move-result p3

    neg-int v10, p3

    const/4 v11, 0x0

    goto :goto_0

    :goto_1
    iget-object p3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView$1$1;-><init>(Lcom/stryker/terminal/frontend/session/view/TerminalView$1;ZLandroid/view/MotionEvent;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_2
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget-object v0, v0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mGestureRecognizer:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget-object v0, v0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mClient:Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    invoke-interface {v0, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;->onLongPress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget-boolean v1, v0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsSelectingText:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->toggleSelectingText(Landroid/view/MotionEvent;)V

    :cond_2
    return-void
.end method

.method public onScale(FFF)Z
    .locals 1

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget-object p2, p1, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-boolean p2, p1, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsSelectingText:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p1, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mScaleFactor:F

    mul-float/2addr p2, p3

    iput p2, p1, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mScaleFactor:F

    iget-object p3, p1, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mClient:Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    invoke-interface {p3, p2}, Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;->onScale(F)F

    move-result p2

    iput p2, p1, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mScaleFactor:F

    :cond_1
    :goto_0
    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object p2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget-object v0, p2, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean p2, p2, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsSelectingText:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->isMouseTrackingActive()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x2002

    invoke-virtual {p1, p2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    const/16 p3, 0x20

    invoke-virtual {p2, p1, p3, v1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->scrolledWithFinger:Z

    iget-object p2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget v0, p2, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mScrollRemainder:F

    add-float/2addr p3, v0

    iget-object v0, p2, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v0, v0, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v2, v0

    div-float v2, p3, v2

    float-to-int v2, v2

    mul-int/2addr v0, v2

    int-to-float v0, v0

    sub-float/2addr p3, v0

    iput p3, p2, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mScrollRemainder:F

    invoke-virtual {p2, p1, v2}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget-object v1, v0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-boolean v1, v0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsSelectingText:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->toggleSelectingText(Landroid/view/MotionEvent;)V

    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget-object v0, v0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget-object v0, v0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mClient:Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    invoke-interface {v0, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;->onSingleTapUp(Landroid/view/MotionEvent;)V

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mScrollRemainder:F

    iget-object v0, v0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget-boolean v2, v0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsSelectingText:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->scrolledWithFinger:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->this$0:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {v0, p1, v1, v1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    return v2

    :cond_0
    iput-boolean v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;->scrolledWithFinger:Z

    return v1
.end method
