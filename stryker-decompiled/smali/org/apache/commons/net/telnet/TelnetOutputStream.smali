.class final Lorg/apache/commons/net/telnet/TelnetOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private final client:Lorg/apache/commons/net/telnet/TelnetClient;

.field private final convertCRtoCRLF:Z

.field private lastWasCR:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/telnet/TelnetClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->convertCRtoCRLF:Z

    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->closeOutputStream()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->flushOutputStream()V

    return-void
.end method

.method public write(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v0

    const/16 v1, 0xff

    and-int/2addr p1, v1

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/telnet/Telnet;->requestedWont(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    const/16 v4, 0xa

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    if-ne p1, v4, :cond_0

    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/16 v2, 0xd

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    :goto_0
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    iget-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {p1, v2}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    :cond_4
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    goto :goto_0

    :cond_5
    if-ne p1, v1, :cond_6

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    iget-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write([B)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/telnet/TelnetOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v0

    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_0

    add-int/lit8 p3, p2, 0x1

    :try_start_0
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/telnet/TelnetOutputStream;->write(I)V

    move p2, p3

    move p3, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
