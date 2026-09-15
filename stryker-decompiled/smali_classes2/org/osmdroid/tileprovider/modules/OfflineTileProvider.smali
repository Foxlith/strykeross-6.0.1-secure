.class public Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;
.super Lorg/osmdroid/tileprovider/MapTileProviderArray;
.source "SourceFile"


# instance fields
.field private archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;[Ljava/io/File;)V
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/osmdroid/tileprovider/tilesource/FileBasedTileSource;->getSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p2, v0

    invoke-static {v3}, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->getArchiveFile(Ljava/io/File;)Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Skipping "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", no tile provider is registered to handle the file extension"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OsmDroid"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    iput-object p2, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    iput-object p2, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    new-instance p2, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    invoke-direct {p2, p1, v0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;[Lorg/osmdroid/tileprovider/modules/IArchiveFile;)V

    iget-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    invoke-direct {p1}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;-><init>()V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/osmdroid/tileprovider/modules/IArchiveFile;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->detach()V

    return-void
.end method

.method public getArchives()[Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    return-object v0
.end method

.method public isDowngradedMode(J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
