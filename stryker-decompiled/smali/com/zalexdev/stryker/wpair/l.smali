.class public final synthetic Lcom/zalexdev/stryker/wpair/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/wpair/WpairFragment;

.field public final synthetic c:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;

.field public final synthetic d:Lcom/zalexdev/stryker/wpair/FastPairDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lcom/zalexdev/stryker/wpair/l;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/l;->b:Lcom/zalexdev/stryker/wpair/WpairFragment;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/l;->c:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/zalexdev/stryker/wpair/l;->d:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/zalexdev/stryker/wpair/l;->a:I

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/l;->b:Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/l;->d:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    iget-object v3, p0, Lcom/zalexdev/stryker/wpair/l;->c:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;

    packed-switch v0, :pswitch_data_0

    invoke-static {v3, v2, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->B(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;)V

    return-void

    :pswitch_0
    invoke-static {v3, v2, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->h(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;)V

    return-void

    :pswitch_1
    invoke-static {v3, v2, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->g(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
