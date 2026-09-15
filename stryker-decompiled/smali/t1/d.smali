.class public abstract Lt1/d;
.super Lt1/f;
.source "SourceFile"


# instance fields
.field public final f:Lf/d0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly1/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lt1/f;-><init>(Landroid/content/Context;Ly1/b;)V

    new-instance p1, Lf/d0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lf/d0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lt1/d;->f:Lf/d0;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    .line 1
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lt1/e;->a:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lt1/d;->f()Landroid/content/IntentFilter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lt1/f;->b:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v2, p0, Lt1/d;->f:Lf/d0;

    .line 17
    .line 18
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lt1/e;->a:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lt1/d;->f:Lf/d0;

    .line 11
    .line 12
    iget-object v1, p0, Lt1/f;->b:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public abstract f()Landroid/content/IntentFilter;
.end method
