.class Ljcifs/smb/SmbComWrite;
.super Ljcifs/smb/ServerMessageBlock;
.source "SourceFile"


# instance fields
.field private b:[B

.field private count:I

.field private fid:I

.field private off:I

.field private offset:I

.field private remaining:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/16 v0, 0xb

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    return-void
.end method

.method public constructor <init>(III[BII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    iput p1, p0, Ljcifs/smb/SmbComWrite;->fid:I

    iput p6, p0, Ljcifs/smb/SmbComWrite;->count:I

    iput p2, p0, Ljcifs/smb/SmbComWrite;->offset:I

    iput p3, p0, Ljcifs/smb/SmbComWrite;->remaining:I

    iput-object p4, p0, Ljcifs/smb/SmbComWrite;->b:[B

    iput p5, p0, Ljcifs/smb/SmbComWrite;->off:I

    const/16 p1, 0xb

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

.method public setParam(IJI[BII)V
    .locals 2

    iput p1, p0, Ljcifs/smb/SmbComWrite;->fid:I

    const-wide v0, 0xffffffffL

    and-long p1, p2, v0

    long-to-int p1, p1

    iput p1, p0, Ljcifs/smb/SmbComWrite;->offset:I

    iput p4, p0, Ljcifs/smb/SmbComWrite;->remaining:I

    iput-object p5, p0, Ljcifs/smb/SmbComWrite;->b:[B

    iput p6, p0, Ljcifs/smb/SmbComWrite;->off:I

    iput p7, p0, Ljcifs/smb/SmbComWrite;->count:I

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
    const-string v2, "SmbComWrite["

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
    const-string v2, ",fid="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Ljcifs/smb/SmbComWrite;->fid:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",count="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v2, p0, Ljcifs/smb/SmbComWrite;->count:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ",offset="

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v2, p0, Ljcifs/smb/SmbComWrite;->offset:I

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
    iget v2, p0, Ljcifs/smb/SmbComWrite;->remaining:I

    .line 53
    .line 54
    const-string v3, "]"

    .line 55
    .line 56
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

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
    .locals 4

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    aput-byte v1, p1, p2

    iget v1, p0, Ljcifs/smb/SmbComWrite;->count:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x3

    iget-object v1, p0, Ljcifs/smb/SmbComWrite;->b:[B

    iget v2, p0, Ljcifs/smb/SmbComWrite;->off:I

    iget v3, p0, Ljcifs/smb/SmbComWrite;->count:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ljcifs/smb/SmbComWrite;->count:I

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method public writeParameterWordsWireFormat([BI)I
    .locals 3

    iget v0, p0, Ljcifs/smb/SmbComWrite;->fid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Ljcifs/smb/SmbComWrite;->count:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x4

    iget v1, p0, Ljcifs/smb/SmbComWrite;->offset:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0x8

    iget v1, p0, Ljcifs/smb/SmbComWrite;->remaining:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 p1, p2, 0xa

    sub-int/2addr p1, p2

    return p1
.end method
