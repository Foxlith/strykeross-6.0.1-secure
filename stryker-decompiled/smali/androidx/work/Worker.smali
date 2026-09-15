.class public abstract Landroidx/work/Worker;
.super Lm1/m;
.source "SourceFile"


# instance fields
.field public e:Lx1/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lm1/m;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final a()Lx1/k;
    .locals 4

    .line 1
    new-instance v0, Lx1/k;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lm1/m;->b:Landroidx/work/WorkerParameters;

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/work/WorkerParameters;->c:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    new-instance v2, Landroidx/appcompat/widget/j;

    .line 11
    .line 12
    const/4 v3, 0x4

    .line 13
    invoke-direct {v2, p0, v0, v3}, Landroidx/appcompat/widget/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final e()Lx1/k;
    .locals 3

    .line 1
    new-instance v0, Lx1/k;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroidx/work/Worker;->e:Lx1/k;

    .line 7
    .line 8
    iget-object v0, p0, Lm1/m;->b:Landroidx/work/WorkerParameters;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/work/WorkerParameters;->c:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    new-instance v1, Landroidx/activity/d;

    .line 13
    .line 14
    const/16 v2, 0xf

    .line 15
    .line 16
    invoke-direct {v1, p0, v2}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/work/Worker;->e:Lx1/k;

    .line 23
    .line 24
    return-object v0
.end method

.method public abstract g()Lm1/l;
.end method
