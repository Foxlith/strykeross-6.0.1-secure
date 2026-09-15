.class public Lorg/osmdroid/util/MapTileList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/util/MapTileContainer;


# instance fields
.field private mSize:I

.field private mTileIndices:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/util/MapTileList;->mSize:I

    return-void
.end method

.method public contains(J)Z
    .locals 5

    iget-object v0, p0, Lorg/osmdroid/util/MapTileList;->mTileIndices:[J

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lorg/osmdroid/util/MapTileList;->mSize:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/osmdroid/util/MapTileList;->mTileIndices:[J

    aget-wide v3, v2, v0

    cmp-long v2, v3, p1

    if-nez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public ensureCapacity(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/MapTileList;->mTileIndices:[J

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lt v0, p1, :cond_1

    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    new-array p1, p1, [J

    iget-object v0, p0, Lorg/osmdroid/util/MapTileList;->mTileIndices:[J

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    iput-object p1, p0, Lorg/osmdroid/util/MapTileList;->mTileIndices:[J

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get(I)J
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/util/MapTileList;->mTileIndices:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/util/MapTileList;->mSize:I

    return v0
.end method

.method public put(I)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    shl-int v1, v0, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v7, v1, -0x1

    move-object v2, p0

    move v3, p1

    move v6, v7

    invoke-virtual/range {v2 .. v7}, Lorg/osmdroid/util/MapTileList;->put(IIIII)V

    return-void
.end method

.method public put(IIIII)V
    .locals 6

    .line 2
    const/4 v0, 0x1

    shl-int v1, v0, p1

    sub-int v2, p4, p2

    add-int/2addr v2, v0

    const/4 v3, 0x0

    if-ge p4, p2, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    move p4, v3

    :goto_0
    add-int/2addr v2, p4

    sub-int p4, p5, p3

    add-int/2addr p4, v0

    if-ge p5, p3, :cond_1

    move p5, v1

    goto :goto_1

    :cond_1
    move p5, v3

    :goto_1
    add-int/2addr p4, p5

    invoke-virtual {p0}, Lorg/osmdroid/util/MapTileList;->getSize()I

    move-result p5

    mul-int v0, v2, p4

    add-int/2addr v0, p5

    invoke-virtual {p0, v0}, Lorg/osmdroid/util/MapTileList;->ensureCapacity(I)V

    move p5, v3

    :goto_2
    if-ge p5, v2, :cond_3

    move v0, v3

    :goto_3
    if-ge v0, p4, :cond_2

    add-int v4, p2, p5

    rem-int/2addr v4, v1

    add-int v5, p3, v0

    rem-int/2addr v5, v1

    invoke-static {p1, v4, v5}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/osmdroid/util/MapTileList;->put(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public put(J)V
    .locals 3

    .line 3
    iget v0, p0, Lorg/osmdroid/util/MapTileList;->mSize:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/osmdroid/util/MapTileList;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/osmdroid/util/MapTileList;->mTileIndices:[J

    iget v1, p0, Lorg/osmdroid/util/MapTileList;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/osmdroid/util/MapTileList;->mSize:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public toArray()[J
    .locals 4

    iget v0, p0, Lorg/osmdroid/util/MapTileList;->mSize:I

    new-array v1, v0, [J

    iget-object v2, p0, Lorg/osmdroid/util/MapTileList;->mTileIndices:[J

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v1
.end method
