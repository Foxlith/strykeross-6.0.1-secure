.class public final synthetic Lcom/zalexdev/stryker/wpair/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/wpair/WpairFragment;

.field public final synthetic c:Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;

.field public final synthetic d:Lcom/zalexdev/stryker/wpair/FastPairDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zalexdev/stryker/wpair/k;->a:I

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/k;->b:Lcom/zalexdev/stryker/wpair/WpairFragment;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/k;->d:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    iput-object p3, p0, Lcom/zalexdev/stryker/wpair/k;->c:Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/zalexdev/stryker/wpair/k;->a:I

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/k;->b:Lcom/zalexdev/stryker/wpair/WpairFragment;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/k;->c:Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;

    iput-object p3, p0, Lcom/zalexdev/stryker/wpair/k;->d:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/zalexdev/stryker/wpair/k;->a:I

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/k;->b:Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/k;->d:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    iget-object v3, p0, Lcom/zalexdev/stryker/wpair/k;->c:Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, v2, v3}, Lcom/zalexdev/stryker/wpair/WpairFragment;->m(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V

    return-void

    :pswitch_0
    invoke-static {v1, v2, v3}, Lcom/zalexdev/stryker/wpair/WpairFragment;->F(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
