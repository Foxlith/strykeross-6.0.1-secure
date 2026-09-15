.class Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->initialize(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$ReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

.field final synthetic val$onReady:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$ReadyCallback;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$ReadyCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$1;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$1;->val$onReady:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$ReadyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$1;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1, p2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->access$002(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$1;->val$onReady:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$ReadyCallback;

    invoke-interface {p1, v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$ReadyCallback;->onReady(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$1;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p1, p2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->access$102(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$1;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-static {p1, v1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->access$002(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$1;->this$0:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-static {p1, v1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->access$102(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    :cond_1
    :goto_0
    return-void
.end method
