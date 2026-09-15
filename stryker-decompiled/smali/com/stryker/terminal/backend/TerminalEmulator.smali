.class public final Lcom/stryker/terminal/backend/TerminalEmulator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;
    }
.end annotation


# static fields
.field public static final CURSOR_STYLE_BAR:I = 0x2

.field public static final CURSOR_STYLE_BLOCK:I = 0x0

.field public static final CURSOR_STYLE_UNDERLINE:I = 0x1

.field private static final DECSET_BIT_APPLICATION_CURSOR_KEYS:I = 0x1

.field private static final DECSET_BIT_APPLICATION_KEYPAD:I = 0x20

.field private static final DECSET_BIT_AUTOWRAP:I = 0x8

.field private static final DECSET_BIT_BRACKETED_PASTE_MODE:I = 0x400

.field private static final DECSET_BIT_LEFTRIGHT_MARGIN_MODE:I = 0x800

.field private static final DECSET_BIT_MOUSE_PROTOCOL_SGR:I = 0x200

.field private static final DECSET_BIT_MOUSE_TRACKING_BUTTON_EVENT:I = 0x80

.field private static final DECSET_BIT_MOUSE_TRACKING_PRESS_RELEASE:I = 0x40

.field private static final DECSET_BIT_ORIGIN_MODE:I = 0x4

.field private static final DECSET_BIT_RECTANGULAR_CHANGEATTRIBUTE:I = 0x1000

.field private static final DECSET_BIT_REVERSE_VIDEO:I = 0x2

.field private static final DECSET_BIT_SEND_FOCUS_EVENTS:I = 0x100

.field private static final DECSET_BIT_SHOWING_CURSOR:I = 0x10

.field private static final ESC:I = 0x1

.field private static final ESC_CSI:I = 0x6

.field private static final ESC_CSI_ARGS_ASTERIX:I = 0x10

.field private static final ESC_CSI_ARGS_SPACE:I = 0xf

.field private static final ESC_CSI_BIGGERTHAN:I = 0xc

.field private static final ESC_CSI_DOLLAR:I = 0x8

.field private static final ESC_CSI_DOUBLE_QUOTE:I = 0x11

.field private static final ESC_CSI_EXCLAMATION:I = 0x13

.field private static final ESC_CSI_QUESTIONMARK:I = 0x7

.field private static final ESC_CSI_QUESTIONMARK_ARG_DOLLAR:I = 0xe

.field private static final ESC_CSI_SINGLE_QUOTE:I = 0x12

.field private static final ESC_NONE:I = 0x0

.field private static final ESC_OSC:I = 0xa

.field private static final ESC_OSC_ESC:I = 0xb

.field private static final ESC_P:I = 0xd

.field private static final ESC_PERCENT:I = 0x9

.field private static final ESC_POUND:I = 0x2

.field private static final ESC_SELECT_LEFT_PAREN:I = 0x3

.field private static final ESC_SELECT_RIGHT_PAREN:I = 0x4

.field private static final LOG_ESCAPE_SEQUENCES:Z = false

.field private static final MAX_ESCAPE_PARAMETERS:I = 0x10

.field private static final MAX_OSC_STRING_LENGTH:I = 0x2000

.field public static final MOUSE_LEFT_BUTTON:I = 0x0

.field public static final MOUSE_LEFT_BUTTON_MOVED:I = 0x20

.field public static final MOUSE_WHEELDOWN_BUTTON:I = 0x41

.field public static final MOUSE_WHEELUP_BUTTON:I = 0x40

.field public static final UNICODE_REPLACEMENT_CHAR:I = 0xfffd


# instance fields
.field private mAboutToAutoWrap:Z

.field final mAltBuffer:Lcom/stryker/terminal/backend/TerminalBuffer;

.field private mArgIndex:I

.field private final mArgs:[I

.field mBackColor:I

.field private mBottomMargin:I

.field public final mColors:Lcom/stryker/terminal/backend/TerminalColors;

.field public mColumns:I

.field private mContinueSequence:Z

.field private mCurrentDecSetFlags:I

.field private mCursorCol:I

.field private mCursorRow:I

.field private mCursorStyle:I

.field private mEffect:I

.field private mEscapeState:I

.field mForeColor:I

.field private mInsertMode:Z

.field private mIsCSIStart:Z

.field private mLastCSIArg:Ljava/lang/Integer;

.field private mLastEmittedCodePoint:I

.field private mLeftMargin:I

.field private final mMainBuffer:Lcom/stryker/terminal/backend/TerminalBuffer;

.field private final mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

.field private mRightMargin:I

.field public mRows:I

.field private mSavedDecSetFlags:I

.field private final mSavedStateAlt:Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

.field private final mSavedStateMain:Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

.field private mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

.field private mScrollCounter:I

.field private final mSession:Lcom/stryker/terminal/backend/TerminalOutput;

.field private mTabStop:[Z

.field private mTitle:Ljava/lang/String;

.field private final mTitleStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTopMargin:I

.field private mUseLineDrawingG0:Z

.field private mUseLineDrawingG1:Z

.field private mUseLineDrawingUsesG0:Z

.field private mUtf8Index:B

.field private final mUtf8InputBuffer:[B

.field private mUtf8ToFollow:B


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/backend/TerminalOutput;III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    const/4 v0, 0x0

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorStyle:I

    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgs:[I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    new-instance v1, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

    invoke-direct {v1}, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;-><init>()V

    iput-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedStateMain:Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

    new-instance v1, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

    invoke-direct {v1}, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;-><init>()V

    iput-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedStateAlt:Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScrollCounter:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8InputBuffer:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLastEmittedCodePoint:I

    new-instance v0, Lcom/stryker/terminal/backend/TerminalColors;

    invoke-direct {v0}, Lcom/stryker/terminal/backend/TerminalColors;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColors:Lcom/stryker/terminal/backend/TerminalColors;

    iput-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    new-instance p1, Lcom/stryker/terminal/backend/TerminalBuffer;

    invoke-direct {p1, p2, p4, p3}, Lcom/stryker/terminal/backend/TerminalBuffer;-><init>(III)V

    iput-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mMainBuffer:Lcom/stryker/terminal/backend/TerminalBuffer;

    iput-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    new-instance p1, Lcom/stryker/terminal/backend/TerminalBuffer;

    invoke-direct {p1, p2, p3, p3}, Lcom/stryker/terminal/backend/TerminalBuffer;-><init>(III)V

    iput-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAltBuffer:Lcom/stryker/terminal/backend/TerminalBuffer;

    iput p3, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    iput p2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTabStop:[Z

    invoke-virtual {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->reset()V

    return-void
.end method

.method private blockClear(III)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(IIII)V

    return-void
.end method

.method private blockClear(IIII)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    const/16 v5, 0x20

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getStyle()J

    move-result-wide v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockSet(IIIIIJ)V

    return-void
.end method

.method private collectOSCArgs(I)V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->unknownSequence(I)V

    :goto_0
    return-void
.end method

.method private continueSequence(I)V
    .locals 0

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEscapeState:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mContinueSequence:Z

    return-void
.end method

.method private doCsi(I)V
    .locals 9

    const/16 v0, 0x24

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x27

    if-eq p1, v0, :cond_19

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_18

    const/16 v0, 0x50

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_17

    const/16 v0, 0x58

    if-eq p1, v0, :cond_16

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_13

    const/16 v0, 0x53

    if-eq p1, v0, :cond_12

    const/16 v0, 0x54

    if-eq p1, v0, :cond_10

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x3

    const/16 v3, 0xc

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->parseArg(I)V

    goto/16 :goto_e

    :pswitch_0
    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->restoreCursor()V

    goto/16 :goto_e

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_5

    goto/16 :goto_e

    :pswitch_2
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_3
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_1b

    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_e

    :pswitch_4
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    const-string v0, "\u001b]l\u001b\\"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_5
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    const-string v0, "\u001b]LIconLabel\u001b\\"

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\u001b[9;%d;%dt"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\u001b[8;%d;%dt"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    mul-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\u001b[4;%d;%dt"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    const-string v0, "\u001b[3;0;0t"

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    const-string v0, "\u001b[1t"

    goto :goto_0

    :pswitch_8
    const/16 p1, 0x800

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result p1

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    sub-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    add-int/2addr p1, v2

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg1(I)I

    move-result v0

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    :goto_1
    invoke-direct {p0, v1, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_e

    :cond_3
    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->saveCursor()V

    goto/16 :goto_e

    :pswitch_9
    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result p1

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    sub-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    add-int/2addr p1, v4

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-direct {p0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg1(I)I

    move-result v0

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    goto :goto_1

    :pswitch_a
    invoke-direct {p0, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    goto/16 :goto_e

    :cond_4
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\u001b[%d;%dR"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const/4 p1, 0x4

    new-array v0, p1, [B

    fill-array-data v0, :array_0

    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    invoke-virtual {v2, v0, v1, p1}, Lcom/stryker/terminal/backend/TerminalOutput;->write([BII)V

    goto/16 :goto_e

    :pswitch_b
    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->selectGraphicRendition()V

    goto/16 :goto_e

    :pswitch_c
    invoke-direct {p0, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->doSetMode(Z)V

    goto/16 :goto_e

    :pswitch_d
    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->doSetMode(Z)V

    goto/16 :goto_e

    :pswitch_e
    invoke-direct {p0, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v0, :cond_6

    goto/16 :goto_e

    :cond_6
    move p1, v1

    :goto_2
    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    if-ge p1, v0, :cond_1b

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTabStop:[Z

    aput-boolean v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTabStop:[Z

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    aput-boolean v1, p1, v0

    goto/16 :goto_e

    :pswitch_f
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_e

    :pswitch_10
    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v2

    :goto_4
    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorRow(I)V

    goto/16 :goto_e

    :pswitch_11
    invoke-direct {p0, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    const-string v0, "\u001b[?64;1;2;6;9;15;18;21;22c"

    goto/16 :goto_0

    :pswitch_12
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLastEmittedCodePoint:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    goto/16 :goto_e

    :cond_8
    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result p1

    :goto_5
    if-ge v1, p1, :cond_1b

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLastEmittedCodePoint:I

    invoke-direct {p0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->emitCodePoint(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :pswitch_13
    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorColRespectingOriginMode(I)V

    goto/16 :goto_e

    :pswitch_14
    iput-boolean v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAboutToAutoWrap:Z

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    sub-int/2addr p1, v0

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    const/4 v3, 0x0

    iget v8, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    add-int v4, v8, v0

    iget v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    const/4 v7, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockCopy(IIIIII)V

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    add-int/2addr v2, p1

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_e

    :pswitch_15
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    sub-int/2addr p1, v0

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v6, p1, v0

    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    const/4 v3, 0x0

    iget v4, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    iget v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    const/4 v7, 0x0

    add-int v8, v4, v0

    invoke-virtual/range {v2 .. v8}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockCopy(IIIIII)V

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_e

    :pswitch_16
    invoke-direct {p0, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v0

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_a

    if-eq v0, v4, :cond_9

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->unknownSequence(I)V

    return-void

    :cond_9
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    :goto_6
    invoke-direct {p0, v1, p1, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(III)V

    goto :goto_7

    :cond_a
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    add-int/2addr v0, v2

    goto :goto_6

    :cond_b
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    sub-int/2addr v2, p1

    invoke-direct {p0, p1, v0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(III)V

    :goto_7
    iput-boolean v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAboutToAutoWrap:Z

    goto/16 :goto_e

    :pswitch_17
    invoke-direct {p0, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v3

    if-eqz v3, :cond_f

    if-eq v3, v2, :cond_e

    if-eq v3, v4, :cond_d

    if-eq v3, v0, :cond_c

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->unknownSequence(I)V

    return-void

    :cond_c
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mMainBuffer:Lcom/stryker/terminal/backend/TerminalBuffer;

    invoke-virtual {p1}, Lcom/stryker/terminal/backend/TerminalBuffer;->clearTranscript()V

    goto :goto_7

    :cond_d
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(IIII)V

    goto :goto_7

    :cond_e
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(IIII)V

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    add-int/2addr v0, v2

    goto :goto_6

    :cond_f
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    sub-int/2addr v3, p1

    invoke-direct {p0, p1, v0, v3}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(III)V

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, p1, 0x1

    iget v3, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    add-int/2addr p1, v2

    sub-int/2addr v4, p1

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(IIII)V

    goto :goto_7

    :pswitch_18
    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->nextTabStop(I)I

    move-result p1

    :goto_8
    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_e

    :pswitch_19
    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg1(I)I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v0

    sub-int/2addr v0, v2

    goto/16 :goto_3

    :pswitch_1a
    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v2

    goto :goto_8

    :pswitch_1b
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v0

    sub-int/2addr p1, v0

    :goto_9
    invoke-direct {p0, v1, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_e

    :pswitch_1c
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_9

    :pswitch_1d
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_8

    :pswitch_1e
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_8

    :pswitch_1f
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_4

    :pswitch_20
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto/16 :goto_4

    :pswitch_21
    iput-boolean v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAboutToAutoWrap:Z

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    sub-int/2addr p1, v0

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v4, p1, v0

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iget v7, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    const/4 v5, 0x1

    add-int v6, v2, v0

    move v3, v7

    invoke-virtual/range {v1 .. v7}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockCopy(IIIIII)V

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, p1, v1, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_e

    :pswitch_22
    const/4 p1, 0x7

    :goto_a
    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_e

    :pswitch_23
    invoke-direct {p0, v3}, Lcom/stryker/terminal/backend/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_e

    :pswitch_24
    const/16 p1, 0x11

    goto :goto_a

    :pswitch_25
    const/16 p1, 0x13

    goto :goto_a

    :pswitch_26
    const/16 p1, 0xf

    goto :goto_a

    :cond_10
    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    if-nez v0, :cond_11

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result p1

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    sub-int/2addr v0, v2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    const/4 v3, 0x0

    iget v4, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    iget v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    sub-int v6, v0, p1

    const/4 v7, 0x0

    add-int v8, v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockCopy(IIIIII)V

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_e

    :cond_11
    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->unimplementedSequence(I)V

    goto/16 :goto_e

    :cond_12
    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result p1

    :goto_b
    if-ge v1, p1, :cond_1b

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->scrollDownOneLine()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_13
    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result p1

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v1, v2

    :goto_c
    if-ltz v1, :cond_15

    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTabStop:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_14

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_14

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_d

    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_15
    :goto_d
    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    goto :goto_e

    :cond_16
    iput-boolean v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAboutToAutoWrap:Z

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iget v3, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v0

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0x20

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getStyle()J

    move-result-wide v7

    move v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockSet(IIIIIJ)V

    goto :goto_e

    :cond_17
    iput-boolean v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAboutToAutoWrap:Z

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    sub-int/2addr p1, v0

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget v6, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    add-int v2, v6, v0

    iget v7, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    const/4 v5, 0x1

    move v3, v7

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockCopy(IIIIII)V

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    add-int/2addr v1, p1

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v1, p1, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(III)V

    goto :goto_e

    :cond_18
    const/16 p1, 0x10

    goto/16 :goto_a

    :cond_19
    const/16 p1, 0x12

    goto/16 :goto_a

    :cond_1a
    const/16 p1, 0x8

    goto/16 :goto_a

    :cond_1b
    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x60
        :pswitch_13
        :pswitch_1e
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_19
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6c
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x72
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x12
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 1
        0x1bt
        0x5bt
        0x30t
        0x6et
    .end array-data
.end method

.method private doCsiBiggerThan(I)V
    .locals 2

    const/16 v0, 0x63

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->parseArg(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(ignored) CSI > MODIFY RESOURCE: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg1(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NeoTerm-Emulator"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    const-string v0, "\u001b[>41;320;0c"

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doCsiQuestionMark(I)V
    .locals 13

    const/16 v0, 0x24

    if-eq p1, v0, :cond_15

    const/16 v0, 0x68

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_11

    const/16 v3, 0x6c

    if-eq p1, v3, :cond_11

    const/16 v0, 0x6e

    const/4 v3, -0x1

    if-eq p1, v0, :cond_f

    const/16 v0, 0x4a

    const/16 v4, 0x4b

    if-eq p1, v0, :cond_5

    if-eq p1, v4, :cond_5

    const/16 v0, 0x72

    const/16 v4, 0x73

    if-eq p1, v0, :cond_0

    if-eq p1, v4, :cond_0

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->parseArg(I)V

    goto/16 :goto_b

    :cond_0
    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    iget-object v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgs:[I

    array-length v6, v5

    if-lt v0, v6, :cond_1

    array-length v0, v5

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    :cond_1
    move v0, v1

    :goto_0
    iget v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    if-gt v0, v5, :cond_14

    iget-object v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgs:[I

    aget v5, v5, v0

    invoke-static {v5}, Lcom/stryker/terminal/backend/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v6

    if-ne v6, v3, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring request to save/recall decset bit="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NeoTerm-Emulator"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    if-ne p1, v4, :cond_3

    iget v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedDecSetFlags:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedDecSetFlags:I

    goto :goto_2

    :cond_3
    iget v7, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedDecSetFlags:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_1
    invoke-virtual {p0, v6, v5}, Lcom/stryker/terminal/backend/TerminalEmulator;->doDecSetOrReset(ZI)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iput-boolean v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAboutToAutoWrap:Z

    const/16 v0, 0x20

    if-ne p1, v4, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v1

    :goto_3
    invoke-direct {p0, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v5

    if-eqz v5, :cond_c

    if-eq v5, v2, :cond_a

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->unknownSequence(I)V

    move p1, v3

    move v1, p1

    move v2, v1

    goto :goto_6

    :cond_7
    if-eqz v4, :cond_8

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    move v3, p1

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_4
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    add-int/2addr v4, v2

    move v2, v4

    goto :goto_6

    :cond_9
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    goto :goto_6

    :cond_a
    if-eqz v4, :cond_b

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    move v3, p1

    goto :goto_5

    :cond_b
    move v3, v1

    :goto_5
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    add-int/2addr p1, v2

    iget v4, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    add-int/2addr v2, v4

    goto :goto_6

    :cond_c
    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iget v3, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    if-eqz v4, :cond_9

    add-int/lit8 v2, v3, 0x1

    :goto_6
    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getStyle()J

    move-result-wide v11

    :goto_7
    if-ge v3, v2, :cond_14

    move v4, v1

    :goto_8
    if-ge v4, p1, :cond_e

    iget-object v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    invoke-virtual {v5, v3, v4}, Lcom/stryker/terminal/backend/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/stryker/terminal/backend/TextStyle;->decodeEffect(J)I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    move v6, v4

    move v7, v3

    move v8, v0

    move-wide v9, v11

    invoke-virtual/range {v5 .. v10}, Lcom/stryker/terminal/backend/TerminalBuffer;->setChar(IIIJ)V

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    invoke-direct {p0, v3}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_10

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->finishSequence()V

    return-void

    :cond_10
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\u001b[?%d;%d;1R"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_b

    :cond_11
    iget v3, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    iget-object v4, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgs:[I

    array-length v5, v4

    if-lt v3, v5, :cond_12

    array-length v3, v4

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    :cond_12
    move v3, v1

    :goto_9
    iget v4, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    if-gt v3, v4, :cond_14

    if-ne p1, v0, :cond_13

    move v4, v2

    goto :goto_a

    :cond_13
    move v4, v1

    :goto_a
    iget-object v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgs:[I

    aget v5, v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/stryker/terminal/backend/TerminalEmulator;->doDecSetOrReset(ZI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_14
    :goto_b
    return-void

    :cond_15
    const/16 p1, 0xe

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->continueSequence(I)V

    return-void
.end method

.method private doDeviceControl(I)V
    .locals 12

    .line 1
    const/16 v0, 0x5c

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v2, 0x2000

    .line 13
    .line 14
    if-le v0, v2, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->finishSequence()V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_7

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEscapeState:I

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->continueSequence(I)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_7

    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v0, "$q"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const-string v2, "\'"

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    const-string v0, "$q\"p"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    .line 63
    .line 64
    const-string v0, "\u001bP1$r64;1\"p\u001b\\"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_6

    .line 70
    .line 71
    :cond_2
    const-string v0, "Unrecognized DECRQSS string: \'"

    .line 72
    .line 73
    invoke-static {v0, p1, v2}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_6

    .line 81
    .line 82
    :cond_3
    const-string v0, "+q"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_d

    .line 89
    .line 90
    const/4 v0, 0x2

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v3, ";"

    .line 96
    .line 97
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    array-length v3, p1

    .line 102
    move v4, v1

    .line 103
    :goto_0
    if-ge v4, v3, :cond_d

    .line 104
    .line 105
    aget-object v5, p1, v4

    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    rem-int/2addr v6, v0

    .line 112
    const-string v7, "NeoTerm-Emulator"

    .line 113
    .line 114
    if-nez v6, :cond_c

    .line 115
    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    move v8, v1

    .line 122
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-ge v8, v9, :cond_4

    .line 127
    .line 128
    new-instance v9, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v10, "0x"

    .line 131
    .line 132
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v10, ""

    .line 143
    .line 144
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    add-int/lit8 v10, v8, 0x1

    .line 148
    .line 149
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 165
    .line 166
    .line 167
    move-result-wide v9

    .line 168
    long-to-int v9, v9

    .line 169
    int-to-char v9, v9

    .line 170
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    add-int/lit8 v8, v8, 0x2

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 184
    .line 185
    .line 186
    const/4 v8, 0x1

    .line 187
    const/4 v9, -0x1

    .line 188
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    sparse-switch v10, :sswitch_data_0

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :sswitch_0
    const-string v10, "name"

    .line 197
    .line 198
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v10

    .line 202
    if-nez v10, :cond_5

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_5
    const/4 v9, 0x3

    .line 206
    goto :goto_2

    .line 207
    :sswitch_1
    const-string v10, "TN"

    .line 208
    .line 209
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    if-nez v10, :cond_6

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_6
    const/4 v9, 0x2

    .line 217
    goto :goto_2

    .line 218
    :sswitch_2
    const-string v10, "Co"

    .line 219
    .line 220
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    if-nez v10, :cond_7

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_7
    const/4 v9, 0x1

    .line 228
    goto :goto_2

    .line 229
    :sswitch_3
    const-string v10, "colors"

    .line 230
    .line 231
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    if-nez v10, :cond_8

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_8
    const/4 v9, 0x0

    .line 239
    :goto_2
    packed-switch v9, :pswitch_data_0

    .line 240
    .line 241
    .line 242
    invoke-direct {p0, v8}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    const/16 v9, 0x20

    .line 247
    .line 248
    invoke-direct {p0, v9}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    .line 249
    .line 250
    .line 251
    move-result v9

    .line 252
    invoke-static {v6, v8, v9}, Lcom/stryker/terminal/backend/KeyHandler;->getCodeFromTermcap(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    goto :goto_3

    .line 257
    :pswitch_0
    const-string v8, "xterm"

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :pswitch_1
    const-string v8, "256"

    .line 261
    .line 262
    :goto_3
    const-string v9, "\u001b\\"

    .line 263
    .line 264
    if-nez v8, :cond_a

    .line 265
    .line 266
    const-string v8, "%1"

    .line 267
    .line 268
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    if-nez v8, :cond_9

    .line 273
    .line 274
    const-string v8, "&8"

    .line 275
    .line 276
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    if-nez v8, :cond_9

    .line 281
    .line 282
    new-instance v8, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v10, "Unhandled termcap/terminfo name: \'"

    .line 285
    .line 286
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    :cond_9
    iget-object v6, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    .line 303
    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string v8, "\u001bP0+r"

    .line 307
    .line 308
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    invoke-virtual {v6, v5}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    goto :goto_5

    .line 325
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    move v7, v1

    .line 331
    :goto_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 332
    .line 333
    .line 334
    move-result v10

    .line 335
    if-ge v7, v10, :cond_b

    .line 336
    .line 337
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    .line 338
    .line 339
    .line 340
    move-result v10

    .line 341
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object v10

    .line 345
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v10

    .line 349
    const-string v11, "%02X"

    .line 350
    .line 351
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v10

    .line 355
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    add-int/lit8 v7, v7, 0x1

    .line 359
    .line 360
    goto :goto_4

    .line 361
    :cond_b
    iget-object v7, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    .line 362
    .line 363
    new-instance v8, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    const-string v10, "\u001bP1+r"

    .line 366
    .line 367
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string v5, "="

    .line 374
    .line 375
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v5

    .line 388
    invoke-virtual {v7, v5}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    goto :goto_5

    .line 392
    :cond_c
    const-string v6, "Invalid device termcap/terminfo name of odd length: "

    .line 393
    .line 394
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 402
    .line 403
    goto/16 :goto_0

    .line 404
    .line 405
    :cond_d
    :goto_6
    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->finishSequence()V

    .line 406
    .line 407
    .line 408
    :goto_7
    return-void

    .line 409
    :sswitch_data_0
    .sparse-switch
        -0x50c14290 -> :sswitch_3
        0x88c -> :sswitch_2
        0xa7a -> :sswitch_1
        0x337a8b -> :sswitch_0
    .end sparse-switch

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doEsc(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_e

    const/16 v2, 0x30

    if-eq v1, v2, :cond_f

    const/16 v2, 0x48

    const/4 v3, 0x1

    if-eq v1, v2, :cond_d

    const/16 v2, 0x50

    const/4 v4, 0x0

    if-eq v1, v2, :cond_c

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_b

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_a

    const/16 v2, 0x63

    if-eq v1, v2, :cond_9

    const/16 v2, 0x28

    if-eq v1, v2, :cond_8

    const/16 v2, 0x29

    const/4 v5, 0x4

    if-eq v1, v2, :cond_7

    const/16 v2, 0x3d

    const/16 v6, 0x20

    if-eq v1, v2, :cond_6

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_5

    const/16 v2, 0x4d

    if-eq v1, v2, :cond_3

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_f

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    invoke-direct/range {p0 .. p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_3

    :pswitch_0
    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    sub-int/2addr v1, v3

    invoke-direct {v0, v4, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorRowCol(II)V

    goto/16 :goto_3

    :pswitch_1
    invoke-direct {v0, v5}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v4, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    :cond_0
    invoke-direct {v0, v4}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorCol(I)V

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->doLinefeed()V

    goto/16 :goto_3

    :pswitch_3
    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_1

    add-int/2addr v1, v3

    :goto_0
    iput v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    goto/16 :goto_3

    :cond_1
    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    iget v11, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    sub-int v16, v1, v11

    iget-object v5, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget v10, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    add-int/lit8 v6, v10, 0x1

    sub-int/2addr v2, v10

    add-int/lit8 v8, v2, -0x1

    move v7, v11

    move/from16 v9, v16

    invoke-virtual/range {v5 .. v11}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockCopy(IIIIII)V

    iget-object v12, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v13, v1, -0x1

    :goto_1
    iget v14, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    const/4 v15, 0x1

    const/16 v17, 0x20

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mForeColor:I

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBackColor:I

    invoke-static {v1, v2, v4}, Lcom/stryker/terminal/backend/TextStyle;->encode(III)J

    move-result-wide v18

    invoke-virtual/range {v12 .. v19}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockSet(IIIIIJ)V

    goto/16 :goto_3

    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->restoreCursor()V

    goto/16 :goto_3

    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->saveCursor()V

    goto/16 :goto_3

    :pswitch_6
    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iget v6, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    if-le v1, v6, :cond_2

    sub-int/2addr v1, v3

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    iget v11, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    sub-int v16, v1, v11

    iget-object v5, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v1, v6

    add-int/lit8 v8, v1, -0x1

    add-int/lit8 v10, v6, 0x1

    move v7, v11

    move/from16 v9, v16

    invoke-virtual/range {v5 .. v11}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockCopy(IIIIII)V

    iget-object v12, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget v13, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    goto :goto_1

    :cond_3
    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    iget v7, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    if-gt v1, v7, :cond_4

    iget-object v5, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    const/4 v6, 0x0

    iget v8, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v2, v7, 0x1

    sub-int v9, v1, v2

    const/4 v10, 0x0

    add-int/lit8 v11, v7, 0x1

    invoke-virtual/range {v5 .. v11}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockCopy(IIIIII)V

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v4, v1, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(III)V

    goto :goto_3

    :cond_4
    sub-int/2addr v1, v3

    iput v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    goto :goto_3

    :cond_5
    invoke-direct {v0, v6, v4}, Lcom/stryker/terminal/backend/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto :goto_3

    :cond_6
    invoke-direct {v0, v6, v3}, Lcom/stryker/terminal/backend/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto :goto_3

    :cond_7
    invoke-direct {v0, v5}, Lcom/stryker/terminal/backend/TerminalEmulator;->continueSequence(I)V

    goto :goto_3

    :cond_8
    const/4 v1, 0x3

    :goto_2
    invoke-direct {v0, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->continueSequence(I)V

    goto :goto_3

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->reset()V

    iget-object v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mMainBuffer:Lcom/stryker/terminal/backend/TerminalBuffer;

    invoke-virtual {v1}, Lcom/stryker/terminal/backend/TerminalBuffer;->clearTranscript()V

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-direct {v0, v4, v4, v1, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(IIII)V

    invoke-direct {v0, v4, v4}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorPosition(II)V

    goto :goto_3

    :cond_a
    iget-object v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v1, 0xa

    goto :goto_2

    :cond_b
    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->continueSequence(I)V

    iput-boolean v3, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mIsCSIStart:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLastCSIArg:Ljava/lang/Integer;

    goto :goto_3

    :cond_c
    iget-object v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v1, 0xd

    goto :goto_2

    :cond_d
    iget-object v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTabStop:[Z

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    aput-boolean v3, v1, v2

    goto :goto_3

    :cond_e
    const/4 v1, 0x2

    goto :goto_2

    :cond_f
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doEscPound(I)V
    .locals 9

    const/16 v0, 0x38

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->unknownSequence(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iget v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    const/16 v6, 0x45

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getStyle()J

    move-result-wide v7

    invoke-virtual/range {v1 .. v8}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockSet(IIIIIJ)V

    :goto_0
    return-void
.end method

.method private doLinefeed()V
    .locals 5

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v0, 0x1

    if-eqz v3, :cond_2

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_3

    :cond_1
    :goto_1
    invoke-direct {p0, v4}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorRow(I)V

    goto :goto_2

    :cond_2
    if-ne v4, v1, :cond_1

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->scrollDownOneLine()V

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v4, v0, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private doOsc(I)V
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->collectOSCArgs(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    :cond_1
    const-string p1, "\u0007"

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->doOscSetTextParameters(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doOscEsc(I)V
    .locals 1

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->collectOSCArgs(I)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->collectOSCArgs(I)V

    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    :cond_0
    const-string p1, "\u001b\\"

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->doOscSetTextParameters(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doOscSetTextParameters(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "/"

    const-string v2, "%04x"

    const/4 v3, -0x1

    move v6, v3

    const/4 v5, 0x0

    :goto_0
    iget-object v7, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/16 v8, 0x39

    const/16 v9, 0x30

    const/16 v10, 0x3b

    const/4 v11, 0x1

    const-string v12, ""

    if-ge v5, v7, :cond_3

    iget-object v7, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_0

    iget-object v7, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    add-int/2addr v5, v11

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_0
    if-lt v7, v9, :cond_2

    if-gt v7, v8, :cond_2

    if-gez v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    mul-int/lit8 v6, v6, 0xa

    :goto_1
    add-int/lit8 v7, v7, -0x30

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {v0, v7}, Lcom/stryker/terminal/backend/TerminalEmulator;->unknownSequence(I)V

    return-void

    :cond_3
    move-object v5, v12

    :goto_2
    if-eqz v6, :cond_1b

    if-eq v6, v11, :cond_1b

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1b

    const/4 v7, 0x4

    const/16 v13, 0xff

    if-eq v6, v7, :cond_10

    const/16 v3, 0x34

    if-eq v6, v3, :cond_f

    const/16 v3, 0x68

    if-eq v6, v3, :cond_9

    const/16 v3, 0x77

    if-eq v6, v3, :cond_1c

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    invoke-direct {v0, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->unknownParameter(I)V

    goto/16 :goto_12

    :pswitch_0
    iget-object v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColors:Lcom/stryker/terminal/backend/TerminalColors;

    add-int/lit16 v6, v6, 0x92

    invoke-virtual {v1, v6}, Lcom/stryker/terminal/backend/TerminalColors;->reset(I)V

    :goto_3
    iget-object v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    invoke-virtual {v1}, Lcom/stryker/terminal/backend/TerminalOutput;->onColorsChanged()V

    goto/16 :goto_12

    :pswitch_1
    add-int/lit16 v3, v6, 0xf6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v7, v9, :cond_4

    move v9, v11

    goto :goto_5

    :cond_4
    const/4 v9, 0x0

    :goto_5
    if-nez v9, :cond_6

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_5

    goto :goto_6

    :catch_0
    :cond_5
    move-object/from16 v4, p1

    move/from16 v18, v6

    goto/16 :goto_8

    :cond_6
    :goto_6
    :try_start_0
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v14, "?"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    iget-object v12, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColors:Lcom/stryker/terminal/backend/TerminalColors;

    iget-object v12, v12, Lcom/stryker/terminal/backend/TerminalColors;->mCurrentColors:[I

    aget v12, v12, v3

    const/high16 v14, 0xff0000

    and-int/2addr v14, v12

    shr-int/lit8 v14, v14, 0x10

    const v15, 0xffff

    mul-int/2addr v14, v15

    div-int/2addr v14, v13

    const v16, 0xff00

    and-int v16, v12, v16

    shr-int/lit8 v16, v16, 0x8

    mul-int v10, v16, v15

    div-int/2addr v10, v13

    and-int/lit16 v12, v12, 0xff

    mul-int/2addr v12, v15

    div-int/2addr v12, v13

    iget-object v15, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u001b]"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";rgb:"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v18, v6

    :try_start_1
    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v6, v17

    invoke-static {v4, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v14, 0x0

    aput-object v10, v6, v14

    invoke-static {v4, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v6, v12

    invoke-static {v4, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v4, p1

    :try_start_2
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_7

    :catch_1
    move-object/from16 v4, p1

    goto :goto_8

    :cond_7
    move-object/from16 v4, p1

    move/from16 v18, v6

    iget-object v6, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColors:Lcom/stryker/terminal/backend/TerminalColors;

    invoke-virtual {v6, v3, v12}, Lcom/stryker/terminal/backend/TerminalColors;->tryParseColor(ILjava/lang/String;)V

    iget-object v6, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    invoke-virtual {v6}, Lcom/stryker/terminal/backend/TerminalOutput;->onColorsChanged()V

    :goto_7
    add-int/lit8 v3, v3, 0x1

    if-nez v9, :cond_1c

    const/16 v6, 0x102

    if-gt v3, v6, :cond_1c

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    if-lt v7, v6, :cond_8

    goto/16 :goto_12

    :cond_8
    move v8, v7

    :catch_2
    :goto_8
    add-int/2addr v7, v11

    move/from16 v6, v18

    const/16 v10, 0x3b

    const/16 v13, 0xff

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColors:Lcom/stryker/terminal/backend/TerminalColors;

    invoke-virtual {v1}, Lcom/stryker/terminal/backend/TerminalColors;->reset()V

    goto/16 :goto_3

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_b

    move v3, v11

    goto :goto_a

    :cond_b
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_c

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3b

    if-ne v4, v6, :cond_e

    :cond_c
    :try_start_3
    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v6, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColors:Lcom/stryker/terminal/backend/TerminalColors;

    invoke-virtual {v6, v4}, Lcom/stryker/terminal/backend/TerminalColors;->reset(I)V

    iget-object v4, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    invoke-virtual {v4}, Lcom/stryker/terminal/backend/TerminalOutput;->onColorsChanged()V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v3, :cond_d

    goto/16 :goto_12

    :cond_d
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :catch_3
    :cond_e
    add-int/2addr v1, v11

    goto :goto_9

    :cond_f
    const-string v1, ";"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v11

    :try_start_4
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    invoke-virtual {v1, v2}, Lcom/stryker/terminal/backend/TerminalOutput;->clipboardText(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_12

    :catch_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OSC Manipulate selection, invalid string \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NeoTerm-Emulator"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_10
    const/4 v4, 0x0

    move v2, v3

    move v6, v2

    move v1, v4

    :goto_b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_11

    move/from16 v17, v11

    goto :goto_c

    :cond_11
    move/from16 v17, v4

    :goto_c
    if-eqz v17, :cond_12

    const/16 v7, 0x3b

    :goto_d
    const/16 v10, 0x3b

    goto :goto_e

    :cond_12
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_d

    :goto_e
    if-ne v7, v10, :cond_16

    if-gez v2, :cond_13

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0xff

    goto :goto_11

    :cond_13
    if-ltz v6, :cond_15

    const/16 v12, 0xff

    if-le v6, v12, :cond_14

    goto :goto_f

    :cond_14
    iget-object v7, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColors:Lcom/stryker/terminal/backend/TerminalColors;

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v6, v2}, Lcom/stryker/terminal/backend/TerminalColors;->tryParseColor(ILjava/lang/String;)V

    iget-object v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    invoke-virtual {v2}, Lcom/stryker/terminal/backend/TerminalOutput;->onColorsChanged()V

    move v2, v3

    move v6, v2

    goto :goto_11

    :cond_15
    :goto_f
    invoke-direct {v0, v7}, Lcom/stryker/terminal/backend/TerminalEmulator;->unknownSequence(I)V

    return-void

    :cond_16
    const/16 v12, 0xff

    if-ltz v2, :cond_17

    goto :goto_11

    :cond_17
    if-gez v2, :cond_1a

    if-lt v7, v9, :cond_1a

    if-gt v7, v8, :cond_1a

    if-gez v6, :cond_18

    move v6, v4

    goto :goto_10

    :cond_18
    mul-int/lit8 v6, v6, 0xa

    :goto_10
    add-int/lit8 v7, v7, -0x30

    add-int/2addr v6, v7

    :goto_11
    if-eqz v17, :cond_19

    goto :goto_12

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1a
    invoke-direct {v0, v7}, Lcom/stryker/terminal/backend/TerminalEmulator;->unknownSequence(I)V

    return-void

    :cond_1b
    invoke-direct {v0, v5}, Lcom/stryker/terminal/backend/TerminalEmulator;->setTitle(Ljava/lang/String;)V

    :cond_1c
    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->finishSequence()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doSetMode(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 p1, 0x14

    if-eq v0, p1, :cond_0

    const/16 p1, 0x22

    if-eq v0, p1, :cond_2

    :cond_0
    invoke-direct {p0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->unknownParameter(I)V

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mInsertMode:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private emitCodePoint(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLastEmittedCodePoint:I

    iget-boolean v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingG0:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingG1:Z

    if-eqz v2, :cond_1

    :goto_0
    const/16 v2, 0x30

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v1, 0xb7

    :cond_1
    :goto_1
    move v5, v1

    goto/16 :goto_2

    :pswitch_1
    const/16 v1, 0xa3

    goto :goto_1

    :pswitch_2
    const/16 v1, 0x2260

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x3c0

    goto :goto_1

    :pswitch_4
    const/16 v1, 0x2265

    goto :goto_1

    :pswitch_5
    const/16 v1, 0x2264

    goto :goto_1

    :pswitch_6
    const/16 v1, 0x2502

    goto :goto_1

    :pswitch_7
    const/16 v1, 0x252c

    goto :goto_1

    :pswitch_8
    const/16 v1, 0x2534

    goto :goto_1

    :pswitch_9
    const/16 v1, 0x2524

    goto :goto_1

    :pswitch_a
    const/16 v1, 0x251c

    goto :goto_1

    :pswitch_b
    const/16 v1, 0x23bd

    goto :goto_1

    :pswitch_c
    const/16 v1, 0x23bc

    goto :goto_1

    :pswitch_d
    const/16 v1, 0x2500

    goto :goto_1

    :pswitch_e
    const/16 v1, 0x23bb

    goto :goto_1

    :pswitch_f
    const/16 v1, 0x23ba

    goto :goto_1

    :pswitch_10
    const/16 v1, 0x253c

    goto :goto_1

    :pswitch_11
    const/16 v1, 0x2514

    goto :goto_1

    :pswitch_12
    const/16 v1, 0x250c

    goto :goto_1

    :pswitch_13
    const/16 v1, 0x2510

    goto :goto_1

    :pswitch_14
    const/16 v1, 0x2518

    goto :goto_1

    :pswitch_15
    const/16 v1, 0x240b

    goto :goto_1

    :pswitch_16
    const/16 v1, 0xa

    goto :goto_1

    :pswitch_17
    const/16 v1, 0xb1

    goto :goto_1

    :pswitch_18
    const/16 v1, 0xb0

    goto :goto_1

    :pswitch_19
    const/16 v1, 0x240a

    goto :goto_1

    :pswitch_1a
    const/16 v1, 0xd

    goto :goto_1

    :pswitch_1b
    const/16 v1, 0x240c

    goto :goto_1

    :pswitch_1c
    const/16 v1, 0x2409

    goto :goto_1

    :pswitch_1d
    const/16 v1, 0x2592

    goto :goto_1

    :pswitch_1e
    const/16 v1, 0x25c6

    goto :goto_1

    :pswitch_1f
    const/16 v1, 0x20

    goto :goto_1

    :cond_2
    const/16 v1, 0x2588

    goto :goto_1

    :goto_2
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    invoke-static {v5}, Lcom/stryker/terminal/backend/WcWidth;->width(I)I

    move-result v8

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iget v3, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    const/4 v10, 0x0

    if-ne v2, v3, :cond_3

    move v2, v9

    goto :goto_3

    :cond_3
    move v2, v10

    :goto_3
    const/4 v3, 0x2

    if-eqz v1, :cond_7

    if-eqz v2, :cond_8

    iget-boolean v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAboutToAutoWrap:Z

    if-eqz v2, :cond_4

    if-eq v8, v9, :cond_5

    :cond_4
    if-ne v8, v3, :cond_8

    :cond_5
    iget-object v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget v3, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    invoke-virtual {v2, v3}, Lcom/stryker/terminal/backend/TerminalBuffer;->setLineWrap(I)V

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    iput v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v3, v2, 0x1

    iget v4, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    if-ge v3, v4, :cond_6

    add-int/2addr v2, v9

    iput v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    goto :goto_4

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->scrollDownOneLine()V

    goto :goto_4

    :cond_7
    if-eqz v2, :cond_8

    if-ne v8, v3, :cond_8

    return-void

    :cond_8
    :goto_4
    iget-boolean v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mInsertMode:Z

    if-eqz v2, :cond_9

    if-lez v8, :cond_9

    iget v12, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    add-int v2, v12, v8

    iget v3, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    if-ge v2, v3, :cond_9

    iget-object v11, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget v4, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    sub-int v14, v3, v2

    const/4 v15, 0x1

    move v13, v4

    move/from16 v16, v2

    move/from16 v17, v4

    invoke-virtual/range {v11 .. v17}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockCopy(IIIIII)V

    :cond_9
    if-gtz v8, :cond_a

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    if-lez v2, :cond_a

    iget-boolean v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAboutToAutoWrap:Z

    if-nez v2, :cond_a

    move v2, v9

    goto :goto_5

    :cond_a
    move v2, v10

    :goto_5
    iget-object v3, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget v4, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v4, v2

    iget v6, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    invoke-direct/range {p0 .. p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getStyle()J

    move-result-wide v11

    move-object v2, v3

    move v3, v4

    move v4, v6

    move-wide v6, v11

    invoke-virtual/range {v2 .. v7}, Lcom/stryker/terminal/backend/TerminalBuffer;->setChar(IIIJ)V

    if-eqz v1, :cond_c

    if-lez v8, :cond_c

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v2, v8

    if-ne v1, v2, :cond_b

    move v10, v9

    :cond_b
    iput-boolean v10, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAboutToAutoWrap:Z

    :cond_c
    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    add-int/2addr v1, v8

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v2, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    return-void

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private finishSequence()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEscapeState:I

    return-void
.end method

.method private finishSequenceAndLogError(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->finishSequence()V

    return-void
.end method

.method private getArg(IIZ)I
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgs:[I

    aget p1, v0, p1

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    :cond_1
    :goto_0
    return p2
.end method

.method private getArg0(I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result p1

    return p1
.end method

.method private getArg1(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result p1

    return p1
.end method

.method private getStyle()J
    .locals 3

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mForeColor:I

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBackColor:I

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    invoke-static {v0, v1, v2}, Lcom/stryker/terminal/backend/TextStyle;->encode(III)J

    move-result-wide v0

    return-wide v0
.end method

.method private isDecsetInternalBitSet(I)Z
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCurrentDecSetFlags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private logError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static mapDecSetBitToInternalBit(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/16 v0, 0x19

    if-eq p0, v0, :cond_a

    const/16 v0, 0x42

    if-eq p0, v0, :cond_9

    const/16 v0, 0x45

    if-eq p0, v0, :cond_8

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_7

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_6

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_5

    const/16 v0, 0x3ee

    if-eq p0, v0, :cond_4

    const/16 v0, 0x7d4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/16 p0, 0x400

    return p0

    :cond_4
    const/16 p0, 0x200

    return p0

    :cond_5
    const/16 p0, 0x100

    return p0

    :cond_6
    const/16 p0, 0x80

    return p0

    :cond_7
    const/16 p0, 0x40

    return p0

    :cond_8
    const/16 p0, 0x800

    return p0

    :cond_9
    const/16 p0, 0x20

    return p0

    :cond_a
    const/16 p0, 0x10

    return p0

    :cond_b
    return v0
.end method

.method private nextTabStop(I)I
    .locals 2

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTabStop:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_1
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private parseArg(I)V
    .locals 9

    filled-new-array {p1}, [I

    move-result-object v0

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEscapeState:I

    const/4 v2, 0x6

    const/16 v3, 0x30

    const/16 v4, 0x3b

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mIsCSIStart:Z

    if-eqz v1, :cond_0

    if-eq p1, v4, :cond_1

    :cond_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLastCSIArg:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_2

    if-ne p1, v4, :cond_2

    :cond_1
    filled-new-array {v3, v4}, [I

    move-result-object v0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mIsCSIStart:Z

    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_7

    aget v2, v0, p1

    if-lt v2, v3, :cond_5

    const/16 v5, 0x39

    if-gt v2, v5, :cond_5

    iget v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    iget-object v6, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgs:[I

    array-length v7, v6

    if-ge v5, v7, :cond_4

    aget v7, v6, v5

    add-int/lit8 v8, v2, -0x30

    if-ltz v7, :cond_3

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v8, v7

    :cond_3
    aput v8, v6, v5

    :cond_4
    :goto_1
    iget v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, v5}, Lcom/stryker/terminal/backend/TerminalEmulator;->continueSequence(I)V

    goto :goto_2

    :cond_5
    if-ne v2, v4, :cond_6

    iget v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    iget-object v6, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgs:[I

    array-length v6, v6

    if-ge v5, v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    goto :goto_1

    :cond_6
    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->unknownSequence(I)V

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLastCSIArg:Ljava/lang/Integer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private processByte(B)V
    .locals 10

    iget-byte v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8ToFollow:B

    const/4 v1, 0x3

    const/4 v2, 0x2

    const v3, 0xfffd

    const/4 v4, 0x1

    if-lez v0, :cond_a

    and-int/lit16 v5, p1, 0xc0

    const/4 v6, 0x0

    const/16 v7, 0x80

    if-ne v5, v7, :cond_9

    iget-object v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8InputBuffer:[B

    iget-byte v8, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8Index:B

    add-int/lit8 v9, v8, 0x1

    int-to-byte v9, v9

    iput-byte v9, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8Index:B

    aput-byte p1, v5, v8

    sub-int/2addr v0, v4

    int-to-byte p1, v0

    iput-byte p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8ToFollow:B

    if-nez p1, :cond_e

    if-ne v9, v2, :cond_0

    const/16 p1, 0x1f

    goto :goto_0

    :cond_0
    if-ne v9, v1, :cond_1

    const/16 p1, 0xf

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    :goto_0
    int-to-byte p1, p1

    aget-byte v0, v5, v6

    and-int/2addr p1, v0

    move v0, v4

    :goto_1
    iget-byte v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8Index:B

    if-ge v0, v5, :cond_2

    shl-int/lit8 p1, p1, 0x6

    iget-object v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8InputBuffer:[B

    aget-byte v5, v5, v0

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr p1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_3

    if-gt v5, v4, :cond_5

    :cond_3
    const/16 v0, 0x7ff

    if-ge p1, v0, :cond_4

    if-gt v5, v2, :cond_5

    :cond_4
    const v0, 0xffff

    if-ge p1, v0, :cond_6

    if-le v5, v1, :cond_6

    :cond_5
    move p1, v3

    :cond_6
    iput-byte v6, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v6, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8Index:B

    if-lt p1, v7, :cond_7

    const/16 v0, 0x9f

    if-gt p1, v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x13

    if-eq v0, v1, :cond_8

    move v3, p1

    :cond_8
    invoke-virtual {p0, v3}, Lcom/stryker/terminal/backend/TerminalEmulator;->processCodePoint(I)V

    goto :goto_3

    :cond_9
    iput-byte v6, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v6, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8Index:B

    invoke-direct {p0, v3}, Lcom/stryker/terminal/backend/TerminalEmulator;->emitCodePoint(I)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->processByte(B)V

    goto :goto_3

    :cond_a
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->processCodePoint(I)V

    return-void

    :cond_b
    and-int/lit16 v0, p1, 0xe0

    const/16 v5, 0xc0

    if-ne v0, v5, :cond_c

    iput-byte v4, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8ToFollow:B

    goto :goto_2

    :cond_c
    and-int/lit16 v0, p1, 0xf0

    const/16 v4, 0xe0

    if-ne v0, v4, :cond_d

    iput-byte v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8ToFollow:B

    goto :goto_2

    :cond_d
    and-int/lit16 v0, p1, 0xf8

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_f

    iput-byte v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8ToFollow:B

    :goto_2
    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8InputBuffer:[B

    iget-byte v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8Index:B

    add-int/lit8 v2, v1, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8Index:B

    aput-byte p1, v0, v1

    :cond_e
    :goto_3
    return-void

    :cond_f
    invoke-virtual {p0, v3}, Lcom/stryker/terminal/backend/TerminalEmulator;->processCodePoint(I)V

    return-void
.end method

.method private resizeScreen()V
    .locals 10

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAltBuffer:Lcom/stryker/terminal/backend/TerminalBuffer;

    if-ne v2, v1, :cond_0

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mMainBuffer:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget v1, v1, Lcom/stryker/terminal/backend/TerminalBuffer;->mTotalRows:I

    goto :goto_0

    :goto_1
    iget v3, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getStyle()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v9

    move-object v6, v0

    invoke-virtual/range {v2 .. v9}, Lcom/stryker/terminal/backend/TerminalBuffer;->resize(III[IJZ)V

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    return-void
.end method

.method private restoreCursor()V
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mMainBuffer:Lcom/stryker/terminal/backend/TerminalBuffer;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedStateMain:Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedStateAlt:Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

    :goto_0
    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    invoke-direct {p0, v1, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorRowCol(II)V

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mForeColor:I

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBackColor:I

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCurrentDecSetFlags:I

    and-int/lit8 v1, v1, -0xd

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    iput v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCurrentDecSetFlags:I

    iget-boolean v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mUseLineDrawingG0:Z

    iput-boolean v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingG0:Z

    iget-boolean v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mUseLineDrawingG1:Z

    iput-boolean v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingG1:Z

    iget-boolean v0, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mUseLineDrawingUsesG0:Z

    iput-boolean v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    return-void
.end method

.method private saveCursor()V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mMainBuffer:Lcom/stryker/terminal/backend/TerminalBuffer;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedStateMain:Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedStateAlt:Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

    :goto_0
    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    iput v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iput v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    iput v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mForeColor:I

    iput v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBackColor:I

    iput v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCurrentDecSetFlags:I

    iput v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iget-boolean v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingG0:Z

    iput-boolean v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mUseLineDrawingG0:Z

    iget-boolean v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingG1:Z

    iput-boolean v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mUseLineDrawingG1:Z

    iget-boolean v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    iput-boolean v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mUseLineDrawingUsesG0:Z

    return-void
.end method

.method private scrollDownOneLine()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScrollCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScrollCounter:I

    iget v7, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    if-nez v7, :cond_1

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    iget v3, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    invoke-direct/range {p0 .. p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getStyle()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/stryker/terminal/backend/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget v8, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    add-int/lit8 v4, v8, 0x1

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    sub-int v5, v1, v7

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    sub-int/2addr v1, v8

    add-int/lit8 v6, v1, -0x1

    move v3, v7

    invoke-virtual/range {v2 .. v8}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockCopy(IIIIII)V

    iget-object v9, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget v10, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v11, v1, -0x1

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    sub-int v12, v1, v10

    const/4 v13, 0x1

    const/16 v14, 0x20

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    int-to-long v1, v1

    move-wide v15, v1

    invoke-virtual/range {v9 .. v16}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockSet(IIIIIJ)V

    :goto_1
    return-void
.end method

.method private selectGraphicRendition()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgs:[I

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x1

    .line 7
    if-lt v0, v2, :cond_0

    .line 8
    .line 9
    array-length v0, v1

    .line 10
    sub-int/2addr v0, v3

    .line 11
    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    .line 16
    .line 17
    if-gt v1, v2, :cond_26

    .line 18
    .line 19
    iget-object v4, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgs:[I

    .line 20
    .line 21
    aget v5, v4, v1

    .line 22
    .line 23
    if-gez v5, :cond_2

    .line 24
    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    goto/16 :goto_8

    .line 28
    .line 29
    :cond_1
    move v5, v0

    .line 30
    :cond_2
    const/16 v6, 0x101

    .line 31
    .line 32
    const/16 v7, 0x100

    .line 33
    .line 34
    if-nez v5, :cond_3

    .line 35
    .line 36
    iput v7, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mForeColor:I

    .line 37
    .line 38
    iput v6, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBackColor:I

    .line 39
    .line 40
    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_3
    if-ne v5, v3, :cond_4

    .line 45
    .line 46
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 47
    .line 48
    or-int/2addr v2, v3

    .line 49
    :goto_1
    iput v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 50
    .line 51
    goto/16 :goto_8

    .line 52
    .line 53
    :cond_4
    const/4 v8, 0x2

    .line 54
    if-ne v5, v8, :cond_5

    .line 55
    .line 56
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 57
    .line 58
    or-int/2addr v2, v7

    .line 59
    goto :goto_1

    .line 60
    :cond_5
    const/4 v9, 0x3

    .line 61
    if-ne v5, v9, :cond_6

    .line 62
    .line 63
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 64
    .line 65
    or-int/2addr v2, v8

    .line 66
    goto :goto_1

    .line 67
    :cond_6
    const/4 v9, 0x4

    .line 68
    if-ne v5, v9, :cond_7

    .line 69
    .line 70
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 71
    .line 72
    or-int/2addr v2, v9

    .line 73
    goto :goto_1

    .line 74
    :cond_7
    const/4 v9, 0x5

    .line 75
    const/16 v10, 0x8

    .line 76
    .line 77
    if-ne v5, v9, :cond_8

    .line 78
    .line 79
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 80
    .line 81
    or-int/2addr v2, v10

    .line 82
    goto :goto_1

    .line 83
    :cond_8
    const/4 v11, 0x7

    .line 84
    if-ne v5, v11, :cond_9

    .line 85
    .line 86
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 87
    .line 88
    or-int/lit8 v2, v2, 0x10

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_9
    if-ne v5, v10, :cond_a

    .line 92
    .line 93
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 94
    .line 95
    or-int/lit8 v2, v2, 0x20

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_a
    const/16 v10, 0x9

    .line 99
    .line 100
    if-ne v5, v10, :cond_b

    .line 101
    .line 102
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 103
    .line 104
    or-int/lit8 v2, v2, 0x40

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_b
    const/16 v10, 0xa

    .line 108
    .line 109
    if-ne v5, v10, :cond_c

    .line 110
    .line 111
    goto/16 :goto_8

    .line 112
    .line 113
    :cond_c
    const/16 v10, 0xb

    .line 114
    .line 115
    if-ne v5, v10, :cond_d

    .line 116
    .line 117
    goto/16 :goto_8

    .line 118
    .line 119
    :cond_d
    const/16 v10, 0x16

    .line 120
    .line 121
    if-ne v5, v10, :cond_e

    .line 122
    .line 123
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 124
    .line 125
    and-int/lit16 v2, v2, -0x102

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_e
    const/16 v10, 0x17

    .line 129
    .line 130
    if-ne v5, v10, :cond_f

    .line 131
    .line 132
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 133
    .line 134
    and-int/lit8 v2, v2, -0x3

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_f
    const/16 v10, 0x18

    .line 138
    .line 139
    if-ne v5, v10, :cond_10

    .line 140
    .line 141
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 142
    .line 143
    and-int/lit8 v2, v2, -0x5

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_10
    const/16 v10, 0x19

    .line 147
    .line 148
    if-ne v5, v10, :cond_11

    .line 149
    .line 150
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 151
    .line 152
    and-int/lit8 v2, v2, -0x9

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_11
    const/16 v10, 0x1b

    .line 156
    .line 157
    if-ne v5, v10, :cond_12

    .line 158
    .line 159
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 160
    .line 161
    and-int/lit8 v2, v2, -0x11

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_12
    const/16 v10, 0x1c

    .line 165
    .line 166
    if-ne v5, v10, :cond_13

    .line 167
    .line 168
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 169
    .line 170
    and-int/lit8 v2, v2, -0x21

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_13
    const/16 v10, 0x1d

    .line 174
    .line 175
    if-ne v5, v10, :cond_14

    .line 176
    .line 177
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    .line 178
    .line 179
    and-int/lit8 v2, v2, -0x41

    .line 180
    .line 181
    goto/16 :goto_1

    .line 182
    .line 183
    :cond_14
    const/16 v10, 0x1e

    .line 184
    .line 185
    if-lt v5, v10, :cond_15

    .line 186
    .line 187
    const/16 v10, 0x25

    .line 188
    .line 189
    if-gt v5, v10, :cond_15

    .line 190
    .line 191
    add-int/lit8 v5, v5, -0x1e

    .line 192
    .line 193
    :goto_2
    iput v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mForeColor:I

    .line 194
    .line 195
    goto/16 :goto_8

    .line 196
    .line 197
    :cond_15
    const/16 v10, 0x26

    .line 198
    .line 199
    if-eq v5, v10, :cond_1b

    .line 200
    .line 201
    const/16 v11, 0x30

    .line 202
    .line 203
    if-ne v5, v11, :cond_16

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_16
    const/16 v2, 0x27

    .line 207
    .line 208
    if-ne v5, v2, :cond_17

    .line 209
    .line 210
    iput v7, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mForeColor:I

    .line 211
    .line 212
    goto/16 :goto_8

    .line 213
    .line 214
    :cond_17
    const/16 v2, 0x28

    .line 215
    .line 216
    if-lt v5, v2, :cond_18

    .line 217
    .line 218
    const/16 v2, 0x2f

    .line 219
    .line 220
    if-gt v5, v2, :cond_18

    .line 221
    .line 222
    add-int/lit8 v5, v5, -0x28

    .line 223
    .line 224
    :goto_3
    iput v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBackColor:I

    .line 225
    .line 226
    goto/16 :goto_8

    .line 227
    .line 228
    :cond_18
    const/16 v2, 0x31

    .line 229
    .line 230
    if-ne v5, v2, :cond_19

    .line 231
    .line 232
    iput v6, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBackColor:I

    .line 233
    .line 234
    goto/16 :goto_8

    .line 235
    .line 236
    :cond_19
    const/16 v2, 0x5a

    .line 237
    .line 238
    if-lt v5, v2, :cond_1a

    .line 239
    .line 240
    const/16 v2, 0x61

    .line 241
    .line 242
    if-gt v5, v2, :cond_1a

    .line 243
    .line 244
    add-int/lit8 v5, v5, -0x52

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_1a
    const/16 v2, 0x64

    .line 248
    .line 249
    if-lt v5, v2, :cond_25

    .line 250
    .line 251
    const/16 v2, 0x6b

    .line 252
    .line 253
    if-gt v5, v2, :cond_25

    .line 254
    .line 255
    add-int/lit8 v5, v5, -0x5c

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_1b
    :goto_4
    add-int/lit8 v6, v1, 0x2

    .line 259
    .line 260
    if-le v6, v2, :cond_1c

    .line 261
    .line 262
    goto/16 :goto_8

    .line 263
    .line 264
    :cond_1c
    add-int/lit8 v7, v1, 0x1

    .line 265
    .line 266
    aget v7, v4, v7

    .line 267
    .line 268
    if-ne v7, v8, :cond_21

    .line 269
    .line 270
    add-int/lit8 v7, v1, 0x4

    .line 271
    .line 272
    if-le v7, v2, :cond_1d

    .line 273
    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v4, "Too few CSI"

    .line 277
    .line 278
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v4, ";2 RGB arguments"

    .line 285
    .line 286
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    const-string v4, "NeoTerm-Emulator"

    .line 294
    .line 295
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    goto/16 :goto_8

    .line 299
    .line 300
    :cond_1d
    aget v2, v4, v6

    .line 301
    .line 302
    add-int/lit8 v1, v1, 0x3

    .line 303
    .line 304
    aget v1, v4, v1

    .line 305
    .line 306
    aget v4, v4, v7

    .line 307
    .line 308
    if-ltz v2, :cond_20

    .line 309
    .line 310
    if-ltz v1, :cond_20

    .line 311
    .line 312
    if-ltz v4, :cond_20

    .line 313
    .line 314
    const/16 v6, 0xff

    .line 315
    .line 316
    if-gt v2, v6, :cond_20

    .line 317
    .line 318
    if-gt v1, v6, :cond_20

    .line 319
    .line 320
    if-le v4, v6, :cond_1e

    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_1e
    shl-int/lit8 v2, v2, 0x10

    .line 324
    .line 325
    const/high16 v6, -0x1000000

    .line 326
    .line 327
    or-int/2addr v2, v6

    .line 328
    shl-int/lit8 v1, v1, 0x8

    .line 329
    .line 330
    or-int/2addr v1, v2

    .line 331
    or-int/2addr v1, v4

    .line 332
    if-ne v5, v10, :cond_1f

    .line 333
    .line 334
    iput v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mForeColor:I

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :cond_1f
    iput v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBackColor:I

    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_20
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    const-string v6, "Invalid RGB: "

    .line 343
    .line 344
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string v2, ","

    .line 351
    .line 352
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-direct {p0, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    :goto_6
    move v1, v7

    .line 372
    goto :goto_8

    .line 373
    :cond_21
    if-ne v7, v9, :cond_24

    .line 374
    .line 375
    aget v1, v4, v6

    .line 376
    .line 377
    if-ltz v1, :cond_23

    .line 378
    .line 379
    const/16 v2, 0x103

    .line 380
    .line 381
    if-ge v1, v2, :cond_23

    .line 382
    .line 383
    if-ne v5, v10, :cond_22

    .line 384
    .line 385
    iput v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mForeColor:I

    .line 386
    .line 387
    goto :goto_7

    .line 388
    :cond_22
    iput v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBackColor:I

    .line 389
    .line 390
    :cond_23
    :goto_7
    move v1, v6

    .line 391
    goto :goto_8

    .line 392
    :cond_24
    const-string v2, "Invalid ISO-8613-3 SGR first argument: "

    .line 393
    .line 394
    invoke-static {v2, v7}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    :cond_25
    :goto_8
    add-int/2addr v1, v3

    .line 402
    goto/16 :goto_0

    .line 403
    .line 404
    :cond_26
    return-void
.end method

.method private setCursorCol(I)V
    .locals 0

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAboutToAutoWrap:Z

    return-void
.end method

.method private setCursorColRespectingOriginMode(I)V
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorPosition(II)V

    return-void
.end method

.method private setCursorPosition(II)V
    .locals 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    :goto_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    :cond_2
    if-eqz v0, :cond_3

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    :goto_2
    add-int/2addr p2, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorRowCol(II)V

    return-void
.end method

.method private setCursorRow(I)V
    .locals 0

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAboutToAutoWrap:Z

    return-void
.end method

.method private setCursorRowCol(II)V
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iput-boolean v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAboutToAutoWrap:Z

    return-void
.end method

.method private setDecsetinternalBit(IZ)V
    .locals 3

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    const/16 v1, 0x80

    const/16 v2, 0x40

    if-ne p1, v2, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    invoke-direct {p0, v2, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->setDecsetinternalBit(IZ)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    iget p2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCurrentDecSetFlags:I

    or-int/2addr p1, p2

    :goto_1
    iput p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCurrentDecSetFlags:I

    goto :goto_2

    :cond_2
    iget p2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCurrentDecSetFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    goto :goto_1

    :goto_2
    return-void
.end method

.method private setDefaultTabStops()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTabStop:[Z

    and-int/lit8 v3, v1, 0x7

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTitle:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    invoke-virtual {v1, v0, p1}, Lcom/stryker/terminal/backend/TerminalOutput;->titleChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startEscapeSequence()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEscapeState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgs:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private unimplementedSequence(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unimplemented sequence char \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' (U+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%04x"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->logError(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->finishSequence()V

    return-void
.end method

.method private unknownParameter(I)V
    .locals 1

    .line 1
    const-string v0, "Unknown parameter: "

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->finishSequence()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private unknownSequence(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown sequence char \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' (numeric value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->logError(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->finishSequence()V

    return-void
.end method


# virtual methods
.method public append([BI)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->processByte(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearScrollCounter()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScrollCounter:I

    return-void
.end method

.method public doDecSetOrReset(ZI)V
    .locals 9

    invoke-static {p2}, Lcom/stryker/terminal/backend/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->setDecsetinternalBit(IZ)V

    :cond_0
    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    invoke-direct {p0, p2}, Lcom/stryker/terminal/backend/TerminalEmulator;->unknownParameter(I)V

    goto/16 :goto_2

    :pswitch_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->saveCursor()V

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->restoreCursor()V

    goto/16 :goto_2

    :pswitch_1
    if-eqz p1, :cond_8

    invoke-direct {p0, v0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_2

    :pswitch_2
    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    const/16 p1, 0x800

    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->setDecsetinternalBit(IZ)V

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iget p2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(IIII)V

    invoke-direct {p0, v0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorRowCol(II)V

    goto :goto_2

    :sswitch_0
    if-nez p1, :cond_8

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    goto :goto_2

    :pswitch_3
    :sswitch_1
    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAltBuffer:Lcom/stryker/terminal/backend/TerminalBuffer;

    :goto_0
    move-object v1, p2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mMainBuffer:Lcom/stryker/terminal/backend/TerminalBuffer;

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    if-eq v1, p2, :cond_8

    iget p2, v1, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    if-ne p2, v2, :cond_3

    iget p2, v1, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    if-eq p2, v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->saveCursor()V

    :cond_5
    iput-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedStateMain:Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

    iget p2, p1, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iget p1, p1, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->restoreCursor()V

    if-eqz v0, :cond_6

    iput p2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    :cond_6
    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->resizeScreen()V

    :cond_7
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAltBuffer:Lcom/stryker/terminal/backend/TerminalBuffer;

    if-ne v1, p1, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iget v5, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    const/16 v6, 0x20

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getStyle()J

    move-result-wide v7

    invoke-virtual/range {v1 .. v8}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockSet(IIIIIJ)V

    :cond_8
    :goto_2
    :pswitch_4
    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xc -> :sswitch_2
        0x19 -> :sswitch_2
        0x28 -> :sswitch_2
        0x2d -> :sswitch_2
        0x2f -> :sswitch_1
        0x42 -> :sswitch_2
        0x45 -> :sswitch_0
        0x3f7 -> :sswitch_2
        0x40a -> :sswitch_2
        0x7d4 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x417
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getCursorCol()I
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    return v0
.end method

.method public getCursorRow()I
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    return v0
.end method

.method public getCursorStyle()I
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorStyle:I

    return v0
.end method

.method public getScreen()Lcom/stryker/terminal/backend/TerminalBuffer;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    return-object v0
.end method

.method public getScrollCounter()I
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScrollCounter:I

    return v0
.end method

.method public getSelectedText(IIII)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/stryker/terminal/backend/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAlternateBufferActive()Z
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAltBuffer:Lcom/stryker/terminal/backend/TerminalBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCursorKeysApplicationMode()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isKeypadApplicationMode()Z
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isMouseTrackingActive()Z
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isReverseVideo()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isShowingCursor()Z
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public paste(Ljava/lang/String;)V
    .locals 3

    const-string v0, "(\u001b|[\u0080-\u009f])"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r?\n"

    const-string v1, "\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    const-string v2, "\u001b[200~"

    invoke-virtual {v1, v2}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    invoke-virtual {v1, p1}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    const-string v0, "\u001b[201~"

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public processCodePoint(I)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-eqz v1, :cond_31

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-eq v1, v2, :cond_30

    const/16 v4, 0x1a

    if-eq v1, v4, :cond_30

    const/16 v4, 0xa

    const/16 v5, 0x1b

    if-eq v1, v5, :cond_2e

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_0

    iput-boolean v3, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mContinueSequence:Z

    iget v4, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEscapeState:I

    const/4 v8, -0x1

    const/16 v9, 0x1000

    const/16 v10, 0x71

    const/16 v11, 0x7e

    const/16 v12, 0x70

    const/16 v13, 0x20

    const/16 v14, 0x74

    const/16 v15, 0x78

    const/4 v7, 0x2

    packed-switch v4, :pswitch_data_1

    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_1b

    :pswitch_1
    if-ne v1, v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->reset()V

    goto/16 :goto_1b

    :pswitch_2
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v7, v1, v2

    iget-object v4, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget v5, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    const/4 v6, 0x0

    iget v8, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    add-int v9, v5, v2

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockCopy(IIIIII)V

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    iget v4, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_1b

    :cond_1
    if-ne v1, v11, :cond_0

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v4, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget v9, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    add-int v5, v9, v2

    const/4 v6, 0x0

    iget v8, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    const/4 v10, 0x0

    move v7, v1

    invoke-virtual/range {v4 .. v10}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockCopy(IIIIII)V

    iget v4, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    add-int/2addr v4, v1

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_1b

    :pswitch_3
    if-ne v1, v10, :cond_0

    invoke-direct {v0, v3}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v2

    if-eqz v2, :cond_3

    if-ne v2, v7, :cond_2

    goto :goto_2

    :cond_2
    if-ne v2, v6, :cond_0

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    or-int/lit16 v1, v1, 0x80

    :goto_1
    iput v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    goto/16 :goto_1b

    :cond_3
    :goto_2
    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEffect:I

    and-int/lit16 v1, v1, -0x81

    goto :goto_1

    :pswitch_4
    invoke-direct {v0, v3}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v2

    if-ne v1, v15, :cond_0

    if-ltz v2, :cond_0

    if-gt v2, v7, :cond_0

    if-ne v2, v7, :cond_4

    goto :goto_3

    :cond_4
    move v6, v3

    :goto_3
    invoke-direct {v0, v9, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto/16 :goto_1b

    :pswitch_5
    invoke-direct {v0, v3}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v2

    if-eq v1, v10, :cond_5

    if-eq v1, v14, :cond_2a

    const/16 v2, 0x75

    if-eq v1, v2, :cond_2a

    goto/16 :goto_0

    :cond_5
    packed-switch v2, :pswitch_data_2

    goto/16 :goto_1b

    :pswitch_6
    iput v7, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorStyle:I

    goto/16 :goto_1b

    :pswitch_7
    iput v6, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorStyle:I

    goto/16 :goto_1b

    :pswitch_8
    iput v3, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorStyle:I

    goto/16 :goto_1b

    :pswitch_9
    if-ne v1, v12, :cond_0

    invoke-direct {v0, v3}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg0(I)I

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_9

    const/16 v2, 0x417

    if-eq v1, v2, :cond_9

    const/16 v2, 0x419

    if-ne v1, v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v2

    if-ne v2, v8, :cond_8

    invoke-direct {v0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    move v6, v7

    goto :goto_5

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Got DECRQM for unrecognized private DEC mode="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NeoTerm-Emulator"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v3

    goto :goto_5

    :cond_9
    :goto_4
    iget-object v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    iget-object v4, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAltBuffer:Lcom/stryker/terminal/backend/TerminalBuffer;

    if-ne v2, v4, :cond_7

    :goto_5
    iget-object v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "\u001b[?%d;%d$y"

    invoke-static {v4, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_1b

    :pswitch_a
    invoke-direct/range {p0 .. p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->doDeviceControl(I)V

    goto/16 :goto_1b

    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->doCsiBiggerThan(I)V

    goto/16 :goto_1b

    :pswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->doOscEsc(I)V

    goto/16 :goto_1b

    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->doOsc(I)V

    goto/16 :goto_1b

    :pswitch_e
    const/4 v4, 0x4

    invoke-direct {v0, v4}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v10

    if-eqz v10, :cond_a

    iget v12, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    goto :goto_6

    :cond_a
    move v12, v3

    :goto_6
    if-eqz v10, :cond_b

    iget v9, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    goto :goto_7

    :cond_b
    iget v9, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    :goto_7
    if-eqz v10, :cond_c

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    goto :goto_8

    :cond_c
    move v2, v3

    :goto_8
    if-eqz v10, :cond_d

    iget v10, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    goto :goto_9

    :cond_d
    iget v10, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    :goto_9
    const/16 v5, 0x72

    const/4 v4, 0x3

    if-eq v1, v5, :cond_1a

    if-eq v1, v14, :cond_1a

    const/16 v5, 0x76

    if-eq v1, v5, :cond_19

    const/16 v5, 0x7b

    if-eq v1, v15, :cond_e

    const/16 v7, 0x7a

    if-eq v1, v7, :cond_e

    if-eq v1, v5, :cond_e

    goto/16 :goto_0

    :cond_e
    if-eq v1, v15, :cond_f

    move v7, v6

    goto :goto_a

    :cond_f
    move v7, v3

    :goto_a
    if-ne v1, v5, :cond_10

    move v1, v6

    goto :goto_b

    :cond_10
    move v1, v3

    :goto_b
    if-eqz v7, :cond_11

    if-eqz v1, :cond_11

    move v5, v6

    goto :goto_c

    :cond_11
    move v5, v3

    :goto_c
    if-eqz v7, :cond_12

    move v8, v3

    move v7, v13

    goto :goto_d

    :cond_12
    invoke-direct {v0, v3, v8, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result v7

    move v8, v6

    :goto_d
    if-lt v7, v13, :cond_13

    if-le v7, v11, :cond_14

    :cond_13
    const/16 v11, 0xa0

    if-lt v7, v11, :cond_2a

    const/16 v11, 0xff

    if-gt v7, v11, :cond_2a

    :cond_14
    add-int/lit8 v11, v8, 0x1

    invoke-direct {v0, v8, v6, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result v13

    add-int/2addr v13, v12

    add-int/lit8 v14, v9, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v14, v8, 0x2

    invoke-direct {v0, v11, v6, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result v11

    add-int/2addr v11, v2

    add-int/lit8 v15, v10, 0x1

    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v8, v4

    iget v4, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-direct {v0, v14, v4, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result v4

    add-int/2addr v4, v12

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v9, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v8, v9, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result v8

    add-int/2addr v8, v2

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getStyle()J

    move-result-wide v8

    sub-int/2addr v13, v6

    :goto_e
    if-ge v13, v4, :cond_2a

    add-int/lit8 v10, v11, -0x1

    :goto_f
    if-ge v10, v2, :cond_18

    if-eqz v1, :cond_15

    iget-object v12, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    invoke-virtual {v12, v13, v10}, Lcom/stryker/terminal/backend/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/stryker/terminal/backend/TextStyle;->decodeEffect(J)I

    move-result v12

    and-int/lit16 v12, v12, 0x80

    if-nez v12, :cond_17

    :cond_15
    iget-object v14, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    if-eqz v5, :cond_16

    invoke-virtual {v14, v13, v10}, Lcom/stryker/terminal/backend/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v15

    move-wide/from16 v18, v15

    goto :goto_10

    :cond_16
    move-wide/from16 v18, v8

    :goto_10
    move v15, v10

    move/from16 v16, v13

    move/from16 v17, v7

    invoke-virtual/range {v14 .. v19}, Lcom/stryker/terminal/backend/TerminalBuffer;->setChar(IIIJ)V

    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_18
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_19
    invoke-direct {v0, v3, v6, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result v1

    sub-int/2addr v1, v6

    add-int/2addr v1, v12

    iget v5, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-direct {v0, v6, v6, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result v1

    sub-int/2addr v1, v6

    add-int/2addr v1, v2

    iget v5, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-direct {v0, v7, v1, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result v1

    add-int/2addr v1, v12

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v5, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v5, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v4, v5, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x5

    invoke-direct {v0, v5, v6, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    sub-int/2addr v5, v6

    add-int/2addr v5, v12

    iget v7, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v19

    const/4 v5, 0x6

    invoke-direct {v0, v5, v6, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    sub-int/2addr v5, v6

    add-int/2addr v5, v2

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v18

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    sub-int v2, v2, v19

    sub-int/2addr v1, v15

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    sub-int v1, v1, v18

    sub-int/2addr v4, v14

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v16

    iget-object v13, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    invoke-virtual/range {v13 .. v19}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockCopy(IIIIII)V

    goto/16 :goto_1b

    :cond_1a
    if-ne v1, v14, :cond_1b

    move v1, v6

    goto :goto_11

    :cond_1b
    move v1, v3

    :goto_11
    invoke-direct {v0, v3, v6, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    sub-int/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v12

    invoke-direct {v0, v6, v6, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v2

    iget v11, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    invoke-direct {v0, v7, v11, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result v7

    add-int/2addr v7, v6

    sub-int/2addr v9, v6

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v7, v12

    iget v9, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v4, v9, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result v4

    add-int/2addr v4, v6

    add-int/lit8 v9, v10, -0x1

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v2

    iget v9, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    const/4 v11, 0x4

    if-lt v9, v11, :cond_2a

    iget-object v11, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgs:[I

    array-length v12, v11

    if-lt v9, v12, :cond_1c

    array-length v9, v11

    sub-int/2addr v9, v6

    iput v9, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    :cond_1c
    const/4 v11, 0x4

    :goto_12
    iget v9, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    if-gt v11, v9, :cond_2a

    invoke-direct {v0, v11, v3, v3}, Lcom/stryker/terminal/backend/TerminalEmulator;->getArg(IIZ)I

    move-result v9

    if-eqz v9, :cond_25

    if-eq v9, v6, :cond_24

    const/4 v12, 0x4

    if-eq v9, v12, :cond_23

    const/16 v13, 0x8

    const/4 v14, 0x5

    if-eq v9, v14, :cond_22

    const/4 v15, 0x7

    const/16 v18, 0x10

    if-eq v9, v15, :cond_21

    const/16 v15, 0x16

    if-eq v9, v15, :cond_20

    const/16 v15, 0x1b

    if-eq v9, v15, :cond_1f

    const/16 v12, 0x18

    if-eq v9, v12, :cond_1e

    const/16 v12, 0x19

    if-eq v9, v12, :cond_1d

    move/from16 v19, v3

    move/from16 v20, v6

    goto :goto_17

    :cond_1d
    move/from16 v20, v3

    :goto_13
    move/from16 v19, v13

    goto :goto_17

    :cond_1e
    move/from16 v20, v3

    :goto_14
    const/16 v19, 0x4

    goto :goto_17

    :cond_1f
    move/from16 v20, v3

    :goto_15
    move/from16 v19, v18

    goto :goto_17

    :cond_20
    const/16 v15, 0x1b

    move/from16 v20, v3

    move/from16 v19, v6

    goto :goto_17

    :cond_21
    const/16 v15, 0x1b

    move/from16 v20, v6

    goto :goto_15

    :cond_22
    const/16 v15, 0x1b

    move/from16 v20, v6

    goto :goto_13

    :cond_23
    const/4 v14, 0x5

    const/16 v15, 0x1b

    move/from16 v20, v6

    goto :goto_14

    :cond_24
    const/4 v14, 0x5

    const/16 v15, 0x1b

    move/from16 v19, v6

    move/from16 v20, v19

    goto :goto_17

    :cond_25
    const/4 v14, 0x5

    const/16 v15, 0x1b

    const/16 v9, 0x1d

    if-nez v1, :cond_26

    move/from16 v20, v3

    :goto_16
    move/from16 v19, v9

    goto :goto_17

    :cond_26
    move/from16 v20, v6

    goto :goto_16

    :goto_17
    if-eqz v1, :cond_27

    if-nez v20, :cond_27

    const/16 v12, 0x1000

    goto :goto_18

    :cond_27
    iget-object v9, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    const/16 v12, 0x1000

    invoke-direct {v0, v12}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v22

    move-object/from16 v18, v9

    move/from16 v21, v1

    move/from16 v23, v2

    move/from16 v24, v10

    move/from16 v25, v5

    move/from16 v26, v8

    move/from16 v27, v7

    move/from16 v28, v4

    invoke-virtual/range {v18 .. v28}, Lcom/stryker/terminal/backend/TerminalBuffer;->setOrClearEffect(IZZZIIIIII)V

    :goto_18
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_12

    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->doCsiQuestionMark(I)V

    goto :goto_1b

    :pswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->doCsi(I)V

    goto :goto_1b

    :pswitch_11
    const/16 v2, 0x30

    if-ne v1, v2, :cond_28

    goto :goto_19

    :cond_28
    move v6, v3

    :goto_19
    iput-boolean v6, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingG1:Z

    goto :goto_1b

    :pswitch_12
    const/16 v2, 0x30

    if-ne v1, v2, :cond_29

    goto :goto_1a

    :cond_29
    move v6, v3

    :goto_1a
    iput-boolean v6, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingG0:Z

    goto :goto_1b

    :pswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->doEscPound(I)V

    goto :goto_1b

    :pswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->doEsc(I)V

    goto :goto_1b

    :pswitch_15
    if-lt v1, v13, :cond_2a

    invoke-direct/range {p0 .. p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->emitCodePoint(I)V

    :cond_2a
    :goto_1b
    :pswitch_16
    iget-boolean v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mContinueSequence:Z

    if-nez v1, :cond_31

    iput v3, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEscapeState:I

    goto :goto_1c

    :pswitch_17
    iput-boolean v6, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    goto :goto_1c

    :pswitch_18
    iput-boolean v3, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    goto :goto_1c

    :pswitch_19
    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    invoke-direct {v0, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorCol(I)V

    goto :goto_1c

    :pswitch_1a
    invoke-direct/range {p0 .. p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->doLinefeed()V

    goto :goto_1c

    :pswitch_1b
    invoke-direct {v0, v6}, Lcom/stryker/terminal/backend/TerminalEmulator;->nextTabStop(I)I

    move-result v1

    iput v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    goto :goto_1c

    :pswitch_1c
    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorCol:I

    if-ne v1, v2, :cond_2b

    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v1, v6

    if-ltz v1, :cond_31

    iget-object v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    invoke-virtual {v2, v1}, Lcom/stryker/terminal/backend/TerminalBuffer;->getLineWrap(I)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    invoke-virtual {v2, v1}, Lcom/stryker/terminal/backend/TerminalBuffer;->clearLineWrap(I)V

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v2, v6

    invoke-direct {v0, v1, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorRowCol(II)V

    goto :goto_1c

    :cond_2b
    sub-int/2addr v2, v6

    invoke-direct {v0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->setCursorCol(I)V

    goto :goto_1c

    :pswitch_1d
    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEscapeState:I

    if-ne v2, v4, :cond_2d

    :cond_2c
    invoke-direct/range {p0 .. p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->doOsc(I)V

    goto :goto_1c

    :cond_2d
    iget-object v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    invoke-virtual {v1}, Lcom/stryker/terminal/backend/TerminalOutput;->onBell()V

    goto :goto_1c

    :cond_2e
    iget v2, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEscapeState:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2f

    return-void

    :cond_2f
    if-eq v2, v4, :cond_2c

    invoke-direct/range {p0 .. p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->startEscapeSequence()V

    goto :goto_1c

    :cond_30
    iget v1, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEscapeState:I

    if-eqz v1, :cond_31

    iput v3, v0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEscapeState:I

    const/16 v1, 0x7f

    invoke-direct {v0, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->emitCodePoint(I)V

    :cond_31
    :goto_1c
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_16
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCursorStyle:I

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mArgIndex:I

    iput-boolean v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mContinueSequence:Z

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mEscapeState:I

    iput-boolean v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mInsertMode:Z

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    iput v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    iput v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    iput-boolean v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mAboutToAutoWrap:Z

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedStateMain:Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedStateAlt:Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

    const/16 v3, 0x100

    iput v3, v2, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v3, v1, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v3, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mForeColor:I

    const/16 v3, 0x101

    iput v3, v2, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v3, v1, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v3, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBackColor:I

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->setDefaultTabStops()V

    iput-boolean v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingG1:Z

    iput-boolean v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingG0:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedStateMain:Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

    iput v0, v2, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v0, v2, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v0, v2, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iput v0, v2, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedStateAlt:Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

    iput v0, v2, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v0, v2, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v0, v2, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iput v0, v2, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCurrentDecSetFlags:I

    const/16 v2, 0x8

    invoke-direct {p0, v2, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->setDecsetinternalBit(IZ)V

    const/16 v2, 0x10

    invoke-direct {p0, v2, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->setDecsetinternalBit(IZ)V

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedStateMain:Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedStateAlt:Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;

    iget v3, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mCurrentDecSetFlags:I

    iput v3, v2, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v3, v1, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v3, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSavedDecSetFlags:I

    iput-byte v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mUtf8Index:B

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColors:Lcom/stryker/terminal/backend/TerminalColors;

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalColors;->reset()V

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalOutput;->onColorsChanged()V

    return-void
.end method

.method public resize(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    .line 2
    .line 3
    if-ne v0, p2, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    .line 6
    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x2

    .line 11
    if-lt p1, v1, :cond_3

    .line 12
    .line 13
    if-lt p2, v1, :cond_3

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eq v0, p2, :cond_1

    .line 17
    .line 18
    iput p2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    .line 19
    .line 20
    iput v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    .line 21
    .line 22
    iput p2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    .line 23
    .line 24
    :cond_1
    iget p2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    .line 25
    .line 26
    if-eq p2, p1, :cond_2

    .line 27
    .line 28
    iput p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    .line 29
    .line 30
    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTabStop:[Z

    .line 31
    .line 32
    new-array v2, p1, [Z

    .line 33
    .line 34
    iput-object v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTabStop:[Z

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->setDefaultTabStops()V

    .line 37
    .line 38
    .line 39
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget-object p2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTabStop:[Z

    .line 44
    .line 45
    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    .line 47
    .line 48
    iput v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    .line 49
    .line 50
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    .line 51
    .line 52
    iput p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    .line 53
    .line 54
    :cond_2
    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalEmulator;->resizeScreen()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string v1, "rows="

    .line 61
    .line 62
    const-string v2, ", columns="

    .line 63
    .line 64
    invoke-static {v1, p2, v2, p1}, Landroid/support/v4/media/session/a;->n(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0
.end method

.method public sendMouseEvent(IIIZ)V
    .locals 7

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    move p2, v0

    :cond_0
    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColumns:I

    if-le p2, v1, :cond_1

    move p2, v1

    :cond_1
    if-ge p3, v0, :cond_2

    move p3, v0

    :cond_2
    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRows:I

    if-le p3, v1, :cond_3

    move p3, v1

    :cond_3
    const/16 v1, 0x20

    if-ne p1, v1, :cond_4

    const/16 v2, 0x80

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x200

    invoke-direct {p0, v2}, Lcom/stryker/terminal/backend/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v2

    const/16 v3, 0x4d

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u001b[<%d;%d;%d"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0x6d

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 v2, 0x3

    if-eqz p4, :cond_7

    goto :goto_1

    :cond_7
    move p1, v2

    :goto_1
    const/16 p4, 0xdf

    if-gt p2, p4, :cond_9

    if-le p3, p4, :cond_8

    goto :goto_2

    :cond_8
    const/4 p4, 0x6

    new-array v4, p4, [B

    const/16 v5, 0x1b

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    const/16 v5, 0x5b

    aput-byte v5, v4, v0

    const/4 v0, 0x2

    aput-byte v3, v4, v0

    add-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, v4, v2

    add-int/2addr p2, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput-byte p1, v4, p2

    add-int/2addr p3, v1

    int-to-byte p1, p3

    const/4 p2, 0x5

    aput-byte p1, v4, p2

    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    invoke-virtual {p1, v4, v6, p4}, Lcom/stryker/terminal/backend/TerminalOutput;->write([BII)V

    :cond_9
    :goto_2
    return-void
.end method

.method public setColorScheme(Lcom/stryker/terminal/backend/TerminalColorScheme;)V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mColors:Lcom/stryker/terminal/backend/TerminalColors;

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/backend/TerminalColors;->reset(Lcom/stryker/terminal/backend/TerminalColorScheme;)V

    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mSession:Lcom/stryker/terminal/backend/TerminalOutput;

    invoke-virtual {p1}, Lcom/stryker/terminal/backend/TerminalOutput;->onColorsChanged()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TerminalEmulator[size="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    .line 9
    .line 10
    iget v1, v1, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "x"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mScreen:Lcom/stryker/terminal/backend/TerminalBuffer;

    .line 21
    .line 22
    iget v1, v1, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", margins={"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mTopMargin:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ","

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mRightMargin:I

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v2, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mBottomMargin:I

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/stryker/terminal/backend/TerminalEmulator;->mLeftMargin:I

    .line 59
    .line 60
    const-string v2, "}]"

    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method
