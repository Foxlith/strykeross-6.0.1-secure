.class public final Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HASH_BUCKET_COUNT:I

.field public static final INSTANCE:Lokio/SegmentPool;

.field private static final LOCK:Lokio/Segment;

.field private static final MAX_SIZE:I

.field private static final hashBuckets:[Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lokio/Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lokio/SegmentPool;

    invoke-direct {v0}, Lokio/SegmentPool;-><init>()V

    sput-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    const/high16 v0, 0x10000

    sput v0, Lokio/SegmentPool;->MAX_SIZE:I

    new-instance v0, Lokio/Segment;

    const/4 v7, 0x0

    new-array v2, v7, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lokio/Segment;-><init>([BIIZZ)V

    sput-object v0, Lokio/SegmentPool;->LOCK:Lokio/Segment;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    sput v0, Lokio/SegmentPool;->HASH_BUCKET_COUNT:I

    new-array v1, v0, [Ljava/util/concurrent/atomic/AtomicReference;

    :goto_0
    if-ge v7, v0, :cond_0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    aput-object v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lokio/SegmentPool;->hashBuckets:[Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final firstRef()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lokio/Segment;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget v2, Lokio/SegmentPool;->HASH_BUCKET_COUNT:I

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    long-to-int v0, v0

    sget-object v1, Lokio/SegmentPool;->hashBuckets:[Ljava/util/concurrent/atomic/AtomicReference;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public static final recycle(Lokio/Segment;)V
    .locals 5

    const-string v0, "segment"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    if-nez v0, :cond_4

    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    invoke-direct {v0}, Lokio/SegmentPool;->firstRef()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lokio/SegmentPool;->LOCK:Lokio/Segment;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/Segment;

    if-ne v2, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz v2, :cond_2

    iget v3, v2, Lokio/Segment;->limit:I

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    sget v4, Lokio/SegmentPool;->MAX_SIZE:I

    if-lt v3, v4, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_3
    iput-object v2, p0, Lokio/Segment;->next:Lokio/Segment;

    iput v1, p0, Lokio/Segment;->pos:I

    add-int/lit16 v3, v3, 0x2000

    iput v3, p0, Lokio/Segment;->limit:I

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final take()Lokio/Segment;
    .locals 4

    sget-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    invoke-direct {v0}, Lokio/SegmentPool;->firstRef()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lokio/SegmentPool;->LOCK:Lokio/Segment;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/Segment;

    if-ne v2, v1, :cond_0

    new-instance v0, Lokio/Segment;

    invoke-direct {v0}, Lokio/Segment;-><init>()V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v0, Lokio/Segment;

    invoke-direct {v0}, Lokio/Segment;-><init>()V

    return-object v0

    :cond_1
    iget-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object v1, v2, Lokio/Segment;->next:Lokio/Segment;

    const/4 v0, 0x0

    iput v0, v2, Lokio/Segment;->limit:I

    return-object v2
.end method


# virtual methods
.method public final getByteCount()I
    .locals 1

    invoke-direct {p0}, Lokio/SegmentPool;->firstRef()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/Segment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lokio/Segment;->limit:I

    return v0
.end method

.method public final getMAX_SIZE()I
    .locals 1

    sget v0, Lokio/SegmentPool;->MAX_SIZE:I

    return v0
.end method
