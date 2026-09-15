.class public final synthetic Ls3/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ls3/z;


# direct methods
.method public synthetic constructor <init>(Ls3/z;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ls3/y;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ls3/y;->b:Ls3/z;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Ls3/y;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ls3/y;->b:Ls3/z;

    .line 9
    .line 10
    :goto_0
    iget-boolean v3, v0, Ls3/b;->c:Z

    .line 11
    .line 12
    if-eqz v3, :cond_5

    .line 13
    .line 14
    iget-object v3, v0, Ls3/z;->g:Ljava/net/MulticastSocket;

    .line 15
    .line 16
    iget-object v4, v0, Ls3/z;->h:Ljava/net/InetAddress;

    .line 17
    .line 18
    if-eqz v3, :cond_5

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    goto :goto_4

    .line 23
    :cond_0
    :try_start_0
    rem-int/lit8 v5, v1, 0x2

    .line 24
    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    const-string v5, "upnp:rootdevice"

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception v3

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    const-string v5, "ssdp:all"

    .line 33
    .line 34
    :goto_1
    const-string v6, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    :try_start_1
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    if-eqz v7, :cond_2

    .line 39
    .line 40
    move-object v6, v7

    .line 41
    :catchall_0
    :cond_2
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v8, "M-SEARCH * HTTP/1.1\r\nHOST: 239.255.255.250:1900\r\nMAN: \"ssdp:discover\"\r\nMX: 1\r\nST: "

    .line 44
    .line 45
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v5, "\r\nUSER-AGENT: Android/"

    .line 52
    .line 53
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v5, " UPnP/1.1 Stryker/1.0\r\n\r\n"

    .line 60
    .line 61
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    new-instance v6, Ljava/net/DatagramPacket;

    .line 75
    .line 76
    array-length v7, v5

    .line 77
    const/16 v8, 0x76c

    .line 78
    .line 79
    invoke-direct {v6, v5, v7, v4, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :goto_2
    iget-boolean v4, v0, Ls3/b;->c:Z

    .line 87
    .line 88
    if-eqz v4, :cond_3

    .line 89
    .line 90
    iget-boolean v4, v0, Ls3/z;->j:Z

    .line 91
    .line 92
    if-nez v4, :cond_3

    .line 93
    .line 94
    iput-boolean v2, v0, Ls3/z;->j:Z

    .line 95
    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v5, "send failed: "

    .line 99
    .line 100
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v0, v3}, Ls3/b;->g(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 114
    .line 115
    iget-boolean v3, v0, Ls3/b;->c:Z

    .line 116
    .line 117
    if-nez v3, :cond_4

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_4
    const-wide/16 v3, 0xfa

    .line 121
    .line 122
    invoke-static {v3, v4}, Ls3/b;->d(J)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    :goto_4
    return-void

    .line 127
    :pswitch_0
    iget-object v0, p0, Ls3/y;->b:Ls3/z;

    .line 128
    .line 129
    const/16 v3, 0x1000

    .line 130
    .line 131
    new-array v4, v3, [B

    .line 132
    .line 133
    :catch_1
    :goto_5
    move v5, v1

    .line 134
    :goto_6
    iget-boolean v6, v0, Ls3/b;->c:Z

    .line 135
    .line 136
    if-eqz v6, :cond_9

    .line 137
    .line 138
    iget-object v6, v0, Ls3/z;->g:Ljava/net/MulticastSocket;

    .line 139
    .line 140
    if-nez v6, :cond_6

    .line 141
    .line 142
    goto :goto_7

    .line 143
    :cond_6
    new-instance v7, Ljava/net/DatagramPacket;

    .line 144
    .line 145
    invoke-direct {v7, v4, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 146
    .line 147
    .line 148
    :try_start_3
    invoke-virtual {v6, v7}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 149
    .line 150
    .line 151
    :try_start_4
    invoke-virtual {v0, v7}, Ls3/z;->j(Ljava/net/DatagramPacket;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :catch_2
    move-exception v6

    .line 156
    iget-boolean v7, v0, Ls3/b;->c:Z

    .line 157
    .line 158
    if-nez v7, :cond_7

    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_7
    add-int/2addr v5, v2

    .line 162
    const/16 v7, 0x14

    .line 163
    .line 164
    if-lt v5, v7, :cond_8

    .line 165
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v2, "receive failed "

    .line 169
    .line 170
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v2, " times, listener stopped: "

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Ls3/b;->g(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_8
    const-wide/16 v6, 0x32

    .line 193
    .line 194
    invoke-static {v6, v7}, Ls3/b;->d(J)V

    .line 195
    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_9
    :goto_7
    return-void

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
