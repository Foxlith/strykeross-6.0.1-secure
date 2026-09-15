.class Lcom/topjohnwu/superuser/internal/JobImpl;
.super Lcom/topjohnwu/superuser/Shell$Job;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected err:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected out:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected shell:Lcom/topjohnwu/superuser/internal/ShellImpl;

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/topjohnwu/superuser/internal/ShellInputSource;",
            ">;"
        }
    .end annotation
.end field

.field private stderrSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/topjohnwu/superuser/Shell$Job;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->sources:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->stderrSet:Z

    return-void
.end method

.method public constructor <init>(Lcom/topjohnwu/superuser/internal/ShellImpl;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/topjohnwu/superuser/Shell$Job;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->sources:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->stderrSet:Z

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->shell:Lcom/topjohnwu/superuser/internal/ShellImpl;

    return-void
.end method

.method private exec0()Lcom/topjohnwu/superuser/internal/ResultImpl;
    .locals 6

    iget-boolean v0, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->stderrSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->shell:Lcom/topjohnwu/superuser/internal/ShellImpl;

    iget-boolean v0, v0, Lcom/topjohnwu/superuser/internal/ShellImpl;->redirect:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->out:Ljava/util/List;

    iput-object v1, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->err:Ljava/util/List;

    :cond_1
    new-instance v1, Lcom/topjohnwu/superuser/internal/ResultImpl;

    invoke-direct {v1}, Lcom/topjohnwu/superuser/internal/ResultImpl;-><init>()V

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->out:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->err:Ljava/util/List;

    if-ne v2, v3, :cond_2

    invoke-static {v2}, Lcom/topjohnwu/superuser/internal/Utils;->isSynchronized(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->out:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/topjohnwu/superuser/internal/ResultImpl;->out:Ljava/util/List;

    :goto_1
    iput-object v2, v1, Lcom/topjohnwu/superuser/internal/ResultImpl;->err:Ljava/util/List;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->out:Ljava/util/List;

    iput-object v2, v1, Lcom/topjohnwu/superuser/internal/ResultImpl;->out:Ljava/util/List;

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->err:Ljava/util/List;

    goto :goto_1

    :goto_2
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->shell:Lcom/topjohnwu/superuser/internal/ShellImpl;

    new-instance v4, Lcom/topjohnwu/superuser/internal/TaskImpl;

    iget-object v5, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->sources:Ljava/util/List;

    invoke-direct {v4, v5, v1}, Lcom/topjohnwu/superuser/internal/TaskImpl;-><init>(Ljava/util/List;Lcom/topjohnwu/superuser/internal/ResultImpl;)V

    invoke-virtual {v3, v4}, Lcom/topjohnwu/superuser/internal/ShellImpl;->execTask(Lcom/topjohnwu/superuser/Shell$Task;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/JobImpl;->close()V

    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->out:Ljava/util/List;

    iput-object v3, v1, Lcom/topjohnwu/superuser/internal/ResultImpl;->out:Ljava/util/List;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->err:Ljava/util/List;

    :goto_3
    iput-object v2, v1, Lcom/topjohnwu/superuser/internal/ResultImpl;->err:Ljava/util/List;

    return-object v1

    :catchall_0
    move-exception v3

    goto :goto_6

    :catch_0
    move-exception v3

    :try_start_1
    instance-of v4, v3, Lcom/topjohnwu/superuser/internal/ShellTerminatedException;

    if-eqz v4, :cond_5

    sget-object v3, Lcom/topjohnwu/superuser/internal/ResultImpl;->SHELL_ERR:Lcom/topjohnwu/superuser/internal/ResultImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/JobImpl;->close()V

    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->out:Ljava/util/List;

    iput-object v4, v1, Lcom/topjohnwu/superuser/internal/ResultImpl;->out:Ljava/util/List;

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->err:Ljava/util/List;

    :goto_4
    iput-object v2, v1, Lcom/topjohnwu/superuser/internal/ResultImpl;->err:Ljava/util/List;

    return-object v3

    :cond_5
    :try_start_2
    invoke-static {v3}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/Throwable;)V

    sget-object v3, Lcom/topjohnwu/superuser/internal/ResultImpl;->INSTANCE:Lcom/topjohnwu/superuser/internal/ResultImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/JobImpl;->close()V

    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->out:Ljava/util/List;

    iput-object v4, v1, Lcom/topjohnwu/superuser/internal/ResultImpl;->out:Ljava/util/List;

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->err:Ljava/util/List;

    :goto_5
    iput-object v2, v1, Lcom/topjohnwu/superuser/internal/ResultImpl;->err:Ljava/util/List;

    return-object v3

    :goto_6
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/JobImpl;->close()V

    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->out:Ljava/util/List;

    iput-object v4, v1, Lcom/topjohnwu/superuser/internal/ResultImpl;->out:Ljava/util/List;

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->err:Ljava/util/List;

    :goto_7
    iput-object v2, v1, Lcom/topjohnwu/superuser/internal/ResultImpl;->err:Ljava/util/List;

    throw v3
.end method

.method public static synthetic i(Lcom/topjohnwu/superuser/internal/JobImpl;Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$ResultCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/JobImpl;->lambda$submit$0(Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$ResultCallback;)V

    return-void
.end method

.method private synthetic lambda$submit$0(Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$ResultCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/JobImpl;->exec0()Lcom/topjohnwu/superuser/internal/ResultImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/topjohnwu/superuser/internal/ResultImpl;->callback(Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$ResultCallback;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/io/InputStream;)Lcom/topjohnwu/superuser/Shell$Job;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->sources:Ljava/util/List;

    new-instance v1, Lcom/topjohnwu/superuser/internal/InputStreamSource;

    invoke-direct {v1, p1}, Lcom/topjohnwu/superuser/internal/InputStreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public varargs add([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;
    .locals 2

    .line 2
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->sources:Ljava/util/List;

    new-instance v1, Lcom/topjohnwu/superuser/internal/CommandSource;

    invoke-direct {v1, p1}, Lcom/topjohnwu/superuser/internal/CommandSource;-><init>([Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/topjohnwu/superuser/internal/ShellInputSource;

    invoke-interface {v1}, Lcom/topjohnwu/superuser/internal/ShellInputSource;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public exec()Lcom/topjohnwu/superuser/Shell$Result;
    .locals 1

    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/JobImpl;->exec0()Lcom/topjohnwu/superuser/internal/ResultImpl;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$ResultCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->shell:Lcom/topjohnwu/superuser/internal/ShellImpl;

    iget-object v0, v0, Lcom/topjohnwu/superuser/internal/ShellImpl;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/topjohnwu/superuser/internal/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/topjohnwu/superuser/internal/a;-><init>(Lcom/topjohnwu/superuser/internal/JobImpl;Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$ResultCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public to(Ljava/util/List;)Lcom/topjohnwu/superuser/Shell$Job;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/topjohnwu/superuser/Shell$Job;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->out:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->err:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->stderrSet:Z

    return-object p0
.end method

.method public to(Ljava/util/List;Ljava/util/List;)Lcom/topjohnwu/superuser/Shell$Job;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/topjohnwu/superuser/Shell$Job;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->out:Ljava/util/List;

    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->err:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/topjohnwu/superuser/internal/JobImpl;->stderrSet:Z

    return-object p0
.end method
