.class public final Lz3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll4/l;

.field public final b:Ljava/lang/String;

.field public volatile c:Ljava/lang/Process;

.field public volatile d:Ljava/net/Socket;

.field public volatile e:Ljava/io/OutputStream;

.field public volatile f:Ljava/io/BufferedReader;

.field public volatile g:Z

.field public h:Ljava/lang/Thread;

.field public volatile i:Lz3/f;

.field public volatile j:Ljava/lang/String;

.field public final k:Ljava/lang/Object;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m:Lz3/e;


# direct methods
.method public constructor <init>(Ll4/l;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lz3/f;->a:Lz3/f;

    iput-object v0, p0, Lz3/g;->i:Lz3/f;

    const-string v0, ""

    iput-object v0, p0, Lz3/g;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz3/g;->k:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lz3/g;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lz3/g;->a:Ll4/l;

    iput-object p2, p0, Lz3/g;->b:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "\u001b\\[[0-9;]*[a-zA-Z]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".*0m>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "^msf\\d?[^>]*>\\s?"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "metasploit v"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "="

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "["

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "__STRYKER_END_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const-string v1, "Starting the Metasploit Framework console"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const-string v1, "stty: standard input: Not a tty"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    const-string v1, "echo __STRYKER_END_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_0
    return v0
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lz3/g;->i:Lz3/f;

    .line 3
    .line 4
    sget-object v1, Lz3/f;->c:Lz3/f;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lz3/g;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return v2

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lz3/g;->n()V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lz3/f;->b:Lz3/f;

    .line 24
    .line 25
    const-string v1, "starting msfconsole"

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lz3/g;->j(Lz3/f;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lz3/g;->a:Ll4/l;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lz3/g;->g()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lz3/g;->h()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    const/4 v1, 0x0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    sget-object v2, Lz3/f;->d:Lz3/f;

    .line 54
    .line 55
    invoke-virtual {p0, v2, v0}, Lz3/g;->j(Lz3/f;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return v1

    .line 60
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    const-wide/32 v5, 0x124f80

    .line 65
    .line 66
    .line 67
    add-long/2addr v3, v5

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v5

    .line 72
    const-wide/32 v7, 0x15f90

    .line 73
    .line 74
    .line 75
    add-long/2addr v5, v7

    .line 76
    :cond_3
    :goto_1
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 77
    .line 78
    .line 79
    move-result-wide v5

    .line 80
    invoke-virtual {p0, v5, v6}, Lz3/g;->k(J)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_7

    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v5

    .line 90
    add-long/2addr v5, v7

    .line 91
    invoke-static {v0}, Lz3/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v9, "metasploit v"

    .line 96
    .line 97
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_4

    .line 102
    .line 103
    invoke-static {v0}, Lz3/g;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lz3/g;->j:Ljava/lang/String;

    .line 108
    .line 109
    sget-object v0, Lz3/f;->c:Lz3/f;

    .line 110
    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v4, "v"

    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v4, p0, Lz3/g;->j:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {p0, v0, v3}, Lz3/g;->j(Lz3/f;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    .line 133
    monitor-exit p0

    .line 134
    return v2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    goto :goto_4

    .line 137
    :cond_4
    :try_start_3
    const-string v9, "command not found"

    .line 138
    .line 139
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-nez v9, :cond_6

    .line 144
    .line 145
    const-string v9, "No such file"

    .line 146
    .line 147
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    if-nez v9, :cond_6

    .line 152
    .line 153
    const-string v9, "msfconsole: not found"

    .line 154
    .line 155
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-eqz v9, :cond_5

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_5
    invoke-static {v0}, Lz3/g;->l(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-nez v9, :cond_3

    .line 167
    .line 168
    invoke-virtual {p0, v0}, Lz3/g;->d(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_6
    :goto_2
    sget-object v0, Lz3/f;->d:Lz3/f;

    .line 173
    .line 174
    const-string v2, "msfconsole not installed"

    .line 175
    .line 176
    invoke-virtual {p0, v0, v2}, Lz3/g;->j(Lz3/f;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    .line 178
    .line 179
    monitor-exit p0

    .line 180
    return v1

    .line 181
    :cond_7
    :try_start_4
    sget-object v0, Lz3/f;->d:Lz3/f;

    .line 182
    .line 183
    iget-boolean v2, p0, Lz3/g;->g:Z

    .line 184
    .line 185
    if-eqz v2, :cond_8

    .line 186
    .line 187
    const-string v2, "msfconsole exited"

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_8
    const-string v2, "boot timeout"

    .line 191
    .line 192
    :goto_3
    invoke-virtual {p0, v0, v2}, Lz3/g;->j(Lz3/f;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 193
    .line 194
    .line 195
    monitor-exit p0

    .line 196
    return v1

    .line 197
    :goto_4
    :try_start_5
    const-string v2, "MsfRpcConsole"

    .line 198
    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    iget-object v4, p0, Lz3/g;->b:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v4, " boot failed"

    .line 210
    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .line 220
    .line 221
    sget-object v2, Lz3/f;->d:Lz3/f;

    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    if-nez v3, :cond_9

    .line 228
    .line 229
    const-string v0, "io error"

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    :goto_5
    invoke-virtual {p0, v2, v0}, Lz3/g;->j(Lz3/f;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 237
    .line 238
    .line 239
    monitor-exit p0

    .line 240
    return v1

    .line 241
    :goto_6
    monitor-exit p0

    .line 242
    throw v0
.end method

.method public final c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    const-string v0, "echo "

    .line 2
    .line 3
    const-string v1, "__STRYKER_END_"

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lz3/g;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lz3/g;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_0
    iget-object v3, p0, Lz3/g;->k:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3

    .line 27
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v5, "-"

    .line 41
    .line 42
    const-string v6, ""

    .line 43
    .line 44
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v5, 0x0

    .line 49
    const/16 v6, 0xc

    .line 50
    .line 51
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, "__"

    .line 59
    .line 60
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    iget-object v4, p0, Lz3/g;->e:Ljava/io/OutputStream;

    .line 68
    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p1, "\n"

    .line 78
    .line 79
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lz3/g;->e:Ljava/io/OutputStream;

    .line 94
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v0, "\n"

    .line 104
    .line 105
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lz3/g;->e:Ljava/io/OutputStream;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 122
    .line 123
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    const-wide/32 v6, 0x927c0

    .line 129
    .line 130
    .line 131
    add-long/2addr v4, v6

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v6

    .line 136
    const-wide/32 v8, 0xea60

    .line 137
    .line 138
    .line 139
    add-long/2addr v6, v8

    .line 140
    :goto_0
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 141
    .line 142
    .line 143
    move-result-wide v6

    .line 144
    invoke-virtual {p0, v6, v7}, Lz3/g;->k(J)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-eqz p1, :cond_3

    .line 149
    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 151
    .line 152
    .line 153
    move-result-wide v6

    .line 154
    add-long/2addr v6, v8

    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    if-eqz v0, :cond_1

    .line 160
    .line 161
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    goto :goto_5

    .line 163
    :catchall_0
    move-exception p1

    .line 164
    goto :goto_6

    .line 165
    :cond_1
    :try_start_3
    invoke-static {p1}, Lz3/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p1}, Lz3/g;->l(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_2

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, p1}, Lz3/g;->d(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :catch_0
    move-exception p1

    .line 184
    goto :goto_3

    .line 185
    :cond_3
    sget-object p1, Lz3/f;->d:Lz3/f;

    .line 186
    .line 187
    iget-boolean v0, p0, Lz3/g;->g:Z

    .line 188
    .line 189
    if-eqz v0, :cond_4

    .line 190
    .line 191
    const-string v0, "msfconsole exited"

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_4
    const-string v0, "command timeout"

    .line 195
    .line 196
    :goto_2
    invoke-virtual {p0, p1, v0}, Lz3/g;->j(Lz3/f;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :goto_3
    :try_start_4
    const-string v0, "MsfRpcConsole"

    .line 201
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    iget-object v4, p0, Lz3/g;->b:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v4, " io error in command"

    .line 213
    .line 214
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .line 223
    .line 224
    sget-object v0, Lz3/f;->d:Lz3/f;

    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    if-nez v1, :cond_5

    .line 231
    .line 232
    const-string p1, "io error"

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    :goto_4
    invoke-virtual {p0, v0, p1}, Lz3/g;->j(Lz3/f;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :goto_5
    return-object v2

    .line 244
    :goto_6
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 245
    throw p1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lz3/g;->m:Lz3/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lz3/b;

    .line 6
    .line 7
    iget v1, v0, Lz3/b;->a:I

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    iget-object v0, v0, Lz3/b;->b:Lz3/d;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lz3/d;->b:Lu3/g;

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v4, "[msf-shell] "

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v1, v2, v3}, Lu3/g;->e(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v0, Lz3/d;->c:Lg3/b;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lg3/b;->i(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_0
    iget-object v0, v0, Lz3/d;->b:Lu3/g;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "[msf-console] "

    .line 47
    .line 48
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, v2, p1}, Lu3/g;->e(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    :goto_0
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lz3/g;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lz3/g;->d:Ljava/net/Socket;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz3/g;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    :cond_1
    iget-object v0, p0, Lz3/g;->c:Ljava/lang/Process;

    if-nez v0, :cond_2

    return v1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lz3/g;->c:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v2
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lz3/g;->i:Lz3/f;

    sget-object v1, Lz3/f;->c:Lz3/f;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lz3/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "VM is not running"

    .line 2
    .line 3
    const/16 v1, 0x1388

    .line 4
    .line 5
    invoke-static {v1}, Lu2/c;->c(I)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object v2, p0, Lz3/g;->a:Ll4/l;

    .line 13
    .line 14
    iget-object v2, v2, Ll4/l;->c:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v2}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2, v3}, Lu2/h;->y(Lu2/g;)Z

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    :catchall_0
    return-object v0

    .line 27
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/Socket;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 33
    .line 34
    const-string v4, "127.0.0.1"

    .line 35
    .line 36
    const/16 v5, 0x41a

    .line 37
    .line 38
    invoke-direct {v2, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 46
    .line 47
    .line 48
    const/16 v1, 0x7d0

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lz3/g;->d:Ljava/net/Socket;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lz3/g;->e:Ljava/io/OutputStream;

    .line 60
    .line 61
    new-instance v1, Ljava/io/BufferedReader;

    .line 62
    .line 63
    new-instance v2, Ljava/io/InputStreamReader;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    invoke-direct {v2, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lz3/g;->f:Ljava/io/BufferedReader;

    .line 78
    .line 79
    iget-object v0, p0, Lz3/g;->e:Ljava/io/OutputStream;

    .line 80
    .line 81
    const-string v1, "export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin${PATH:+:$PATH}; export HOME=/root LANG=C.UTF-8\n"

    .line 82
    .line 83
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lz3/g;->e:Ljava/io/OutputStream;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lz3/g;->e:Ljava/io/OutputStream;

    .line 96
    .line 97
    const-string v1, "cd /root 2>/dev/null || cd /tmp; exec msfconsole\n"

    .line 98
    .line 99
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lz3/g;->e:Ljava/io/OutputStream;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    .line 110
    .line 111
    return-object v3

    .line 112
    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object v2, p0, Lz3/g;->b:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v2, " guest channel failed"

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string v2, "MsfRpcConsole"

    .line 133
    .line 134
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .line 136
    .line 137
    const-string v0, "VM unreachable on :1050"

    .line 138
    .line 139
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lz3/g;->a:Ll4/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll4/l;->w()Ljava/lang/Process;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lz3/g;->c:Ljava/lang/Process;

    .line 8
    .line 9
    iget-object v0, p0, Lz3/g;->c:Ljava/lang/Process;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "su denied"

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Lz3/g;->c:Ljava/lang/Process;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lz3/g;->e:Ljava/io/OutputStream;

    .line 23
    .line 24
    new-instance v0, Ljava/io/BufferedReader;

    .line 25
    .line 26
    new-instance v1, Ljava/io/InputStreamReader;

    .line 27
    .line 28
    iget-object v2, p0, Lz3/g;->c:Ljava/lang/Process;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lz3/g;->f:Ljava/io/BufferedReader;

    .line 41
    .line 42
    iget-object v0, p0, Lz3/g;->c:Ljava/lang/Process;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    .line 52
    .line 53
    new-instance v2, Lw2/h;

    .line 54
    .line 55
    const/16 v3, 0x1d

    .line 56
    .line 57
    invoke-direct {v2, p0, v0, v3}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "MsfRpcStderr-"

    .line 63
    .line 64
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lz3/g;->b:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lz3/g;->h:Ljava/lang/Thread;

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lz3/g;->h:Ljava/lang/Thread;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    .line 89
    .line 90
    :goto_0
    iget-object v0, p0, Lz3/g;->e:Ljava/io/OutputStream;

    .line 91
    .line 92
    const-string v1, "/data/data/com.zalexdev.stryker/files/chroot_exec \'msfconsole\'\n"

    .line 93
    .line 94
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lz3/g;->e:Ljava/io/OutputStream;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lz3/g;->b:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v2, " su channel failed"

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v2, "MsfRpcConsole"

    .line 131
    .line 132
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-nez v1, :cond_2

    .line 140
    .line 141
    const-string v0, "io error"

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :goto_1
    return-object v0
.end method

.method public final j(Lz3/f;Ljava/lang/String;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lz3/g;->i:Lz3/f;

    .line 2
    .line 3
    iget-object v0, p0, Lz3/g;->m:Lz3/e;

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    check-cast v0, Lz3/b;

    .line 8
    .line 9
    iget v1, v0, Lz3/b;->a:I

    .line 10
    .line 11
    sget-object v2, Lz3/f;->c:Lz3/f;

    .line 12
    .line 13
    sget-object v3, Lz3/f;->b:Lz3/f;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    if-ne p1, v3, :cond_0

    .line 21
    .line 22
    move v1, v4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v5

    .line 25
    :goto_0
    iget-object v0, v0, Lz3/b;->b:Lz3/d;

    .line 26
    .line 27
    iput-boolean v1, v0, Lz3/d;->h:Z

    .line 28
    .line 29
    if-ne p1, v2, :cond_1

    .line 30
    .line 31
    move v5, v4

    .line 32
    :cond_1
    iput-boolean v5, v0, Lz3/d;->j:Z

    .line 33
    .line 34
    invoke-virtual {v0}, Lz3/d;->c()V

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, Lz3/d;->k:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_9

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lz3/c;

    .line 54
    .line 55
    check-cast v1, Lw3/c;

    .line 56
    .line 57
    iget v2, v1, Lw3/c;->a:I

    .line 58
    .line 59
    packed-switch v2, :pswitch_data_1

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_0
    iget-object v2, v1, Lw3/c;->b:Landroidx/fragment/app/Fragment;

    .line 64
    .line 65
    check-cast v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;

    .line 66
    .line 67
    iget-object v3, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->b:Landroidx/fragment/app/a0;

    .line 68
    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget-object v2, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->b:Landroidx/fragment/app/a0;

    .line 79
    .line 80
    new-instance v3, Lv3/g;

    .line 81
    .line 82
    invoke-direct {v3, v1, p1, p2, v4}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :pswitch_1
    iget-object v1, v0, Lz3/b;->b:Lz3/d;

    .line 90
    .line 91
    if-ne p1, v3, :cond_4

    .line 92
    .line 93
    move v3, v4

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    move v3, v5

    .line 96
    :goto_2
    iput-boolean v3, v1, Lz3/d;->g:Z

    .line 97
    .line 98
    if-ne p1, v2, :cond_5

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_5
    move v4, v5

    .line 102
    :goto_3
    iput-boolean v4, v1, Lz3/d;->i:Z

    .line 103
    .line 104
    if-ne p1, v2, :cond_6

    .line 105
    .line 106
    iget-object v3, v1, Lz3/d;->e:Lz3/g;

    .line 107
    .line 108
    iget-object v3, v3, Lz3/g;->j:Ljava/lang/String;

    .line 109
    .line 110
    iput-object v3, v1, Lz3/d;->d:Ljava/lang/String;

    .line 111
    .line 112
    :cond_6
    iget-object v1, v0, Lz3/b;->b:Lz3/d;

    .line 113
    .line 114
    invoke-virtual {v1}, Lz3/d;->c()V

    .line 115
    .line 116
    .line 117
    iget-object v0, v0, Lz3/b;->b:Lz3/d;

    .line 118
    .line 119
    iget-object v0, v0, Lz3/d;->k:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :cond_7
    :goto_4
    :pswitch_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_9

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Lz3/c;

    .line 136
    .line 137
    check-cast v1, Lw3/c;

    .line 138
    .line 139
    iget v3, v1, Lw3/c;->a:I

    .line 140
    .line 141
    packed-switch v3, :pswitch_data_2

    .line 142
    .line 143
    .line 144
    iget-object v3, v1, Lw3/c;->b:Landroidx/fragment/app/Fragment;

    .line 145
    .line 146
    check-cast v3, Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 147
    .line 148
    iget-object v4, v3, Lcom/zalexdev/stryker/metasploit/Metasploit;->a:Landroidx/fragment/app/a0;

    .line 149
    .line 150
    if-eqz v4, :cond_8

    .line 151
    .line 152
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_8

    .line 157
    .line 158
    iget-object v4, v3, Lcom/zalexdev/stryker/metasploit/Metasploit;->a:Landroidx/fragment/app/a0;

    .line 159
    .line 160
    new-instance v5, Lv3/g;

    .line 161
    .line 162
    const/4 v6, 0x5

    .line 163
    invoke-direct {v5, v1, p1, p2, v6}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 167
    .line 168
    .line 169
    :cond_8
    if-ne p1, v2, :cond_7

    .line 170
    .line 171
    new-instance v1, Ljava/lang/Thread;

    .line 172
    .line 173
    new-instance v4, Lw3/j;

    .line 174
    .line 175
    const/4 v5, 0x4

    .line 176
    invoke-direct {v4, v3, v5}, Lw3/j;-><init>(Lcom/zalexdev/stryker/metasploit/Metasploit;I)V

    .line 177
    .line 178
    .line 179
    const-string v3, "msf-reload"

    .line 180
    .line 181
    invoke-direct {v1, v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_9
    return-void

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public final k(J)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lz3/g;->f:Ljava/io/BufferedReader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_3

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iput-boolean v2, p0, Lz3/g;->g:Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    return-object v3

    :catch_0
    iget-object v3, p0, Lz3/g;->d:Ljava/net/Socket;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lz3/g;->d:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    iput-boolean v2, p0, Lz3/g;->g:Z

    :cond_3
    return-object v1
.end method

.method public final declared-synchronized m()V
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz3/g;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lz3/g;->n()V

    sget-object v0, Lz3/f;->a:Lz3/f;

    const-string v1, "shut down"

    invoke-virtual {p0, v0, v1}, Lz3/g;->j(Lz3/f;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lz3/g;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz3/g;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lz3/g;->f:Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz3/g;->f:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    iget-object v0, p0, Lz3/g;->d:Ljava/net/Socket;

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lz3/g;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    iget-object v0, p0, Lz3/g;->c:Ljava/lang/Process;

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lz3/g;->c:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lz3/g;->c:Ljava/lang/Process;

    iput-object v0, p0, Lz3/g;->d:Ljava/net/Socket;

    iput-object v0, p0, Lz3/g;->e:Ljava/io/OutputStream;

    iput-object v0, p0, Lz3/g;->f:Ljava/io/BufferedReader;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz3/g;->g:Z

    return-void
.end method
