.class public final Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;


# instance fields
.field private final terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V
    .locals 1

    const-string v0, "terminalView"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    return-void
.end method


# virtual methods
.method public copyModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public final getTerminalView()Lcom/stryker/terminal/frontend/session/view/TerminalView;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    return-object v0
.end method

.method public onCodePoint(IZLcom/stryker/terminal/backend/TerminalSession;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/stryker/terminal/backend/TerminalSession;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScale(F)F
    .locals 3

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
    const/4 p1, -0x1

    :goto_1
    mul-int/lit8 p1, p1, 0x2

    sget-object v1, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {v2}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->getTextSize()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/stryker/terminal/component/config/NeoPreference;->validateFontSize(I)I

    move-result p1

    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {v1, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->setTextSize(I)V

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {p1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p1, v0}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public readAltKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readControlKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFnKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readShiftKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldBackButtonBeMappedToEscape()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
