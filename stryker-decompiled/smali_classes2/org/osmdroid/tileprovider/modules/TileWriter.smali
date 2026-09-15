.class public Lorg/osmdroid/tileprovider/modules/TileWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/tileprovider/modules/IFilesystemCache;


# static fields
.field static hasInited:Z = false

.field private static mUsedCacheSpace:J


# instance fields
.field initThread:Ljava/lang/Thread;

.field private mMaximumCachedFileAge:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->initThread:Ljava/lang/Thread;

    sget-boolean v0, Lorg/osmdroid/tileprovider/modules/TileWriter;->hasInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/osmdroid/tileprovider/modules/TileWriter;->hasInited:Z

    new-instance v1, Lorg/osmdroid/tileprovider/modules/TileWriter$1;

    invoke-direct {v1, p0}, Lorg/osmdroid/tileprovider/modules/TileWriter$1;-><init>(Lorg/osmdroid/tileprovider/modules/TileWriter;)V

    iput-object v1, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->initThread:Ljava/lang/Thread;

    const-string v2, "TileWriter#init"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->initThread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->initThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static synthetic access$000()J
    .locals 2

    sget-wide v0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    return-wide v0
.end method

.method public static synthetic access$002(J)J
    .locals 0

    sput-wide p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    return-wide p0
.end method

.method public static synthetic access$100(Lorg/osmdroid/tileprovider/modules/TileWriter;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/TileWriter;->calculateDirectorySize(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic access$200(Lorg/osmdroid/tileprovider/modules/TileWriter;)V
    .locals 0

    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/TileWriter;->cutCurrentCache()V

    return-void
.end method

.method private calculateDirectorySize(Ljava/io/File;)V
    .locals 8

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-wide v4, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v6, v4

    sput-wide v6, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v3}, Lorg/osmdroid/tileprovider/modules/TileWriter;->isSymbolicDirectoryLink(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3}, Lorg/osmdroid/tileprovider/modules/TileWriter;->calculateDirectorySize(Ljava/io/File;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private createFolderAndCheckIfExists(Ljava/io/File;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_2
    return v1

    :cond_3
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private cutCurrentCache()V
    .locals 9

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheTrimBytes()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheTrimBytes()J

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getDirectoryFileList(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/io/File;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    new-instance v3, Lorg/osmdroid/tileprovider/modules/TileWriter$2;

    invoke-direct {v3, p0}, Lorg/osmdroid/tileprovider/modules/TileWriter$2;-><init>(Lorg/osmdroid/tileprovider/modules/TileWriter;)V

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    sget-wide v5, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheTrimBytes()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_1
    sget-wide v7, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    sub-long/2addr v7, v5

    sput-wide v7, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDirectoryFileList(Ljava/io/File;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getDirectoryFileList(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getUsedCacheSpace()J
    .locals 2

    sget-wide v0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    return-wide v0
.end method

.method private isSymbolicDirectoryLink(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    return p1

    :catch_0
    return v0
.end method


# virtual methods
.method public exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public getExpirationTimestamp(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/lang/Long;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, p2, p3}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileRelativeFilenameString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".tile"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public loadTile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Landroid/graphics/drawable/Drawable;
    .locals 7

    invoke-virtual {p0, p1, p2, p3}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mMaximumCachedFileAge:J

    sub-long/2addr v1, v5

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    :cond_1
    const/4 p2, -0x2

    invoke-static {p1, p2}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    return-object p1
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->initThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public remove(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to delete cached tile from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OsmDroid"

    invoke-static {p2, p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public saveFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;JLjava/io/InputStream;Ljava/lang/Long;)Z
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/File;

    move-result-object p1

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p2

    invoke-interface {p2}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    const/4 p5, 0x0

    if-nez p3, :cond_1

    invoke-direct {p0, p2}, Lorg/osmdroid/tileprovider/modules/TileWriter;->createFolderAndCheckIfExists(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_1

    return p5

    :cond_1
    const/4 p2, 0x1

    const/4 p3, 0x0

    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x2000

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p4, v0}, Lorg/osmdroid/tileprovider/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p3

    sget-wide v1, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    add-long/2addr v1, p3

    sput-wide v1, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide p3

    cmp-long p1, v1, p3

    if-lez p1, :cond_2

    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/TileWriter;->cutCurrentCache()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p3, v0

    goto :goto_2

    :catch_0
    move-object p3, v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    return p2

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    :goto_1
    :try_start_2
    sget p1, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    add-int/2addr p1, p2

    sput p1, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p3, :cond_3

    invoke-static {p3}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_3
    return p5

    :goto_2
    if-eqz p3, :cond_4

    invoke-static {p3}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_4
    throw p1
.end method

.method public setMaximumCachedFileAge(J)V
    .locals 0

    iput-wide p1, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mMaximumCachedFileAge:J

    return-void
.end method
