.class Ljcifs/smb/SmbComReadAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SourceFile"


# static fields
.field private static final BATCH_LIMIT:I


# instance fields
.field private fid:I

.field maxCount:I

.field minCount:I

.field private offset:J

.field private openTimeout:I

.field remaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.client.ReadAndX.Close"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComReadAndX;->BATCH_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const/16 v0, 0x2e

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 v0, -0x1

    iput v0, p0, Ljcifs/smb/SmbComReadAndX;->openTimeout:I

    return-void
.end method

.method public constructor <init>(IJILjcifs/smb/ServerMessageBlock;)V
    .locals 0

    .line 2
    invoke-direct {p0, p5}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    iput p1, p0, Ljcifs/smb/SmbComReadAndX;->fid:I

    iput-wide p2, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    iput p4, p0, Ljcifs/smb/SmbComReadAndX;->minCount:I

    iput p4, p0, Ljcifs/smb/SmbComReadAndX;->maxCount:I

    const/16 p1, 0x2e

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 p1, -0x1

    iput p1, p0, Ljcifs/smb/SmbComReadAndX;->openTimeout:I

    return-void
.end method


# virtual methods
.method public getBatchLimit(B)I
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget p1, Ljcifs/smb/SmbComReadAndX;->BATCH_LIMIT:I

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

.method public setParam(IJI)V
    .locals 0

    iput p1, p0, Ljcifs/smb/SmbComReadAndX;->fid:I

    iput-wide p2, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    iput p4, p0, Ljcifs/smb/SmbComReadAndX;->minCount:I

    iput p4, p0, Ljcifs/smb/SmbComReadAndX;->maxCount:I

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
    const-string v2, "SmbComReadAndX["

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
    const-string v2, ",fid="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Ljcifs/smb/SmbComReadAndX;->fid:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",offset="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-wide v3, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    .line 33
    .line 34
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, ",maxCount="

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v3, p0, Ljcifs/smb/SmbComReadAndX;->maxCount:I

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, ",minCount="

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v3, p0, Ljcifs/smb/SmbComReadAndX;->minCount:I

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, ",openTimeout="

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v3, p0, Ljcifs/smb/SmbComReadAndX;->openTimeout:I

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v3, ",remaining="

    .line 68
    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v3, p0, Ljcifs/smb/SmbComReadAndX;->remaining:I

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-wide v2, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    .line 81
    .line 82
    const-string v4, "]"

    .line 83
    .line 84
    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeParameterWordsWireFormat([BI)I
    .locals 4

    iget v0, p0, Ljcifs/smb/SmbComReadAndX;->fid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-wide v1, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0x6

    iget v1, p0, Ljcifs/smb/SmbComReadAndX;->maxCount:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x8

    iget v1, p0, Ljcifs/smb/SmbComReadAndX;->minCount:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0xa

    iget v1, p0, Ljcifs/smb/SmbComReadAndX;->openTimeout:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0xe

    iget v1, p0, Ljcifs/smb/SmbComReadAndX;->remaining:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x10

    iget-wide v1, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 p1, p2, 0x14

    sub-int/2addr p1, p2

    return p1
.end method
