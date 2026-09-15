.class Lcom/stryker/terminal/backend/TerminalSession$5$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/backend/TerminalSession$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/stryker/terminal/backend/TerminalSession$5;

.field final synthetic val$fin:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/backend/TerminalSession$5;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/backend/TerminalSession$5$1;->this$1:Lcom/stryker/terminal/backend/TerminalSession$5;

    iput-object p3, p0, Lcom/stryker/terminal/backend/TerminalSession$5$1;->val$fin:Ljava/io/InputStream;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalSession$5$1;->val$fin:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/stryker/terminal/backend/TerminalSession$5$1;->this$1:Lcom/stryker/terminal/backend/TerminalSession$5;

    iget-object v3, v3, Lcom/stryker/terminal/backend/TerminalSession$5;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-static {v3}, Lcom/stryker/terminal/backend/TerminalSession;->access$000(Lcom/stryker/terminal/backend/TerminalSession;)Lcom/stryker/terminal/backend/ByteQueue;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/stryker/terminal/backend/ByteQueue;->write([BII)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalSession$5$1;->this$1:Lcom/stryker/terminal/backend/TerminalSession$5;

    iget-object v2, v2, Lcom/stryker/terminal/backend/TerminalSession$5;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-static {v2}, Lcom/stryker/terminal/backend/TerminalSession;->access$500(Lcom/stryker/terminal/backend/TerminalSession;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :goto_1
    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession$5$1;->this$1:Lcom/stryker/terminal/backend/TerminalSession$5;

    iget-object v0, v0, Lcom/stryker/terminal/backend/TerminalSession$5;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-static {v0}, Lcom/stryker/terminal/backend/TerminalSession;->access$500(Lcom/stryker/terminal/backend/TerminalSession;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalSession$5$1;->this$1:Lcom/stryker/terminal/backend/TerminalSession$5;

    iget-object v2, v2, Lcom/stryker/terminal/backend/TerminalSession$5;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-static {v2}, Lcom/stryker/terminal/backend/TerminalSession;->access$500(Lcom/stryker/terminal/backend/TerminalSession;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
