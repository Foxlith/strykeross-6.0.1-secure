.class Lcom/stryker/terminal/backend/TerminalSession$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/backend/TerminalSession;->initializeEmulator(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/backend/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/backend/TerminalSession;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/backend/TerminalSession$4;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession$4;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-static {v0}, Lcom/stryker/terminal/backend/TerminalSession;->access$700(Lcom/stryker/terminal/backend/TerminalSession;)I

    move-result v0

    invoke-static {v0}, Lcom/stryker/terminal/backend/JNI;->waitFor(I)I

    move-result v0

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalSession$4;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-static {v1}, Lcom/stryker/terminal/backend/TerminalSession;->access$500(Lcom/stryker/terminal/backend/TerminalSession;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalSession$4;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-static {v2}, Lcom/stryker/terminal/backend/TerminalSession;->access$500(Lcom/stryker/terminal/backend/TerminalSession;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
