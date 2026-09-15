.class public final Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private extraKeysView:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

.field private onAutoCompleteListener:Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

.field private profile:Lcom/stryker/terminal/component/session/ShellProfile;

.field private sessionCallback:Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;

.field private termSession:Lcom/stryker/terminal/backend/TerminalSession;

.field private termUI:Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;

.field private termView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

.field private viewClient:Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->onAutoCompleteListener:Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;->onCleanUp()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->onAutoCompleteListener:Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->sessionCallback:Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;->setTermSessionData(Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;)V

    :goto_0
    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->viewClient:Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->setTermSessionData(Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;)V

    :goto_1
    iput-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->termUI:Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;

    iput-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->termView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iput-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->extraKeysView:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    iput-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->termSession:Lcom/stryker/terminal/backend/TerminalSession;

    iput-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->profile:Lcom/stryker/terminal/component/session/ShellProfile;

    return-void
.end method

.method public final getExtraKeysView()Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->extraKeysView:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    return-object v0
.end method

.method public final getOnAutoCompleteListener()Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->onAutoCompleteListener:Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

    return-object v0
.end method

.method public final getProfile()Lcom/stryker/terminal/component/session/ShellProfile;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->profile:Lcom/stryker/terminal/component/session/ShellProfile;

    return-object v0
.end method

.method public final getSessionCallback()Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->sessionCallback:Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;

    return-object v0
.end method

.method public final getTermSession()Lcom/stryker/terminal/backend/TerminalSession;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->termSession:Lcom/stryker/terminal/backend/TerminalSession;

    return-object v0
.end method

.method public final getTermUI()Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->termUI:Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;

    return-object v0
.end method

.method public final getTermView()Lcom/stryker/terminal/frontend/session/view/TerminalView;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->termView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    return-object v0
.end method

.method public final getViewClient()Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->viewClient:Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;

    return-object v0
.end method

.method public final initializeSessionWith(Lcom/stryker/terminal/backend/TerminalSession;Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->termSession:Lcom/stryker/terminal/backend/TerminalSession;

    iput-object p2, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->sessionCallback:Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;

    iput-object p3, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->viewClient:Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;->setTermSessionData(Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;)V

    :goto_0
    iget-object p2, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->viewClient:Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p0}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->setTermSessionData(Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;)V

    :goto_1
    instance-of p2, p1, Lcom/stryker/terminal/component/session/ShellTermSession;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/stryker/terminal/component/session/ShellTermSession;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/ShellTermSession;->getShellProfile()Lcom/stryker/terminal/component/session/ShellProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->profile:Lcom/stryker/terminal/component/session/ShellProfile;

    :cond_2
    return-void
.end method

.method public final initializeViewWith(Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->termUI:Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;

    iput-object p2, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->termView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iput-object p3, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->extraKeysView:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    return-void
.end method

.method public final setExtraKeysView(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->extraKeysView:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    return-void
.end method

.method public final setOnAutoCompleteListener(Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->onAutoCompleteListener:Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

    return-void
.end method

.method public final setProfile(Lcom/stryker/terminal/component/session/ShellProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->profile:Lcom/stryker/terminal/component/session/ShellProfile;

    return-void
.end method

.method public final setSessionCallback(Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->sessionCallback:Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;

    return-void
.end method

.method public final setTermSession(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->termSession:Lcom/stryker/terminal/backend/TerminalSession;

    return-void
.end method

.method public final setTermUI(Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->termUI:Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;

    return-void
.end method

.method public final setTermView(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->termView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    return-void
.end method

.method public final setViewClient(Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->viewClient:Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;

    return-void
.end method
