.class Ljcifs/smb/TransactNamedPipeInputStream;
.super Ljcifs/smb/SmbFileInputStream;
.source "SourceFile"


# static fields
.field private static final INIT_PIPE_SIZE:I = 0x1000


# instance fields
.field private beg_idx:I

.field private dcePipe:Z

.field lock:Ljava/lang/Object;

.field private nxt_idx:I

.field private pipe_buf:[B

.field private used:I


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbNamedPipe;)V
    .locals 2

    iget v0, p1, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const v1, -0xff01

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;I)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    iget p1, p1, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 v0, 0x600

    and-int/2addr p1, v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->dcePipe:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    sget v0, Ljcifs/smb/SmbFile;->FILE_NO_SHARE:I

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    const-string v1, "Named Pipe available() does not apply to TRANSACT Named Pipes"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dce_read([BII)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljcifs/smb/SmbFileInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read()I
    .locals 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget v1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    if-nez v1, :cond_0

    iget-object v1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    iget v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v2, v2, 0x1

    array-length v1, v1

    rem-int/2addr v2, v1

    iput v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    monitor-exit v0

    return v3

    :goto_1
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public read([B)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/TransactNamedPipeInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 6

    .line 3
    const/4 v0, 0x0

    if-gtz p3, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    if-nez v2, :cond_1

    iget-object v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    array-length v4, v3

    iget v5, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    sub-int/2addr v4, v5

    if-le p3, v2, :cond_2

    move p3, v2

    :cond_2
    if-le v2, v4, :cond_3

    if-le p3, v4, :cond_3

    invoke-static {v3, v5, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v4

    iget-object v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    sub-int v3, p3, v4

    invoke-static {v2, v0, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_3
    invoke-static {v3, v5, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    sub-int/2addr p1, p3

    iput p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    iget p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    add-int/2addr p1, p3

    iget-object p2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    monitor-exit v1

    return p3

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public receive([BII)I
    .locals 6

    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    array-length v1, v0

    iget v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-le p3, v1, :cond_2

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    sub-int v4, v1, v2

    if-le p3, v4, :cond_0

    add-int v1, p3, v2

    :cond_0
    new-array v1, v1, [B

    iput-object v1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    array-length v4, v0

    iget v5, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_1

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    iget v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    sub-int/2addr v2, v4

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v5, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iput v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    iget v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    iput v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->nxt_idx:I

    :cond_2
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    array-length v1, v0

    iget v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->nxt_idx:I

    sub-int/2addr v1, v2

    if-le p3, v1, :cond_3

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    sub-int v1, p3, v1

    invoke-static {p1, p2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_3
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->nxt_idx:I

    add-int/2addr p1, p3

    iget-object p2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->nxt_idx:I

    iget p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    add-int/2addr p1, p3

    iput p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    return p3
.end method
