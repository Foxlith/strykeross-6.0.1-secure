.class Ljcifs/smb/SmbComNTCreateAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SourceFile"


# static fields
.field static final FILE_CREATE:I = 0x2

.field static final FILE_OPEN:I = 0x1

.field static final FILE_OPEN_IF:I = 0x3

.field static final FILE_OVERWRITE:I = 0x4

.field static final FILE_OVERWRITE_IF:I = 0x5

.field static final FILE_SEQUENTIAL_ONLY:I = 0x4

.field static final FILE_SUPERSEDE:I = 0x0

.field static final FILE_SYNCHRONOUS_IO_ALERT:I = 0x10

.field static final FILE_SYNCHRONOUS_IO_NONALERT:I = 0x20

.field static final FILE_WRITE_THROUGH:I = 0x2

.field static final SECURITY_CONTEXT_TRACKING:I = 0x1

.field static final SECURITY_EFFECTIVE_ONLY:I = 0x2


# instance fields
.field private allocationSize:J

.field private createDisposition:I

.field private createOptions:I

.field desiredAccess:I

.field private extFileAttributes:I

.field flags0:I

.field private impersonationLevel:I

.field private namelen_index:I

.field private rootDirectoryFid:I

.field private securityFlags:B

.field private shareAccess:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIILjcifs/smb/ServerMessageBlock;)V
    .locals 0

    invoke-direct {p0, p7}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    const/16 p1, -0x5e

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    or-int/lit16 p1, p3, 0x89

    iput p1, p0, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    iput p5, p0, Ljcifs/smb/SmbComNTCreateAndX;->extFileAttributes:I

    iput p4, p0, Ljcifs/smb/SmbComNTCreateAndX;->shareAccess:I

    and-int/lit8 p1, p2, 0x40

    const/4 p3, 0x2

    const/4 p4, 0x3

    const/16 p5, 0x10

    const/16 p7, 0x40

    if-ne p1, p7, :cond_1

    and-int/lit8 p1, p2, 0x10

    if-ne p1, p5, :cond_0

    const/4 p1, 0x5

    :goto_0
    iput p1, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    goto :goto_1

    :cond_0
    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p2, 0x10

    if-ne p1, p5, :cond_3

    const/16 p1, 0x20

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_2

    iput p3, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    goto :goto_1

    :cond_2
    iput p4, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :goto_1
    and-int/lit8 p1, p6, 0x1

    if-nez p1, :cond_4

    or-int/lit8 p1, p6, 0x40

    iput p1, p0, Ljcifs/smb/SmbComNTCreateAndX;->createOptions:I

    goto :goto_2

    :cond_4
    iput p6, p0, Ljcifs/smb/SmbComNTCreateAndX;->createOptions:I

    :goto_2
    iput p3, p0, Ljcifs/smb/SmbComNTCreateAndX;->impersonationLevel:I

    iput-byte p4, p0, Ljcifs/smb/SmbComNTCreateAndX;->securityFlags:B

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
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "SmbComNTCreateAndX["

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
    const-string v2, ",flags=0x"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    const-string v4, ",rootDirectoryFid="

    .line 26
    .line 27
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->rootDirectoryFid:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ",desiredAccess=0x"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    .line 41
    .line 42
    const/4 v4, 0x4

    .line 43
    const-string v5, ",allocationSize="

    .line 44
    .line 45
    invoke-static {v2, v4, v1, v5}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-wide v5, p0, Ljcifs/smb/SmbComNTCreateAndX;->allocationSize:J

    .line 49
    .line 50
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ",extFileAttributes=0x"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->extFileAttributes:I

    .line 59
    .line 60
    const-string v5, ",shareAccess=0x"

    .line 61
    .line 62
    invoke-static {v2, v4, v1, v5}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->shareAccess:I

    .line 66
    .line 67
    const-string v5, ",createDisposition=0x"

    .line 68
    .line 69
    invoke-static {v2, v4, v1, v5}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    .line 73
    .line 74
    const-string v5, ",createOptions=0x"

    .line 75
    .line 76
    invoke-static {v2, v4, v1, v5}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->createOptions:I

    .line 80
    .line 81
    const/16 v5, 0x8

    .line 82
    .line 83
    const-string v6, ",impersonationLevel=0x"

    .line 84
    .line 85
    invoke-static {v2, v5, v1, v6}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->impersonationLevel:I

    .line 89
    .line 90
    const-string v5, ",securityFlags=0x"

    .line 91
    .line 92
    invoke-static {v2, v4, v1, v5}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-byte v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->securityFlags:B

    .line 96
    .line 97
    const-string v4, ",name="

    .line 98
    .line 99
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 103
    .line 104
    const-string v3, "]"

    .line 105
    .line 106
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .locals 3

    iget-object v0, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    move-result p2

    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    int-to-long v0, v0

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->namelen_index:I

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    return p2
.end method

.method public writeParameterWordsWireFormat([BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, p2

    iput v0, p0, Ljcifs/smb/SmbComNTCreateAndX;->namelen_index:I

    add-int/lit8 v0, p2, 0x3

    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0x7

    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->rootDirectoryFid:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0xb

    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0xf

    iget-wide v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->allocationSize:J

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt8(J[BI)V

    add-int/lit8 v0, p2, 0x17

    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->extFileAttributes:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0x1b

    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->shareAccess:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0x1f

    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0x23

    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->createOptions:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0x27

    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->impersonationLevel:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0x2b

    add-int/lit8 v1, p2, 0x2c

    iget-byte v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->securityFlags:B

    aput-byte v2, p1, v0

    sub-int/2addr v1, p2

    return v1
.end method
