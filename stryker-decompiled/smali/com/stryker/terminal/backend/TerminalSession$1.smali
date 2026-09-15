.class Lcom/stryker/terminal/backend/TerminalSession$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/backend/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final mReceiveBuffer:[B

.field final synthetic this$0:Lcom/stryker/terminal/backend/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/backend/TerminalSession$1;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/stryker/terminal/backend/TerminalSession$1;->mReceiveBuffer:[B

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession$1;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalSession;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalSession$1;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-static {p1}, Lcom/stryker/terminal/backend/TerminalSession;->access$000(Lcom/stryker/terminal/backend/TerminalSession;)Lcom/stryker/terminal/backend/ByteQueue;

    move-result-object p1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession$1;->mReceiveBuffer:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/stryker/terminal/backend/ByteQueue;->read([BZ)I

    move-result p1

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession$1;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-static {v0}, Lcom/stryker/terminal/backend/TerminalSession;->access$100(Lcom/stryker/terminal/backend/TerminalSession;)Lcom/stryker/terminal/backend/TerminalEmulator;

    move-result-object v0

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalSession$1;->mReceiveBuffer:[B

    invoke-virtual {v0, v1, p1}, Lcom/stryker/terminal/backend/TerminalEmulator;->append([BI)V

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession$1;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-static {v0, p1}, Lcom/stryker/terminal/backend/TerminalSession;->access$300(Lcom/stryker/terminal/backend/TerminalSession;I)V

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession$1;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-static {v0}, Lcom/stryker/terminal/backend/TerminalSession;->access$400(Lcom/stryker/terminal/backend/TerminalSession;)Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalSession$1;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-interface {v0, v1}, Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;->onSessionFinished(Lcom/stryker/terminal/backend/TerminalSession;)V

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession$1;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/backend/TerminalSession;->getExitDescription(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession$1;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-static {v0}, Lcom/stryker/terminal/backend/TerminalSession;->access$100(Lcom/stryker/terminal/backend/TerminalSession;)Lcom/stryker/terminal/backend/TerminalEmulator;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->append([BI)V

    :goto_0
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalSession$1;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    invoke-static {p1}, Lcom/stryker/terminal/backend/TerminalSession;->access$200(Lcom/stryker/terminal/backend/TerminalSession;)V

    :cond_1
    return-void
.end method
