.class Ljcifs/smb/Trans2FindFirst2Response;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;
    }
.end annotation


# static fields
.field static final SMB_FILE_BOTH_DIRECTORY_INFO:I = 0x104

.field static final SMB_FILE_NAMES_INFO:I = 0x103

.field static final SMB_FIND_FILE_DIRECTORY_INFO:I = 0x101

.field static final SMB_FIND_FILE_FULL_DIRECTORY_INFO:I = 0x102

.field static final SMB_INFO_QUERY_EAS_FROM_LIST:I = 0x3

.field static final SMB_INFO_QUERY_EA_SIZE:I = 0x2

.field static final SMB_INFO_STANDARD:I = 0x1


# instance fields
.field eaErrorOffset:I

.field isEndOfSearch:Z

.field lastName:Ljava/lang/String;

.field lastNameBufferIndex:I

.field lastNameOffset:I

.field resumeKey:I

.field sid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    const/16 v0, 0x32

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 v0, 0x1

    iput-byte v0, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .locals 4

    iget p3, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    add-int/2addr p3, p2

    iput p3, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameBufferIndex:I

    iget p3, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    new-array p3, p3, [Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;

    iput-object p3, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    const/4 p3, 0x0

    :goto_0
    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-ge p3, v0, :cond_2

    iget-object v0, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    new-instance v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;

    invoke-direct {v1, p0}, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;-><init>(Ljcifs/smb/Trans2FindFirst2Response;)V

    aput-object v1, v0, p3

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileIndex:I

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->creationTime:J

    add-int/lit8 v0, p2, 0x18

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->lastWriteTime:J

    add-int/lit8 v0, p2, 0x28

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->endOfFile:J

    add-int/lit8 v0, p2, 0x38

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->extFileAttributes:I

    add-int/lit8 v0, p2, 0x3c

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileNameLength:I

    add-int/lit8 v2, p2, 0x5e

    invoke-virtual {p0, p1, v2, v0}, Ljcifs/smb/Trans2FindFirst2Response;->readString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->filename:Ljava/lang/String;

    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameBufferIndex:I

    if-lt v2, p2, :cond_1

    iget v3, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    if-eqz v3, :cond_0

    add-int/2addr v3, p2

    if-ge v2, v3, :cond_1

    :cond_0
    iput-object v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    iget v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileIndex:I

    iput v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    :cond_1
    iget v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    add-int/2addr p2, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    return p1
.end method

.method public readParametersWireFormat([BII)I
    .locals 2

    iget-byte p3, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p3

    iput p3, p0, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    add-int/lit8 p3, p2, 0x2

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    add-int/lit8 v1, p3, 0x2

    aget-byte v1, p1, v1

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    add-int/lit8 v0, p3, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->eaErrorOffset:I

    add-int/lit8 v0, p3, 0x6

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    add-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, p2

    return p3
.end method

.method public readSetupWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public readString([BII)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    add-int v1, p2, p3

    sub-int/2addr v1, v0

    aget-byte v1, p1, v1

    if-nez v1, :cond_1

    add-int/lit8 p3, p3, -0x1

    :cond_1
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget p2, Ljcifs/util/LogStream;->level:I

    if-le p2, v0, :cond_2

    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-byte v0, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-string v0, "Trans2FindFirst2Response["

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "Trans2FindNext2Response["

    .line 10
    .line 11
    :goto_0
    new-instance v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ",sid="

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ",searchCount="

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ",isEndOfSearch="

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v2, p0, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ",eaErrorOffset="

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response;->eaErrorOffset:I

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ",lastNameOffset="

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, ",lastName="

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    .line 80
    .line 81
    const-string v3, "]"

    .line 82
    .line 83
    invoke-static {v0, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v1
.end method

.method public writeDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeSetupWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
