.class abstract Ljcifs/smb/SmbComTransaction;
.super Ljcifs/smb/ServerMessageBlock;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field private static final DEFAULT_MAX_DATA_COUNT:I

.field private static final DISCONNECT_TID:I = 0x1

.field static final NET_SERVER_ENUM2:I = 0x68

.field static final NET_SERVER_ENUM3:I = 0xd7

.field static final NET_SHARE_ENUM:I = 0x0

.field private static final ONE_WAY_TRANSACTION:I = 0x2

.field private static final PADDING_SIZE:I = 0x2

.field private static final PRIMARY_SETUP_OFFSET:I = 0x3d

.field private static final SECONDARY_PARAMETER_OFFSET:I = 0x33

.field static final TRANS2_FIND_FIRST2:B = 0x1t

.field static final TRANS2_FIND_NEXT2:B = 0x2t

.field static final TRANS2_GET_DFS_REFERRAL:B = 0x10t

.field static final TRANS2_QUERY_FS_INFORMATION:B = 0x3t

.field static final TRANS2_QUERY_PATH_INFORMATION:B = 0x5t

.field static final TRANS2_SET_FILE_INFORMATION:B = 0x8t

.field static final TRANSACTION_BUF_SIZE:I = 0xffff

.field static final TRANS_CALL_NAMED_PIPE:B = 0x54t

.field static final TRANS_PEEK_NAMED_PIPE:B = 0x23t

.field static final TRANS_TRANSACT_NAMED_PIPE:B = 0x26t

.field static final TRANS_WAIT_NAMED_PIPE:B = 0x53t


# instance fields
.field private bufDataOffset:I

.field private bufParameterOffset:I

.field protected dataCount:I

.field protected dataDisplacement:I

.field protected dataOffset:I

.field private fid:I

.field private flags:I

.field private hasMore:Z

.field private isPrimary:Z

.field maxBufferSize:I

.field maxDataCount:I

.field maxParameterCount:I

.field maxSetupCount:B

.field name:Ljava/lang/String;

.field private pad:I

.field private pad1:I

.field protected parameterCount:I

.field protected parameterDisplacement:I

.field protected parameterOffset:I

.field protected primarySetupOffset:I

.field protected secondaryParameterOffset:I

.field setupCount:I

.field subCommand:B

.field timeout:I

.field totalDataCount:I

.field totalParameterCount:I

.field txn_buf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.client.transaction_buf_size"

    const v1, 0xffff

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit16 v0, v0, -0x200

    sput v0, Ljcifs/smb/SmbComTransaction;->DEFAULT_MAX_DATA_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->flags:I

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    iput-boolean v1, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    sget v2, Ljcifs/smb/SmbComTransaction;->DEFAULT_MAX_DATA_COUNT:I

    iput v2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    const-string v0, ""

    iput-object v0, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    const/16 v0, 0x400

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    const/16 v0, 0x3d

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->primarySetupOffset:I

    const/16 v0, 0x33

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->secondaryParameterOffset:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 5

    iget-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    const/16 v1, -0x60

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->primarySetupOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    add-int/lit8 v0, v3, 0x2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    if-eq v0, v1, :cond_0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljcifs/smb/ServerMessageBlock;->isResponse()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget-object v1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/ServerMessageBlock;->stringWireLength(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    :cond_1
    :goto_0
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    rem-int/lit8 v1, v0, 0x2

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    rsub-int/lit8 v1, v1, 0x2

    :goto_1
    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    add-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->bufParameterOffset:I

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbComTransaction;->writeParametersWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->maxBufferSize:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    sub-int/2addr v1, v0

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    rem-int/lit8 v0, v3, 0x2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    rsub-int/lit8 v0, v0, 0x2

    :goto_2
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    add-int/2addr v3, v0

    iput v3, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    invoke-virtual {p0, v0, v3}, Ljcifs/smb/SmbComTransaction;->writeDataWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_3
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    goto :goto_8

    :cond_4
    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    if-eq v0, v1, :cond_5

    const/16 v0, 0x26

    :goto_4
    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    goto :goto_5

    :cond_5
    const/16 v0, -0x5f

    goto :goto_4

    :goto_5
    const/16 v0, 0x33

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    sub-int v4, v1, v3

    if-lez v4, :cond_7

    const/16 v4, 0x33

    rem-int/lit8 v4, v4, 0x2

    iput v4, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    if-nez v4, :cond_6

    move v4, v2

    goto :goto_6

    :cond_6
    rsub-int/lit8 v4, v4, 0x2

    :goto_6
    iput v4, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    add-int/2addr v0, v4

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    :cond_7
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v3, v0

    iput v3, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->maxBufferSize:I

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    sub-int/2addr v0, v4

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    sub-int/2addr v0, v4

    sub-int/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    sub-int/2addr v0, v1

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    add-int/2addr v3, v1

    iput v3, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    rem-int/lit8 v1, v3, 0x2

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_7

    :cond_8
    rsub-int/lit8 v1, v1, 0x2

    :goto_7
    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    add-int/2addr v3, v1

    iput v3, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr v3, v4

    iput v3, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    sub-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    sub-int/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    :goto_8
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    if-lt v0, v1, :cond_9

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    if-lt v0, v1, :cond_9

    iput-boolean v2, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    :cond_9
    return-object p0
.end method

.method public readBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract readDataWireFormat([BII)I
.end method

.method public readParameterWordsWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract readParametersWireFormat([BII)I
.end method

.method public abstract readSetupWireFormat([BII)I
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    iput-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    return-void
.end method

.method public reset(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Ljcifs/smb/SmbComTransaction;->reset()V

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
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ",totalParameterCount="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ",totalDataCount="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ",maxParameterCount="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ",maxDataCount="

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, ",maxSetupCount="

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-byte v2, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, ",flags=0x"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->flags:I

    .line 71
    .line 72
    const/4 v3, 0x2

    .line 73
    const-string v4, ",timeout="

    .line 74
    .line 75
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, ",parameterCount="

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, ",parameterOffset="

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, ",parameterDisplacement="

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v2, ",dataCount="

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v2, ",dataOffset="

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v2, ",dataDisplacement="

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v2, ",setupCount="

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, ",pad="

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v2, ",pad1="

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .locals 5

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/ServerMessageBlock;->isResponse()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v1, p2

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    const/4 v3, 0x0

    if-lez v2, :cond_2

    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, p1, v1

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->bufParameterOffset:I

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    invoke-static {v0, v2, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v1, v0

    :cond_2
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    if-lez v0, :cond_4

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, p1, v1

    move v1, v0

    move v0, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr p1, v0

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    add-int/2addr v1, v0

    :cond_4
    sub-int/2addr v1, p2

    return v1
.end method

.method public abstract writeDataWireFormat([BI)I
.end method

.method public writeParameterWordsWireFormat([BI)I
    .locals 6

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x4

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 v2, 0x0

    const/16 v3, 0x26

    if-eq v1, v3, :cond_0

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x6

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v1, p2, 0x9

    iget-byte v4, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    aput-byte v4, p1, v0

    add-int/lit8 v0, p2, 0xa

    aput-byte v2, p1, v1

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->flags:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0xc

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0x10

    add-int/lit8 v1, p2, 0x11

    aput-byte v2, p1, v0

    add-int/lit8 v0, p2, 0x12

    aput-byte v2, p1, v1

    :cond_0
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v1, v0, 0x2

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v1, v0, 0x4

    iget-byte v4, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    if-ne v4, v3, :cond_1

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v1, v0, 0x6

    :cond_1
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    int-to-long v4, v0

    invoke-static {v4, v5, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v1, 0x2

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    iget v4, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    :goto_0
    int-to-long v4, v4

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v1, 0x4

    iget-byte v4, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    if-ne v4, v3, :cond_3

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v1, 0x5

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    add-int/lit8 v1, v1, 0x6

    aput-byte v2, p1, v3

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/SmbComTransaction;->writeSetupWireFormat([BI)I

    move-result p1

    add-int/2addr v1, p1

    :goto_1
    sub-int/2addr v1, p2

    return v1
.end method

.method public abstract writeParametersWireFormat([BI)I
.end method

.method public abstract writeSetupWireFormat([BI)I
.end method
