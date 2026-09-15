.class Ljcifs/smb/SmbComNTCreateAndXResponse;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SourceFile"


# static fields
.field static final BATCH_OPLOCK_GRANTED:I = 0x2

.field static final EXCLUSIVE_OPLOCK_GRANTED:I = 0x1

.field static final LEVEL_II_OPLOCK_GRANTED:I = 0x3


# instance fields
.field allocationSize:J

.field changeTime:J

.field createAction:I

.field creationTime:J

.field deviceState:I

.field directory:Z

.field endOfFile:J

.field extFileAttributes:I

.field fid:I

.field fileType:I

.field isExtended:Z

.field lastAccessTime:J

.field lastWriteTime:J

.field oplockLevel:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/AndXServerMessageBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public readBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public readParameterWordsWireFormat([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    iput-byte v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->oplockLevel:B

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    add-int/lit8 v0, p2, 0x3

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->createAction:I

    add-int/lit8 v0, p2, 0x7

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->creationTime:J

    add-int/lit8 v0, p2, 0xf

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->lastAccessTime:J

    add-int/lit8 v0, p2, 0x17

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->lastWriteTime:J

    add-int/lit8 v0, p2, 0x1f

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->changeTime:J

    add-int/lit8 v0, p2, 0x27

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    add-int/lit8 v0, p2, 0x2b

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->allocationSize:J

    add-int/lit8 v0, p2, 0x33

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->endOfFile:J

    add-int/lit8 v0, p2, 0x3b

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fileType:I

    add-int/lit8 v0, p2, 0x3d

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->deviceState:I

    add-int/lit8 v0, p2, 0x3f

    add-int/lit8 v1, p2, 0x40

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->directory:Z

    sub-int/2addr v1, p2

    return v1
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
    const-string v2, "SmbComNTCreateAndXResponse["

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
    const-string v2, ",oplockLevel="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-byte v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->oplockLevel:B

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",fid="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ",createAction=0x"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->createAction:I

    .line 43
    .line 44
    const/4 v3, 0x4

    .line 45
    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, ",creationTime="

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    new-instance v2, Ljava/util/Date;

    .line 58
    .line 59
    iget-wide v4, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->creationTime:J

    .line 60
    .line 61
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, ",lastAccessTime="

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    new-instance v2, Ljava/util/Date;

    .line 73
    .line 74
    iget-wide v4, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->lastAccessTime:J

    .line 75
    .line 76
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, ",lastWriteTime="

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    new-instance v2, Ljava/util/Date;

    .line 88
    .line 89
    iget-wide v4, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->lastWriteTime:J

    .line 90
    .line 91
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v2, ",changeTime="

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    new-instance v2, Ljava/util/Date;

    .line 103
    .line 104
    iget-wide v4, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->changeTime:J

    .line 105
    .line 106
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, ",extFileAttributes=0x"

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    .line 118
    .line 119
    const-string v4, ",allocationSize="

    .line 120
    .line 121
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-wide v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->allocationSize:J

    .line 125
    .line 126
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v2, ",endOfFile="

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-wide v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->endOfFile:J

    .line 135
    .line 136
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, ",fileType="

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fileType:I

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v2, ",deviceState="

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->deviceState:I

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v2, ",directory="

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-boolean v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->directory:Z

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v2, "]"

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
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
