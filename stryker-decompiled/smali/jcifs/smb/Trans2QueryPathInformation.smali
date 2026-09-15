.class Ljcifs/smb/Trans2QueryPathInformation;
.super Ljcifs/smb/SmbComTransaction;
.source "SourceFile"


# instance fields
.field private informationLevel:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    iput p2, p0, Ljcifs/smb/Trans2QueryPathInformation;->informationLevel:I

    const/16 p1, 0x32

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 p1, 0x5

    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    const/4 p2, 0x2

    iput p2, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    const/16 p2, 0x28

    iput p2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

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
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Trans2QueryPathInformation["

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
    const-string v2, ",informationLevel=0x"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Ljcifs/smb/Trans2QueryPathInformation;->informationLevel:I

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    const-string v4, ",filename="

    .line 26
    .line 27
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 31
    .line 32
    const-string v3, "]"

    .line 33
    .line 34
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .locals 3

    iget v0, p0, Ljcifs/smb/Trans2QueryPathInformation;->informationLevel:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p2, 0x3

    const/4 v2, 0x0

    aput-byte v2, p1, v0

    add-int/lit8 v0, p2, 0x4

    aput-byte v2, p1, v1

    add-int/lit8 v1, p2, 0x5

    aput-byte v2, p1, v0

    add-int/lit8 v0, p2, 0x6

    aput-byte v2, p1, v1

    iget-object v1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
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
