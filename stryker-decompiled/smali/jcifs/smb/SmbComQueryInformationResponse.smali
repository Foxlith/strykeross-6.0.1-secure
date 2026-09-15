.class Ljcifs/smb/SmbComQueryInformationResponse;
.super Ljcifs/smb/ServerMessageBlock;
.source "SourceFile"

# interfaces
.implements Ljcifs/smb/Info;


# instance fields
.field private fileAttributes:I

.field private fileSize:I

.field private lastWriteTime:J

.field private serverTimeZoneOffset:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileAttributes:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    iput v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileSize:I

    iput-wide p1, p0, Ljcifs/smb/SmbComQueryInformationResponse;->serverTimeZoneOffset:J

    const/16 p1, 0x8

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    return-void
.end method


# virtual methods
.method public getAttributes()I
    .locals 1

    iget v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileAttributes:I

    return v0
.end method

.method public getCreateTime()J
    .locals 4

    iget-wide v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    iget-wide v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->serverTimeZoneOffset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getLastWriteTime()J
    .locals 4

    iget-wide v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    iget-wide v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->serverTimeZoneOffset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    iget v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public readBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public readParameterWordsWireFormat([BI)I
    .locals 2

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileAttributes:I

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readUTime([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    add-int/lit8 p2, p2, 0x6

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileSize:I

    const/16 p1, 0x14

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "SmbComQueryInformationResponse["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",fileAttributes=0x"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileAttributes:I

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ",lastWriteTime="

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    new-instance v2, Ljava/util/Date;

    .line 38
    .line 39
    iget-wide v3, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    .line 40
    .line 41
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ",fileSize="

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileSize:I

    .line 53
    .line 54
    const-string v3, "]"

    .line 55
    .line 56
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeParameterWordsWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
