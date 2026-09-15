.class public final Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;


# instance fields
.field private bellController:Lcom/stryker/terminal/frontend/session/terminal/BellController;

.field private termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBellController()Lcom/stryker/terminal/frontend/session/terminal/BellController;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;->bellController:Lcom/stryker/terminal/frontend/session/terminal/BellController;

    return-object v0
.end method

.method public final getTermSessionData()Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    return-object v0
.end method

.method public onBell(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "null cannot be cast to non-null type com.stryker.terminal.component.session.ShellTermSession"

    invoke-static {p1, v1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/stryker/terminal/component/session/ShellTermSession;

    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;->bellController:Lcom/stryker/terminal/frontend/session/terminal/BellController;

    if-nez v1, :cond_1

    new-instance v1, Lcom/stryker/terminal/frontend/session/terminal/BellController;

    invoke-direct {v1}, Lcom/stryker/terminal/frontend/session/terminal/BellController;-><init>()V

    iput-object v1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;->bellController:Lcom/stryker/terminal/frontend/session/terminal/BellController;

    :cond_1
    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;->bellController:Lcom/stryker/terminal/frontend/session/terminal/BellController;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "termView.context"

    invoke-static {v0, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1}, Lcom/stryker/terminal/frontend/session/terminal/BellController;->bellOrVibrate(Landroid/content/Context;Lcom/stryker/terminal/component/session/ShellTermSession;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClipboardText(Lcom/stryker/terminal/backend/TerminalSession;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {p1, v0}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/ClipboardManager;

    const-string v0, ""

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_1
    return-void
.end method

.method public onColorsChanged(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->onScreenUpdated()V

    :cond_1
    return-void
.end method

.method public onSessionFinished(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 0

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermUI()Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;->requireOnSessionFinished()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 0

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->onScreenUpdated()V

    :cond_0
    return-void
.end method

.method public onTitleChanged(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/stryker/terminal/backend/TerminalSession;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermUI()Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/stryker/terminal/backend/TerminalSession;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;->requireUpdateTitle(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final setBellController(Lcom/stryker/terminal/frontend/session/terminal/BellController;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;->bellController:Lcom/stryker/terminal/frontend/session/terminal/BellController;

    return-void
.end method

.method public final setTermSessionData(Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;->termSessionData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    return-void
.end method
