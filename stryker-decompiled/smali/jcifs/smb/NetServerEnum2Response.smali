.class Ljcifs/smb/NetServerEnum2Response;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/NetServerEnum2Response$ServerInfo1;
    }
.end annotation


# instance fields
.field private converter:I

.field lastName:Ljava/lang/String;

.field private totalAvailableEntries:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .locals 6

    iget p3, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    new-array p3, p3, [Ljcifs/smb/NetServerEnum2Response$ServerInfo1;

    iput-object p3, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    const/4 p3, 0x0

    const/4 v0, 0x0

    move v2, p2

    move-object v3, p3

    move v1, v0

    :goto_0
    iget v4, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-ge v1, v4, :cond_1

    iget-object v3, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    new-instance v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;

    invoke-direct {v4, p0}, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;-><init>(Ljcifs/smb/NetServerEnum2Response;)V

    aput-object v4, v3, v1

    const/16 v3, 0x10

    invoke-virtual {p0, p1, v2, v3, v0}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->name:Ljava/lang/String;

    add-int/lit8 v3, v2, 0x10

    add-int/lit8 v5, v2, 0x11

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->versionMajor:I

    add-int/lit8 v3, v2, 0x12

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->versionMinor:I

    invoke-static {p1, v3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v3

    iput v3, v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->type:I

    add-int/lit8 v3, v2, 0x16

    invoke-static {p1, v3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v3

    add-int/lit8 v2, v2, 0x1a

    const v5, 0xffff

    and-int/2addr v3, v5

    iget v5, p0, Ljcifs/smb/NetServerEnum2Response;->converter:I

    sub-int/2addr v3, v5

    add-int/2addr v3, p2

    const/16 v5, 0x30

    invoke-virtual {p0, p1, v3, v5, v0}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->commentOrMasterBrowser:Ljava/lang/String;

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x4

    if-lt v3, v5, :cond_0

    sget-object v3, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object p3, v3, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->name:Ljava/lang/String;

    :goto_1
    iput-object p3, p0, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    sub-int/2addr v2, p2

    return v2
.end method

.method public readParametersWireFormat([BII)I
    .locals 0

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p3

    iput p3, p0, Ljcifs/smb/SmbComTransactionResponse;->status:I

    add-int/lit8 p3, p2, 0x2

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p3

    iput p3, p0, Ljcifs/smb/NetServerEnum2Response;->converter:I

    add-int/lit8 p3, p2, 0x4

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p3

    iput p3, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    add-int/lit8 p3, p2, 0x6

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/NetServerEnum2Response;->totalAvailableEntries:I

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
    const-string v2, "NetServerEnum2Response["

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
    iget v2, p0, Ljcifs/smb/NetServerEnum2Response;->converter:I

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
    iget v2, p0, Ljcifs/smb/NetServerEnum2Response;->totalAvailableEntries:I

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, ",lastName="

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    .line 63
    .line 64
    const-string v3, "]"

    .line 65
    .line 66
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
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
