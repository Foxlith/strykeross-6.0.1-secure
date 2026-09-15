.class public Ljcifs/smb/SmbFileOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private access:I

.field private append:Z

.field private file:Ljcifs/smb/SmbFile;

.field private fp:J

.field private openFlags:I

.field private req:Ljcifs/smb/SmbComWrite;

.field private reqx:Ljcifs/smb/SmbComWriteAndX;

.field private rsp:Ljcifs/smb/SmbComWriteResponse;

.field private rspx:Ljcifs/smb/SmbComWriteAndXResponse;

.field private tmp:[B

.field private useNTSmbs:Z

.field private writeSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 2
    new-instance v0, Ljcifs/smb/SmbFile;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 3
    new-instance v0, Ljcifs/smb/SmbFile;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;Z)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;Z)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Z)V
    .locals 1

    .line 5
    if-eqz p2, :cond_0

    const/16 v0, 0x16

    goto :goto_0

    :cond_0
    const/16 v0, 0x52

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;ZI)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;ZI)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->tmp:[B

    iput-object p1, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iput-boolean p2, p0, Ljcifs/smb/SmbFileOutputStream;->append:Z

    iput p3, p0, Ljcifs/smb/SmbFileOutputStream;->openFlags:I

    ushr-int/lit8 v0, p3, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbFileOutputStream;->access:I

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    goto :goto_1

    :goto_0
    throw p1

    :cond_0
    :goto_1
    instance-of p2, p1, Ljcifs/smb/SmbNamedPipe;

    if-eqz p2, :cond_1

    iget-object p2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const-string v0, "\\pipe\\"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    new-instance p2, Ljcifs/smb/TransWaitNamedPipe;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\pipe"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljcifs/smb/TransWaitNamedPipe;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljcifs/smb/TransWaitNamedPipeResponse;

    invoke-direct {v0}, Ljcifs/smb/TransWaitNamedPipeResponse;-><init>()V

    invoke-virtual {p1, p2, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_1
    iget p2, p0, Ljcifs/smb/SmbFileOutputStream;->access:I

    or-int/lit8 p2, p2, 0x2

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-virtual {p1, p3, p2, v0, v1}, Ljcifs/smb/SmbFile;->open(IIII)V

    iget p2, p0, Ljcifs/smb/SmbFileOutputStream;->openFlags:I

    and-int/lit8 p2, p2, -0x51

    iput p2, p0, Ljcifs/smb/SmbFileOutputStream;->openFlags:I

    iget-object p1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object p1, p1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object p1, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget p2, p1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    add-int/lit8 p2, p2, -0x46

    iput p2, p0, Ljcifs/smb/SmbFileOutputStream;->writeSize:I

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/smb/SmbFileOutputStream;->useNTSmbs:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljcifs/smb/SmbComWriteAndX;

    invoke-direct {p1}, Ljcifs/smb/SmbComWriteAndX;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    new-instance p1, Ljcifs/smb/SmbComWriteAndXResponse;

    invoke-direct {p1}, Ljcifs/smb/SmbComWriteAndXResponse;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbFileOutputStream;->rspx:Ljcifs/smb/SmbComWriteAndXResponse;

    goto :goto_2

    :cond_2
    new-instance p1, Ljcifs/smb/SmbComWrite;

    invoke-direct {p1}, Ljcifs/smb/SmbComWrite;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbFileOutputStream;->req:Ljcifs/smb/SmbComWrite;

    new-instance p1, Ljcifs/smb/SmbComWriteResponse;

    invoke-direct {p1}, Ljcifs/smb/SmbComWriteResponse;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbFileOutputStream;->rsp:Ljcifs/smb/SmbComWriteResponse;

    :goto_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->tmp:[B

    return-void
.end method

.method public ensureOpen()V
    .locals 5

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget v1, p0, Ljcifs/smb/SmbFileOutputStream;->openFlags:I

    iget v2, p0, Ljcifs/smb/SmbFileOutputStream;->access:I

    or-int/lit8 v2, v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljcifs/smb/SmbFile;->open(IIII)V

    iget-boolean v0, p0, Ljcifs/smb/SmbFileOutputStream;->append:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    return v0
.end method

.method public write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->tmp:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljcifs/smb/SmbFileOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbFileOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    .line 3
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    instance-of v1, v0, Ljcifs/smb/SmbNamedPipe;

    if-eqz v1, :cond_0

    new-instance v1, Ljcifs/smb/TransWaitNamedPipe;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\pipe"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget-object v3, v3, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljcifs/smb/TransWaitNamedPipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljcifs/smb/TransWaitNamedPipeResponse;

    invoke-direct {v2}, Ljcifs/smb/TransWaitNamedPipeResponse;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljcifs/smb/SmbFileOutputStream;->writeDirect([BIII)V

    return-void
.end method

.method public writeDirect([BIII)V
    .locals 10

    if-gtz p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->tmp:[B

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljcifs/smb/SmbFileOutputStream;->ensureOpen()V

    sget v0, Ljcifs/smb/SmbFile;->FILE_NO_SHARE:I

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "write: fid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget v2, v2, Ljcifs/smb/SmbFile;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Ljcifs/smb/SmbFileOutputStream;->writeSize:I

    if-le p3, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p3

    :goto_0
    iget-boolean v1, p0, Ljcifs/smb/SmbFileOutputStream;->useNTSmbs:Z

    if-eqz v1, :cond_4

    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    iget-object v1, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget v3, v1, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v4, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    sub-int v6, p3, v0

    move-object v7, p1

    move v8, p2

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Ljcifs/smb/SmbComWriteAndX;->setParam(IJI[BII)V

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    iget-object v1, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget v3, v1, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v4, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    move v6, p3

    move-object v7, p1

    move v8, p2

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Ljcifs/smb/SmbComWriteAndX;->setParam(IJI[BII)V

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    const/16 v1, 0x8

    :goto_1
    iput v1, v0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget-object v1, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->rspx:Ljcifs/smb/SmbComWriteAndXResponse;

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->rspx:Ljcifs/smb/SmbComWriteAndXResponse;

    iget-wide v2, v2, Ljcifs/smb/SmbComWriteAndXResponse;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    int-to-long v0, p3

    sub-long/2addr v0, v2

    long-to-int p3, v0

    int-to-long v0, p2

    add-long/2addr v0, v2

    long-to-int p2, v0

    goto :goto_3

    :cond_4
    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->req:Ljcifs/smb/SmbComWrite;

    iget-object v1, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget v3, v1, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v4, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    sub-int v6, p3, v0

    move-object v7, p1

    move v8, p2

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Ljcifs/smb/SmbComWrite;->setParam(IJI[BII)V

    iget-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->rsp:Ljcifs/smb/SmbComWriteResponse;

    iget-wide v3, v2, Ljcifs/smb/SmbComWriteResponse;->count:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    int-to-long v0, p3

    sub-long/2addr v0, v3

    long-to-int p3, v0

    int-to-long v0, p2

    add-long/2addr v0, v3

    long-to-int p2, v0

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget-object v1, p0, Ljcifs/smb/SmbFileOutputStream;->req:Ljcifs/smb/SmbComWrite;

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :goto_3
    if-gtz p3, :cond_1

    return-void

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Bad file descriptor"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
