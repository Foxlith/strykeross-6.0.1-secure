.class Ljcifs/smb/NetShareEnumResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "SourceFile"


# instance fields
.field private converter:I

.field private totalAvailableEntries:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .locals 5

    const/4 p3, 0x0

    iput-boolean p3, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    new-array v0, v0, [Ljcifs/smb/SmbShareInfo;

    iput-object v0, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    move v1, p2

    move v0, p3

    :goto_0
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    new-instance v3, Ljcifs/smb/SmbShareInfo;

    invoke-direct {v3}, Ljcifs/smb/SmbShareInfo;-><init>()V

    aput-object v3, v2, v0

    const/16 v2, 0xd

    invoke-virtual {p0, p1, v1, v2, p3}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    add-int/lit8 v2, v1, 0xe

    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v2

    iput v2, v3, Ljcifs/smb/SmbShareInfo;->type:I

    add-int/lit8 v2, v1, 0x10

    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v2

    add-int/lit8 v1, v1, 0x14

    const v4, 0xffff

    and-int/2addr v2, v4

    iget v4, p0, Ljcifs/smb/NetShareEnumResponse;->converter:I

    sub-int/2addr v2, v4

    add-int/2addr v2, p2

    const/16 v4, 0x80

    invoke-virtual {p0, p1, v2, v4, p3}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Ljcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_0

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v1, p2

    return v1
.end method

.method public readParametersWireFormat([BII)I
    .locals 0

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p3

    iput p3, p0, Ljcifs/smb/SmbComTransactionResponse;->status:I

    add-int/lit8 p3, p2, 0x2

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p3

    iput p3, p0, Ljcifs/smb/NetShareEnumResponse;->converter:I

    add-int/lit8 p3, p2, 0x4

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p3

    iput p3, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    add-int/lit8 p3, p2, 0x6

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/NetShareEnumResponse;->totalAvailableEntries:I

    add-int/lit8 p1, p2, 0x8

    sub-int/2addr p1, p2

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
    const-string v2, "NetShareEnumResponse["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",status="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->status:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",converter="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v2, p0, Ljcifs/smb/NetShareEnumResponse;->converter:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ",entriesReturned="

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ",totalAvailableEntries="

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v2, p0, Ljcifs/smb/NetShareEnumResponse;->totalAvailableEntries:I

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
