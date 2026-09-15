.class public abstract Lokio/FileHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/FileHandle$FileHandleSink;,
        Lokio/FileHandle$FileHandleSource;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private openStreamCount:I

.field private final readWrite:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokio/FileHandle;->readWrite:Z

    invoke-static {}, Lokio/_JvmPlatformKt;->newLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    iput-object p1, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static final synthetic access$getClosed$p(Lokio/FileHandle;)Z
    .locals 0

    iget-boolean p0, p0, Lokio/FileHandle;->closed:Z

    return p0
.end method

.method public static final synthetic access$getOpenStreamCount$p(Lokio/FileHandle;)I
    .locals 0

    iget p0, p0, Lokio/FileHandle;->openStreamCount:I

    return p0
.end method

.method public static final synthetic access$readNoCloseCheck(Lokio/FileHandle;JLokio/Buffer;J)J
    .locals 0

    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->readNoCloseCheck(JLokio/Buffer;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$setOpenStreamCount$p(Lokio/FileHandle;I)V
    .locals 0

    iput p1, p0, Lokio/FileHandle;->openStreamCount:I

    return-void
.end method

.method public static final synthetic access$writeNoCloseCheck(Lokio/FileHandle;JLokio/Buffer;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->writeNoCloseCheck(JLokio/Buffer;J)V

    return-void
.end method

.method private final readNoCloseCheck(JLokio/Buffer;J)J
    .locals 14

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-wide/from16 v1, p4

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v3, v1, v3

    .line 8
    .line 9
    if-ltz v3, :cond_3

    .line 10
    .line 11
    add-long/2addr v1, p1

    .line 12
    move-wide v9, p1

    .line 13
    :goto_0
    cmp-long v3, v9, v1

    .line 14
    .line 15
    if-gez v3, :cond_2

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v0, v3}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 19
    .line 20
    .line 21
    move-result-object v11

    .line 22
    iget-object v6, v11, Lokio/Segment;->data:[B

    .line 23
    .line 24
    iget v7, v11, Lokio/Segment;->limit:I

    .line 25
    .line 26
    sub-long v3, v1, v9

    .line 27
    .line 28
    rsub-int v5, v7, 0x2000

    .line 29
    .line 30
    int-to-long v12, v5

    .line 31
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    long-to-int v8, v3

    .line 36
    move-object v3, p0

    .line 37
    move-wide v4, v9

    .line 38
    invoke-virtual/range {v3 .. v8}, Lokio/FileHandle;->protectedRead(J[BII)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, -0x1

    .line 43
    if-ne v3, v4, :cond_1

    .line 44
    .line 45
    iget v1, v11, Lokio/Segment;->pos:I

    .line 46
    .line 47
    iget v2, v11, Lokio/Segment;->limit:I

    .line 48
    .line 49
    if-ne v1, v2, :cond_0

    .line 50
    .line 51
    invoke-virtual {v11}, Lokio/Segment;->pop()Lokio/Segment;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 56
    .line 57
    invoke-static {v11}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    cmp-long v0, p1, v9

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    const-wide/16 v0, -0x1

    .line 65
    .line 66
    return-wide v0

    .line 67
    :cond_1
    iget v4, v11, Lokio/Segment;->limit:I

    .line 68
    .line 69
    add-int/2addr v4, v3

    .line 70
    iput v4, v11, Lokio/Segment;->limit:I

    .line 71
    .line 72
    int-to-long v3, v3

    .line 73
    add-long/2addr v9, v3

    .line 74
    invoke-virtual/range {p3 .. p3}, Lokio/Buffer;->size()J

    .line 75
    .line 76
    .line 77
    move-result-wide v5

    .line 78
    add-long/2addr v5, v3

    .line 79
    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$okio(J)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    sub-long/2addr v9, p1

    .line 84
    return-wide v9

    .line 85
    :cond_3
    const-string v0, "byteCount < 0: "

    .line 86
    .line 87
    invoke-static {v0, v1, v2}, Ll1/e;->e(Ljava/lang/String;J)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v1
.end method

.method public static synthetic sink$default(Lokio/FileHandle;JILjava/lang/Object;)Lokio/Sink;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileHandle;->sink(J)Lokio/Sink;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sink"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic source$default(Lokio/FileHandle;JILjava/lang/Object;)Lokio/Source;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileHandle;->source(J)Lokio/Source;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: source"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeNoCloseCheck(JLokio/Buffer;J)V
    .locals 8

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    add-long/2addr p4, p1

    :cond_0
    :goto_0
    cmp-long v0, p1, p4

    if-gez v0, :cond_1

    iget-object v6, p3, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v6}, Li5/a;->m(Ljava/lang/Object;)V

    sub-long v0, p4, p1

    iget v2, v6, Lokio/Segment;->limit:I

    iget v3, v6, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    iget-object v3, v6, Lokio/Segment;->data:[B

    iget v4, v6, Lokio/Segment;->pos:I

    move-object v0, p0

    move-wide v1, p1

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lokio/FileHandle;->protectedWrite(J[BII)V

    iget v0, v6, Lokio/Segment;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lokio/Segment;->pos:I

    int-to-long v0, v7

    add-long/2addr p1, v0

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p3, v2, v3}, Lokio/Buffer;->setSize$okio(J)V

    iget v0, v6, Lokio/Segment;->pos:I

    iget v1, v6, Lokio/Segment;->limit:I

    if-ne v0, v1, :cond_0

    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    iput-object v0, p3, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final appendingSink()Lokio/Sink;
    .locals 2

    invoke-virtual {p0}, Lokio/FileHandle;->size()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/FileHandle;->sink(J)Lokio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lokio/FileHandle;->closed:Z

    iget v1, p0, Lokio/FileHandle;->openStreamCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lokio/FileHandle;->protectedClose()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final flush()V
    .locals 3

    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lokio/FileHandle;->protectedFlush()V

    return-void

    :cond_0
    :try_start_1
    const-string v1, "closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "file handle is read-only"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public final getReadWrite()Z
    .locals 1

    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    return v0
.end method

.method public final position(Lokio/Sink;)J
    .locals 4

    .line 1
    const-string v0, "sink"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lokio/RealBufferedSink;

    if-eqz v0, :cond_0

    check-cast p1, Lokio/RealBufferedSink;

    iget-object v0, p1, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    iget-object p1, p1, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    instance-of v2, p1, Lokio/FileHandle$FileHandleSink;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v2}, Lokio/FileHandle$FileHandleSink;->getFileHandle()Lokio/FileHandle;

    move-result-object v2

    if-ne v2, p0, :cond_2

    check-cast p1, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {p1}, Lokio/FileHandle$FileHandleSink;->getClosed()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lokio/FileHandle$FileHandleSink;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink was not created by this FileHandle"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final position(Lokio/Source;)J
    .locals 4

    .line 2
    const-string v0, "source"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lokio/RealBufferedSource;

    if-eqz v0, :cond_0

    check-cast p1, Lokio/RealBufferedSource;

    iget-object v0, p1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    iget-object p1, p1, Lokio/RealBufferedSource;->source:Lokio/Source;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    instance-of v2, p1, Lokio/FileHandle$FileHandleSource;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v2}, Lokio/FileHandle$FileHandleSource;->getFileHandle()Lokio/FileHandle;

    move-result-object v2

    if-ne v2, p0, :cond_2

    check-cast p1, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {p1}, Lokio/FileHandle$FileHandleSource;->getClosed()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lokio/FileHandle$FileHandleSource;->getPosition()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source was not created by this FileHandle"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract protectedClose()V
.end method

.method public abstract protectedFlush()V
.end method

.method public abstract protectedRead(J[BII)I
.end method

.method public abstract protectedResize(J)V
.end method

.method public abstract protectedSize()J
.end method

.method public abstract protectedWrite(J[BII)V
.end method

.method public final read(J[BII)I
    .locals 2

    .line 1
    const-string v0, "array"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p5}, Lokio/FileHandle;->protectedRead(J[BII)I

    move-result p1

    return p1

    :cond_0
    :try_start_1
    const-string p1, "closed"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final read(JLokio/Buffer;J)J
    .locals 2

    .line 2
    const-string v0, "sink"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->readNoCloseCheck(JLokio/Buffer;J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    :try_start_1
    const-string p1, "closed"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final reposition(Lokio/Sink;J)V
    .locals 4

    .line 1
    const-string v0, "sink"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lokio/RealBufferedSink;

    const-string v1, "closed"

    const-string v2, "sink was not created by this FileHandle"

    if-eqz v0, :cond_2

    check-cast p1, Lokio/RealBufferedSink;

    iget-object v0, p1, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    instance-of v3, v0, Lokio/FileHandle$FileHandleSink;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v3}, Lokio/FileHandle$FileHandleSink;->getFileHandle()Lokio/FileHandle;

    move-result-object v3

    if-ne v3, p0, :cond_1

    check-cast v0, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSink;->getClosed()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lokio/RealBufferedSink;->emit()Lokio/BufferedSink;

    invoke-virtual {v0, p2, p3}, Lokio/FileHandle$FileHandleSink;->setPosition(J)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    instance-of v0, p1, Lokio/FileHandle$FileHandleSink;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSink;->getFileHandle()Lokio/FileHandle;

    move-result-object v0

    if-ne v0, p0, :cond_4

    check-cast p1, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {p1}, Lokio/FileHandle$FileHandleSink;->getClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2, p3}, Lokio/FileHandle$FileHandleSink;->setPosition(J)V

    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final reposition(Lokio/Source;J)V
    .locals 7

    .line 2
    const-string v0, "source"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lokio/RealBufferedSource;

    const-string v1, "closed"

    const-string v2, "source was not created by this FileHandle"

    if-eqz v0, :cond_3

    check-cast p1, Lokio/RealBufferedSource;

    iget-object v0, p1, Lokio/RealBufferedSource;->source:Lokio/Source;

    instance-of v3, v0, Lokio/FileHandle$FileHandleSource;

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v3}, Lokio/FileHandle$FileHandleSource;->getFileHandle()Lokio/FileHandle;

    move-result-object v3

    if-ne v3, p0, :cond_2

    check-cast v0, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSource;->getClosed()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v1, p1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSource;->getPosition()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sub-long v3, p2, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v5, v3

    if-gtz v5, :cond_0

    cmp-long v1, v3, v1

    if-gez v1, :cond_0

    invoke-virtual {p1, v3, v4}, Lokio/RealBufferedSource;->skip(J)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->clear()V

    invoke-virtual {v0, p2, p3}, Lokio/FileHandle$FileHandleSource;->setPosition(J)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    instance-of v0, p1, Lokio/FileHandle$FileHandleSource;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSource;->getFileHandle()Lokio/FileHandle;

    move-result-object v0

    if-ne v0, p0, :cond_5

    check-cast p1, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {p1}, Lokio/FileHandle$FileHandleSource;->getClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2, p3}, Lokio/FileHandle$FileHandleSource;->setPosition(J)V

    :goto_0
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final resize(J)V
    .locals 2

    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0, p1, p2}, Lokio/FileHandle;->protectedResize(J)V

    return-void

    :cond_0
    :try_start_1
    const-string p1, "closed"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "file handle is read-only"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sink(J)Lokio/Sink;
    .locals 2

    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lokio/FileHandle;->openStreamCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokio/FileHandle;->openStreamCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v0, Lokio/FileHandle$FileHandleSink;

    invoke-direct {v0, p0, p1, p2}, Lokio/FileHandle$FileHandleSink;-><init>(Lokio/FileHandle;J)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p1, "closed"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "file handle is read-only"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final size()J
    .locals 3

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lokio/FileHandle;->protectedSize()J

    move-result-wide v0

    return-wide v0

    :cond_0
    :try_start_1
    const-string v1, "closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final source(J)Lokio/Source;
    .locals 2

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lokio/FileHandle;->openStreamCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokio/FileHandle;->openStreamCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v0, Lokio/FileHandle$FileHandleSource;

    invoke-direct {v0, p0, p1, p2}, Lokio/FileHandle$FileHandleSource;-><init>(Lokio/FileHandle;J)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p1, "closed"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final write(JLokio/Buffer;J)V
    .locals 2

    .line 1
    const-string v0, "source"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->writeNoCloseCheck(JLokio/Buffer;J)V

    return-void

    :cond_0
    :try_start_1
    const-string p1, "closed"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "file handle is read-only"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write(J[BII)V
    .locals 2

    .line 2
    const-string v0, "array"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p5}, Lokio/FileHandle;->protectedWrite(J[BII)V

    return-void

    :cond_0
    :try_start_1
    const-string p1, "closed"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "file handle is read-only"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
