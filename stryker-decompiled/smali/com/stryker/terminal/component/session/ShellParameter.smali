.class public final Lcom/stryker/terminal/component/session/ShellParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private arguments:[Ljava/lang/String;

.field private cwd:Ljava/lang/String;

.field private env:[Lw4/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lw4/c;"
        }
    .end annotation
.end field

.field private executablePath:Ljava/lang/String;

.field private initialCommand:Ljava/lang/String;

.field private sessionCallback:Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

.field private sessionId:Lcom/stryker/terminal/bridge/SessionId;

.field private shellProfile:Lcom/stryker/terminal/component/session/ShellProfile;

.field private systemShell:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final arguments([Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->arguments:[Ljava/lang/String;

    return-object p0
.end method

.method public final callback(Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;)Lcom/stryker/terminal/component/session/ShellParameter;
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->sessionCallback:Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

    return-object p0
.end method

.method public final currentWorkingDirectory(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->cwd:Ljava/lang/String;

    return-object p0
.end method

.method public final environment([Lw4/c;)Lcom/stryker/terminal/component/session/ShellParameter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lw4/c;",
            ")",
            "Lcom/stryker/terminal/component/session/ShellParameter;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->env:[Lw4/c;

    return-object p0
.end method

.method public final executablePath(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->executablePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getArguments()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellParameter;->arguments:[Ljava/lang/String;

    return-object v0
.end method

.method public final getCwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellParameter;->cwd:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnv()[Lw4/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lw4/c;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellParameter;->env:[Lw4/c;

    return-object v0
.end method

.method public final getExecutablePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellParameter;->executablePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getInitialCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellParameter;->initialCommand:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionCallback()Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellParameter;->sessionCallback:Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

    return-object v0
.end method

.method public final getSessionId()Lcom/stryker/terminal/bridge/SessionId;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellParameter;->sessionId:Lcom/stryker/terminal/bridge/SessionId;

    return-object v0
.end method

.method public final getShellProfile()Lcom/stryker/terminal/component/session/ShellProfile;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellParameter;->shellProfile:Lcom/stryker/terminal/component/session/ShellProfile;

    return-object v0
.end method

.method public final getSystemShell()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellParameter;->systemShell:Z

    return v0
.end method

.method public final initialCommand(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->initialCommand:Ljava/lang/String;

    return-object p0
.end method

.method public final profile(Lcom/stryker/terminal/component/session/ShellProfile;)Lcom/stryker/terminal/component/session/ShellParameter;
    .locals 1

    const-string v0, "shellProfile"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->shellProfile:Lcom/stryker/terminal/component/session/ShellProfile;

    return-object p0
.end method

.method public final session(Lcom/stryker/terminal/bridge/SessionId;)Lcom/stryker/terminal/component/session/ShellParameter;
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->sessionId:Lcom/stryker/terminal/bridge/SessionId;

    return-object p0
.end method

.method public final setArguments([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->arguments:[Ljava/lang/String;

    return-void
.end method

.method public final setCwd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->cwd:Ljava/lang/String;

    return-void
.end method

.method public final setEnv([Lw4/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lw4/c;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->env:[Lw4/c;

    return-void
.end method

.method public final setExecutablePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->executablePath:Ljava/lang/String;

    return-void
.end method

.method public final setInitialCommand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->initialCommand:Ljava/lang/String;

    return-void
.end method

.method public final setSessionCallback(Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->sessionCallback:Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

    return-void
.end method

.method public final setSessionId(Lcom/stryker/terminal/bridge/SessionId;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->sessionId:Lcom/stryker/terminal/bridge/SessionId;

    return-void
.end method

.method public final setShellProfile(Lcom/stryker/terminal/component/session/ShellProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->shellProfile:Lcom/stryker/terminal/component/session/ShellProfile;

    return-void
.end method

.method public final setSystemShell(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->systemShell:Z

    return-void
.end method

.method public final systemShell(Z)Lcom/stryker/terminal/component/session/ShellParameter;
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/session/ShellParameter;->systemShell:Z

    return-object p0
.end method

.method public final willCreateNewSession()Z
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellParameter;->sessionId:Lcom/stryker/terminal/bridge/SessionId;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stryker/terminal/bridge/SessionId;->NEW_SESSION:Lcom/stryker/terminal/bridge/SessionId;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/bridge/SessionId;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
