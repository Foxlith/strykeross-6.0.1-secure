.class abstract Ljcifs/smb/ServerMessageBlock;
.super Ljcifs/util/transport/Response;
.source "SourceFile"

# interfaces
.implements Ljcifs/util/transport/Request;
.implements Ljcifs/smb/SmbConstants;


# static fields
.field static final SMB_COM_CHECK_DIRECTORY:B = 0x10t

.field static final SMB_COM_CLOSE:B = 0x4t

.field static final SMB_COM_CREATE_DIRECTORY:B = 0x0t

.field static final SMB_COM_DELETE:B = 0x6t

.field static final SMB_COM_DELETE_DIRECTORY:B = 0x1t

.field static final SMB_COM_ECHO:B = 0x2bt

.field static final SMB_COM_FIND_CLOSE2:B = 0x34t

.field static final SMB_COM_LOGOFF_ANDX:B = 0x74t

.field static final SMB_COM_MOVE:B = 0x2at

.field static final SMB_COM_NEGOTIATE:B = 0x72t

.field static final SMB_COM_NT_CREATE_ANDX:B = -0x5et

.field static final SMB_COM_NT_TRANSACT:B = -0x60t

.field static final SMB_COM_NT_TRANSACT_SECONDARY:B = -0x5ft

.field static final SMB_COM_OPEN_ANDX:B = 0x2dt

.field static final SMB_COM_QUERY_INFORMATION:B = 0x8t

.field static final SMB_COM_READ_ANDX:B = 0x2et

.field static final SMB_COM_RENAME:B = 0x7t

.field static final SMB_COM_SESSION_SETUP_ANDX:B = 0x73t

.field static final SMB_COM_TRANSACTION:B = 0x25t

.field static final SMB_COM_TRANSACTION2:B = 0x32t

.field static final SMB_COM_TRANSACTION_SECONDARY:B = 0x26t

.field static final SMB_COM_TREE_CONNECT_ANDX:B = 0x75t

.field static final SMB_COM_TREE_DISCONNECT:B = 0x71t

.field static final SMB_COM_WRITE:B = 0xbt

.field static final SMB_COM_WRITE_ANDX:B = 0x2ft

.field static final header:[B

.field static log:Ljcifs/util/LogStream;


# instance fields
.field auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field batchLevel:I

.field byteCount:I

.field command:B

.field digest:Ljcifs/smb/SigningDigest;

.field errorCode:I

.field extendedSecurity:Z

.field flags:B

.field flags2:I

.field headerStart:I

.field length:I

.field mid:I

.field path:Ljava/lang/String;

.field pid:I

.field received:Z

.field response:Ljcifs/smb/ServerMessageBlock;

.field responseTimeout:J

.field signSeq:I

.field tid:I

.field uid:I

.field useUnicode:Z

.field verifyFailed:Z

.field wordCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljcifs/smb/ServerMessageBlock;->header:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x53t
        0x4dt
        0x42t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljcifs/util/transport/Response;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Ljcifs/smb/ServerMessageBlock;->responseTimeout:J

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    const/16 v0, 0x18

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    sget v0, Ljcifs/smb/SmbConstants;->PID:I

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->batchLevel:I

    return-void
.end method

.method public static readInt2([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    return v0
.end method

.method public static readInt4([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    add-int/2addr v0, p0

    return v0
.end method

.method public static readInt8([BI)J
    .locals 4

    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static readTime([BI)J
    .locals 4

    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p0

    int-to-long p0, p0

    const/16 v1, 0x20

    shl-long/2addr p0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    const-wide/16 v0, 0x2710

    div-long/2addr p0, v0

    const-wide v0, 0xa9730b66800L

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static readUTime([BI)J
    .locals 2

    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static writeInt2(J[BI)V
    .locals 1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    const/16 v0, 0x8

    shr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return-void
.end method

.method public static writeInt4(J[BI)V
    .locals 3

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    const/16 v0, 0x18

    shr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return-void
.end method

.method public static writeInt8(J[BI)V
    .locals 3

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x18

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x28

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x30

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x7

    const/16 v0, 0x38

    shr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return-void
.end method

.method public static writeTime(J[BI)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide v0, 0xa9730b66800L

    add-long/2addr p0, v0

    const-wide/16 v0, 0x2710

    mul-long/2addr p0, v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt8(J[BI)V

    return-void
.end method

.method public static writeUTime(J[BI)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    cmp-long v0, p0, v1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Ljcifs/smb/SmbConstants;->TZ:Ljava/util/TimeZone;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    const-wide/32 v2, 0x36ee80

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sub-long/2addr p0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-long/2addr p0, v2

    :cond_3
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    long-to-int p0, p0

    int-to-long p0, p0

    invoke-static {p0, p1, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_2
    invoke-static {v1, v2, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    return-void
.end method


# virtual methods
.method public decode([BI)I
    .locals 6

    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->readHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    const/4 v2, 0x5

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->readParameterWordsWireFormat([BI)I

    move-result v0

    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v3, v3, 0x2

    if-eq v0, v3, :cond_0

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v2, :cond_0

    sget-object v3, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wordCount * 2="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " but readParameterWordsWireFormat returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    :cond_1
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/lit8 v1, v1, 0x2

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->readBytesWireFormat([BI)I

    move-result p1

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    if-eq p1, v0, :cond_2

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v2, :cond_2

    sget-object v0, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "byteCount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but readBytesWireFormat returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    iget p1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr v1, p1

    :cond_3
    sub-int/2addr v1, p2

    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    return v1
.end method

.method public encode([BI)I
    .locals 8

    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    div-int/lit8 v3, v2, 0x2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/2addr v1, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeBytesWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, v1, 0x2

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/2addr v1, v0

    sub-int v5, v1, p2

    iput v5, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v2, :cond_0

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    iget-object v7, p0, Ljcifs/smb/ServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    move-object v3, p1

    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SigningDigest;->sign([BIILjcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_0
    iget p1, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljcifs/smb/ServerMessageBlock;

    if-eqz v0, :cond_0

    check-cast p1, Ljcifs/smb/ServerMessageBlock;

    iget p1, p1, Ljcifs/smb/ServerMessageBlock;->mid:I

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    return v0
.end method

.method public isResponse()Z
    .locals 2

    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract readBytesWireFormat([BI)I
.end method

.method public readHeaderWireFormat([BI)I
    .locals 1

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    add-int/lit8 v0, p2, 0x5

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    add-int/lit8 v0, p2, 0x9

    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    add-int/lit8 v0, p2, 0xa

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    add-int/lit8 v0, p2, 0x18

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    add-int/lit8 v0, p2, 0x1a

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    add-int/lit8 v0, p2, 0x1c

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    add-int/lit8 p2, p2, 0x1e

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    const/16 p1, 0x20

    return p1
.end method

.method public abstract readParameterWordsWireFormat([BI)I
.end method

.method public readString([BI)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x100

    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    invoke-virtual {p0, p1, p2, v0, v1}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readString([BIIIZ)Ljava/lang/String;
    .locals 4

    .line 2
    const-string v0, "zero termination not found"

    const/4 v1, 0x0

    const/16 v2, 0x80

    if-eqz p5, :cond_6

    :try_start_0
    iget p5, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int p5, p2, p5

    rem-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    :goto_0
    add-int p5, p2, v1

    add-int/lit8 v3, p5, 0x1

    if-ge v3, p3, :cond_5

    aget-byte p5, p1, p5

    if-nez p5, :cond_1

    aget-byte p5, p1, v3

    if-nez p5, :cond_1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_1
    if-le v1, p4, :cond_4

    sget p3, Ljcifs/util/LogStream;->level:I

    if-lez p3, :cond_3

    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v2, :cond_2

    add-int/lit8 v2, p4, 0x8

    :cond_2
    invoke-static {p3, p1, p2, v2}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_5
    :goto_1
    new-instance p3, Ljava/lang/String;

    const-string p4, "UTF-16LE"

    invoke-direct {p3, p1, p2, v1, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_5

    :cond_6
    :goto_2
    if-ge p2, p3, :cond_b

    add-int p5, p2, v1

    aget-byte p5, p1, p5

    if-nez p5, :cond_7

    goto :goto_3

    :cond_7
    if-le v1, p4, :cond_a

    sget p3, Ljcifs/util/LogStream;->level:I

    if-lez p3, :cond_9

    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v2, :cond_8

    add-int/lit8 v2, p4, 0x8

    :cond_8
    invoke-static {p3, p1, p2, v2}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    :goto_3
    new-instance p3, Ljava/lang/String;

    sget-object p4, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {p3, p1, p2, v1, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_c

    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_c
    const/4 p3, 0x0

    :goto_5
    return-object p3
.end method

.method public readString([BIIZ)Ljava/lang/String;
    .locals 4

    .line 3
    const-string v0, "zero termination not found"

    const/16 v1, 0x80

    const/4 v2, 0x0

    if-eqz p4, :cond_5

    :try_start_0
    iget p4, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int p4, p2, p4

    rem-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    add-int p4, p2, v2

    aget-byte v3, p1, p4

    if-nez v3, :cond_2

    add-int/lit8 p4, p4, 0x1

    aget-byte p4, p1, p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/String;

    const-string p4, "UTF-16LE"

    invoke-direct {p3, p1, p2, v2, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    add-int/lit8 v2, v2, 0x2

    if-le v2, p3, :cond_0

    sget p4, Ljcifs/util/LogStream;->level:I

    if-lez p4, :cond_4

    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v1, :cond_3

    add-int/lit8 v1, p3, 0x8

    :cond_3
    invoke-static {p4, p1, p2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    add-int p4, p2, v2

    aget-byte p4, p1, p4

    if-eqz p4, :cond_8

    add-int/lit8 v2, v2, 0x1

    if-le v2, p3, :cond_5

    sget p4, Ljcifs/util/LogStream;->level:I

    if-lez p4, :cond_7

    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v1, :cond_6

    add-int/lit8 v1, p3, 0x8

    :cond_6
    invoke-static {p4, p1, p2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p3, Ljava/lang/String;

    sget-object p4, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {p3, p1, p2, v2, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_9

    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_9
    const/4 p3, 0x0

    :goto_2
    return-object p3
.end method

.method public readStringLength([BII)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    if-gt v0, p3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "zero termination not found: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v0
.end method

.method public reset()V
    .locals 1

    const/16 v0, 0x18

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    iput-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->received:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    return-void
.end method

.method public stringWireLength(Ljava/lang/String;I)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 v0, p1, 0x2

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x3

    move v0, p1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_b

    .line 8
    .line 9
    if-eq v0, v1, :cond_a

    .line 10
    .line 11
    const/16 v2, 0x10

    .line 12
    .line 13
    if-eq v0, v2, :cond_9

    .line 14
    .line 15
    const/16 v2, 0x32

    .line 16
    .line 17
    if-eq v0, v2, :cond_8

    .line 18
    .line 19
    const/16 v2, 0x34

    .line 20
    .line 21
    if-eq v0, v2, :cond_7

    .line 22
    .line 23
    const/4 v2, 0x6

    .line 24
    if-eq v0, v2, :cond_6

    .line 25
    .line 26
    const/4 v2, 0x7

    .line 27
    if-eq v0, v2, :cond_5

    .line 28
    .line 29
    const/16 v2, 0x8

    .line 30
    .line 31
    if-eq v0, v2, :cond_4

    .line 32
    .line 33
    const/16 v2, 0x25

    .line 34
    .line 35
    if-eq v0, v2, :cond_3

    .line 36
    .line 37
    const/16 v2, 0x26

    .line 38
    .line 39
    if-eq v0, v2, :cond_2

    .line 40
    .line 41
    const/16 v2, 0x2a

    .line 42
    .line 43
    if-eq v0, v2, :cond_1

    .line 44
    .line 45
    const/16 v2, 0x2b

    .line 46
    .line 47
    if-eq v0, v2, :cond_0

    .line 48
    .line 49
    packed-switch v0, :pswitch_data_0

    .line 50
    .line 51
    .line 52
    packed-switch v0, :pswitch_data_1

    .line 53
    .line 54
    .line 55
    packed-switch v0, :pswitch_data_2

    .line 56
    .line 57
    .line 58
    const-string v0, "UNKNOWN"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_0
    const-string v0, "SMB_COM_TREE_CONNECT_ANDX"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_1
    const-string v0, "SMB_COM_LOGOFF_ANDX"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_2
    const-string v0, "SMB_COM_SESSION_SETUP_ANDX"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_3
    const-string v0, "SMB_COM_NEGOTIATE"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_4
    const-string v0, "SMB_COM_TREE_DISCONNECT"

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :pswitch_5
    const-string v0, "SMB_COM_WRITE_ANDX"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_6
    const-string v0, "SMB_COM_READ_ANDX"

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_7
    const-string v0, "SMB_COM_OPEN_ANDX"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_8
    const-string v0, "SMB_COM_NT_CREATE_ANDX"

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_9
    const-string v0, "SMB_COM_NT_TRANSACT_SECONDARY"

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :pswitch_a
    const-string v0, "SMB_COM_NT_TRANSACT"

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    const-string v0, "SMB_COM_ECHO"

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    const-string v0, "SMB_COM_MOVE"

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    const-string v0, "SMB_COM_TRANSACTION_SECONDARY"

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    const-string v0, "SMB_COM_TRANSACTION"

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    const-string v0, "SMB_COM_QUERY_INFORMATION"

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    const-string v0, "SMB_COM_RENAME"

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_6
    const-string v0, "SMB_COM_DELETE"

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_7
    const-string v0, "SMB_COM_FIND_CLOSE2"

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_8
    const-string v0, "SMB_COM_TRANSACTION2"

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_9
    const-string v0, "SMB_COM_CHECK_DIRECTORY"

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_a
    const-string v0, "SMB_COM_CLOSE"

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_b
    const-string v0, "SMB_COM_DELETE_DIRECTORY"

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_c
    const-string v0, "SMB_COM_CREATE_DIRECTORY"

    .line 131
    .line 132
    :goto_0
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 133
    .line 134
    if-nez v2, :cond_d

    .line 135
    .line 136
    const-string v2, "0"

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_d
    invoke-static {v2}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    :goto_1
    new-instance v3, Ljava/lang/String;

    .line 144
    .line 145
    const-string v4, "command="

    .line 146
    .line 147
    const-string v5, ",received="

    .line 148
    .line 149
    invoke-static {v4, v0, v5}, Landroid/support/v4/media/session/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-boolean v4, p0, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 154
    .line 155
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v4, ",errorCode="

    .line 159
    .line 160
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v2, ",flags=0x"

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-byte v2, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 172
    .line 173
    and-int/lit16 v2, v2, 0xff

    .line 174
    .line 175
    const-string v4, ",flags2=0x"

    .line 176
    .line 177
    invoke-static {v2, v1, v0, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 181
    .line 182
    const-string v4, ",signSeq="

    .line 183
    .line 184
    invoke-static {v2, v1, v0, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, ",tid="

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v1, ",pid="

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v1, ",uid="

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v1, ",mid="

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v1, ",wordCount="

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v1, ",byteCount="

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    return-object v3

    .line 260
    nop

    .line 261
    :pswitch_data_0
    .packed-switch -0x60
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :pswitch_data_2
    .packed-switch 0x71
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract writeBytesWireFormat([BI)I
.end method

.method public writeHeaderWireFormat([BI)I
    .locals 3

    sget-object v0, Ljcifs/smb/ServerMessageBlock;->header:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, 0x4

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x9

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    aput-byte v1, p1, v0

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0xa

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x18

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x1a

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x1c

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    int-to-long v0, v0

    add-int/lit8 p2, p2, 0x1e

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    const/16 p1, 0x20

    return p1
.end method

.method public abstract writeParameterWordsWireFormat([BI)I
.end method

.method public writeString(Ljava/lang/String;[BI)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BIZ)I

    move-result p1

    return p1
.end method

.method public writeString(Ljava/lang/String;[BIZ)I
    .locals 3

    .line 2
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    :try_start_0
    iget p4, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int p4, p3, p4

    rem-int/lit8 p4, p4, 0x2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p4, :cond_0

    add-int/lit8 p4, p3, 0x1

    :try_start_1
    aput-byte v0, p2, p3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move p4, p3

    :goto_0
    const-string v1, "UTF-16LE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v0, p2, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p4

    add-int/lit8 p4, p1, 0x1

    aput-byte v0, p2, p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 p1, p1, 0x2

    :try_start_2
    aput-byte v0, p2, p4
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    move p4, p1

    move-object p1, p2

    goto :goto_1

    :catch_2
    move-exception p1

    move p4, p3

    goto :goto_1

    :cond_1
    :try_start_3
    sget-object p4, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p4, p1

    invoke-static {p1, v0, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    add-int/2addr p1, p3

    add-int/lit8 p4, p1, 0x1

    :try_start_4
    aput-byte v0, p2, p1
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :goto_1
    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 v0, 0x1

    if-le p2, v0, :cond_2

    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    :goto_2
    move p1, p4

    :goto_3
    sub-int/2addr p1, p3

    return p1
.end method
