.class public final synthetic Lcom/zalexdev/stryker/wpair/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/wpair/FastPairExploit$1;

.field public final synthetic c:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wpair/FastPairExploit$1;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/zalexdev/stryker/wpair/f;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/f;->b:Lcom/zalexdev/stryker/wpair/FastPairExploit$1;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/f;->c:Landroid/bluetooth/BluetoothGatt;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/zalexdev/stryker/wpair/f;->a:I

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/f;->c:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/f;->b:Lcom/zalexdev/stryker/wpair/FastPairExploit$1;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1}, Lcom/zalexdev/stryker/wpair/FastPairExploit$1;->b(Lcom/zalexdev/stryker/wpair/FastPairExploit$1;Landroid/bluetooth/BluetoothGatt;)V

    return-void

    :pswitch_0
    invoke-static {v2, v1}, Lcom/zalexdev/stryker/wpair/FastPairExploit$1;->a(Lcom/zalexdev/stryker/wpair/FastPairExploit$1;Landroid/bluetooth/BluetoothGatt;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
