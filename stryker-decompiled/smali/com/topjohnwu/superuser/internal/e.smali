.class public final synthetic Lcom/topjohnwu/superuser/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/topjohnwu/superuser/internal/UiThreadHandler;->run(Ljava/lang/Runnable;)V

    return-void
.end method
