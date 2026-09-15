.class Ljcifs/smb/Trans2QueryFSInformation;
.super Ljcifs/smb/SmbComTransaction;
.source "SourceFile"


# instance fields
.field private informationLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    const/16 v0, 0x32

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 v0, 0x3

    iput-byte v0, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    iput p1, p0, Ljcifs/smb/Trans2QueryFSInformation;->informationLevel:I

    const/4 p1, 0x2

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    const/16 v0, 0x320

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

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

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trans2QueryFSInformation["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",informationLevel=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2QueryFSInformation;->informationLevel:I

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .locals 2

    iget v0, p0, Ljcifs/smb/Trans2QueryFSInformation;->informationLevel:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 p1, p2, 0x2

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
