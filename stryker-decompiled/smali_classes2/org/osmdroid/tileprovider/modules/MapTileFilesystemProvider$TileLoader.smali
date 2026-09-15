.class public Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider$TileLoader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    return-void
.end method


# virtual methods
.method public loadTile(J)Landroid/graphics/drawable/Drawable;
    .locals 4

    const-string v0, "OsmDroid"

    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;

    invoke-static {v1}, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;->access$000(Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;

    invoke-static {v3}, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;->access$100(Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;)Lorg/osmdroid/tileprovider/modules/TileWriter;

    move-result-object v3

    invoke-virtual {v3, v1, p1, p2}, Lorg/osmdroid/tileprovider/modules/TileWriter;->loadTile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    sget v3, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheMiss:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheMiss:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    sget v3, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheHit:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheHit:I
    :try_end_0
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v1

    :goto_1
    const-string p2, "Error loading tile"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LowMemoryException downloading MapTile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheOOM:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheOOM:I

    new-instance p1, Lorg/osmdroid/tileprovider/modules/CantContinueException;

    invoke-direct {p1, v1}, Lorg/osmdroid/tileprovider/modules/CantContinueException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
