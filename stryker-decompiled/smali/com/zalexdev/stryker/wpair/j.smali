.class public final synthetic Lcom/zalexdev/stryker/wpair/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;

.field public final synthetic c:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Lcom/google/android/material/button/MaterialButton;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/zalexdev/stryker/wpair/j;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/j;->b:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/j;->c:Lcom/google/android/material/button/MaterialButton;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/zalexdev/stryker/wpair/j;->a:I

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/j;->c:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/j;->b:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->g(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {v2, v1, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->i(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
