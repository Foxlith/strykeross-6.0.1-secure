.class Ljcifs/smb/SmbComTreeConnectAndXResponse;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SourceFile"


# static fields
.field private static final SMB_SHARE_IS_IN_DFS:I = 0x2

.field private static final SMB_SUPPORT_SEARCH_BITS:I = 0x1


# instance fields
.field nativeFileSystem:Ljava/lang/String;

.field service:Ljava/lang/String;

.field shareIsInDfs:Z

.field supportSearchBits:Z


# direct methods
.method public constructor <init>(Ljcifs/smb/ServerMessageBlock;)V
    .locals 0

    invoke-direct {p0, p1}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const-string p1, ""

    iput-object p1, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->nativeFileSystem:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public readBytesWireFormat([BI)I
    .locals 3

    const/16 v0, 0x20

    invoke-virtual {p0, p1, p2, v0}, Ljcifs/smb/ServerMessageBlock;->readStringLength([BII)I

    move-result v0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-direct {v1, p1, p2, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->service:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p2

    sub-int/2addr v0, p2

    return v0

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public readParameterWordsWireFormat([BI)I
    .locals 2

    aget-byte p1, p1, p2

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->supportSearchBits:Z

    const/4 p2, 0x2

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->shareIsInDfs:Z

    return p2
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
    const-string v2, "SmbComTreeConnectAndXResponse["

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
    const-string v2, ",supportSearchBits="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->supportSearchBits:Z

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",shareIsInDfs="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-boolean v2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->shareIsInDfs:Z

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ",service="

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->service:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ",nativeFileSystem="

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->nativeFileSystem:Ljava/lang/String;

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
