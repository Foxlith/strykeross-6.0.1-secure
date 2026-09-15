.class Ljcifs/smb/SmbComNegotiateResponse;
.super Ljcifs/smb/ServerMessageBlock;
.source "SourceFile"


# instance fields
.field dialectIndex:I

.field server:Ljcifs/smb/SmbTransport$ServerData;


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbTransport$ServerData;)V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    return-void
.end method


# virtual methods
.method public readBytesWireFormat([BI)I
    .locals 6

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget v1, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    new-array v3, v1, [B

    iput-object v3, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-static {p1, p2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    add-int v3, p2, v1

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    if-le v4, v1, :cond_7

    :try_start_0
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const v1, 0x8000

    and-int/2addr v0, v1

    const-string v4, "zero termination not found"

    const/16 v5, 0x100

    if-ne v0, v1, :cond_3

    :goto_0
    add-int v0, v3, v2

    :try_start_1
    aget-byte v1, p1, v0

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v1, p1, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :goto_1
    iput-object v1, v0, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x2

    if-gt v2, v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_3
    add-int v0, v3, v2

    aget-byte v0, p1, v0

    if-eqz v0, :cond_5

    add-int/lit8 v2, v2, 0x1

    if-gt v2, v5, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    new-instance v1, Ljava/lang/String;

    sget-object v4, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v1, p1, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_4
    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    sget-object v0, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_6
    :goto_5
    add-int/2addr v3, v2

    goto :goto_6

    :cond_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    iput-object p1, v0, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    goto :goto_6

    :cond_8
    const/16 v1, 0x10

    new-array v3, v1, [B

    iput-object v3, v0, Ljcifs/smb/SmbTransport$ServerData;->guid:[B

    invoke-static {p1, p2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p1, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    move v3, p2

    :goto_6
    sub-int/2addr v3, p2

    return v3
.end method

.method public readParameterWordsWireFormat([BI)I
    .locals 7

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    add-int/lit8 v1, p2, 0x2

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    sub-int/2addr v1, p2

    return v1

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    add-int/lit8 v2, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v3, v1, 0xff

    iput v3, v0, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    and-int/lit8 v3, v1, 0x1

    iput v3, v0, Ljcifs/smb/SmbTransport$ServerData;->security:I

    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iput-boolean v3, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    and-int/lit8 v3, v1, 0x4

    const/4 v6, 0x4

    if-ne v3, v6, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    iput-boolean v3, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesEnabled:Z

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    move v4, v5

    :cond_3
    iput-boolean v4, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesRequired:Z

    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    add-int/lit8 v0, p2, 0x5

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/SmbTransport$ServerData;->maxNumberVcs:I

    add-int/lit8 v0, p2, 0x7

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    add-int/lit8 v0, p2, 0xb

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/SmbTransport$ServerData;->maxRawSize:I

    add-int/lit8 v0, p2, 0xf

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/SmbTransport$ServerData;->sessionKey:I

    add-int/lit8 v0, p2, 0x13

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    add-int/lit8 v0, p2, 0x17

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/SmbTransport$ServerData;->serverTime:J

    add-int/lit8 v0, p2, 0x1f

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    add-int/lit8 v0, p2, 0x21

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    add-int/lit8 v2, p2, 0x22

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    iput p1, v1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    sub-int/2addr v2, p2

    return v2
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
    const-string v2, "SmbComNegotiateResponse["

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
    const-string v2, ",wordCount="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",dialectIndex="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ",securityMode=0x"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 43
    .line 44
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    const-string v4, ",security="

    .line 48
    .line 49
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 53
    .line 54
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->security:I

    .line 55
    .line 56
    if-nez v2, :cond_0

    .line 57
    .line 58
    const-string v2, "share"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string v2, "user"

    .line 62
    .line 63
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ",encryptedPasswords="

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 72
    .line 73
    iget-boolean v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v2, ",maxMpxCount="

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 84
    .line 85
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, ",maxNumberVcs="

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 96
    .line 97
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxNumberVcs:I

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v2, ",maxBufferSize="

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 108
    .line 109
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, ",maxRawSize="

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 120
    .line 121
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxRawSize:I

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v2, ",sessionKey=0x"

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 132
    .line 133
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->sessionKey:I

    .line 134
    .line 135
    const/16 v3, 0x8

    .line 136
    .line 137
    const-string v4, ",capabilities=0x"

    .line 138
    .line 139
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 143
    .line 144
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    .line 145
    .line 146
    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, ",serverTime="

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    new-instance v2, Ljava/util/Date;

    .line 159
    .line 160
    iget-object v3, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 161
    .line 162
    iget-wide v3, v3, Ljcifs/smb/SmbTransport$ServerData;->serverTime:J

    .line 163
    .line 164
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v2, ",serverTimeZone="

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 176
    .line 177
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v2, ",encryptionKeyLength="

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 188
    .line 189
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v2, ",byteCount="

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v2, ",oemDomainName="

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 210
    .line 211
    iget-object v2, v2, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    .line 212
    .line 213
    const-string v3, "]"

    .line 214
    .line 215
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
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
