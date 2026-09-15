.class Ljcifs/smb/Trans2FindNext2;
.super Ljcifs/smb/SmbComTransaction;
.source "SourceFile"


# instance fields
.field private filename:Ljava/lang/String;

.field private flags:I

.field private informationLevel:I

.field private resumeKey:I

.field private sid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->sid:I

    iput p2, p0, Ljcifs/smb/Trans2FindNext2;->resumeKey:I

    iput-object p3, p0, Ljcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    const/16 p1, 0x32

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 p1, 0x2

    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    const/16 p1, 0x104

    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->informationLevel:I

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->flags:I

    const/16 p2, 0x8

    iput p2, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    sget p2, Ljcifs/smb/Trans2FindFirst2;->LIST_SIZE:I

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

.method public reset(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->reset()V

    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->resumeKey:I

    iput-object p2, p0, Ljcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    return-void
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
    const-string v2, "Trans2FindNext2["

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
    const-string v2, ",sid="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Ljcifs/smb/Trans2FindNext2;->sid:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",searchCount="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    sget v2, Ljcifs/smb/Trans2FindFirst2;->LIST_SIZE:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ",informationLevel=0x"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v2, p0, Ljcifs/smb/Trans2FindNext2;->informationLevel:I

    .line 43
    .line 44
    const/4 v3, 0x3

    .line 45
    const-string v4, ",resumeKey=0x"

    .line 46
    .line 47
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget v2, p0, Ljcifs/smb/Trans2FindNext2;->resumeKey:I

    .line 51
    .line 52
    const/4 v3, 0x4

    .line 53
    const-string v4, ",flags=0x"

    .line 54
    .line 55
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget v2, p0, Ljcifs/smb/Trans2FindNext2;->flags:I

    .line 59
    .line 60
    const/4 v3, 0x2

    .line 61
    const-string v4, ",filename="

    .line 62
    .line 63
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Ljcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    .line 67
    .line 68
    const-string v3, "]"

    .line 69
    .line 70
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .locals 3

    iget v0, p0, Ljcifs/smb/Trans2FindNext2;->sid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    sget v1, Ljcifs/smb/Trans2FindFirst2;->LIST_COUNT:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x4

    iget v1, p0, Ljcifs/smb/Trans2FindNext2;->informationLevel:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x6

    iget v1, p0, Ljcifs/smb/Trans2FindNext2;->resumeKey:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0xa

    iget v1, p0, Ljcifs/smb/Trans2FindNext2;->flags:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0xc

    iget-object v1, p0, Ljcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

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
