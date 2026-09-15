.class Ljcifs/smb/SmbComWriteAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SourceFile"


# static fields
.field private static final CLOSE_BATCH_LIMIT:I

.field private static final READ_ANDX_BATCH_LIMIT:I


# instance fields
.field private b:[B

.field private dataLength:I

.field private dataOffset:I

.field private fid:I

.field private off:I

.field private offset:J

.field private pad:I

.field private remaining:I

.field writeMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.client.WriteAndX.ReadAndX"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComWriteAndX;->READ_ANDX_BATCH_LIMIT:I

    const-string v0, "jcifs.smb.client.WriteAndX.Close"

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComWriteAndX;->CLOSE_BATCH_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const/16 v0, 0x2f

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    return-void
.end method

.method public constructor <init>(IJI[BIILjcifs/smb/ServerMessageBlock;)V
    .locals 0

    .line 2
    invoke-direct {p0, p8}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    iput p1, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    iput-wide p2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    iput p4, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    iput-object p5, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    iput p6, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    iput p7, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    const/16 p1, 0x2f

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    return-void
.end method


# virtual methods
.method public getBatchLimit(B)I
    .locals 1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_0

    sget p1, Ljcifs/smb/SmbComWriteAndX;->READ_ANDX_BATCH_LIMIT:I

    return p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget p1, Ljcifs/smb/SmbComWriteAndX;->CLOSE_BATCH_LIMIT:I

    return p1

    :cond_1
    const/4 p1, 0x0

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

.method public setParam(IJI[BII)V
    .locals 0

    iput p1, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    iput-wide p2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    iput p4, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    iput-object p5, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    iput p6, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    iput p7, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    const/4 p1, 0x0

    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    return-void
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
    const-string v2, "SmbComWriteAndX["

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
    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

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
    iget-wide v2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ",writeMode="

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ",remaining="

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, ",dataLength="

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, ",dataOffset="

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    .line 73
    .line 74
    const-string v3, "]"

    .line 75
    .line 76
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .locals 4

    move v0, p2

    :goto_0
    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, -0x12

    aput-byte v2, p1, v0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method public writeParameterWordsWireFormat([BI)I
    .locals 6

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v1, p2, v0

    add-int/lit8 v1, v1, 0x1a

    iput v1, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    sub-int v0, v1, v0

    const/4 v2, 0x4

    rem-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    add-int/2addr v1, v0

    iput v1, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-wide v4, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0x6

    move v1, v3

    :goto_1
    if-ge v1, v2, :cond_1

    add-int/lit8 v4, v0, 0x1

    const/4 v5, -0x1

    aput-byte v5, p1, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v4

    goto :goto_1

    :cond_1
    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v1, v0, 0x2

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v1, v0, 0x4

    add-int/lit8 v2, v0, 0x5

    aput-byte v3, p1, v1

    add-int/lit8 v1, v0, 0x6

    aput-byte v3, p1, v2

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v1, v0, 0x8

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v1, v0, 0xa

    iget-wide v2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0xe

    sub-int/2addr v0, p2

    return v0
.end method
