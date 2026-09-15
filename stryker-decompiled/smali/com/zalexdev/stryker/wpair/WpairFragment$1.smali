.class Lcom/zalexdev/stryker/wpair/WpairFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zalexdev/stryker/wpair/WpairFragment;->onOpenActions(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zalexdev/stryker/wpair/WpairFragment;

.field final synthetic val$device:Lcom/zalexdev/stryker/wpair/FastPairDevice;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairFragment;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->val$device:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectHfp()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->val$device:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-static {v0, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->access$200(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public onFloodKeys()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->val$device:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-static {v0, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->access$100(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public onMagic()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->val$device:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->onMagic(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public onOpenTerminal()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->val$device:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-virtual {v1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->access$600(Lcom/zalexdev/stryker/wpair/WpairFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onStartLive()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->val$device:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-static {v0, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->access$300(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public onStartRecord()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->val$device:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-static {v0, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->access$500(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public onStopLive()V
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairFragment;

    invoke-static {v0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->access$400(Lcom/zalexdev/stryker/wpair/WpairFragment;)Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->stopListening()V

    return-void
.end method

.method public onStopRecord()V
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairFragment;

    invoke-static {v0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->access$400(Lcom/zalexdev/stryker/wpair/WpairFragment;)Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->stopRecording()V

    return-void
.end method

.method public onTest()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->val$device:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->onTest(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public onWriteAccountKey()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;->val$device:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-static {v0, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->access$000(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method
