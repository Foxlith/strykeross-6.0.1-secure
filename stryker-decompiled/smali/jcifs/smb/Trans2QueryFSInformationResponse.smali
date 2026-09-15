.class Ljcifs/smb/Trans2QueryFSInformationResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;
    }
.end annotation


# static fields
.field static final SMB_FS_FULL_SIZE_INFORMATION:I = 0x3ef

.field static final SMB_INFO_ALLOCATION:I = 0x1

.field static final SMB_QUERY_FS_SIZE_INFO:I = 0x103


# instance fields
.field info:Ljcifs/smb/AllocInfo;

.field private informationLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    iput p1, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->informationLevel:I

    const/16 p1, 0x32

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 p1, 0x3

    iput-byte p1, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .locals 1

    iget p3, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->informationLevel:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/16 v0, 0x103

    if-eq p3, v0, :cond_1

    const/16 v0, 0x3ef

    if-eq p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readFsFullSizeInformationWireFormat([BI)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readSmbQueryFSSizeInfoWireFormat([BI)I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readSmbInfoAllocationWireFormat([BI)I

    move-result p1

    return p1
.end method

.method public readFsFullSizeInformationWireFormat([BI)I
    .locals 3

    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;

    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;-><init>(Ljcifs/smb/Trans2QueryFSInformationResponse;)V

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    add-int/lit8 v1, p2, 0x18

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    add-int/lit8 v1, p2, 0x1c

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p1

    iput p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    add-int/lit8 p1, p2, 0x20

    iput-object v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    sub-int/2addr p1, p2

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

.method public readSmbInfoAllocationWireFormat([BI)I
    .locals 3

    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;

    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;-><init>(Ljcifs/smb/Trans2QueryFSInformationResponse;)V

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    add-int/lit8 v1, p2, 0xc

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    add-int/lit8 v1, p2, 0x10

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p1

    iput p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    add-int/lit8 p1, p2, 0x14

    iput-object v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    sub-int/2addr p1, p2

    return p1
.end method

.method public readSmbQueryFSSizeInfoWireFormat([BI)I
    .locals 3

    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;

    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;-><init>(Ljcifs/smb/Trans2QueryFSInformationResponse;)V

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    add-int/lit8 v1, p2, 0x10

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p1

    iput p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    add-int/lit8 p1, p2, 0x18

    iput-object v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    sub-int/2addr p1, p2

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
    const-string v2, "Trans2QueryFSInformationResponse["

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
    const-string v3, "]"

    .line 15
    .line 16
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
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
