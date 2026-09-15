.class public final Lcom/stryker/terminal/frontend/floating/WindowTermView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private rootView:Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation
.end field

.field private terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/floating/WindowTermView;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/R$layout;->ui_term_dialog:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(context).inflate(R.\u2026term_dialog, null, false)"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/floating/WindowTermView;->rootView:Landroid/view/View;

    sget v0, Lcom/stryker/terminal/R$id;->terminal_view_dialog:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "rootView.findViewById<Te\u2026.id.terminal_view_dialog)"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iput-object p1, p0, Lcom/stryker/terminal/frontend/floating/WindowTermView;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    sget-object v0, Lcom/stryker/terminal/utils/Terminals;->INSTANCE:Lcom/stryker/terminal/utils/Terminals;

    const/4 v1, 0x2

    invoke-static {v0, p1, v2, v1, v2}, Lcom/stryker/terminal/utils/Terminals;->setupTerminalView$default(Lcom/stryker/terminal/utils/Terminals;Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final attachSession(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/floating/WindowTermView;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->attachSession(Lcom/stryker/terminal/backend/TerminalSession;)Z

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/floating/WindowTermView;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/floating/WindowTermView;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public final getTerminalView()Lcom/stryker/terminal/frontend/session/view/TerminalView;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/floating/WindowTermView;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    return-object v0
.end method

.method public final setInputMethodEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/floating/WindowTermView;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/floating/WindowTermView;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public final setTerminalViewClient(Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;)V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/floating/WindowTermView;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->setTerminalViewClient(Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;)V

    return-void
.end method
