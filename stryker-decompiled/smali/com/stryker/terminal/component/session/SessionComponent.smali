.class public final Lcom/stryker/terminal/component/session/SessionComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/component/NeoComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/component/session/SessionComponent$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stryker/terminal/component/session/SessionComponent$Companion;

.field private static IS_LIBRARIES_LOADED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/component/session/SessionComponent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/component/session/SessionComponent$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/component/session/SessionComponent;->Companion:Lcom/stryker/terminal/component/session/SessionComponent$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getIS_LIBRARIES_LOADED$cp()Z
    .locals 1

    sget-boolean v0, Lcom/stryker/terminal/component/session/SessionComponent;->IS_LIBRARIES_LOADED:Z

    return v0
.end method

.method public static final synthetic access$setIS_LIBRARIES_LOADED$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/stryker/terminal/component/session/SessionComponent;->IS_LIBRARIES_LOADED:Z

    return-void
.end method


# virtual methods
.method public final createSession(Landroid/content/Context;Lcom/stryker/terminal/component/session/ShellParameter;)Lcom/stryker/terminal/component/session/ShellTermSession;
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameter"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;

    invoke-direct {v0}, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/stryker/terminal/component/session/ShellParameter;->getExecutablePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->executablePath(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stryker/terminal/component/session/ShellParameter;->getCwd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->currentWorkingDirectory(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stryker/terminal/component/session/ShellParameter;->getSessionCallback()Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->callback(Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stryker/terminal/component/session/ShellParameter;->getSystemShell()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->systemShell(Z)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stryker/terminal/component/session/ShellParameter;->getEnv()[Lw4/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->envArray([Lw4/c;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stryker/terminal/component/session/ShellParameter;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->argArray([Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stryker/terminal/component/session/ShellParameter;->getInitialCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->initialCommand(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stryker/terminal/component/session/ShellParameter;->getShellProfile()Lcom/stryker/terminal/component/session/ShellProfile;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->profile(Lcom/stryker/terminal/component/session/ShellProfile;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->create(Landroid/content/Context;)Lcom/stryker/terminal/component/session/ShellTermSession;

    move-result-object p1

    return-object p1
.end method

.method public final createSession(Landroid/content/Context;Lcom/stryker/terminal/component/session/XParameter;)Lcom/stryker/terminal/component/session/XSession;
    .locals 1

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameter"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Lf/q;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/stryker/terminal/component/session/SessionComponent;->Companion:Lcom/stryker/terminal/component/session/SessionComponent$Companion;

    invoke-static {p2}, Lcom/stryker/terminal/component/session/SessionComponent$Companion;->access$checkLibrariesLoaded(Lcom/stryker/terminal/component/session/SessionComponent$Companion;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/stryker/terminal/component/session/XSession;

    check-cast p1, Lf/q;

    new-instance v0, Lcom/stryker/terminal/component/session/XSessionData;

    invoke-direct {v0}, Lcom/stryker/terminal/component/session/XSessionData;-><init>()V

    invoke-direct {p2, p1, v0}, Lcom/stryker/terminal/component/session/XSession;-><init>(Lf/q;Lcom/stryker/terminal/component/session/XSessionData;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot load libraries!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Creating X sessions requires Activity, but got Context"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onServiceDestroy()V
    .locals 0

    return-void
.end method

.method public onServiceInit()V
    .locals 0

    return-void
.end method

.method public onServiceObtained()V
    .locals 0

    return-void
.end method
