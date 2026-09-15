.class Lcom/topjohnwu/superuser/internal/TaskImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/topjohnwu/superuser/Shell$Task;


# static fields
.field static final END_CMD:[B

.field static final END_UUID:Ljava/lang/String;

.field static final UUID_LEN:I = 0x24


# instance fields
.field private final res:Lcom/topjohnwu/superuser/internal/ResultImpl;

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/topjohnwu/superuser/internal/ShellInputSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/TaskImpl;->END_UUID:Ljava/lang/String;

    const-string v1, "__RET=$?;echo %1$s;echo %1$s >&2;echo $__RET;unset __RET\n"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/TaskImpl;->END_CMD:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/topjohnwu/superuser/internal/ResultImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/topjohnwu/superuser/internal/ShellInputSource;",
            ">;",
            "Lcom/topjohnwu/superuser/internal/ResultImpl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/TaskImpl;->sources:Ljava/util/List;

    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/TaskImpl;->res:Lcom/topjohnwu/superuser/internal/ResultImpl;

    return-void
.end method


# virtual methods
.method public run(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 3

    sget-object v0, Lcom/topjohnwu/superuser/Shell;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/topjohnwu/superuser/internal/StreamGobbler$OUT;

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/TaskImpl;->res:Lcom/topjohnwu/superuser/internal/ResultImpl;

    iget-object v2, v2, Lcom/topjohnwu/superuser/internal/ResultImpl;->out:Ljava/util/List;

    invoke-direct {v1, p2, v2}, Lcom/topjohnwu/superuser/internal/StreamGobbler$OUT;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    sget-object v0, Lcom/topjohnwu/superuser/Shell;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/topjohnwu/superuser/internal/StreamGobbler$ERR;

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/TaskImpl;->res:Lcom/topjohnwu/superuser/internal/ResultImpl;

    iget-object v2, v2, Lcom/topjohnwu/superuser/internal/ResultImpl;->err:Ljava/util/List;

    invoke-direct {v1, p3, v2}, Lcom/topjohnwu/superuser/internal/StreamGobbler$ERR;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p3

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/TaskImpl;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/topjohnwu/superuser/internal/ShellInputSource;

    invoke-interface {v1, p1}, Lcom/topjohnwu/superuser/internal/ShellInputSource;->serve(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/topjohnwu/superuser/internal/TaskImpl;->END_CMD:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :try_start_0
    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/TaskImpl;->res:Lcom/topjohnwu/superuser/internal/ResultImpl;

    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Lcom/topjohnwu/superuser/internal/ResultImpl;->code:I

    invoke-interface {p3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/InterruptedIOException;

    throw p1
.end method
