.class public Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheManagerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAction:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mManager:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

.field private final mTiles:Lorg/osmdroid/util/IterableWithSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osmdroid/util/IterableWithSize<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mZoomMax:I

.field private final mZoomMin:I


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager;",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-static {p3, p4, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverage(Ljava/util/ArrayList;II)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/List;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager;",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    .line 2
    new-instance v3, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper;

    const/4 v0, 0x0

    invoke-direct {v3, p3, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper;-><init>(Ljava/util/List;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/IterableWithSize;II)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/BoundingBox;II)V
    .locals 6

    .line 3
    invoke-static {p3, p4, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverageIterable(Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/util/IterableWithSize;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/IterableWithSize;II)V

    return-void
.end method

.method private constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/IterableWithSize;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager;",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;",
            "Lorg/osmdroid/util/IterableWithSize<",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mManager:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iput-object p2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mAction:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    iput-object p3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mTiles:Lorg/osmdroid/util/IterableWithSize;

    iget p2, p1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMinZoomLevel:I

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget p1, p1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMaxZoomLevel:I

    invoke-static {p5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    return-void
.end method

.method public static synthetic access$000(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mManager:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    return-object p0
.end method

.method private logFaultyCallback(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "OsmDroid"

    const-string v1, "Error caught processing cachemanager callback, your implementation is faulty"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 8

    .line 1
    iget-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mAction:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;->preCheck()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mTiles:Lorg/osmdroid/util/IterableWithSize;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v5

    iget v6, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    if-lt v5, v6, :cond_2

    iget v6, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    if-gt v5, v6, :cond_2

    iget-object v5, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mAction:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    invoke-interface {v5, v3, v4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;->tileAction(J)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    const/4 v5, 0x1

    add-int/2addr v2, v5

    iget-object v6, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mAction:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    invoke-interface {v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;->getProgressModulo()I

    move-result v6

    rem-int v6, v2, v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v3, v4}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v5

    invoke-virtual {p0, v6}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled()V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mManager:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mManager:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->onTaskComplete()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->onTaskFailed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    invoke-direct {p0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->logFaultyCallback(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 6

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mTiles:Lorg/osmdroid/util/IterableWithSize;

    invoke-interface {v0}, Lorg/osmdroid/util/IterableWithSize;->size()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    :try_start_0
    invoke-interface {v2, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->setPossibleTilesInArea(I)V

    invoke-interface {v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->downloadStarted()V

    iget v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget v4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v3, v4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->updateProgress(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-direct {p0, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->logFaultyCallback(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget v5, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->updateProgress(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->logFaultyCallback(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
