.class public final Lkotlinx/coroutines/scheduling/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private volatile synthetic blockingTasksInBuffer:I

.field private volatile synthetic consumerIndex:I

.field private volatile synthetic lastScheduledTask:Ljava/lang/Object;

.field private volatile synthetic producerIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "lastScheduledTask"

    const-class v2, Lkotlinx/coroutines/scheduling/l;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "producerIndex"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/l;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "consumerIndex"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/l;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "blockingTasksInBuffer"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/l;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/l;->lastScheduledTask:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/scheduling/l;->producerIndex:I

    iput v0, p0, Lkotlinx/coroutines/scheduling/l;->consumerIndex:I

    iput v0, p0, Lkotlinx/coroutines/scheduling/l;->blockingTasksInBuffer:I

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;
    .locals 2

    .line 1
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/h;->b:Landroidx/fragment/app/x0;

    .line 2
    .line 3
    iget v0, v0, Landroidx/fragment/app/x0;->a:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lkotlinx/coroutines/scheduling/l;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/l;->producerIndex:I

    .line 14
    .line 15
    iget v1, p0, Lkotlinx/coroutines/scheduling/l;->consumerIndex:I

    .line 16
    .line 17
    sub-int/2addr v0, v1

    .line 18
    const/16 v1, 0x7f

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    iget v0, p0, Lkotlinx/coroutines/scheduling/l;->producerIndex:I

    .line 24
    .line 25
    and-int/2addr v0, v1

    .line 26
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 39
    .line 40
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lkotlinx/coroutines/scheduling/l;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    return-object p1
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/l;->lastScheduledTask:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v0, p0, Lkotlinx/coroutines/scheduling/l;->producerIndex:I

    iget v1, p0, Lkotlinx/coroutines/scheduling/l;->consumerIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/l;->producerIndex:I

    iget v1, p0, Lkotlinx/coroutines/scheduling/l;->consumerIndex:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public final c()Lkotlinx/coroutines/scheduling/h;
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/l;->consumerIndex:I

    .line 2
    .line 3
    iget v1, p0, Lkotlinx/coroutines/scheduling/l;->producerIndex:I

    .line 4
    .line 5
    sub-int v1, v0, v1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    .line 12
    .line 13
    sget-object v3, Lkotlinx/coroutines/scheduling/l;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 14
    .line 15
    add-int/lit8 v4, v0, 0x1

    .line 16
    .line 17
    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/h;->b:Landroidx/fragment/app/x0;

    .line 35
    .line 36
    iget v1, v1, Landroidx/fragment/app/x0;->a:I

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    if-ne v1, v2, :cond_3

    .line 40
    .line 41
    sget-object v1, Lkotlinx/coroutines/scheduling/l;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    :cond_3
    return-object v0
.end method

.method public final d(Lkotlinx/coroutines/scheduling/l;)J
    .locals 7

    .line 1
    iget v0, p1, Lkotlinx/coroutines/scheduling/l;->consumerIndex:I

    .line 2
    .line 3
    iget v1, p1, Lkotlinx/coroutines/scheduling/l;->producerIndex:I

    .line 4
    .line 5
    iget-object v2, p1, Lkotlinx/coroutines/scheduling/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    .line 7
    :goto_0
    const/4 v3, 0x1

    .line 8
    if-eq v0, v1, :cond_5

    .line 9
    .line 10
    and-int/lit8 v4, v0, 0x7f

    .line 11
    .line 12
    iget v5, p1, Lkotlinx/coroutines/scheduling/l;->blockingTasksInBuffer:I

    .line 13
    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Lkotlinx/coroutines/scheduling/h;

    .line 22
    .line 23
    if-eqz v5, :cond_4

    .line 24
    .line 25
    iget-object v6, v5, Lkotlinx/coroutines/scheduling/h;->b:Landroidx/fragment/app/x0;

    .line 26
    .line 27
    iget v6, v6, Landroidx/fragment/app/x0;->a:I

    .line 28
    .line 29
    if-ne v6, v3, :cond_4

    .line 30
    .line 31
    :cond_1
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    sget-object v0, Lkotlinx/coroutines/scheduling/l;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    sget-object p1, Lkotlinx/coroutines/scheduling/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 44
    .line 45
    invoke-virtual {p1, p0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/l;->a(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;

    .line 55
    .line 56
    .line 57
    :goto_1
    const-wide/16 v0, -0x1

    .line 58
    .line 59
    return-wide v0

    .line 60
    :cond_3
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eq v3, v5, :cond_1

    .line 65
    .line 66
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/scheduling/l;->e(Lkotlinx/coroutines/scheduling/l;Z)J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    return-wide v0
.end method

.method public final e(Lkotlinx/coroutines/scheduling/l;Z)J
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/l;->lastScheduledTask:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    .line 4
    .line 5
    const-wide/16 v1, -0x2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_0
    if-eqz p2, :cond_2

    .line 11
    .line 12
    iget-object v3, v0, Lkotlinx/coroutines/scheduling/h;->b:Landroidx/fragment/app/x0;

    .line 13
    .line 14
    iget v3, v3, Landroidx/fragment/app/x0;->a:I

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-ne v3, v4, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    return-wide v1

    .line 21
    :cond_2
    :goto_1
    sget-object v1, Lkotlinx/coroutines/scheduling/j;->e:Lkotlinx/coroutines/scheduling/f;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    iget-wide v3, v0, Lkotlinx/coroutines/scheduling/h;->a:J

    .line 31
    .line 32
    sub-long/2addr v1, v3

    .line 33
    sget-wide v3, Lkotlinx/coroutines/scheduling/j;->a:J

    .line 34
    .line 35
    cmp-long v5, v1, v3

    .line 36
    .line 37
    if-gez v5, :cond_3

    .line 38
    .line 39
    sub-long/2addr v3, v1

    .line 40
    return-wide v3

    .line 41
    :cond_3
    sget-object v1, Lkotlinx/coroutines/scheduling/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 42
    .line 43
    :cond_4
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_6

    .line 49
    .line 50
    sget-object p1, Lkotlinx/coroutines/scheduling/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 51
    .line 52
    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    .line 57
    .line 58
    if-nez p1, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/l;->a(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;

    .line 62
    .line 63
    .line 64
    :goto_2
    const-wide/16 p1, -0x1

    .line 65
    .line 66
    return-wide p1

    .line 67
    :cond_6
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-eq v2, v0, :cond_4

    .line 72
    .line 73
    goto :goto_0
.end method
