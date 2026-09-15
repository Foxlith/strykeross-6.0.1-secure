.class public final synthetic Lcom/topjohnwu/superuser/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/topjohnwu/superuser/Shell$ResultCallback;
.implements Lcom/topjohnwu/superuser/Shell$GetShellCallback;


# instance fields
.field public final synthetic a:Lcom/topjohnwu/superuser/internal/PendingJob;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lcom/topjohnwu/superuser/Shell$ResultCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/internal/PendingJob;Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$ResultCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/b;->a:Lcom/topjohnwu/superuser/internal/PendingJob;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/b;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/topjohnwu/superuser/internal/b;->c:Lcom/topjohnwu/superuser/Shell$ResultCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onResult(Lcom/topjohnwu/superuser/Shell$Result;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/b;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/b;->c:Lcom/topjohnwu/superuser/Shell$ResultCallback;

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/b;->a:Lcom/topjohnwu/superuser/internal/PendingJob;

    invoke-static {v2, v0, v1, p1}, Lcom/topjohnwu/superuser/internal/PendingJob;->s(Lcom/topjohnwu/superuser/internal/PendingJob;Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$ResultCallback;Lcom/topjohnwu/superuser/Shell$Result;)V

    return-void
.end method

.method public final onShell(Lcom/topjohnwu/superuser/Shell;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/b;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/b;->c:Lcom/topjohnwu/superuser/Shell$ResultCallback;

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/b;->a:Lcom/topjohnwu/superuser/internal/PendingJob;

    invoke-static {v2, v0, v1, p1}, Lcom/topjohnwu/superuser/internal/PendingJob;->t(Lcom/topjohnwu/superuser/internal/PendingJob;Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$ResultCallback;Lcom/topjohnwu/superuser/Shell;)V

    return-void
.end method
