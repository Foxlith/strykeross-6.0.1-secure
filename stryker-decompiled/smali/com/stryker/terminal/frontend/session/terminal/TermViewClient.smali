.class public final Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;


# instance fields
.field private final context:Landroid/content/Context;

.field private lastTitle:Ljava/lang/String;

.field private mVirtualControlKeyDown:Z

.field private mVirtualFnKeyDown:Z

.field private mVirtualShiftKeyDown:Z

.field private termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->context:Landroid/content/Context;

    const-string p1, ""

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->lastTitle:Ljava/lang/String;

    return-void
.end method

.method private final changeFontSize(Z)V
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    mul-int/lit8 p1, p1, 0x2

    sget-object v1, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->getTextSize()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/stryker/terminal/component/config/NeoPreference;->validateFontSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->setTextSize(I)V

    const-string v0, "neoterm_general_font_size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/stryker/terminal/component/config/NeoPreference;->store(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private final handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermSession()Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/stryker/terminal/component/session/ShellTermSession;

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/stryker/terminal/component/session/ShellTermSession;->getShellProfile()Lcom/stryker/terminal/component/session/ShellProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stryker/terminal/component/session/ShellProfile;->getEnableSpecialVolumeKeys()Z

    move-result v1

    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    return v0

    :cond_3
    const/16 p2, 0x19

    const/4 v2, 0x1

    if-ne p1, p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz v1, :cond_4

    move v0, v2

    :cond_4
    iput-boolean v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->mVirtualControlKeyDown:Z

    return v2

    :cond_5
    const/16 p2, 0x18

    if-ne p1, p2, :cond_7

    if-eqz p3, :cond_6

    if-eqz v1, :cond_6

    move v0, v2

    :cond_6
    iput-boolean v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->mVirtualFnKeyDown:Z

    return v2

    :cond_7
    return v0
.end method

.method private final removeExtraKeys()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getExtraKeysView()Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->clearUserKeys()V

    :cond_1
    return-void
.end method

.method public static synthetic updateExtraKeys$default(Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->updateExtraKeys(Ljava/lang/String;Z)V

    return-void
.end method

.method private final updateExtraKeysVisibility()Z
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getExtraKeysView()Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermSession()Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/stryker/terminal/component/session/ShellTermSession;

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Lcom/stryker/terminal/component/session/ShellTermSession;->getShellProfile()Lcom/stryker/terminal/component/session/ShellProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stryker/terminal/component/session/ShellProfile;->getEnableExtraKeys()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public copyModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getTermSessionData()Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    return-object v0
.end method

.method public onCodePoint(IZLcom/stryker/terminal/backend/TerminalSession;)Z
    .locals 6

    iget-boolean p2, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->mVirtualFnKeyDown:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1d

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p2

    int-to-char v1, p2

    const/16 v2, 0x77

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v2, :cond_0

    const/16 p1, 0x13

    :goto_0
    move v1, v0

    move p2, v4

    goto/16 :goto_5

    :cond_0
    const/16 v2, 0x61

    if-ne v1, v2, :cond_1

    const/16 p1, 0x15

    goto :goto_0

    :cond_1
    const/16 v2, 0x73

    if-ne v1, v2, :cond_2

    const/16 p1, 0x14

    goto :goto_0

    :cond_2
    const/16 v2, 0x64

    if-ne v1, v2, :cond_3

    const/16 p1, 0x16

    goto :goto_0

    :cond_3
    const/16 v2, 0x70

    if-ne v1, v2, :cond_4

    const/16 p1, 0x5c

    goto :goto_0

    :cond_4
    const/16 v2, 0x6e

    if-ne v1, v2, :cond_5

    const/16 p1, 0x5d

    goto :goto_0

    :cond_5
    const/16 v2, 0x74

    if-ne v1, v2, :cond_6

    const/16 p1, 0x3d

    goto :goto_0

    :cond_6
    const/16 v2, 0x69

    const/16 v5, 0x7c

    if-ne v1, v2, :cond_7

    move v1, v0

    move p2, v4

    move p1, v5

    goto/16 :goto_5

    :cond_7
    const/16 v2, 0x68

    if-ne v1, v2, :cond_8

    const/16 p2, 0x7e

    :goto_1
    move v1, v0

    :goto_2
    move p1, v4

    goto/16 :goto_5

    :cond_8
    const/16 v2, 0x75

    if-ne v1, v2, :cond_9

    const/16 p2, 0x5f

    goto :goto_1

    :cond_9
    const/16 v2, 0x6c

    if-ne v1, v2, :cond_a

    move v1, v0

    move p1, v4

    move p2, v5

    goto/16 :goto_5

    :cond_a
    const/16 v2, 0x31

    if-ne v1, v2, :cond_b

    goto :goto_3

    :cond_b
    const/16 v2, 0x32

    if-ne v1, v2, :cond_c

    goto :goto_3

    :cond_c
    const/16 v2, 0x33

    if-ne v1, v2, :cond_d

    goto :goto_3

    :cond_d
    const/16 v2, 0x34

    if-ne v1, v2, :cond_e

    goto :goto_3

    :cond_e
    const/16 v2, 0x35

    if-ne v1, v2, :cond_f

    goto :goto_3

    :cond_f
    const/16 v2, 0x36

    if-ne v1, v2, :cond_10

    goto :goto_3

    :cond_10
    const/16 v2, 0x37

    if-ne v1, v2, :cond_11

    goto :goto_3

    :cond_11
    const/16 v2, 0x38

    if-ne v1, v2, :cond_12

    goto :goto_3

    :cond_12
    const/16 v2, 0x39

    if-ne v1, v2, :cond_13

    :goto_3
    add-int/lit8 p1, p1, 0x52

    goto/16 :goto_0

    :cond_13
    const/16 p1, 0x30

    if-ne v1, p1, :cond_14

    const/16 p1, 0x8c

    goto/16 :goto_0

    :cond_14
    const/16 p1, 0x65

    if-ne v1, p1, :cond_15

    const/16 p2, 0x1b

    goto :goto_1

    :cond_15
    const/16 p1, 0x2e

    if-ne v1, p1, :cond_16

    const/16 p2, 0x1c

    goto :goto_1

    :cond_16
    const/16 p1, 0x62

    if-ne v1, p1, :cond_17

    goto :goto_4

    :cond_17
    const/16 p1, 0x66

    if-ne v1, p1, :cond_18

    goto :goto_4

    :cond_18
    const/16 p1, 0x78

    if-ne v1, p1, :cond_19

    :goto_4
    move v1, v3

    goto :goto_2

    :cond_19
    const/16 p1, 0x76

    if-ne v1, p1, :cond_1a

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->context:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {p1, p2}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/media/AudioManager;

    const/high16 p2, -0x80000000

    invoke-virtual {p1, v0, p2, v3}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    :cond_1a
    move v1, v0

    move p1, v4

    move p2, p1

    :goto_5
    if-eq p1, v4, :cond_1b

    if-eqz p3, :cond_1c

    invoke-virtual {p3}, Lcom/stryker/terminal/backend/TerminalSession;->getEmulator()Lcom/stryker/terminal/backend/TerminalEmulator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/stryker/terminal/backend/TerminalEmulator;->isCursorKeysApplicationMode()Z

    move-result v1

    invoke-virtual {p2}, Lcom/stryker/terminal/backend/TerminalEmulator;->isKeypadApplicationMode()Z

    move-result p2

    invoke-static {p1, v0, v1, p2}, Lcom/stryker/terminal/backend/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_6

    :cond_1b
    if-eq p2, v4, :cond_1c

    if-eqz p3, :cond_1c

    invoke-virtual {p3, v1, p2}, Lcom/stryker/terminal/backend/TerminalSession;->writeCodePoint(ZI)V

    :cond_1c
    :goto_6
    return v3

    :cond_1d
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/stryker/terminal/backend/TerminalSession;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermUI()Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq p1, v2, :cond_f

    const/16 v2, 0x42

    if-eq p1, v2, :cond_c

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result p1

    int-to-char p1, p1

    const/16 p2, 0x76

    if-ne p1, p2, :cond_2

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;->requirePaste()V

    goto :goto_1

    :cond_2
    const/16 p2, 0x6e

    if-ne p1, p2, :cond_3

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;->requireCreateNew()V

    goto :goto_1

    :cond_3
    const/16 p2, 0x7a

    if-ne p1, p2, :cond_4

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;->requireSwitchToPrevious()V

    goto :goto_1

    :cond_4
    const/16 p2, 0x78

    if-ne p1, p2, :cond_5

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;->requireSwitchToNext()V

    goto :goto_1

    :cond_5
    const/16 p2, 0x66

    if-ne p1, p2, :cond_6

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;->requireToggleFullScreen()V

    goto :goto_1

    :cond_6
    const/16 p2, 0x2d

    if-ne p1, p2, :cond_7

    invoke-direct {p0, v3}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->changeFontSize(Z)V

    goto :goto_1

    :cond_7
    const/16 p2, 0x2b

    if-ne p1, p2, :cond_8

    invoke-direct {p0, v0}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->changeFontSize(Z)V

    :cond_8
    :goto_1
    return v0

    :cond_9
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result p1

    int-to-char p1, p1

    const/16 p2, 0x31

    if-gt p2, p1, :cond_b

    const/16 p2, 0x3a

    if-ge p1, p2, :cond_b

    add-int/lit8 p1, p1, -0x30

    if-eqz v1, :cond_a

    invoke-interface {v1, p1}, Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;->requireSwitchTo(I)V

    :cond_a
    return v0

    :cond_b
    return v3

    :cond_c
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_e

    if-eqz p3, :cond_e

    invoke-virtual {p3}, Lcom/stryker/terminal/backend/TerminalSession;->isRunning()Z

    move-result p1

    if-nez p1, :cond_e

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;->requireClose()V

    :cond_d
    return v0

    :cond_e
    return v3

    :cond_f
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_10

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;->requireFinishAutoCompletion()Z

    move-result v3

    :cond_10
    return v3
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScale(F)F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const v0, 0x3f8ccccd    # 1.1f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->changeFontSize(Z)V

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->context:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public readAltKey()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getExtraKeysView()Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->readAltButton()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->mVirtualFnKeyDown:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public readControlKey()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getExtraKeysView()Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->readControlButton()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->mVirtualControlKeyDown:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public readFnKey()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getExtraKeysView()Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->readFnButton()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->mVirtualFnKeyDown:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public readShiftKey()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getExtraKeysView()Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->readShiftButton()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->mVirtualShiftKeyDown:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final setTermSessionData(Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    return-void
.end method

.method public shouldBackButtonBeMappedToEscape()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermSession()Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/stryker/terminal/component/session/ShellTermSession;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/ShellTermSession;->getShellProfile()Lcom/stryker/terminal/component/session/ShellProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/ShellProfile;->getEnableBackKeyToEscape()Z

    move-result v0

    return v0
.end method

.method public final updateExtraKeys(Ljava/lang/String;Z)V
    .locals 5

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getExtraKeysView()Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->lastTitle:Ljava/lang/String;

    invoke-static {v2, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->updateExtraKeysVisibility()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->removeExtraKeys()V

    sget-object p2, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-class v4, Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;

    invoke-static {p2, v4, v2, v3, v1}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object p2

    check-cast p2, Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;

    invoke-virtual {p2, p1, v0}, Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;->showShortcutKeys(Ljava/lang/String;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->updateButtons()V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->lastTitle:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method
