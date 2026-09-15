.class public final Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;
.super Lf/q;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private termService:Lcom/stryker/terminal/services/NeoTermService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf/q;-><init>()V

    return-void
.end method

.method private final buildUserScriptArgument(Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lv1/f;->J([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private final detectSystemShell()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic f(Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Ljava/util/List;Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->setupUserScriptView$lambda$3(Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Ljava/util/List;Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic g(Ljava/util/List;Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->setupUserScriptView$lambda$5(Ljava/util/List;Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic h(Ljava/util/List;ILandroid/widget/ArrayAdapter;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->setupUserScriptView$lambda$3$lambda$2(Ljava/util/List;ILandroid/widget/ArrayAdapter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final handleIntent()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {v0, v0}, Lq5/h;->P1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    const-string v1, "TermHere"

    .line 24
    .line 25
    invoke-static {v0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->handleTermHere()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const-string v1, "UserScript"

    .line 36
    .line 37
    invoke-static {v0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->handleUserScript()V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->handleNormal()V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-void
.end method

.method private final handleNormal()V
    .locals 11

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x22ff2fe5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "neoterm.action.remote.execute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "neoterm.extra.remote.execute.executable"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "neoterm.extra.remote.execute.foreground"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "neoterm.extra.remote.execute.session"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "neoterm.extra.remote.execute.command"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/stryker/terminal/bridge/SessionId;->of(Ljava/lang/String;)Lcom/stryker/terminal/bridge/SessionId;

    move-result-object v2

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->openTerm(Ljava/lang/String;Ljava/lang/String;Lcom/stryker/terminal/bridge/SessionId;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->openTerm$default(Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Ljava/lang/String;Ljava/lang/String;Lcom/stryker/terminal/bridge/SessionId;ZILjava/lang/Object;)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final handleTermHere()V
    .locals 9

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    instance-of v0, v2, Landroid/net/Uri;

    if-eqz v0, :cond_2

    check-cast v2, Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/stryker/terminal/utils/UtilsKt;->getPathOfMediaUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cd "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/stryker/terminal/utils/Terminals;->INSTANCE:Lcom/stryker/terminal/utils/Terminals;

    invoke-virtual {v2, v0}, Lcom/stryker/terminal/utils/Terminals;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->openTerm$default(Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Ljava/lang/String;Ljava/lang/String;Lcom/stryker/terminal/bridge/SessionId;ZILjava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {v0}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$string;->unsupported_term_here:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.unsup\u2026here, intent?.toString())"

    invoke-static {v1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface$handleTermHere$1;

    invoke-direct {v2, p0}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface$handleTermHere$1;-><init>(Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/stryker/terminal/App;->errorDialog(Landroid/content/Context;Ljava/lang/String;Lj5/a;)V

    :goto_1
    return-void
.end method

.method private final handleUserScript()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const-class v2, Lcom/stryker/terminal/component/userscript/UserScriptComponent;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v1

    check-cast v1, Lcom/stryker/terminal/component/userscript/UserScriptComponent;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->getUserScripts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {v0}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$string;->no_user_script_found:I

    new-instance v2, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface$handleUserScript$1;

    invoke-direct {v2, p0}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface$handleUserScript$1;-><init>(Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/stryker/terminal/App;->errorDialog(Landroid/content/Context;ILj5/a;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v5

    :goto_0
    instance-of v4, v2, Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Landroid/net/Uri;

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string v6, "null cannot be cast to non-null type android.net.Uri"

    invoke-static {v4, v6}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/net/Uri;

    new-instance v6, Ljava/io/File;

    invoke-static {p0, v4}, Lcom/stryker/terminal/utils/UtilsKt;->getPathOfMediaUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    instance-of v4, v2, Landroid/net/Uri;

    if-eqz v4, :cond_7

    new-instance v4, Ljava/io/File;

    check-cast v2, Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/stryker/terminal/utils/UtilsKt;->getPathOfMediaUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "File(this.getPathOfMediaUri(extra)).absolutePath"

    :goto_4
    invoke-static {v2, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_6
    move-object v4, v5

    :goto_5
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "File(intent.data?.path).absolutePath"

    goto :goto_4

    :cond_7
    :goto_6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_8

    invoke-direct {p0, v0, v1}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->setupUserScriptView(Ljava/util/List;Ljava/util/List;)V

    goto :goto_7

    :cond_8
    sget-object v0, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {v0}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$string;->no_files_selected:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_9
    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.no_fi\u2026cted, intent?.toString())"

    invoke-static {v1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface$handleUserScript$4;

    invoke-direct {v2, p0}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface$handleUserScript$4;-><init>(Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/stryker/terminal/App;->errorDialog(Landroid/content/Context;Ljava/lang/String;Lj5/a;)V

    :goto_7
    return-void
.end method

.method private final openCustomExecTerm(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/stryker/terminal/component/session/ShellParameter;

    invoke-direct {v0}, Lcom/stryker/terminal/component/session/ShellParameter;-><init>()V

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/component/session/ShellParameter;->executablePath(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/component/session/ShellParameter;->arguments([Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/stryker/terminal/component/session/ShellParameter;->currentWorkingDirectory(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p1

    new-instance p2, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;

    invoke-direct {p2}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;-><init>()V

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/component/session/ShellParameter;->callback(Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p1

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->detectSystemShell()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/component/session/ShellParameter;->systemShell(Z)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->openTerm$default(Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Lcom/stryker/terminal/component/session/ShellParameter;ZILjava/lang/Object;)V

    return-void
.end method

.method private final openTerm(Lcom/stryker/terminal/component/session/ShellParameter;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->termService:Lcom/stryker/terminal/services/NeoTermService;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/services/NeoTermService;->createTermSession(Lcom/stryker/terminal/component/session/ShellParameter;)Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p1, Lcom/stryker/terminal/backend/TerminalSession;->mHandle:Ljava/lang/String;

    const-string v2, "neoterm.extra.remote.execute.session"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    if-eqz p2, :cond_0

    sget-object p2, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-virtual {p2, p1}, Lcom/stryker/terminal/component/config/NeoPreference;->storeCurrentSession(Lcom/stryker/terminal/backend/TerminalSession;)V

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p2, 0x8000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 p2, 0x4000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x20000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final openTerm(Ljava/lang/String;Ljava/lang/String;Lcom/stryker/terminal/bridge/SessionId;Z)V
    .locals 1

    .line 2
    if-eqz p2, :cond_0

    new-instance v0, Lcom/stryker/terminal/component/session/ShellParameter;

    invoke-direct {v0}, Lcom/stryker/terminal/component/session/ShellParameter;-><init>()V

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/component/session/ShellParameter;->executablePath(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p1

    new-instance v0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;

    invoke-direct {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;-><init>()V

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/component/session/ShellParameter;->callback(Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/component/session/ShellParameter;->initialCommand(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p1

    :goto_0
    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->detectSystemShell()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/component/session/ShellParameter;->systemShell(Z)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/stryker/terminal/component/session/ShellParameter;->session(Lcom/stryker/terminal/bridge/SessionId;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->openTerm(Lcom/stryker/terminal/component/session/ShellParameter;Z)V

    goto :goto_1

    :cond_0
    new-instance p2, Lcom/stryker/terminal/component/session/ShellParameter;

    invoke-direct {p2}, Lcom/stryker/terminal/component/session/ShellParameter;-><init>()V

    invoke-virtual {p2, p1}, Lcom/stryker/terminal/component/session/ShellParameter;->executablePath(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p1

    new-instance p2, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;

    invoke-direct {p2}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;-><init>()V

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/component/session/ShellParameter;->callback(Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static synthetic openTerm$default(Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Lcom/stryker/terminal/component/session/ShellParameter;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->openTerm(Lcom/stryker/terminal/component/session/ShellParameter;Z)V

    return-void
.end method

.method public static synthetic openTerm$default(Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Ljava/lang/String;Ljava/lang/String;Lcom/stryker/terminal/bridge/SessionId;ZILjava/lang/Object;)V
    .locals 0

    .line 2
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->openTerm(Ljava/lang/String;Ljava/lang/String;Lcom/stryker/terminal/bridge/SessionId;Z)V

    return-void
.end method

.method private final setupUserScriptView(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/userscript/UserScript;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/stryker/terminal/R$layout;->ui_user_script_list:I

    invoke-virtual {p0, v0}, Lf/q;->setContentView(I)V

    sget v0, Lcom/stryker/terminal/R$id;->user_script_file_list:I

    invoke-virtual {p0, v0}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {v1, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/stryker/terminal/ui/term/g;

    invoke-direct {v3, p0, p1, v1}, Lcom/stryker/terminal/ui/term/g;-><init>(Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Ljava/util/List;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget v0, Lcom/stryker/terminal/R$id;->user_script_script_list:I

    invoke-virtual {p0, v0}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stryker/terminal/component/userscript/UserScript;

    invoke-virtual {v4}, Lcom/stryker/terminal/component/userscript/UserScript;->getScriptFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lg5/i;->k0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-direct {v3, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/stryker/terminal/ui/term/g;

    invoke-direct {v1, p2, p0, p1}, Lcom/stryker/terminal/ui/term/g;-><init>(Ljava/util/List;Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private static final setupUserScriptView$lambda$3(Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Ljava/util/List;Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$filesToHandle"

    invoke-static {p1, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$filesAdapter"

    invoke-static {p2, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p3, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/stryker/terminal/R$string;->confirm_remove_file_from_list:I

    invoke-virtual {p3, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    new-instance p3, Lcom/stryker/terminal/ui/term/f;

    invoke-direct {p3, p1, p5, p2}, Lcom/stryker/terminal/ui/term/f;-><init>(Ljava/util/List;ILandroid/widget/ArrayAdapter;)V

    const p1, 0x1040013

    invoke-virtual {p0, p1, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    const p1, 0x1040009

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lf/m;->show()Lf/n;

    return-void
.end method

.method private static final setupUserScriptView$lambda$3$lambda$2(Ljava/util/List;ILandroid/widget/ArrayAdapter;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p3, "$filesToHandle"

    invoke-static {p0, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$filesAdapter"

    invoke-static {p2, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static final setupUserScriptView$lambda$5(Ljava/util/List;Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const-string p3, "$userScripts"

    invoke-static {p0, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$filesToHandle"

    invoke-static {p2, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stryker/terminal/component/userscript/UserScript;

    invoke-virtual {p0}, Lcom/stryker/terminal/component/userscript/UserScript;->getScriptFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const-string p4, "userScriptPath"

    invoke-static {p3, p4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p3, p2}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->buildUserScriptArgument(Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/stryker/terminal/component/userscript/UserScript;->getScriptFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p3, p2, p0}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->openCustomExecTerm(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/stryker/terminal/services/NeoTermService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {p1}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/R$string;->service_connection_failed:I

    new-instance v1, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface$onCreate$1;

    invoke-direct {v1, p0}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface$onCreate$1;-><init>(Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/stryker/terminal/App;->errorDialog(Landroid/content/Context;ILj5/a;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lf/q;->onDestroy()V

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->termService:Lcom/stryker/terminal/services/NeoTermService;

    if-eqz v0, :cond_1

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/stryker/terminal/services/NeoTermService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->termService:Lcom/stryker/terminal/services/NeoTermService;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->termService:Lcom/stryker/terminal/services/NeoTermService;

    invoke-virtual {p0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "null cannot be cast to non-null type com.stryker.terminal.services.NeoTermService.NeoTermBinder"

    invoke-static {p2, p1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/stryker/terminal/services/NeoTermService$NeoTermBinder;

    invoke-virtual {p2}, Lcom/stryker/terminal/services/NeoTermService$NeoTermBinder;->getService()Lcom/stryker/terminal/services/NeoTermService;

    move-result-object p1

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->termService:Lcom/stryker/terminal/services/NeoTermService;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->handleIntent()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->termService:Lcom/stryker/terminal/services/NeoTermService;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
