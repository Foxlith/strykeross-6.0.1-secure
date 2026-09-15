.class public final synthetic Lcom/topjohnwu/superuser/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/topjohnwu/superuser/internal/JobImpl;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lcom/topjohnwu/superuser/Shell$ResultCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/internal/JobImpl;Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$ResultCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/a;->a:Lcom/topjohnwu/superuser/internal/JobImpl;

    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/a;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/topjohnwu/superuser/internal/a;->c:Lcom/topjohnwu/superuser/Shell$ResultCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/a;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/a;->c:Lcom/topjohnwu/superuser/Shell$ResultCallback;

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/a;->a:Lcom/topjohnwu/superuser/internal/JobImpl;

    invoke-static {v2, v0, v1}, Lcom/topjohnwu/superuser/internal/JobImpl;->i(Lcom/topjohnwu/superuser/internal/JobImpl;Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$ResultCallback;)V

    return-void
.end method
