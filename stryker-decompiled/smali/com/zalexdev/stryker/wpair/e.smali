.class public final synthetic Lcom/zalexdev/stryker/wpair/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/zalexdev/stryker/wpair/e;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/e;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/e;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/zalexdev/stryker/wpair/e;->a:I

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/e;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Lcom/zalexdev/stryker/wpair/WpairFragment;

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-static {v2, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->f(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void

    :pswitch_0
    check-cast v2, Lcom/zalexdev/stryker/wpair/VulnerabilityTester;

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    invoke-static {v2, v1}, Lcom/zalexdev/stryker/wpair/VulnerabilityTester;->b(Lcom/zalexdev/stryker/wpair/VulnerabilityTester;Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;)V

    return-void

    :pswitch_1
    check-cast v2, Lcom/zalexdev/stryker/wpair/FastPairExploit;

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;

    invoke-static {v2, v1}, Lcom/zalexdev/stryker/wpair/FastPairExploit;->h(Lcom/zalexdev/stryker/wpair/FastPairExploit;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V

    return-void

    :pswitch_2
    check-cast v2, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    check-cast v1, Ljava/io/File;

    invoke-static {v2, v1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->e(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Ljava/io/File;)V

    return-void

    :pswitch_3
    check-cast v2, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    check-cast v1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    invoke-static {v2, v1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->g(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V

    return-void

    :pswitch_4
    check-cast v2, Lcom/zalexdev/stryker/wpair/FastPairExploit$4;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2, v1}, Lcom/zalexdev/stryker/wpair/FastPairExploit$4;->a(Lcom/zalexdev/stryker/wpair/FastPairExploit$4;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :pswitch_5
    check-cast v2, Lcom/zalexdev/stryker/wpair/FastPairExploit$3;

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2, v1}, Lcom/zalexdev/stryker/wpair/FastPairExploit$3;->a(Lcom/zalexdev/stryker/wpair/FastPairExploit$3;Landroid/bluetooth/BluetoothGatt;)V

    return-void

    :pswitch_6
    check-cast v2, Lcom/zalexdev/stryker/wpair/FastPairExploit$2;

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2, v1}, Lcom/zalexdev/stryker/wpair/FastPairExploit$2;->c(Lcom/zalexdev/stryker/wpair/FastPairExploit$2;Landroid/bluetooth/BluetoothGatt;)V

    return-void

    :pswitch_7
    check-cast v2, Lcom/zalexdev/stryker/wpair/FastPairExploit$1;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/zalexdev/stryker/wpair/FastPairExploit$1;->c(Lcom/zalexdev/stryker/wpair/FastPairExploit$1;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
