.class final Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;
.super Lokhttp3/internal/concurrent/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/concurrent/TaskQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AwaitIdleTask"
.end annotation


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lokhttp3/internal/Util;->okHttpName:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, " awaitIdle"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0, v0, v1}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final getLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;->latch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public runOnce()J
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
