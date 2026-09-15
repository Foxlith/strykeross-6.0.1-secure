.class Ljcifs/smb/SmbComSessionSetupAndXResponse;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SourceFile"


# instance fields
.field blob:[B

.field isLoggedInAsGuest:Z

.field private nativeLanMan:Ljava/lang/String;

.field private nativeOs:Ljava/lang/String;

.field private primaryDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljcifs/smb/ServerMessageBlock;)V
    .locals 0

    invoke-direct {p0, p1}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const-string p1, ""

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    return-void
.end method


# virtual methods
.method public readBytesWireFormat([BI)I
    .locals 8

    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    array-length v0, v0

    add-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->readString([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/ServerMessageBlock;->stringWireLength(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int v5, p2, v1

    const/16 v6, 0xff

    iget-boolean v7, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/ServerMessageBlock;->readString([BIIIZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/ServerMessageBlock;->stringWireLength(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    if-nez v1, :cond_1

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int v5, p2, v1

    const/16 v6, 0xff

    iget-boolean v7, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/ServerMessageBlock;->readString([BIIIZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->stringWireLength(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr v0, p1

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method

.method public readParameterWordsWireFormat([BI)I
    .locals 2

    aget-byte v0, p1, p2

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    add-int/lit8 v0, p2, 0x2

    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p1

    add-int/lit8 v0, p2, 0x4

    new-array p1, p1, [B

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    :cond_1
    sub-int/2addr v0, p2

    return v0
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
    const-string v2, "SmbComSessionSetupAndXResponse["

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
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",isLoggedInAsGuest="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",nativeOs="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ",nativeLanMan="

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ",primaryDomain="

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    .line 53
    .line 54
    const-string v3, "]"

    .line 55
    .line 56
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
