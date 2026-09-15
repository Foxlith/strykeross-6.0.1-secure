.class public final synthetic Lcom/zalexdev/stryker/wpair/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/wpair/FastPairExploit;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wpair/FastPairExploit;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/zalexdev/stryker/wpair/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/d;->b:Lcom/zalexdev/stryker/wpair/FastPairExploit;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/zalexdev/stryker/wpair/d;->a:I

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/d;->b:Lcom/zalexdev/stryker/wpair/FastPairExploit;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Lcom/zalexdev/stryker/wpair/FastPairExploit;->l(Lcom/zalexdev/stryker/wpair/FastPairExploit;)V

    return-void

    :pswitch_0
    invoke-static {v1}, Lcom/zalexdev/stryker/wpair/FastPairExploit;->m(Lcom/zalexdev/stryker/wpair/FastPairExploit;)V

    return-void

    :pswitch_1
    invoke-static {v1}, Lcom/zalexdev/stryker/wpair/FastPairExploit;->g(Lcom/zalexdev/stryker/wpair/FastPairExploit;)V

    return-void

    :pswitch_2
    invoke-static {v1}, Lcom/zalexdev/stryker/wpair/FastPairExploit;->f(Lcom/zalexdev/stryker/wpair/FastPairExploit;)V

    return-void

    :pswitch_3
    invoke-static {v1}, Lcom/zalexdev/stryker/wpair/FastPairExploit;->g(Lcom/zalexdev/stryker/wpair/FastPairExploit;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
