.class public final Lorg/apache/commons/net/io/DotTerminatedMessageReader;
.super Ljava/io/BufferedReader;
.source "SourceFile"


# static fields
.field private static final CR:C = '\r'

.field private static final DOT:I = 0x2e

.field private static final LF:C = '\n'


# instance fields
.field private atBeginning:Z

.field private eof:Z

.field private seenCR:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read()I
    .locals 8

    .line 1
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    monitor-exit v0

    return v2

    :cond_1
    iget-boolean v4, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    const/16 v5, 0xa

    const/16 v6, 0xd

    const/4 v7, 0x0

    if-eqz v4, :cond_7

    iput-boolean v7, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_7

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/io/Reader;->mark(I)V

    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    if-eq v1, v2, :cond_6

    if-eq v1, v6, :cond_3

    if-eq v1, v4, :cond_2

    goto :goto_0

    :cond_2
    monitor-exit v0

    return v1

    :cond_3
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    monitor-exit v0

    return v4

    :cond_4
    if-ne v1, v5, :cond_5

    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    monitor-exit v0

    return v2

    :cond_5
    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    monitor-exit v0

    return v4

    :cond_6
    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    monitor-exit v0

    return v4

    :cond_7
    iget-boolean v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->seenCR:Z

    if-eqz v2, :cond_8

    iput-boolean v7, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->seenCR:Z

    if-ne v1, v5, :cond_8

    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    :cond_8
    if-ne v1, v6, :cond_9

    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->seenCR:Z

    :cond_9
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([C)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read([CII)I

    move-result p1

    return p1
.end method

.method public read([CII)I
    .locals 5

    .line 3
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    move v3, p2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    int-to-char v1, v1

    aput-char v1, p1, v3

    add-int/2addr p3, v2

    if-lez p3, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    :goto_1
    sub-int/2addr v4, p2

    monitor-exit v0

    return v4

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public readLine()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    iget-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
