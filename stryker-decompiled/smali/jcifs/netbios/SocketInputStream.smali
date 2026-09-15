.class Ljcifs/netbios/SocketInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final TMP_BUFFER_SIZE:I = 0x100


# instance fields
.field private bip:I

.field private header:[B

.field private in:Ljava/io/InputStream;

.field private n:I

.field private ssp:Ljcifs/netbios/SessionServicePacket;

.field private tmp:[B

.field private tot:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    const/4 p1, 0x4

    new-array p1, p1, [B

    iput-object p1, p0, Ljcifs/netbios/SocketInputStream;->header:[B

    const/16 p1, 0x100

    new-array p1, p1, [B

    iput-object p1, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget v0, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public declared-synchronized read()I
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/netbios/SocketInputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    monitor-exit p0

    const/4 v0, -0x1

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    aget-byte v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([B)I
    .locals 2

    .line 2
    monitor-enter p0

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/netbios/SocketInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized read([BII)I
    .locals 4

    .line 3
    monitor-enter p0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    iput v0, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    :cond_1
    :goto_0
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    const/4 v2, -0x1

    if-lez v1, :cond_4

    iget-object v3, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/SocketInputStream;->n:I

    if-ne v1, v2, :cond_3

    iget p1, p0, Ljcifs/netbios/SocketInputStream;->tot:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_2

    move v2, p1

    :cond_2
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :try_start_1
    iget v2, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    add-int/2addr v2, v1

    iput v2, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    iget v3, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    sub-int/2addr v3, v1

    iput v3, p0, Ljcifs/netbios/SocketInputStream;->bip:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_1

    monitor-exit p0

    return v2

    :cond_4
    :try_start_2
    iget-object v1, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Ljcifs/netbios/SocketInputStream;->header:[B

    invoke-static {v1, v3, v0}, Ljcifs/netbios/SessionServicePacket;->readPacketType(Ljava/io/InputStream;[BI)I

    move-result v1

    if-eq v1, v2, :cond_6

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v1, p0, Ljcifs/netbios/SocketInputStream;->header:[B

    invoke-static {v1, v0}, Ljcifs/netbios/SessionServicePacket;->readLength([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    goto :goto_0

    :cond_6
    iget p1, p0, Ljcifs/netbios/SocketInputStream;->tot:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    if-lez p1, :cond_7

    return p1

    :cond_7
    return v2

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized skip(J)J
    .locals 7

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    monitor-exit p0

    return-wide v0

    :cond_0
    move-wide v2, p1

    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    :try_start_0
    iget-object v4, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    const-wide/16 v5, 0x100

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v5}, Ljcifs/netbios/SocketInputStream;->read([BII)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_1
    sub-long/2addr p1, v2

    monitor-exit p0

    return-wide p1
.end method
