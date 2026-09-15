.class public final synthetic Lcom/zalexdev/stryker/wpair/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/zalexdev/stryker/wpair/m;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/m;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/zalexdev/stryker/wpair/m;->a:I

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/m;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-static {v1, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->l(Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    check-cast v1, Lcom/zalexdev/stryker/wpair/WpairFragment;

    invoke-static {v1, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->t(Lcom/zalexdev/stryker/wpair/WpairFragment;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    check-cast v1, Lcom/zalexdev/stryker/wpair/WpairFragment;

    invoke-static {v1, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->k(Lcom/zalexdev/stryker/wpair/WpairFragment;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_2
    check-cast v1, Lcom/zalexdev/stryker/wpair/WpairFragment;

    invoke-static {v1, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->n(Lcom/zalexdev/stryker/wpair/WpairFragment;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
