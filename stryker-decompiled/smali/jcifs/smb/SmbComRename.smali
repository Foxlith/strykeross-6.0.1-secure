.class Ljcifs/smb/SmbComRename;
.super Ljcifs/smb/ServerMessageBlock;
.source "SourceFile"


# instance fields
.field private newFileName:Ljava/lang/String;

.field private oldFileName:Ljava/lang/String;

.field private searchAttributes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, 0x7

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    iput-object p1, p0, Ljcifs/smb/SmbComRename;->oldFileName:Ljava/lang/String;

    iput-object p2, p0, Ljcifs/smb/SmbComRename;->newFileName:Ljava/lang/String;

    const/16 p1, 0x16

    iput p1, p0, Ljcifs/smb/SmbComRename;->searchAttributes:I

    return-void
.end method


# virtual methods
.method public readBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public readParameterWordsWireFormat([BI)I
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
    const-string v2, "SmbComRename["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",searchAttributes=0x"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Ljcifs/smb/SmbComRename;->searchAttributes:I

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    const-string v4, ",oldFileName="

    .line 26
    .line 27
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Ljcifs/smb/SmbComRename;->oldFileName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ",newFileName="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Ljcifs/smb/SmbComRename;->newFileName:Ljava/lang/String;

    .line 41
    .line 42
    const-string v3, "]"

    .line 43
    .line 44
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x4

    aput-byte v1, p1, p2

    iget-object v2, p0, Ljcifs/smb/SmbComRename;->oldFileName:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    aput-byte v1, p1, v2

    move v2, v0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbComRename;->newFileName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v2, p2

    return v2
.end method

.method public writeParameterWordsWireFormat([BI)I
    .locals 2

    iget v0, p0, Ljcifs/smb/SmbComRename;->searchAttributes:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    const/4 p1, 0x2

    return p1
.end method
