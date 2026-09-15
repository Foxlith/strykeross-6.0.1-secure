.class public abstract Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/tileprovider/tilesource/ITileSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
    }
.end annotation


# static fields
.field private static globalOrdinal:I


# instance fields
.field protected mCopyright:Ljava/lang/String;

.field protected final mImageFilenameEnding:Ljava/lang/String;

.field private final mMaximumZoomLevel:I

.field private final mMinimumZoomLevel:I

.field protected mName:Ljava/lang/String;

.field private final mOrdinal:I

.field private final mTileSizePixels:I

.field protected final random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->random:Ljava/util/Random;

    sget v0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->globalOrdinal:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->globalOrdinal:I

    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mOrdinal:I

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mName:Ljava/lang/String;

    iput p2, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mMinimumZoomLevel:I

    iput p3, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mMaximumZoomLevel:I

    iput p4, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mTileSizePixels:I

    iput-object p5, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mImageFilenameEnding:Ljava/lang/String;

    iput-object p6, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mCopyright:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCopyrightNotice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mCopyright:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    const-string v0, "OsmDroid"

    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mTileSizePixels:I

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v2, 0x100000

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v2}, Lorg/osmdroid/tileprovider/BitmapPool;->applyReusableOptions(Landroid/graphics/BitmapFactory$Options;II)V

    invoke-static {p1, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v2, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    invoke-direct {v2, p1}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#547 Error loading bitmap"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->pathBase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v1

    :goto_2
    const-string v1, "OutOfMemoryError loading bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;

    invoke-direct {v0, p1}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 2
    const-string v0, "OsmDroid"

    const-string v1, "Error deleting invalid file: "

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v3}, Lorg/osmdroid/tileprovider/BitmapPool;->applyReusableOptions(Landroid/graphics/BitmapFactory$Options;II)V

    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    invoke-direct {v1, v3}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected error loading bitmap: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget p1, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/2addr p1, v2

    sput p1, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OutOfMemoryError loading bitmap: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance p1, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;

    invoke-direct {p1, v1}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mMaximumZoomLevel:I

    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mMinimumZoomLevel:I

    return v0
.end method

.method public getTileRelativeFilenameString(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->pathBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->imageFilenameEnding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTileSizePixels()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mTileSizePixels:I

    return v0
.end method

.method public imageFilenameEnding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mImageFilenameEnding:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public ordinal()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mOrdinal:I

    return v0
.end method

.method public pathBase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
