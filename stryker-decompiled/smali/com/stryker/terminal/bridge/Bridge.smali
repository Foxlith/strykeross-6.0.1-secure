.class public Lcom/stryker/terminal/bridge/Bridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_EXECUTE:Ljava/lang/String; = "neoterm.action.remote.execute"

.field public static final ACTION_SILENT_RUN:Ljava/lang/String; = "neoterm.action.remote.silent-run"

.field public static final EXTRA_COMMAND:Ljava/lang/String; = "neoterm.extra.remote.execute.command"

.field public static final EXTRA_EXECUTABLE:Ljava/lang/String; = "neoterm.extra.remote.execute.executable"

.field public static final EXTRA_FOREGROUND:Ljava/lang/String; = "neoterm.extra.remote.execute.foreground"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "neoterm.extra.remote.execute.session"

.field private static final NEOTERM_COMPONENT:Landroid/content/ComponentName;

.field private static final NEOTERM_PACKAGE:Ljava/lang/String; = "com.stryker.terminal"

.field private static final NEOTERM_REMOTE_INTERFACE:Ljava/lang/String; = "com.stryker.terminal.ui.term.NeoTermRemoteInterface"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.stryker.terminal"

    const-string v2, "com.stryker.terminal.ui.term.NeoTermRemoteInterface"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/stryker/terminal/bridge/Bridge;->NEOTERM_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0}, Ljava/lang/IllegalAccessException;-><init>()V

    throw v0
.end method

.method public static createCleanExecuteIntent(Lcom/stryker/terminal/bridge/SessionId;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .line 1
    const-string v0, "executablePath"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "session id"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "neoterm.action.remote.execute"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/stryker/terminal/bridge/Bridge;->NEOTERM_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "neoterm.extra.remote.execute.executable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "neoterm.extra.remote.execute.session"

    invoke-virtual {p0}, Lcom/stryker/terminal/bridge/SessionId;->getSessionId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "neoterm.extra.remote.execute.foreground"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static createCleanExecuteIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1

    .line 2
    sget-object v0, Lcom/stryker/terminal/bridge/SessionId;->NEW_SESSION:Lcom/stryker/terminal/bridge/SessionId;

    invoke-static {v0, p0, p1}, Lcom/stryker/terminal/bridge/Bridge;->createCleanExecuteIntent(Lcom/stryker/terminal/bridge/SessionId;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createExecuteIntent(Lcom/stryker/terminal/bridge/SessionId;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/stryker/terminal/bridge/Bridge;->createExecuteIntent(Lcom/stryker/terminal/bridge/SessionId;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createExecuteIntent(Lcom/stryker/terminal/bridge/SessionId;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .line 2
    const-string v0, "executablePath"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "session id"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "neoterm.action.remote.execute"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/stryker/terminal/bridge/Bridge;->NEOTERM_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "neoterm.extra.remote.execute.executable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "neoterm.extra.remote.execute.command"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "neoterm.extra.remote.execute.session"

    invoke-virtual {p0}, Lcom/stryker/terminal/bridge/SessionId;->getSessionId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "neoterm.extra.remote.execute.foreground"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static createExecuteIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/stryker/terminal/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 4
    sget-object v0, Lcom/stryker/terminal/bridge/SessionId;->NEW_SESSION:Lcom/stryker/terminal/bridge/SessionId;

    invoke-static {v0, p0, p1}, Lcom/stryker/terminal/bridge/Bridge;->createExecuteIntent(Lcom/stryker/terminal/bridge/SessionId;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createExecuteIntent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1

    .line 5
    sget-object v0, Lcom/stryker/terminal/bridge/SessionId;->NEW_SESSION:Lcom/stryker/terminal/bridge/SessionId;

    invoke-static {v0, p0, p1, p2}, Lcom/stryker/terminal/bridge/Bridge;->createExecuteIntent(Lcom/stryker/terminal/bridge/SessionId;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static parseResult(Landroid/content/Intent;)Lcom/stryker/terminal/bridge/SessionId;
    .locals 2

    const-string v0, "data"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "neoterm.extra.remote.execute.session"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/stryker/terminal/bridge/SessionId;->of(Ljava/lang/String;)Lcom/stryker/terminal/bridge/SessionId;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
