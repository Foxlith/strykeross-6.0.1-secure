.class public Ljcifs/smb/SmbRandomAccessFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataOutput;
.implements Ljava/io/DataInput;


# static fields
.field private static final WRITE_OPTIONS:I = 0x842


# instance fields
.field private access:I

.field private ch:I

.field private file:Ljcifs/smb/SmbFile;

.field private fp:J

.field private openFlags:I

.field private options:I

.field private readSize:I

.field private tmp:[B

.field private writeSize:I

.field private write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Ljcifs/smb/SmbFile;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbRandomAccessFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->access:I

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    iput-object p1, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x11

    iput p2, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    goto :goto_0

    :cond_0
    const-string v0, "rw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x17

    iput p2, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    new-instance p2, Ljcifs/smb/SmbComWriteAndXResponse;

    invoke-direct {p2}, Ljcifs/smb/SmbComWriteAndXResponse;-><init>()V

    iput-object p2, p0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    const/16 p2, 0x842

    iput p2, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    const/4 p2, 0x3

    iput p2, p0, Ljcifs/smb/SmbRandomAccessFile;->access:I

    :goto_0
    iget p2, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    iget v0, p0, Ljcifs/smb/SmbRandomAccessFile;->access:I

    const/16 v1, 0x80

    iget v2, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {p1, p2, v0, v1, v2}, Ljcifs/smb/SmbFile;->open(IIII)V

    iget-object p1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object p1, p1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object p1, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget p2, p1, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    add-int/lit8 p2, p2, -0x46

    iput p2, p0, Ljcifs/smb/SmbRandomAccessFile;->readSize:I

    iget p1, p1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    add-int/lit8 p1, p1, -0x46

    iput p1, p0, Ljcifs/smb/SmbRandomAccessFile;->writeSize:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->close()V

    return-void
.end method

.method public getFilePointer()J
    .locals 2

    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 3

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 10

    .line 3
    const/4 v0, 0x0

    if-gtz p3, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    iget-object v3, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v4, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    const/16 v5, 0x80

    iget v6, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {v3, v4, v0, v5, v6}, Ljcifs/smb/SmbFile;->open(IIII)V

    :cond_1
    new-instance v0, Ljcifs/smb/SmbComReadAndXResponse;

    invoke-direct {v0, p1, p2}, Ljcifs/smb/SmbComReadAndXResponse;-><init>([BI)V

    :cond_2
    iget p1, p0, Ljcifs/smb/SmbRandomAccessFile;->readSize:I

    if-le p3, p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, p3

    :goto_0
    iget-object p2, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    new-instance v9, Ljcifs/smb/SmbComReadAndX;

    iget-object v3, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v4, v3, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v5, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    const/4 v8, 0x0

    move-object v3, v9

    move v7, p1

    invoke-direct/range {v3 .. v8}, Ljcifs/smb/SmbComReadAndX;-><init>(IJILjcifs/smb/ServerMessageBlock;)V

    invoke-virtual {p2, v9, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget p2, v0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-gtz p2, :cond_5

    iget-wide p1, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    sub-long v3, p1, v1

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-lez p3, :cond_4

    sub-long/2addr p1, v1

    goto :goto_1

    :cond_4
    const-wide/16 p1, -0x1

    :goto_1
    long-to-int p1, p1

    return p1

    :cond_5
    iget-wide v3, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v5, p2

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    sub-int/2addr p3, p2

    iget v5, v0, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    add-int/2addr v5, p2

    iput v5, v0, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    if-lez p3, :cond_6

    if-eq p2, p1, :cond_2

    :cond_6
    sub-long/2addr v3, v1

    long-to-int p1, v3

    return p1
.end method

.method public final readBoolean()Z
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readByte()B
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v0, v0, v2

    return v0

    :cond_0
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readChar()C
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v0

    int-to-char v0, v0

    return v0

    :cond_0
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readDouble()D
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_doublebe([BI)D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readFloat()F
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_floatbe([BI)F

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readFully([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->readFully([BII)V

    return-void
.end method

.method public final readFully([BII)V
    .locals 6

    .line 2
    const/4 v0, 0x0

    :cond_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/2addr v0, v1

    iget-wide v2, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    if-lt v0, p3, :cond_0

    return-void

    :cond_1
    new-instance p1, Ljcifs/smb/SmbException;

    const-string p2, "EOF"

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final readInt()I
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljcifs/smb/SmbRandomAccessFile;->read()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    const/16 v6, 0xd

    if-eq v3, v6, :cond_0

    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-wide v6, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    invoke-virtual {p0}, Ljcifs/smb/SmbRandomAccessFile;->read()I

    move-result v2

    if-eq v2, v5, :cond_1

    iput-wide v6, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    if-ne v3, v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readLong()J
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readShort()S
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljcifs/smb/SmbRandomAccessFile;->readUnsignedShort()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    :try_start_0
    invoke-static {v1, v2, v0}, Ljcifs/util/Encdec;->dec_utf8([BII)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final readUnsignedByte()I
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readUnsignedShort()I
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seek(J)V
    .locals 0

    iput-wide p1, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    return-void
.end method

.method public setLength(J)V
    .locals 10

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v1, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    const/16 v2, 0x80

    iget v3, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Ljcifs/smb/SmbFile;->open(IIII)V

    :cond_0
    new-instance v0, Ljcifs/smb/SmbComWriteResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComWriteResponse;-><init>()V

    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    new-instance v9, Ljcifs/smb/SmbComWrite;

    iget-object v2, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v3, v2, Ljcifs/smb/SmbFile;->fid:I

    const-wide v4, 0xffffffffL

    and-long/2addr p1, v4

    long-to-int v4, p1

    const/4 v5, 0x0

    iget-object v6, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Ljcifs/smb/SmbComWrite;-><init>(III[BII)V

    invoke-virtual {v1, v9, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    return-void
.end method

.method public skipBytes(I)I
    .locals 4

    if-lez p1, :cond_0

    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 15

    .line 3
    move-object v0, p0

    if-gtz p3, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v2, v0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    const/16 v3, 0x80

    iget v4, v0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Ljcifs/smb/SmbFile;->open(IIII)V

    :cond_1
    move/from16 v1, p2

    move/from16 v2, p3

    :cond_2
    iget v3, v0, Ljcifs/smb/SmbRandomAccessFile;->writeSize:I

    if-le v2, v3, :cond_3

    move v13, v3

    goto :goto_0

    :cond_3
    move v13, v2

    :goto_0
    iget-object v3, v0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    new-instance v4, Ljcifs/smb/SmbComWriteAndX;

    iget-object v5, v0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v7, v5, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v8, v0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    sub-int v10, v2, v13

    const/4 v14, 0x0

    move-object v6, v4

    move-object/from16 v11, p1

    move v12, v1

    invoke-direct/range {v6 .. v14}, Ljcifs/smb/SmbComWriteAndX;-><init>(IJI[BIILjcifs/smb/ServerMessageBlock;)V

    iget-object v5, v0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    invoke-virtual {v3, v4, v5}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget-wide v3, v0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    iget-object v5, v0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    iget-wide v5, v5, Ljcifs/smb/SmbComWriteAndXResponse;->count:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v2, v2

    sub-long/2addr v2, v5

    long-to-int v2, v2

    int-to-long v3, v1

    add-long/2addr v3, v5

    long-to-int v1, v3

    if-gtz v2, :cond_2

    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 2

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeByte(I)V
    .locals 2

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeChar(I)V
    .locals 2

    int-to-short p1, p1

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ljcifs/util/Encdec;->enc_uint16be(S[BI)I

    iget-object p1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    new-array v2, v1, [B

    new-array v3, v0, [C

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    move p1, v4

    move v5, p1

    :goto_0
    if-ge p1, v0, :cond_0

    add-int/lit8 v6, v5, 0x1

    aget-char v7, v3, p1

    ushr-int/lit8 v8, v7, 0x8

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    add-int/lit8 v5, v5, 0x2

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v4, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeDouble(D)V
    .locals 2

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Ljcifs/util/Encdec;->enc_doublebe(D[BI)I

    iget-object p1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/16 p2, 0x8

    invoke-virtual {p0, p1, v1, p2}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeFloat(F)V
    .locals 2

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ljcifs/util/Encdec;->enc_floatbe(F[BI)I

    iget-object p1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeInt(I)V
    .locals 2

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    iget-object p1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeLong(J)V
    .locals 2

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    iget-object p1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/16 p2, 0x8

    invoke-virtual {p0, p1, v1, p2}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeShort(I)V
    .locals 2

    int-to-short p1, p1

    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ljcifs/util/Encdec;->enc_uint16be(S[BI)I

    iget-object p1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7f

    if-le v4, v5, :cond_1

    const/16 v5, 0x7ff

    if-le v4, v5, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array v0, v3, [B

    invoke-virtual {p0, v3}, Ljcifs/smb/SmbRandomAccessFile;->writeShort(I)V

    :try_start_0
    invoke-static {p1, v0, v1, v3}, Ljcifs/util/Encdec;->enc_utf8(Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0, v1, v3}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
