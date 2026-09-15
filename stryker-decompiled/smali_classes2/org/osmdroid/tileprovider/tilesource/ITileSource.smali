.class public interface abstract Lorg/osmdroid/tileprovider/tilesource/ITileSource;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCopyrightNotice()Ljava/lang/String;
.end method

.method public abstract getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getMaximumZoomLevel()I
.end method

.method public abstract getMinimumZoomLevel()I
.end method

.method public abstract getTileRelativeFilenameString(J)Ljava/lang/String;
.end method

.method public abstract getTileSizePixels()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract ordinal()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
