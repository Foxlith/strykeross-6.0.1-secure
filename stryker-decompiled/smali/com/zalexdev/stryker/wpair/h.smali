.class public final synthetic Lcom/zalexdev/stryker/wpair/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

.field public final synthetic c:Lcom/zalexdev/stryker/wpair/FastPairDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;Lcom/zalexdev/stryker/wpair/FastPairDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/zalexdev/stryker/wpair/h;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/h;->b:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/h;->c:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/zalexdev/stryker/wpair/h;->a:I

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/h;->c:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/h;->b:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->a(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;Lcom/zalexdev/stryker/wpair/FastPairDevice;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {v2, v1, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->e(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;Lcom/zalexdev/stryker/wpair/FastPairDevice;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {v2, v1, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->d(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;Lcom/zalexdev/stryker/wpair/FastPairDevice;Landroid/view/View;)V

    return-void

    :pswitch_2
    invoke-static {v2, v1, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->c(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;Lcom/zalexdev/stryker/wpair/FastPairDevice;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
