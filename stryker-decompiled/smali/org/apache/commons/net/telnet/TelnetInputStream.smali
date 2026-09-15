.class final Lorg/apache/commons/net/telnet/TelnetInputStream;
.super Ljava/io/BufferedInputStream;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final EOF:I = -0x1

.field static final STATE_CR:I = 0x8

.field static final STATE_DATA:I = 0x0

.field static final STATE_DO:I = 0x4

.field static final STATE_DONT:I = 0x5

.field static final STATE_IAC:I = 0x1

.field static final STATE_IAC_SB:I = 0x9

.field static final STATE_SB:I = 0x6

.field static final STATE_SE:I = 0x7

.field static final STATE_WILL:I = 0x2

.field static final STATE_WONT:I = 0x3

.field private static final WOULD_BLOCK:I = -0x2


# instance fields
.field private bytesAvailable:I

.field private final client:Lorg/apache/commons/net/telnet/TelnetClient;

.field private hasReachedEOF:Z

.field private ioException:Ljava/io/IOException;

.field private volatile isClosed:Z

.field private final queue:[I

.field private queueHead:I

.field private queueTail:I

.field private readIsWaiting:Z

.field private receiveState:I

.field private final suboption:[I

.field private suboptionCount:I

.field private final thread:Ljava/lang/Thread;

.field private volatile threaded:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->hasReachedEOF:Z

    const/16 v0, 0x801

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    iput p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueHead:I

    iput p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueTail:I

    iget p2, p2, Lorg/apache/commons/net/telnet/TelnetClient;->maxSubnegotiationLength:I

    new-array p2, p2, [I

    iput-object p2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboption:[I

    iput p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    if-eqz p3, :cond_0

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    :goto_0
    return-void
.end method

.method private processChar(I)Z
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    array-length v5, v5

    sub-int/2addr v5, v3

    if-lt v4, v5, :cond_2

    iget-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Queue is full! Cannot process another character."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    :cond_3
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    iget v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueTail:I

    aput p1, v4, v5

    iget p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    add-int/2addr v5, v3

    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueTail:I

    array-length p1, v4

    if-lt v5, p1, :cond_4

    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueTail:I

    :cond_4
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private read(Z)I
    .locals 6

    .line 2
    :goto_0
    if-nez p1, :cond_0

    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/Telnet;->processAYTResponse()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/telnet/Telnet;->spyRead(I)V

    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    const/16 v2, 0xf0

    const/4 v3, 0x6

    const/16 v4, 0xff

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    :pswitch_1
    if-eq v0, v2, :cond_4

    if-eq v0, v4, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboptionCount:I

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboption:[I

    array-length v4, v2

    if-ge v1, v4, :cond_3

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboptionCount:I

    aput v0, v2, v1

    :cond_3
    :goto_1
    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboption:[I

    iget v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboptionCount:I

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/telnet/Telnet;->processSuboption([II)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->flushOutputStream()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_2
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :pswitch_2
    if-nez v0, :cond_8

    goto :goto_0

    :pswitch_3
    if-eq v0, v4, :cond_6

    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboptionCount:I

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboption:[I

    array-length v4, v2

    if-ge v1, v4, :cond_3

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboptionCount:I

    aput v0, v2, v1

    goto :goto_1

    :cond_6
    const/16 v0, 0x9

    :goto_3
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/Telnet;->processDont(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->flushOutputStream()V

    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :pswitch_5
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/Telnet;->processDo(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->flushOutputStream()V

    monitor-exit v1

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :pswitch_6
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/Telnet;->processWont(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->flushOutputStream()V

    monitor-exit v1

    goto :goto_2

    :catchall_3
    move-exception p1

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    :pswitch_7
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/Telnet;->processWill(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->flushOutputStream()V

    monitor-exit v1

    goto :goto_2

    :catchall_4
    move-exception p1

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p1

    :pswitch_8
    if-eq v0, v2, :cond_5

    packed-switch v0, :pswitch_data_1

    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/telnet/Telnet;->processCommand(I)V

    goto/16 :goto_0

    :cond_7
    :pswitch_9
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    goto :goto_6

    :pswitch_a
    const/4 v0, 0x5

    goto :goto_3

    :pswitch_b
    const/4 v0, 0x4

    goto :goto_3

    :pswitch_c
    const/4 v0, 0x3

    goto :goto_3

    :pswitch_d
    const/4 v0, 0x2

    goto :goto_3

    :pswitch_e
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboptionCount:I

    goto/16 :goto_1

    :cond_8
    :pswitch_f
    if-ne v0, v4, :cond_9

    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    const/16 p1, 0xd

    if-ne v0, p1, :cond_7

    iget-object p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter p1

    :try_start_7
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v5}, Lorg/apache/commons/net/telnet/Telnet;->requestedDont(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x8

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    goto :goto_4

    :catchall_5
    move-exception v0

    goto :goto_5

    :cond_a
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    :goto_4
    monitor-exit p1

    goto :goto_6

    :goto_5
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :goto_6
    return v0

    :catchall_6
    move-exception p1

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfa
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public available()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v2

    add-int/2addr v1, v2

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->hasReachedEOF:Z

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    if-nez v1, :cond_9

    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->hasReachedEOF:Z

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    iput-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v1, Ljava/io/InterruptedIOException;

    const-string v2, "Fatal thread interruption during read."

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v3

    :goto_1
    :try_start_3
    invoke-direct {p0, v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read(Z)I

    move-result v1
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, -0x2

    if-gez v1, :cond_2

    if-eq v1, v5, :cond_2

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v1

    :cond_2
    if-eq v1, v5, :cond_3

    :try_start_5
    invoke-direct {p0, v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->processChar(I)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    :try_start_6
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z

    if-eqz v1, :cond_3

    monitor-exit v0

    return v4

    :cond_3
    :goto_2
    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v1

    if-lez v1, :cond_5

    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    array-length v5, v5

    sub-int/2addr v5, v3

    if-lt v1, v5, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    :goto_3
    iput-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z

    goto :goto_0

    :catch_2
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    const-wide/16 v5, 0x64

    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_5

    :catch_3
    :goto_4
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return v4

    :goto_5
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v1

    :cond_6
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    iget v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueHead:I

    aget v6, v4, v5

    add-int/2addr v5, v3

    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueHead:I

    array-length v4, v4

    if-lt v5, v4, :cond_7

    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueHead:I

    :cond_7
    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :cond_8
    monitor-exit v0

    return v6

    :cond_9
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    throw v1

    :goto_6
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v1
.end method

.method public read([B)I
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4

    .line 4
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    if-le p3, v1, :cond_1

    move p3, v1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    move v2, p2

    :goto_0
    add-int/lit8 v3, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/2addr p3, v1

    if-lez p3, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    :goto_1
    sub-int/2addr v3, p2

    return v3

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 5

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read(Z)I

    move-result v1
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-gez v1, :cond_1

    goto :goto_4

    :cond_1
    :try_start_2
    invoke-direct {p0, v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->processChar(I)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_0

    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetClient;->notifyInputListener()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z

    if-eqz v1, :cond_0

    goto :goto_4

    :catch_2
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_4

    :catch_3
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    monitor-enter v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_4
    :try_start_6
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z

    if-eqz v1, :cond_2

    monitor-exit v2

    goto :goto_4

    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_0

    :goto_2
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_3
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    monitor-enter v2

    :try_start_8
    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetClient;->notifyInputListener()V

    :cond_3
    :goto_4
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    monitor-enter v1

    :try_start_9
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->hasReachedEOF:Z

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    return-void

    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    move v0, v2

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    return-void
.end method
