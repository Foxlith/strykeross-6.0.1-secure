.class public final Lcom/stryker/terminal/frontend/session/view/TerminalView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final KEY_EVENT_SOURCE_SOFT_KEYBOARD:I = 0x0

.field public static final KEY_EVENT_SOURCE_VIRTUAL_KEYBOARD:I = -0x1

.field private static final LOG_KEY_EVENTS:Z = false

.field private static toast:Landroid/widget/Toast;


# instance fields
.field private context:Landroid/content/Context;

.field private mAccessibilityEnabled:Z

.field private mActionMode:Landroid/view/ActionMode;

.field mClient:Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

.field mCombiningAccent:I

.field mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

.field private mEnableWordBasedIme:Z

.field mGestureRecognizer:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

.field mInitialTextSelection:Z

.field mIsDraggingLeftSelection:Z

.field mIsSelectingText:Z

.field private mLeftSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

.field private mMouseScrollStartX:I

.field private mMouseScrollStartY:I

.field private mMouseStartDownTime:J

.field mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

.field private mRightSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

.field mScaleFactor:F

.field mScrollRemainder:F

.field mScroller:Landroid/widget/Scroller;

.field mSelX1:I

.field mSelX2:I

.field mSelY1:I

.field mSelY2:I

.field mSelectionDownX:F

.field mSelectionDownY:F

.field mTermSession:Lcom/stryker/terminal/backend/TerminalSession;

.field mTextSize:I

.field mTopRow:I

.field private onAutoCompleteListener:Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

.field private onTextSize:Lcom/stryker/terminal/frontend/session/terminal/OnTextSize;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsSelectingText:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    iput v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX2:I

    iput v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY1:I

    iput v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY2:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mScaleFactor:F

    iput v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mMouseScrollStartX:I

    iput v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mMouseScrollStartY:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mMouseStartDownTime:J

    iput-boolean v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEnableWordBasedIme:Z

    invoke-direct {p0, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->commonInit(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsSelectingText:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX2:I

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY1:I

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY2:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mScaleFactor:F

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mMouseScrollStartX:I

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mMouseScrollStartY:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mMouseStartDownTime:J

    iput-boolean p2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEnableWordBasedIme:Z

    invoke-direct {p0, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->commonInit(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/stryker/terminal/frontend/session/view/TerminalView;)Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->onAutoCompleteListener:Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

    return-object p0
.end method

.method private commonInit(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->context:Landroid/content/Context;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    new-instance v1, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;

    invoke-direct {v1, p0}, Lcom/stryker/terminal/frontend/session/view/TerminalView$1;-><init>(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V

    invoke-direct {v0, p1, v1}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;-><init>(Landroid/content/Context;Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;)V

    iput-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mGestureRecognizer:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mAccessibilityEnabled:Z

    return-void
.end method


# virtual methods
.method public attachSession(Lcom/stryker/terminal/backend/TerminalSession;)Z
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTermSession:Lcom/stryker/terminal/backend/TerminalSession;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iput v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTermSession:Lcom/stryker/terminal/backend/TerminalSession;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    iput v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mCombiningAccent:I

    invoke-virtual {p0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->updateSize()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    return p1
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    :goto_0
    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getScreen()Lcom/stryker/terminal/backend/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalBuffer;->getActiveRows()I

    move-result v0

    iget v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    iget v1, v1, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getScreen()Lcom/stryker/terminal/backend/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalBuffer;->getActiveRows()I

    move-result v0

    :goto_0
    return v0
.end method

.method public doScroll(Landroid/view/MotionEvent;I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    move v3, v0

    :goto_1
    if-ge v3, p2, :cond_7

    iget-object v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-virtual {v4}, Lcom/stryker/terminal/backend/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_1

    const/16 v4, 0x40

    goto :goto_2

    :cond_1
    const/16 v4, 0x41

    :goto_2
    invoke-virtual {p0, p1, v4, v1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_5

    :cond_2
    iget-object v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-virtual {v4}, Lcom/stryker/terminal/backend/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_3

    const/16 v4, 0x13

    goto :goto_3

    :cond_3
    const/16 v4, 0x14

    :goto_3
    invoke-virtual {p0, v4, v0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->handleKeyCode(II)Z

    goto :goto_5

    :cond_4
    iget-object v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-virtual {v4}, Lcom/stryker/terminal/backend/TerminalEmulator;->getScreen()Lcom/stryker/terminal/backend/TerminalBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stryker/terminal/backend/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v4

    neg-int v4, v4

    iget v5, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    if-eqz v2, :cond_5

    const/4 v6, -0x1

    goto :goto_4

    :cond_5
    move v6, v1

    :goto_4
    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public getCurrentSession()Lcom/stryker/terminal/backend/TerminalSession;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTermSession:Lcom/stryker/terminal/backend/TerminalSession;

    return-object v0
.end method

.method public getCursorAbsoluteX()I
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->getCursorX()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCursorAbsoluteY()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    invoke-virtual {v1}, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->getCursorY()F

    move-result v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public getOnAutoCompleteListener()Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->onAutoCompleteListener:Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTextSize:I

    return v0
.end method

.method public handleKeyCode(II)Z
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTermSession:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalSession;->getEmulator()Lcom/stryker/terminal/backend/TerminalEmulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->isCursorKeysApplicationMode()Z

    move-result v1

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->isKeypadApplicationMode()Z

    move-result v0

    invoke-static {p1, p2, v1, v0}, Lcom/stryker/terminal/backend/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTermSession:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-virtual {v1, v0}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->scrollToBottomIfNeeded()V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->onAutoCompleteListener:Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;->onKeyCode(II)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public inputCodePoint(IIZZ)V
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTermSession:Lcom/stryker/terminal/backend/TerminalSession;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mClient:Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    invoke-interface {p3}, Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;->readControlKey()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    move p3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p3, v0

    :goto_1
    if-nez p4, :cond_4

    iget-object p4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mClient:Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    invoke-interface {p4}, Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;->readAltKey()Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :cond_4
    :goto_2
    iget-object p4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mClient:Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTermSession:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-interface {p4, p2, p3, v2}, Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;->onCodePoint(IZLcom/stryker/terminal/backend/TerminalSession;)Z

    move-result p4

    if-eqz p4, :cond_5

    return-void

    :cond_5
    const/16 p4, 0x5e

    if-eqz p3, :cond_14

    const/16 p3, 0x61

    if-lt p2, p3, :cond_6

    const/16 p3, 0x7a

    if-gt p2, p3, :cond_6

    add-int/lit8 p2, p2, -0x60

    goto/16 :goto_9

    :cond_6
    const/16 p3, 0x41

    if-lt p2, p3, :cond_7

    const/16 p3, 0x5a

    if-gt p2, p3, :cond_7

    add-int/lit8 p2, p2, -0x40

    goto :goto_9

    :cond_7
    const/16 p3, 0x20

    if-eq p2, p3, :cond_13

    const/16 p3, 0x32

    if-ne p2, p3, :cond_8

    goto :goto_8

    :cond_8
    const/16 p3, 0x5b

    if-eq p2, p3, :cond_12

    const/16 p3, 0x33

    if-ne p2, p3, :cond_9

    goto :goto_7

    :cond_9
    const/16 p3, 0x5c

    if-eq p2, p3, :cond_11

    const/16 p3, 0x34

    if-ne p2, p3, :cond_a

    goto :goto_6

    :cond_a
    const/16 p3, 0x5d

    if-eq p2, p3, :cond_10

    const/16 p3, 0x35

    if-ne p2, p3, :cond_b

    goto :goto_5

    :cond_b
    if-eq p2, p4, :cond_f

    const/16 p3, 0x36

    if-ne p2, p3, :cond_c

    goto :goto_4

    :cond_c
    const/16 p3, 0x5f

    if-eq p2, p3, :cond_e

    const/16 p3, 0x37

    if-eq p2, p3, :cond_e

    const/16 p3, 0x2f

    if-ne p2, p3, :cond_d

    goto :goto_3

    :cond_d
    const/16 p3, 0x38

    if-ne p2, p3, :cond_14

    const/16 p2, 0x7f

    goto :goto_9

    :cond_e
    :goto_3
    const/16 p2, 0x1f

    goto :goto_9

    :cond_f
    :goto_4
    const/16 p2, 0x1e

    goto :goto_9

    :cond_10
    :goto_5
    const/16 p2, 0x1d

    goto :goto_9

    :cond_11
    :goto_6
    const/16 p2, 0x1c

    goto :goto_9

    :cond_12
    :goto_7
    const/16 p2, 0x1b

    goto :goto_9

    :cond_13
    :goto_8
    move p2, v1

    :cond_14
    :goto_9
    const/4 p3, -0x1

    if-le p2, p3, :cond_19

    if-lez p1, :cond_17

    const/16 p1, 0x2c6

    if-eq p2, p1, :cond_18

    const/16 p1, 0x2cb

    if-eq p2, p1, :cond_16

    const/16 p1, 0x2dc

    if-eq p2, p1, :cond_15

    goto :goto_a

    :cond_15
    const/16 p4, 0x7e

    goto :goto_b

    :cond_16
    const/16 p4, 0x60

    goto :goto_b

    :cond_17
    :goto_a
    move p4, p2

    :cond_18
    :goto_b
    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTermSession:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-virtual {p1, v0, p4}, Lcom/stryker/terminal/backend/TerminalSession;->writeCodePoint(ZI)V

    invoke-virtual {p0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->scrollToBottomIfNeeded()V

    :cond_19
    return-void
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEnableWordBasedIme:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x80000

    :goto_0
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    :cond_0
    const/16 v0, 0x91

    goto :goto_0

    :goto_1
    const/high16 v0, 0x2000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    new-instance p1, Lcom/stryker/terminal/frontend/session/view/TerminalView$2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p0, v0}, Lcom/stryker/terminal/frontend/session/view/TerminalView$2;-><init>(Lcom/stryker/terminal/frontend/session/view/TerminalView;Landroid/view/View;Z)V

    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    if-nez v1, :cond_0

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    iget v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY1:I

    iget v5, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY2:I

    iget v6, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    iget v7, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX2:I

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->render(Lcom/stryker/terminal/backend/TerminalEmulator;Landroid/graphics/Canvas;IIIII)V

    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsSelectingText:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mLeftSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v3, v3, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    iget v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY1:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v5, v4, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int/2addr v3, v5

    iget v4, v4, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mLeftSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    sub-int v5, v2, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mLeftSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    iget v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX2:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v3, v3, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY2:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v4, v3, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int/2addr v1, v4

    iget v3, v3, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRightSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    add-int/2addr v0, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRightSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    if-eqz v0, :cond_1

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mClient:Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTermSession:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-interface {v0, p1, p2, v2}, Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;->onKeyDown(ILandroid/view/KeyEvent;Lcom/stryker/terminal/backend/TerminalSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mClient:Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTermSession:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    return v1

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mClient:Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    invoke-interface {v2}, Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;->readControlKey()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    :goto_0
    move v2, v1

    :goto_1
    and-int/lit8 v4, v0, 0x10

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mClient:Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    invoke-interface {v4}, Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;->readAltKey()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    move v4, v3

    goto :goto_3

    :cond_8
    :goto_2
    move v4, v1

    :goto_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mClient:Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    invoke-interface {v5}, Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;->readShiftKey()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    move v5, v3

    goto :goto_5

    :cond_a
    :goto_4
    move v5, v1

    :goto_5
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_b

    move v6, v1

    goto :goto_6

    :cond_b
    move v6, v3

    :goto_6
    if-eqz v2, :cond_c

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_7

    :cond_c
    move v7, v3

    :goto_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v8

    const/high16 v9, -0x80000000

    if-nez v8, :cond_d

    if-eqz v4, :cond_e

    :cond_d
    or-int/2addr v7, v9

    :cond_e
    if-eqz v5, :cond_f

    const/high16 v5, 0x20000000

    or-int/2addr v7, v5

    :cond_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isNumLockOn()Z

    move-result v5

    if-eqz v5, :cond_10

    const/high16 v5, 0x10000000

    or-int/2addr v7, v5

    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isFunctionPressed()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {p0, p1, v7}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->handleKeyCode(II)Z

    move-result p1

    if-eqz p1, :cond_11

    return v1

    :cond_11
    if-eqz v6, :cond_12

    const/16 p1, 0x7000

    goto :goto_8

    :cond_12
    const/16 p1, 0x7012

    :goto_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    not-int p1, p1

    and-int/2addr p1, v5

    invoke-virtual {p2, p1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result p1

    if-nez p1, :cond_13

    return v3

    :cond_13
    iget v5, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mCombiningAccent:I

    and-int v6, p1, v9

    if-eqz v6, :cond_15

    if-eqz v5, :cond_14

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    iget v7, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mCombiningAccent:I

    invoke-virtual {p0, v6, v7, v2, v4}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->inputCodePoint(IIZZ)V

    :cond_14
    const v2, 0x7fffffff

    and-int/2addr p1, v2

    iput p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mCombiningAccent:I

    goto :goto_9

    :cond_15
    if-eqz v5, :cond_17

    invoke-static {v5, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v6

    if-lez v6, :cond_16

    move p1, v6

    :cond_16
    iput v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mCombiningAccent:I

    :cond_17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    invoke-virtual {p0, v6, p1, v2, v4}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->inputCodePoint(IIZZ)V

    :goto_9
    iget p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mCombiningAccent:I

    if-eq p1, v5, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_18
    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->onAutoCompleteListener:Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

    if-eqz p1, :cond_19

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result p1

    int-to-char p1, p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_19

    iget-object p2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->onAutoCompleteListener:Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

    new-instance v0, Ljava/lang/String;

    new-array v2, v1, [C

    aput-char p1, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p2, v0}, Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;->onCompletionRequired(Ljava/lang/String;)V

    :cond_19
    return v1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsSelectingText:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->toggleSelectingText(Landroid/view/MotionEvent;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mClient:Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mClient:Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    invoke-interface {v0, p1, p2}, Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public onScreenUpdated()V
    .locals 7

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getScreen()Lcom/stryker/terminal/backend/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    iget v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    neg-int v5, v0

    if-ge v4, v5, :cond_2

    iput v5, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    :cond_2
    iget-boolean v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsSelectingText:Z

    if-nez v4, :cond_3

    if-eqz v1, :cond_7

    :cond_3
    iget-object v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-virtual {v4}, Lcom/stryker/terminal/backend/TerminalEmulator;->getScrollCounter()I

    move-result v4

    iget v5, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    neg-int v6, v5

    add-int/2addr v6, v4

    if-le v6, v0, :cond_5

    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsSelectingText:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->toggleSelectingText(Landroid/view/MotionEvent;)V

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    sub-int/2addr v5, v4

    iput v5, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    iget v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY1:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY1:I

    iget v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY2:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY2:I

    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    :cond_6
    if-nez v2, :cond_9

    :cond_7
    iget v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    if-eqz v0, :cond_9

    const/4 v1, -0x3

    if-ge v0, v1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    :cond_8
    iput v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    :cond_9
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->clearScrollCounter()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getScreen()Lcom/stryker/terminal/backend/TerminalBuffer;

    move-result-object v0

    iget v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    iget v4, v2, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iget v2, v2, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/stryker/terminal/backend/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mAccessibilityEnabled:Z

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->updateSize()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-boolean v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsSelectingText:Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v5, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v5, v5, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    float-to-int v2, v2

    iget v5, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    add-int/2addr v2, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v6, v6, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_7

    if-eq v0, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mInitialTextSelection:Z

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelectionDownX:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelectionDownY:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v3, v3, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v3

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    iget-object v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v3, v3, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelectionDownX:F

    int-to-float v5, v0

    iget-object v6, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v7, v6, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr v5, v7

    add-float/2addr v5, v3

    iput v5, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelectionDownX:F

    iget v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelectionDownY:F

    iget v5, v6, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int/2addr v5, v2

    int-to-float v5, v5

    add-float/2addr v3, v5

    iput v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelectionDownY:F

    iget-boolean v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsDraggingLeftSelection:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    iget v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY1:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY1:I

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX2:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX2:I

    iget v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY2:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY2:I

    :goto_0
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    iget v0, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iget v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    iget v0, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iget v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX2:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX2:I

    iget v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY1:I

    iget v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY2:I

    if-ne v2, v3, :cond_4

    iget v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    if-gt v4, v0, :cond_5

    :cond_4
    if-le v2, v3, :cond_6

    :cond_5
    iget-boolean v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsDraggingLeftSelection:Z

    xor-int/2addr v4, v1

    iput-boolean v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsDraggingLeftSelection:Z

    iget v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    iput v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY1:I

    iput v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX2:I

    iput v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY2:I

    :cond_6
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_7
    iput-boolean v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mInitialTextSelection:Z

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    sub-int v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY1:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v3, v0

    iget v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX2:I

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY2:I

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v2, v0

    if-gt v3, v2, :cond_9

    move v4, v1

    :cond_9
    iput-boolean v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsDraggingLeftSelection:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelectionDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelectionDownY:F

    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mGestureRecognizer:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v1

    :cond_b
    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    if-eqz v2, :cond_d

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    :cond_c
    return v1

    :cond_d
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->pasteFromClipboard()V

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_10

    if-eq v0, v1, :cond_10

    if-eq v0, v3, :cond_f

    goto :goto_3

    :cond_f
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0, v1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_3

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_2

    :cond_11
    move v0, v4

    :goto_2
    invoke-virtual {p0, p1, v4, v0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    :goto_3
    return v1
.end method

.method public pasteFromClipboard()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->paste(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public scrollToBottomIfNeeded()V
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->clearScrollCounter()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public sendMouseEventCode(Landroid/view/MotionEvent;IZ)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v1, v1, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v3, v2, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v2, v2, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    if-eqz p3, :cond_2

    const/16 v2, 0x41

    if-eq p2, v2, :cond_0

    const/16 v2, 0x40

    if-ne p2, v2, :cond_2

    :cond_0
    iget-wide v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mMouseStartDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mMouseScrollStartX:I

    iget v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mMouseScrollStartY:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mMouseStartDownTime:J

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mMouseScrollStartX:I

    iput v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mMouseScrollStartY:I

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/stryker/terminal/backend/TerminalEmulator;->sendMouseEvent(IIIZ)V

    return-void
.end method

.method public setEnableWordBasedIme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEnableWordBasedIme:Z

    return-void
.end method

.method public setOnAutoCompleteListener(Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->onAutoCompleteListener:Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    instance-of v0, p1, Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->setTerminalViewClient(Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;)V

    :cond_0
    return-void
.end method

.method public setOnTextSize(Lcom/stryker/terminal/frontend/session/terminal/OnTextSize;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->onTextSize:Lcom/stryker/terminal/frontend/session/terminal/OnTextSize;

    return-void
.end method

.method public setTerminalViewClient(Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mClient:Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    iput p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTextSize:I

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mTypeface:Landroid/graphics/Typeface;

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    invoke-virtual {p0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->updateSize()V

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->onTextSize:Lcom/stryker/terminal/frontend/session/terminal/OnTextSize;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->getTextSize()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/stryker/terminal/frontend/session/terminal/OnTextSize;->onTextSize(I)V

    :cond_1
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v1, v1, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mTextSize:I

    invoke-direct {v0, v1, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    invoke-virtual {p0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->updateSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public toggleSelectingText(Landroid/view/MotionEvent;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsSelectingText:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsSelectingText:Z

    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mClient:Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;

    invoke-interface {v2, v0}, Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;->copyModeChanged(Z)V

    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsSelectingText:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mLeftSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/stryker/terminal/R$drawable;->text_select_handle_left_material:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mLeftSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/stryker/terminal/R$drawable;->text_select_handle_right_material:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRightSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v2, v2, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, -0x28

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v2, v2

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v2, v2, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    float-to-int v2, v3

    iget v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    add-int/2addr v2, v3

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX2:I

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    iput v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY2:I

    iput v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY1:I

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getScreen()Lcom/stryker/terminal/backend/TerminalBuffer;

    move-result-object v0

    iget v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    iget v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY1:I

    invoke-virtual {v0, v2, v3, v2, v3}, Lcom/stryker/terminal/backend/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    iget v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    const-string v3, ""

    if-lez v2, :cond_2

    add-int/lit8 v4, v2, -0x1

    iget v5, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY1:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v5, v2, v5}, Lcom/stryker/terminal/backend/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    goto :goto_1

    :cond_2
    :goto_2
    iget v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX2:I

    iget-object v4, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    iget v4, v4, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY1:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v4, v5, v2, v5}, Lcom/stryker/terminal/backend/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX2:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX2:I

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mInitialTextSelection:Z

    iput-boolean v1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mIsDraggingLeftSelection:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelectionDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelectionDownY:F

    new-instance p1, Lcom/stryker/terminal/frontend/session/view/TerminalView$3;

    invoke-direct {p1, p0}, Lcom/stryker/terminal/frontend/session/view/TerminalView$3;-><init>(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/TerminalView$4;

    invoke-direct {v0, p0, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView$4;-><init>(Lcom/stryker/terminal/frontend/session/view/TerminalView;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY2:I

    iput p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX2:I

    iput p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelY1:I

    iput p1, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mSelX1:I

    goto :goto_3

    :goto_4
    return-void
.end method

.method public updateSize()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTermSession:Lcom/stryker/terminal/backend/TerminalSession;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v2, v2, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mRenderer:Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;

    iget v4, v3, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    sub-int/2addr v1, v4

    iget v3, v3, Lcom/stryker/terminal/frontend/session/view/TerminalRenderer;->mFontLineSpacing:I

    div-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    if-ne v0, v3, :cond_1

    iget v2, v2, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTermSession:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-virtual {v2, v0, v1}, Lcom/stryker/terminal/backend/TerminalSession;->updateSize(II)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTermSession:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalSession;->getEmulator()Lcom/stryker/terminal/backend/TerminalEmulator;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/stryker/terminal/frontend/session/view/TerminalView;->mTopRow:I

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->scrollTo(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method
