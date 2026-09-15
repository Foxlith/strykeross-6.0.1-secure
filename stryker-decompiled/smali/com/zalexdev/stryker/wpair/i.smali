.class public final synthetic Lcom/zalexdev/stryker/wpair/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/zalexdev/stryker/wpair/i;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/i;->b:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/zalexdev/stryker/wpair/i;->a:I

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/i;->b:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->e(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {v1, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->j(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {v1, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->l(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Landroid/view/View;)V

    return-void

    :pswitch_2
    invoke-static {v1, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->h(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Landroid/view/View;)V

    return-void

    :pswitch_3
    invoke-static {v1, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->f(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Landroid/view/View;)V

    return-void

    :pswitch_4
    invoke-static {v1, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->m(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Landroid/view/View;)V

    return-void

    :pswitch_5
    invoke-static {v1, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->k(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
