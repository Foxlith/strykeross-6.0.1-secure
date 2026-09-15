.class public Lorg/osmdroid/util/GarbageCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAction:Ljava/lang/Runnable;

.field private final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/osmdroid/util/GarbageCollector;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lorg/osmdroid/util/GarbageCollector;->mAction:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lorg/osmdroid/util/GarbageCollector;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/util/GarbageCollector;->mAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/osmdroid/util/GarbageCollector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/util/GarbageCollector;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public gc()Z
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/util/GarbageCollector;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lorg/osmdroid/util/GarbageCollector$1;

    invoke-direct {v2, p0}, Lorg/osmdroid/util/GarbageCollector$1;-><init>(Lorg/osmdroid/util/GarbageCollector;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v2, "GarbageCollector"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v1
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/util/GarbageCollector;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
