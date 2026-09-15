.class Ljcifs/smb/SmbComClose;
.super Ljcifs/smb/ServerMessageBlock;
.source "SourceFile"


# instance fields
.field private fid:I

.field private lastWriteTime:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    iput p1, p0, Ljcifs/smb/SmbComClose;->fid:I

    iput-wide p2, p0, Ljcifs/smb/SmbComClose;->lastWriteTime:J

    const/4 p1, 0x4

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    return-void
.end method


# virtual methods
.method public readBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public readParameterWordsWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

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
    const-string v2, "SmbComClose["

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
    const-string v2, ",fid="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Ljcifs/smb/SmbComClose;->fid:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",lastWriteTime="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-wide v2, p0, Ljcifs/smb/SmbComClose;->lastWriteTime:J

    .line 33
    .line 34
    const-string v4, "]"

    .line 35
    .line 36
    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeParameterWordsWireFormat([BI)I
    .locals 2

    iget v0, p0, Ljcifs/smb/SmbComClose;->fid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 p2, p2, 0x2

    iget-wide v0, p0, Ljcifs/smb/SmbComClose;->lastWriteTime:J

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeUTime(J[BI)V

    const/4 p1, 0x6

    return p1
.end method
