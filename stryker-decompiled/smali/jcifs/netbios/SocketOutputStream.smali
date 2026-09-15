.class Ljcifs/netbios/SocketOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized write([BII)V
    .locals 4

    const-string v0, "write too large: "

    monitor-enter p0

    const v1, 0xffff

    if-gt p3, v1, :cond_1

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    add-int/lit8 v1, p2, -0x4

    const/4 v2, 0x0

    :try_start_0
    aput-byte v2, p1, v1

    add-int/lit8 v3, p2, -0x3

    aput-byte v2, p1, v3

    add-int/lit8 v2, p2, -0x2

    shr-int/lit8 v3, p3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 p2, p2, -0x1

    and-int/lit16 v2, p3, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    iget-object p2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    add-int/2addr p3, v0

    invoke-virtual {p2, p1, v1, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "NetBIOS socket output buffer requires 4 bytes available before off"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
