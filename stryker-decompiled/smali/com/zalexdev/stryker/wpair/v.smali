.class public final synthetic Lcom/zalexdev/stryker/wpair/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/wpair/WpairTerminal;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wpair/WpairTerminal;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/zalexdev/stryker/wpair/v;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/v;->b:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/zalexdev/stryker/wpair/v;->a:I

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/v;->b:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->f(Lcom/zalexdev/stryker/wpair/WpairTerminal;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {v1, p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->d(Lcom/zalexdev/stryker/wpair/WpairTerminal;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {v1, p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->e(Lcom/zalexdev/stryker/wpair/WpairTerminal;Landroid/view/View;)V

    return-void

    :pswitch_2
    invoke-static {v1, p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->g(Lcom/zalexdev/stryker/wpair/WpairTerminal;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
