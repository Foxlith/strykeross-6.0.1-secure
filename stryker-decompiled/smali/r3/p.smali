.class public final Lr3/p;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/custom/Device;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Timer;

.field public final synthetic d:Lr3/t;


# direct methods
.method public constructor <init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;ILjava/util/Timer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/p;->d:Lr3/t;

    iput-object p2, p0, Lr3/p;->a:Lcom/zalexdev/stryker/custom/Device;

    iput p3, p0, Lr3/p;->b:I

    iput-object p4, p0, Lr3/p;->c:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr3/p;->a:Lcom/zalexdev/stryker/custom/Device;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/custom/Device;->setIscutted(Z)V

    iget-object v0, p0, Lr3/p;->d:Lr3/t;

    iget-object v0, v0, Lr3/t;->b:Landroid/app/Activity;

    new-instance v1, Ly/n;

    const/4 v2, 0x5

    iget v3, p0, Lr3/p;->b:I

    invoke-direct {v1, v3, v2, p0}, Ly/n;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lr3/p;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
