.class Ljcifs/smb/Trans2QueryPathInformationResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;,
        Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;
    }
.end annotation


# static fields
.field static final SMB_QUERY_FILE_BASIC_INFO:I = 0x101

.field static final SMB_QUERY_FILE_STANDARD_INFO:I = 0x102


# instance fields
.field info:Ljcifs/smb/Info;

.field private informationLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    iput p1, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->informationLevel:I

    const/4 p1, 0x5

    iput-byte p1, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .locals 1

    iget p3, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->informationLevel:I

    const/16 v0, 0x101

    if-eq p3, v0, :cond_1

    const/16 v0, 0x102

    if-eq p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;->readSmbQueryFileStandardInfoWireFormat([BI)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;->readSmbQueryFileBasicInfoWireFormat([BI)I

    move-result p1

    return p1
.end method

.method public readParametersWireFormat([BII)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public readSetupWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public readSmbQueryFileBasicInfoWireFormat([BI)I
    .locals 3

    new-instance v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;

    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;-><init>(Ljcifs/smb/Trans2QueryPathInformationResponse;)V

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->createTime:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->lastAccessTime:J

    add-int/lit8 v1, p2, 0x10

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->lastWriteTime:J

    add-int/lit8 v1, p2, 0x18

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->changeTime:J

    add-int/lit8 v1, p2, 0x20

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p1

    iput p1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->attributes:I

    add-int/lit8 p1, p2, 0x22

    iput-object v0, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->info:Ljcifs/smb/Info;

    sub-int/2addr p1, p2

    return p1
.end method

.method public readSmbQueryFileStandardInfoWireFormat([BI)I
    .locals 5

    new-instance v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;

    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;-><init>(Ljcifs/smb/Trans2QueryPathInformationResponse;)V

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->allocationSize:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->endOfFile:J

    add-int/lit8 v1, p2, 0x10

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->numberOfLinks:I

    add-int/lit8 v1, p2, 0x14

    add-int/lit8 v2, p2, 0x15

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->deletePending:Z

    add-int/lit8 v1, p2, 0x16

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    if-lez p1, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->directory:Z

    iput-object v0, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->info:Ljcifs/smb/Info;

    sub-int/2addr v1, p2

    return v1
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
    const-string v2, "Trans2QueryPathInformationResponse["

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
