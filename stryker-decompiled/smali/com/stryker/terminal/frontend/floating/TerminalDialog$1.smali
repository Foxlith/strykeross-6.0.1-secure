.class public final Lcom/stryker/terminal/frontend/floating/TerminalDialog$1;
.super Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/frontend/floating/TerminalDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/frontend/floating/TerminalDialog;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/frontend/floating/TerminalDialog;Lcom/stryker/terminal/frontend/session/view/TerminalView;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog$1;->this$0:Lcom/stryker/terminal/frontend/floating/TerminalDialog;

    invoke-direct {p0, p2}, Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;-><init>(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V

    return-void
.end method


# virtual methods
.method public onSessionFinished(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog$1;->this$0:Lcom/stryker/terminal/frontend/floating/TerminalDialog;

    invoke-static {v0}, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->access$getSessionFinishedCallback$p(Lcom/stryker/terminal/frontend/floating/TerminalDialog;)Lj5/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/stryker/terminal/frontend/floating/TerminalDialog$1;->this$0:Lcom/stryker/terminal/frontend/floating/TerminalDialog;

    invoke-interface {v0, v1, p1}, Lj5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1}, Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;->onSessionFinished(Lcom/stryker/terminal/backend/TerminalSession;)V

    return-void
.end method
