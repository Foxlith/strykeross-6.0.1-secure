.class public Lcom/stryker/terminal/component/session/ShellTermSession;
.super Lcom/stryker/terminal/backend/TerminalSession;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/component/session/ShellTermSession$Builder;
    }
.end annotation


# instance fields
.field private exitPrompt:Ljava/lang/String;

.field private final initialCommand:Ljava/lang/String;

.field private final shellProfile:Lcom/stryker/terminal/component/session/ShellProfile;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;Ljava/lang/String;Lcom/stryker/terminal/component/session/ShellProfile;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/stryker/terminal/backend/TerminalSession;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;)V

    iput-object p6, p0, Lcom/stryker/terminal/component/session/ShellTermSession;->initialCommand:Ljava/lang/String;

    iput-object p7, p0, Lcom/stryker/terminal/component/session/ShellTermSession;->shellProfile:Lcom/stryker/terminal/component/session/ShellProfile;

    sget-object p1, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {p1}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object p1

    sget p2, Lcom/stryker/terminal/R$string;->process_exit_prompt:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "App.get().getString(R.string.process_exit_prompt)"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellTermSession;->exitPrompt:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;Ljava/lang/String;Lcom/stryker/terminal/component/session/ShellProfile;Lkotlin/jvm/internal/f;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lcom/stryker/terminal/component/session/ShellTermSession;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;Ljava/lang/String;Lcom/stryker/terminal/component/session/ShellProfile;)V

    return-void
.end method

.method public static synthetic a(Lcom/stryker/terminal/component/session/ShellTermSession;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/component/session/ShellTermSession;->initializeEmulator$lambda$0(Lcom/stryker/terminal/component/session/ShellTermSession;)V

    return-void
.end method

.method private static final initializeEmulator$lambda$0(Lcom/stryker/terminal/component/session/ShellTermSession;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellTermSession;->shellProfile:Lcom/stryker/terminal/component/session/ShellProfile;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/ShellProfile;->getInitialCommand()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stryker/terminal/component/session/ShellTermSession;->sendInitialCommand(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellTermSession;->initialCommand:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/stryker/terminal/component/session/ShellTermSession;->sendInitialCommand(Ljava/lang/String;)V

    return-void
.end method

.method private final sendInitialCommand(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xd

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getExitDescription(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\r\n["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {v1}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/R$string;->process_exit_info:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    const-string v3, " ("

    if-lez p1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/stryker/terminal/R$string;->process_exit_code:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-gez p1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/stryker/terminal/R$string;->process_exit_signal:I

    neg-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stryker/terminal/component/session/ShellTermSession;->exitPrompt:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "builder.toString()"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getExitPrompt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellTermSession;->exitPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public final getShellProfile()Lcom/stryker/terminal/component/session/ShellProfile;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellTermSession;->shellProfile:Lcom/stryker/terminal/component/session/ShellProfile;

    return-object v0
.end method

.method public initializeEmulator(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/stryker/terminal/backend/TerminalSession;->initializeEmulator(II)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    const-string p2, "newSingleThreadScheduledExecutor()"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroidx/activity/b;

    const/16 v0, 0x9

    invoke-direct {p2, p0, v0}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v0, 0xfa

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final setExitPrompt(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellTermSession;->exitPrompt:Ljava/lang/String;

    return-void
.end method
