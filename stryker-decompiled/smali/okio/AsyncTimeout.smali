.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$Companion;,
        Lokio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field public static final Companion:Lokio/AsyncTimeout$Companion;

.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field private static final condition:Ljava/util/concurrent/locks/Condition;

.field private static head:Lokio/AsyncTimeout;

.field private static final lock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private inQueue:Z

.field private next:Lokio/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lokio/AsyncTimeout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/AsyncTimeout$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lokio/AsyncTimeout;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    const-string v1, "newCondition(...)"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lokio/AsyncTimeout;->condition:Ljava/util/concurrent/locks/Condition;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCondition$cp()Ljava/util/concurrent/locks/Condition;
    .locals 1

    sget-object v0, Lokio/AsyncTimeout;->condition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public static final synthetic access$getHead$cp()Lokio/AsyncTimeout;
    .locals 1

    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_MILLIS$cp()J
    .locals 2

    sget-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_NANOS$cp()J
    .locals 2

    sget-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-wide v0
.end method

.method public static final synthetic access$getInQueue$p(Lokio/AsyncTimeout;)Z
    .locals 0

    iget-boolean p0, p0, Lokio/AsyncTimeout;->inQueue:Z

    return p0
.end method

.method public static final synthetic access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    sget-object v0, Lokio/AsyncTimeout;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;
    .locals 0

    iget-object p0, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    return-object p0
.end method

.method public static final synthetic access$remainingNanos(Lokio/AsyncTimeout;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$setHead$cp(Lokio/AsyncTimeout;)V
    .locals 0

    sput-object p0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    return-void
.end method

.method public static final synthetic access$setInQueue$p(Lokio/AsyncTimeout;Z)V
    .locals 0

    iput-boolean p1, p0, Lokio/AsyncTimeout;->inQueue:Z

    return-void
.end method

.method public static final synthetic access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V
    .locals 0

    iput-object p1, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    return-void
.end method

.method public static final synthetic access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V
    .locals 0

    iput-wide p1, p0, Lokio/AsyncTimeout;->timeoutAt:J

    return-void
.end method

.method private final remainingNanos(J)J
    .locals 2

    iget-wide v0, p0, Lokio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public final access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final enter()V
    .locals 5

    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v0

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v3, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    invoke-static {v3, p0, v0, v1, v2}, Lokio/AsyncTimeout$Companion;->access$scheduleTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;JZ)V

    return-void
.end method

.method public final exit()Z
    .locals 1

    sget-object v0, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    invoke-static {v0, p0}, Lokio/AsyncTimeout$Companion;->access$cancelScheduledTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method public newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/AsyncTimeout$sink$1;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$sink$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/AsyncTimeout$source$1;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$source$1;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    return-object v0
.end method

.method public timedOut()V
    .locals 0

    return-void
.end method

.method public final withTimeout(Lj5/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj5/a;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/AsyncTimeout;->enter()V

    :try_start_0
    invoke-interface {p1}, Lj5/a;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_0
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    throw p1
.end method
