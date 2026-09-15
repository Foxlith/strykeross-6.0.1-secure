.class public final synthetic Lcom/zalexdev/stryker/wpair/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;
.implements Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingCallback;
.implements Lcom/zalexdev/stryker/wpair/FastPairExploit$ProgressCallback;
.implements Lcom/zalexdev/stryker/wpair/FastPairExploit$ResultCallback;
.implements Lcom/zalexdev/stryker/wpair/FastPairExploit$FloodProgress;
.implements Lcom/zalexdev/stryker/wpair/VulnerabilityTester$ResultCallback;


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
    iput p3, p0, Lcom/zalexdev/stryker/wpair/n;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/n;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/n;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onProgress(IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/n;->c:Ljava/lang/Object;

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-static {p1, p2, v1, v0, p3}, Lcom/zalexdev/stryker/wpair/WpairFragment;->p(IILcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;Z)V

    return-void
.end method

.method public final onProgress(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/n;->c:Ljava/lang/Object;

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-static {v0, v1, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->s(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Ljava/lang/String;)V

    return-void
.end method

.method public final onRecording(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/n;->c:Ljava/lang/Object;

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-static {p1, v1, v0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->u(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;)V

    return-void
.end method

.method public final onResult(Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/n;->c:Ljava/lang/Object;

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-static {v0, v1, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->e(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;)V

    return-void
.end method

.method public final onResult(Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V
    .locals 3

    .line 2
    iget v0, p0, Lcom/zalexdev/stryker/wpair/n;->a:I

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/n;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/n;->b:Ljava/lang/Object;

    check-cast v2, Lcom/zalexdev/stryker/wpair/WpairFragment;

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->A(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V

    return-void

    :pswitch_0
    invoke-static {v2, v1, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->o(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public final onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/zalexdev/stryker/wpair/n;->a:I

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/n;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/n;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast v2, Lcom/zalexdev/stryker/wpair/FastPairExploit$ResultCallback;

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$PartialSuccess;

    invoke-static {v2, v1, p1}, Lcom/zalexdev/stryker/wpair/FastPairExploit;->i(Lcom/zalexdev/stryker/wpair/FastPairExploit$ResultCallback;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$PartialSuccess;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    return-void

    :pswitch_1
    check-cast v2, Lcom/zalexdev/stryker/wpair/WpairFragment;

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-static {p1, v1, v2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->x(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;)V

    return-void

    :pswitch_2
    check-cast v2, Lcom/zalexdev/stryker/wpair/WpairFragment;

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-static {p1, v1, v2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->d(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;)V

    return-void

    :pswitch_3
    check-cast v2, Lcom/zalexdev/stryker/wpair/WpairFragment;

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-static {p1, v1, v2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->w(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
