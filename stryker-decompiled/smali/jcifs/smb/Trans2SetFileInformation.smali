.class Ljcifs/smb/Trans2SetFileInformation;
.super Ljcifs/smb/SmbComTransaction;
.source "SourceFile"


# static fields
.field static final SMB_FILE_BASIC_INFO:I = 0x101


# instance fields
.field private attributes:I

.field private createTime:J

.field private fid:I

.field private lastWriteTime:J


# direct methods
.method public constructor <init>(IIJJ)V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    iput p1, p0, Ljcifs/smb/Trans2SetFileInformation;->fid:I

    iput p2, p0, Ljcifs/smb/Trans2SetFileInformation;->attributes:I

    iput-wide p3, p0, Ljcifs/smb/Trans2SetFileInformation;->createTime:J

    iput-wide p5, p0, Ljcifs/smb/Trans2SetFileInformation;->lastWriteTime:J

    const/16 p1, 0x32

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 p1, 0x8

    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    const/4 p1, 0x6

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public readParametersWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public readSetupWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Trans2SetFileInformation["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

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
    iget v2, p0, Ljcifs/smb/Trans2SetFileInformation;->fid:I

    .line 23
    .line 24
    const-string v3, "]"

    .line 25
    .line 26
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .locals 5

    iget-wide v0, p0, Ljcifs/smb/Trans2SetFileInformation;->createTime:J

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeTime(J[BI)V

    add-int/lit8 v0, p2, 0x8

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt8(J[BI)V

    add-int/lit8 v0, p2, 0x10

    iget-wide v3, p0, Ljcifs/smb/Trans2SetFileInformation;->lastWriteTime:J

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeTime(J[BI)V

    add-int/lit8 v0, p2, 0x18

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt8(J[BI)V

    add-int/lit8 v0, p2, 0x20

    iget v3, p0, Ljcifs/smb/Trans2SetFileInformation;->attributes:I

    or-int/lit16 v3, v3, 0x80

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x22

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt8(J[BI)V

    add-int/lit8 p1, p2, 0x28

    sub-int/2addr p1, p2

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .locals 3

    iget v0, p0, Ljcifs/smb/Trans2SetFileInformation;->fid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    const-wide/16 v1, 0x101

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x4

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 p1, p2, 0x6

    sub-int/2addr p1, p2

    return p1
.end method

.method public writeSetupWireFormat([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    aput-byte v1, p1, p2

    const/4 p2, 0x0

    aput-byte p2, p1, v0

    const/4 p1, 0x2

    return p1
.end method
