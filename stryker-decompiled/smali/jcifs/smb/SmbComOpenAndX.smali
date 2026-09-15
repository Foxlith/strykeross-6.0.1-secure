.class Ljcifs/smb/SmbComOpenAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SourceFile"


# static fields
.field private static final BATCH_LIMIT:I

.field private static final DO_NOT_CACHE:I = 0x1000

.field private static final FLAGS_REQUEST_BATCH_OPLOCK:I = 0x4

.field private static final FLAGS_REQUEST_OPLOCK:I = 0x2

.field private static final FLAGS_RETURN_ADDITIONAL_INFO:I = 0x1

.field private static final OPEN_FN_CREATE:I = 0x10

.field private static final OPEN_FN_FAIL_IF_EXISTS:I = 0x0

.field private static final OPEN_FN_OPEN:I = 0x1

.field private static final OPEN_FN_TRUNC:I = 0x2

.field private static final SHARING_COMPATIBILITY:I = 0x0

.field private static final SHARING_DENY_NONE:I = 0x40

.field private static final SHARING_DENY_READ_EXECUTE:I = 0x30

.field private static final SHARING_DENY_READ_WRITE_EXECUTE:I = 0x10

.field private static final SHARING_DENY_WRITE:I = 0x20

.field private static final WRITE_THROUGH:I = 0x4000


# instance fields
.field allocationSize:I

.field creationTime:I

.field desiredAccess:I

.field fileAttributes:I

.field flags:I

.field openFunction:I

.field searchAttributes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.client.OpenAndX.ReadAndX"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComOpenAndX;->BATCH_LIMIT:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjcifs/smb/ServerMessageBlock;)V
    .locals 1

    invoke-direct {p0, p4}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    const/16 p1, 0x2d

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 p1, 0x3

    and-int/2addr p2, p1

    iput p2, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    const/4 p4, 0x2

    if-ne p2, p1, :cond_0

    iput p4, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    :cond_0
    iget p1, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    const/16 p2, 0x40

    or-int/2addr p1, p2

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    const/16 p1, 0x16

    iput p1, p0, Ljcifs/smb/SmbComOpenAndX;->searchAttributes:I

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/smb/SmbComOpenAndX;->fileAttributes:I

    and-int/lit8 p1, p3, 0x40

    const/16 v0, 0x10

    if-ne p1, p2, :cond_2

    and-int/lit8 p1, p3, 0x10

    if-ne p1, v0, :cond_1

    const/16 p1, 0x12

    :goto_0
    iput p1, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    goto :goto_1

    :cond_1
    iput p4, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    goto :goto_1

    :cond_2
    and-int/lit8 p1, p3, 0x10

    if-ne p1, v0, :cond_4

    const/16 p1, 0x20

    and-int/lit8 p2, p3, 0x20

    if-ne p2, p1, :cond_3

    iput v0, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    goto :goto_1

    :cond_3
    const/16 p1, 0x11

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public getBatchLimit(B)I
    .locals 1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_0

    sget p1, Ljcifs/smb/SmbComOpenAndX;->BATCH_LIMIT:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

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
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "SmbComOpenAndX["

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
    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->flags:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    const-string v4, ",desiredAccess=0x"

    .line 26
    .line 27
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    const-string v5, ",searchAttributes=0x"

    .line 34
    .line 35
    invoke-static {v2, v4, v1, v5}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->searchAttributes:I

    .line 39
    .line 40
    const-string v5, ",fileAttributes=0x"

    .line 41
    .line 42
    invoke-static {v2, v4, v1, v5}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->fileAttributes:I

    .line 46
    .line 47
    invoke-static {v2, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ",creationTime="

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    new-instance v2, Ljava/util/Date;

    .line 60
    .line 61
    iget v4, p0, Ljcifs/smb/SmbComOpenAndX;->creationTime:I

    .line 62
    .line 63
    int-to-long v4, v4

    .line 64
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, ",openFunction=0x"

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    .line 76
    .line 77
    const-string v4, ",allocationSize="

    .line 78
    .line 79
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->allocationSize:I

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, ",fileName="

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 93
    .line 94
    const-string v3, "]"

    .line 95
    .line 96
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .locals 2

    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, p2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iget-object v1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method public writeParameterWordsWireFormat([BI)I
    .locals 4

    iget v0, p0, Ljcifs/smb/SmbComOpenAndX;->flags:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x4

    iget v1, p0, Ljcifs/smb/SmbComOpenAndX;->searchAttributes:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x6

    iget v1, p0, Ljcifs/smb/SmbComOpenAndX;->fileAttributes:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x8

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/smb/SmbComOpenAndX;->creationTime:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0xc

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0xe

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->allocationSize:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0x12

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v0, 0x1

    aput-byte v1, p1, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p2

    return v0
.end method
