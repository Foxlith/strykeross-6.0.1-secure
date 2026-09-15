.class Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->registerScoReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string p1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->access$200(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)Z

    move-result p1

    const-string p2, "SCO disconnected"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->stopRecording()V

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->access$300(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->access$300(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    move-result-object p1

    new-instance v0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    invoke-direct {v0, p2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    :cond_0
    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->access$400(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->stopListening()V

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->access$300(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->access$300(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    move-result-object p1

    new-instance v0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    invoke-direct {v0, p2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    goto :goto_0

    :cond_1
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->access$300(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->access$300(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    move-result-object p1

    sget-object p2, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Connected;->INSTANCE:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Connected;

    invoke-interface {p1, p2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->access$500(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-static {p2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->access$500(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->disconnect()V

    :cond_3
    :goto_0
    return-void
.end method
