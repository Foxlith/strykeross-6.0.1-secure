.class Ljcifs/smb/SmbComLogoffAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljcifs/smb/ServerMessageBlock;)V
    .locals 0

    invoke-direct {p0, p1}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const/16 p1, 0x74

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

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
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "SmbComLogoffAndX["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

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

.method public writeBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeParameterWordsWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
