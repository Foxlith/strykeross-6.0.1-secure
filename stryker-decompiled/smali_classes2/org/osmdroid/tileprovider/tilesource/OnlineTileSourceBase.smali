.class public abstract Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.super Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;
.source "SourceFile"


# instance fields
.field private final mBaseUrls:[Ljava/lang/String;

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field private final mTileSourcePolicy:Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 2
    new-instance v8, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    invoke-direct {v8}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;)V
    .locals 7

    .line 3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    iput-object p6, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mBaseUrls:[Ljava/lang/String;

    iput-object p8, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mTileSourcePolicy:Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    invoke-virtual {p8}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->getMaxConcurrent()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-virtual {p8}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->getMaxConcurrent()I

    move-result p2

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    :goto_0
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mSemaphore:Ljava/util/concurrent/Semaphore;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mSemaphore:Ljava/util/concurrent/Semaphore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    return-void
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mBaseUrls:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->random:Ljava/util/Random;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTileSourcePolicy()Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mTileSourcePolicy:Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    return-object v0
.end method

.method public abstract getTileURLString(J)Ljava/lang/String;
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mSemaphore:Ljava/util/concurrent/Semaphore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
