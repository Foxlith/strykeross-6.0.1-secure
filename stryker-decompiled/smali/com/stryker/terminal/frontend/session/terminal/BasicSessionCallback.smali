.class public Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;


# instance fields
.field private terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V
    .locals 1

    const-string v0, "terminalView"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    return-void
.end method


# virtual methods
.method public final getTerminalView()Lcom/stryker/terminal/frontend/session/view/TerminalView;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    return-object v0
.end method

.method public onBell(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 0

    return-void
.end method

.method public onClipboardText(Lcom/stryker/terminal/backend/TerminalSession;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onColorsChanged(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->onScreenUpdated()V

    :cond_0
    return-void
.end method

.method public onSessionFinished(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->onScreenUpdated()V

    :cond_0
    return-void
.end method

.method public onTitleChanged(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 0

    return-void
.end method

.method public final setTerminalView(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    return-void
.end method
