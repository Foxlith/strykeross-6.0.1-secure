.class Lorg/apache/commons/net/ftp/FTPClient$CSL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/net/io/CopyStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/ftp/FTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CSL"
.end annotation


# instance fields
.field private acksAcked:I

.field private final currentSoTimeoutMillis:I

.field private final idleMillis:J

.field private ioErrors:I

.field private lastIdleTimeMillis:J

.field private notAcked:I

.field private final parent:Lorg/apache/commons/net/ftp/FTPClient;


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClient;Ljava/time/Duration;Ljava/time/Duration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->lastIdleTimeMillis:J

    invoke-static {p2}, Lf4/b;->b(Ljava/time/Duration;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->idleMillis:J

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1}, Lorg/apache/commons/net/SocketClient;->getSoTimeout()I

    move-result p2

    iput p2, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->currentSoTimeoutMillis:I

    invoke-static {p3}, Lorg/apache/commons/net/ftp/DurationUtils;->toMillisInt(Ljava/time/Duration;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/SocketClient;->setSoTimeout(I)V

    return-void
.end method


# virtual methods
.method public bytesTransferred(JIJ)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->lastIdleTimeMillis:J

    sub-long p3, p1, p3

    iget-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->idleMillis:J

    cmp-long p3, p3, v0

    if-lez p3, :cond_0

    :try_start_0
    iget-object p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p3}, Lorg/apache/commons/net/ftp/FTP;->__noop()V

    iget p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->acksAcked:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->acksAcked:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->ioErrors:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->ioErrors:I

    goto :goto_0

    :catch_1
    iget p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    :goto_0
    iput-wide p1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->lastIdleTimeMillis:J

    :cond_0
    return-void
.end method

.method public bytesTransferred(Lorg/apache/commons/net/io/CopyStreamEvent;)V
    .locals 6

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/net/io/CopyStreamEvent;->getTotalBytesTransferred()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/apache/commons/net/io/CopyStreamEvent;->getBytesTransferred()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/commons/net/io/CopyStreamEvent;->getStreamSize()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->bytesTransferred(JIJ)V

    return-void
.end method

.method public cleanUp()[I
    .locals 4

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    :goto_0
    :try_start_0
    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTP;->getReply()I

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->currentSoTimeoutMillis:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/SocketClient;->setSoTimeout(I)V

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->currentSoTimeoutMillis:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/SocketClient;->setSoTimeout(I)V

    throw v0

    :goto_2
    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->acksAcked:I

    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    iget v3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->ioErrors:I

    filled-new-array {v1, v0, v2, v3}, [I

    move-result-object v0

    return-object v0
.end method
