.class public Lorg/osmdroid/tileprovider/BitmapPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lorg/osmdroid/tileprovider/BitmapPool;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/osmdroid/tileprovider/BitmapPool;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/BitmapPool;-><init>()V

    sput-object v0, Lorg/osmdroid/tileprovider/BitmapPool;->sInstance:Lorg/osmdroid/tileprovider/BitmapPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    new-instance v0, Lorg/osmdroid/tileprovider/modules/ConfigurablePriorityThreadFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/osmdroid/tileprovider/modules/ConfigurablePriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v2, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic access$000(Lorg/osmdroid/tileprovider/BitmapPool;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/BitmapPool;->syncRecycle(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static getInstance()Lorg/osmdroid/tileprovider/BitmapPool;
    .locals 1

    sget-object v0, Lorg/osmdroid/tileprovider/BitmapPool;->sInstance:Lorg/osmdroid/tileprovider/BitmapPool;

    return-object v0
.end method

.method private syncRecycle(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/BitmapPool;->returnDrawableToPool(Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public applyReusableOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method

.method public applyReusableOptions(Landroid/graphics/BitmapFactory$Options;II)V
    .locals 0

    .line 2
    invoke-virtual {p0, p2, p3}, Lorg/osmdroid/tileprovider/BitmapPool;->obtainSizedBitmapFromPool(II)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x1

    iput p2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method

.method public asyncRecycle(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/osmdroid/tileprovider/BitmapPool$1;

    invoke-direct {v1, p0, p1}, Lorg/osmdroid/tileprovider/BitmapPool$1;-><init>(Lorg/osmdroid/tileprovider/BitmapPool;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearBitmapPool()V
    .locals 3

    sget-object v0, Lorg/osmdroid/tileprovider/BitmapPool;->sInstance:Lorg/osmdroid/tileprovider/BitmapPool;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    monitor-enter v0

    :goto_0
    :try_start_0
    sget-object v1, Lorg/osmdroid/tileprovider/BitmapPool;->sInstance:Lorg/osmdroid/tileprovider/BitmapPool;

    iget-object v2, v1, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public obtainBitmapFromPool()Landroid/graphics/Bitmap;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/BitmapPool;->obtainBitmapFromPool()Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public obtainSizedBitmapFromPool(II)Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/tileprovider/BitmapPool;->obtainSizedBitmapFromPool(II)Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v4, p2, :cond_1

    iget-object p1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object v3

    :cond_3
    monitor-exit v0

    return-object v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public returnDrawableToPool(Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;)V
    .locals 2

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->tryRecycle()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
