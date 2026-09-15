.class public final Lorg/apache/commons/net/io/FromNetASCIIOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private lastWasCR:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    return-void
.end method

.method private writeInt(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    iget-boolean v2, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    iput-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    iput-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :cond_1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([B)V
    .locals 2

    .line 2
    monitor-enter p0

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 1

    .line 3
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_1

    add-int/lit8 p3, p2, 0x1

    :try_start_1
    aget-byte p2, p1, p2

    invoke-direct {p0, p2}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p2, p3

    move p3, v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
