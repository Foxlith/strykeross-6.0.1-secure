.class public final Lorg/apache/commons/net/io/DotTerminatedMessageWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# static fields
.field private static final LAST_WAS_CR_STATE:I = 0x1

.field private static final LAST_WAS_NL_STATE:I = 0x2

.field private static final NOTHING_SPECIAL_STATE:I


# instance fields
.field private output:Ljava/io/Writer;

.field private state:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->state:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    const-string v2, ".\r\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flush()V
    .locals 2

    iget-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0xa

    const/16 v4, 0xd

    if-eq p1, v3, :cond_3

    if-eq p1, v4, :cond_2

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->state:I

    if-ne v3, v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->state:I

    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    monitor-exit v0

    return-void

    :cond_2
    iput v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->state:I

    iget-object p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    monitor-exit v0

    return-void

    :cond_3
    iget p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->state:I

    if-eq p1, v1, :cond_4

    iget-object p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    :cond_4
    iget-object p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->output:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    iput v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->state:I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([C)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([CII)V

    return-void
.end method

.method public write([C)V
    .locals 2

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 2

    .line 5
    iget-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_0

    add-int/lit8 p3, p2, 0x1

    :try_start_0
    aget-char p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write(I)V

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
