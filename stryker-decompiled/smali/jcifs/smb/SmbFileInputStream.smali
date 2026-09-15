.class public Ljcifs/smb/SmbFileInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private access:I

.field file:Ljcifs/smb/SmbFile;

.field private fp:J

.field private openFlags:I

.field private readSize:I

.field private tmp:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljcifs/smb/SmbFile;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;I)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;I)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B

    iput-object p1, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    const v0, 0xffff

    and-int v1, p2, v0

    iput v1, p0, Ljcifs/smb/SmbFileInputStream;->openFlags:I

    ushr-int/lit8 v1, p2, 0x10

    and-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbFileInputStream;->access:I

    iget v1, p1, Ljcifs/smb/SmbFile;->type:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Ljcifs/smb/SmbFile;->open(IIII)V

    iget p2, p0, Ljcifs/smb/SmbFileInputStream;->openFlags:I

    and-int/lit8 p2, p2, -0x51

    iput p2, p0, Ljcifs/smb/SmbFileInputStream;->openFlags:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->connect0()V

    :goto_0
    iget-object p1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object p1, p1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object p1, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget p2, p1, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    add-int/lit8 p2, p2, -0x46

    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget p1, p1, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    add-int/lit8 p1, p1, -0x46

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Ljcifs/smb/SmbFileInputStream;->readSize:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 6

    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v1, v0, Ljcifs/smb/SmbFile;->type:I

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljcifs/smb/SmbNamedPipe;

    iget v2, v1, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/high16 v4, 0xff0000

    and-int/2addr v2, v4

    const/16 v4, 0x80

    const/16 v5, 0x20

    invoke-virtual {v0, v5, v2, v4, v3}, Ljcifs/smb/SmbFile;->open(IIII)V

    new-instance v0, Ljcifs/smb/TransPeekNamedPipe;

    iget-object v2, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget-object v4, v2, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget v2, v2, Ljcifs/smb/SmbFile;->fid:I

    invoke-direct {v0, v4, v2}, Ljcifs/smb/TransPeekNamedPipe;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljcifs/smb/TransPeekNamedPipeResponse;

    invoke-direct {v2, v1}, Ljcifs/smb/TransPeekNamedPipeResponse;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    invoke-virtual {v1, v0, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v0, v2, Ljcifs/smb/TransPeekNamedPipeResponse;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v2, Ljcifs/smb/TransPeekNamedPipeResponse;->available:I

    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iput-boolean v3, v0, Ljcifs/smb/SmbFile;->opened:Z
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :goto_1
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFileInputStream;->seToIoe(Ljcifs/smb/SmbException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFileInputStream;->seToIoe(Ljcifs/smb/SmbException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public read()I
    .locals 3

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbFileInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbFileInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljcifs/smb/SmbFileInputStream;->readDirect([BII)I

    move-result p1

    return p1
.end method

.method public readDirect([BII)I
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    return v3

    :cond_0
    iget-wide v4, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    iget-object v6, v1, Ljcifs/smb/SmbFileInputStream;->tmp:[B

    if-eqz v6, :cond_b

    iget-object v6, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v7, v1, Ljcifs/smb/SmbFileInputStream;->openFlags:I

    iget v8, v1, Ljcifs/smb/SmbFileInputStream;->access:I

    const/16 v9, 0x80

    invoke-virtual {v6, v7, v8, v9, v3}, Ljcifs/smb/SmbFile;->open(IIII)V

    sget v3, Ljcifs/smb/SmbFile;->FILE_NO_SHARE:I

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v6, 0x4

    if-lt v3, v6, :cond_1

    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "read: fid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v8, v8, Ljcifs/smb/SmbFile;->fid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",off="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",len="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Ljcifs/smb/SmbComReadAndXResponse;

    move-object/from16 v7, p1

    invoke-direct {v3, v7, v0}, Ljcifs/smb/SmbComReadAndXResponse;-><init>([BI)V

    iget-object v0, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v0, v0, Ljcifs/smb/SmbFile;->type:I

    const-wide/16 v7, 0x0

    const/16 v9, 0x10

    if-ne v0, v9, :cond_2

    iput-wide v7, v3, Ljcifs/smb/ServerMessageBlock;->responseTimeout:J

    :cond_2
    :goto_0
    iget v0, v1, Ljcifs/smb/SmbFileInputStream;->readSize:I

    if-le v2, v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    sget v10, Ljcifs/smb/SmbFile;->FILE_NO_SHARE:I

    sget v10, Ljcifs/util/LogStream;->level:I

    if-lt v10, v6, :cond_4

    sget-object v10, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "read: len="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",r="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",fp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    :try_start_0
    new-instance v15, Ljcifs/smb/SmbComReadAndX;

    iget-object v10, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v11, v10, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v12, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    const/16 v16, 0x0

    move-object v10, v15

    move v14, v0

    move-object v6, v15

    move-object/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Ljcifs/smb/SmbComReadAndX;-><init>(IJILjcifs/smb/ServerMessageBlock;)V

    iget-object v10, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v11, v10, Ljcifs/smb/SmbFile;->type:I

    if-ne v11, v9, :cond_5

    const/16 v11, 0x400

    iput v11, v6, Ljcifs/smb/SmbComReadAndX;->remaining:I

    iput v11, v6, Ljcifs/smb/SmbComReadAndX;->maxCount:I

    iput v11, v6, Ljcifs/smb/SmbComReadAndX;->minCount:I

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_2
    invoke-virtual {v10, v6, v3}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    iget v6, v3, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-gtz v6, :cond_7

    iget-wide v2, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    sub-long v9, v2, v4

    cmp-long v0, v9, v7

    if-lez v0, :cond_6

    sub-long/2addr v2, v4

    goto :goto_3

    :cond_6
    const-wide/16 v2, -0x1

    :goto_3
    long-to-int v0, v2

    return v0

    :cond_7
    iget-wide v10, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    int-to-long v12, v6

    add-long/2addr v10, v12

    iput-wide v10, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    sub-int/2addr v2, v6

    iget v12, v3, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    add-int/2addr v12, v6

    iput v12, v3, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    if-lez v2, :cond_9

    if-eq v6, v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v6, 0x4

    goto :goto_0

    :cond_9
    :goto_4
    sub-long/2addr v10, v4

    long-to-int v0, v10

    return v0

    :goto_5
    iget-object v2, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v2, v2, Ljcifs/smb/SmbFile;->type:I

    if-ne v2, v9, :cond_a

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v2

    const v3, -0x3ffffeb5    # -2.000079f

    if-ne v2, v3, :cond_a

    const/4 v0, -0x1

    return v0

    :cond_a
    invoke-virtual {v1, v0}, Ljcifs/smb/SmbFileInputStream;->seToIoe(Ljcifs/smb/SmbException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bad file descriptor"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seToIoe(Ljcifs/smb/SmbException;)Ljava/io/IOException;
    .locals 2

    invoke-virtual {p1}, Ljcifs/smb/SmbException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljcifs/util/transport/TransportException;

    if-eqz v1, :cond_0

    move-object p1, v0

    check-cast p1, Ljcifs/util/transport/TransportException;

    invoke-virtual {p1}, Ljcifs/util/transport/TransportException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_1

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object p1
.end method

.method public skip(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    return-wide p1

    :cond_0
    return-wide v0
.end method
