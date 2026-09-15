.class Ljcifs/smb/TransWaitNamedPipe;
.super Ljcifs/smb/SmbComTransaction;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    const/16 p1, 0x25

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 p1, 0x53

    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    const/4 p1, -0x1

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    const/4 p1, 0x2

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

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
    const-string v2, "TransWaitNamedPipe["

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
    const-string v2, ",pipeName="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "]"

    .line 25
    .line 26
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    .locals 3

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, p2, 0x2

    const/4 v2, 0x0

    aput-byte v2, p1, v0

    add-int/lit8 p2, p2, 0x3

    aput-byte v2, p1, v1

    aput-byte v2, p1, p2

    const/4 p1, 0x4

    return p1
.end method
