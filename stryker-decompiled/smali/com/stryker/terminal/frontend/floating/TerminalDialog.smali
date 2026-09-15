.class public final Lcom/stryker/terminal/frontend/floating/TerminalDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private final context:Landroid/content/Context;

.field private dialog:Lf/n;

.field private sessionFinishedCallback:Lj5/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/p;"
        }
    .end annotation
.end field

.field private final termWindowView:Lcom/stryker/terminal/frontend/floating/WindowTermView;

.field private terminalSession:Lcom/stryker/terminal/backend/TerminalSession;

.field private final terminalSessionCallback:Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->context:Landroid/content/Context;

    new-instance v0, Lcom/stryker/terminal/frontend/floating/WindowTermView;

    invoke-direct {v0, p1}, Lcom/stryker/terminal/frontend/floating/WindowTermView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->termWindowView:Lcom/stryker/terminal/frontend/floating/WindowTermView;

    new-instance p1, Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/floating/WindowTermView;->getTerminalView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;-><init>(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/frontend/floating/WindowTermView;->setTerminalViewClient(Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;)V

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/floating/WindowTermView;->getTerminalView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    move-result-object p1

    new-instance v0, Lcom/stryker/terminal/frontend/floating/TerminalDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/stryker/terminal/frontend/floating/TerminalDialog$1;-><init>(Lcom/stryker/terminal/frontend/floating/TerminalDialog;Lcom/stryker/terminal/frontend/session/view/TerminalView;)V

    iput-object v0, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->terminalSessionCallback:Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;

    return-void
.end method

.method public static synthetic a(Lcom/stryker/terminal/frontend/floating/TerminalDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->execute$lambda$0(Lcom/stryker/terminal/frontend/floating/TerminalDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final synthetic access$getSessionFinishedCallback$p(Lcom/stryker/terminal/frontend/floating/TerminalDialog;)Lj5/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->sessionFinishedCallback:Lj5/p;

    return-object p0
.end method

.method private static final execute$lambda$0(Lcom/stryker/terminal/frontend/floating/TerminalDialog;Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->terminalSession:Lcom/stryker/terminal/backend/TerminalSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalSession;->finishIfRunning()V

    :cond_0
    iget-object p0, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final dismiss()Lcom/stryker/terminal/frontend/floating/TerminalDialog;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->dialog:Lf/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/j0;->dismiss()V

    :cond_0
    return-object p0
.end method

.method public final execute(Ljava/lang/String;[Ljava/lang/String;)Lcom/stryker/terminal/frontend/floating/TerminalDialog;
    .locals 2

    const-string v0, "executablePath"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->terminalSession:Lcom/stryker/terminal/backend/TerminalSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalSession;->finishIfRunning()V

    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->termWindowView:Lcom/stryker/terminal/frontend/floating/WindowTermView;

    invoke-virtual {v1}, Lcom/stryker/terminal/frontend/floating/WindowTermView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/stryker/terminal/frontend/floating/a;

    invoke-direct {v1, p0}, Lcom/stryker/terminal/frontend/floating/a;-><init>(Lcom/stryker/terminal/frontend/floating/TerminalDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Lf/n;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->dialog:Lf/n;

    if-eqz p2, :cond_1

    const-string v0, ""

    const/16 v1, 0x3e

    invoke-static {p2, v0, v1}, Lg5/i;->m0([Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Lcom/stryker/terminal/component/session/ShellParameter;

    invoke-direct {v0}, Lcom/stryker/terminal/component/session/ShellParameter;-><init>()V

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/component/session/ShellParameter;->executablePath(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/component/session/ShellParameter;->initialCommand(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p1

    iget-object p2, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->terminalSessionCallback:Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/component/session/ShellParameter;->callback(Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/component/session/ShellParameter;->systemShell(Z)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p1

    sget-object p2, Lcom/stryker/terminal/utils/Terminals;->INSTANCE:Lcom/stryker/terminal/utils/Terminals;

    iget-object v0, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->context:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/stryker/terminal/utils/Terminals;->createSession(Landroid/content/Context;Lcom/stryker/terminal/component/session/ShellParameter;)Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object p1

    iput-object p1, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->terminalSession:Lcom/stryker/terminal/backend/TerminalSession;

    instance-of p2, p1, Lcom/stryker/terminal/component/session/ShellTermSession;

    if-eqz p2, :cond_2

    const-string p2, "null cannot be cast to non-null type com.stryker.terminal.component.session.ShellTermSession"

    invoke-static {p1, p2}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/stryker/terminal/component/session/ShellTermSession;

    iget-object p2, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->context:Landroid/content/Context;

    sget v0, Lcom/stryker/terminal/R$string;->process_exit_prompt_press_back:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(R.stri\u2026s_exit_prompt_press_back)"

    invoke-static {p2, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/component/session/ShellTermSession;->setExitPrompt(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->termWindowView:Lcom/stryker/terminal/frontend/floating/WindowTermView;

    iget-object p2, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->terminalSession:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/frontend/floating/WindowTermView;->attachSession(Lcom/stryker/terminal/backend/TerminalSession;)V

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final imeEnabled(Z)Lcom/stryker/terminal/frontend/floating/TerminalDialog;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->termWindowView:Lcom/stryker/terminal/frontend/floating/WindowTermView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/frontend/floating/WindowTermView;->setInputMethodEnabled(Z)V

    :cond_0
    return-object p0
.end method

.method public final onDismiss(Landroid/content/DialogInterface$OnCancelListener;)Lcom/stryker/terminal/frontend/floating/TerminalDialog;
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public final onFinish(Lj5/p;)Lcom/stryker/terminal/frontend/floating/TerminalDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/p;",
            ")",
            "Lcom/stryker/terminal/frontend/floating/TerminalDialog;"
        }
    .end annotation

    .line 1
    const-string v0, "finishedCallback"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->sessionFinishedCallback:Lj5/p;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/stryker/terminal/frontend/floating/TerminalDialog;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->dialog:Lf/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lf/n;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public final show(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->dialog:Lf/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lf/n;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->dialog:Lf/n;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_1
    iget-object p1, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->dialog:Lf/n;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method
