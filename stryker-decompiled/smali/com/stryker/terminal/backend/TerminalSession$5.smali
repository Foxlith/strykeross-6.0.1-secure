.class Lcom/stryker/terminal/backend/TerminalSession$5;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/backend/TerminalSession;->initializeSocket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/backend/TerminalSession;

.field final synthetic val$label:Ljava/lang/String;

.field final synthetic val$translateCr:Z

.field final synthetic val$unix:Z


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/backend/TerminalSession;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    iput-boolean p3, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->val$unix:Z

    iput-object p4, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->val$label:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->val$translateCr:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->val$unix:Z

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    new-instance v2, Landroid/net/LocalSocket;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v3, Landroid/net/LocalSocketAddress;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->val$label:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    .line 17
    .line 18
    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    .line 25
    .line 26
    invoke-static {v3, v2}, Lcom/stryker/terminal/backend/TerminalSession;->access$802(Lcom/stryker/terminal/backend/TerminalSession;Ljava/io/Closeable;)Ljava/io/Closeable;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->val$label:Ljava/lang/String;

    .line 39
    .line 40
    const/16 v3, 0x3a

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-lez v2, :cond_1

    .line 47
    .line 48
    iget-object v3, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->val$label:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string v3, "127.0.0.1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 56
    .line 57
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->val$label:Ljava/lang/String;

    .line 58
    .line 59
    add-int/2addr v2, v0

    .line 60
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    const/16 v2, 0x41a

    .line 70
    .line 71
    :goto_1
    :try_start_2
    new-instance v4, Ljava/net/Socket;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    .line 74
    .line 75
    .line 76
    new-instance v5, Ljava/net/InetSocketAddress;

    .line 77
    .line 78
    invoke-direct {v5, v3, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    const/16 v2, 0x1f40

    .line 82
    .line 83
    invoke-virtual {v4, v5, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    .line 90
    .line 91
    invoke-static {v2, v4}, Lcom/stryker/terminal/backend/TerminalSession;->access$802(Lcom/stryker/terminal/backend/TerminalSession;Ljava/io/Closeable;)Ljava/io/Closeable;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 99
    .line 100
    .line 101
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 102
    :goto_2
    new-instance v4, Lcom/stryker/terminal/backend/TerminalSession$5$1;

    .line 103
    .line 104
    const-string v5, "TermSockReader"

    .line 105
    .line 106
    invoke-direct {v4, p0, v5, v3}, Lcom/stryker/terminal/backend/TerminalSession$5$1;-><init>(Lcom/stryker/terminal/backend/TerminalSession$5;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 110
    .line 111
    .line 112
    const/16 v3, 0xa

    .line 113
    .line 114
    :try_start_3
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 118
    .line 119
    .line 120
    :catch_1
    const/16 v4, 0x1000

    .line 121
    .line 122
    new-array v4, v4, [B

    .line 123
    .line 124
    :goto_3
    :try_start_4
    iget-object v5, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    .line 125
    .line 126
    invoke-static {v5}, Lcom/stryker/terminal/backend/TerminalSession;->access$600(Lcom/stryker/terminal/backend/TerminalSession;)Lcom/stryker/terminal/backend/ByteQueue;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v5, v4, v0}, Lcom/stryker/terminal/backend/ByteQueue;->read([BZ)I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    const/4 v6, -0x1

    .line 135
    if-ne v5, v6, :cond_2

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_2
    iget-boolean v6, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->val$translateCr:Z

    .line 139
    .line 140
    if-eqz v6, :cond_4

    .line 141
    .line 142
    move v6, v1

    .line 143
    :goto_4
    if-ge v6, v5, :cond_4

    .line 144
    .line 145
    aget-byte v7, v4, v6

    .line 146
    .line 147
    const/16 v8, 0xd

    .line 148
    .line 149
    if-ne v7, v8, :cond_3

    .line 150
    .line 151
    aput-byte v3, v4, v6

    .line 152
    .line 153
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_4
    invoke-virtual {v2, v4, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :catch_2
    :goto_5
    return-void

    .line 164
    :catch_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v3, "\r\n[Cannot reach VM console ("

    .line 167
    .line 168
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v3, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->val$label:Ljava/lang/String;

    .line 172
    .line 173
    const-string v4, ") \u2014 is the VM booted? Start it from the dashboard.]\r\n"

    .line 174
    .line 175
    invoke-static {v2, v3, v4}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 180
    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    iget-object v3, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    .line 186
    .line 187
    invoke-static {v3}, Lcom/stryker/terminal/backend/TerminalSession;->access$000(Lcom/stryker/terminal/backend/TerminalSession;)Lcom/stryker/terminal/backend/ByteQueue;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    array-length v4, v2

    .line 192
    invoke-virtual {v3, v2, v1, v4}, Lcom/stryker/terminal/backend/ByteQueue;->write([BII)Z

    .line 193
    .line 194
    .line 195
    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    .line 196
    .line 197
    invoke-static {v2}, Lcom/stryker/terminal/backend/TerminalSession;->access$500(Lcom/stryker/terminal/backend/TerminalSession;)Landroid/os/Handler;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    .line 205
    .line 206
    invoke-static {v0}, Lcom/stryker/terminal/backend/TerminalSession;->access$500(Lcom/stryker/terminal/backend/TerminalSession;)Landroid/os/Handler;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalSession$5;->this$0:Lcom/stryker/terminal/backend/TerminalSession;

    .line 211
    .line 212
    invoke-static {v2}, Lcom/stryker/terminal/backend/TerminalSession;->access$500(Lcom/stryker/terminal/backend/TerminalSession;)Landroid/os/Handler;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    const/4 v3, 0x4

    .line 217
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    .line 227
    .line 228
    return-void
.end method
