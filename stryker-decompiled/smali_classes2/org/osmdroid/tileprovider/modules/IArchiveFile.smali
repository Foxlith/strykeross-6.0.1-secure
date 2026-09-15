.class public interface abstract Lorg/osmdroid/tileprovider/modules/IArchiveFile;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getInputStream(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/InputStream;
.end method

.method public abstract getTileSources()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init(Ljava/io/File;)V
.end method

.method public abstract setIgnoreTileSource(Z)V
.end method
