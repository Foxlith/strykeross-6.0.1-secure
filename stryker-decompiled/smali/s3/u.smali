.class public final Ls3/u;
.super Ls3/b;
.source "SourceFile"


# instance fields
.field public final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public final f:Ljava/util/concurrent/ConcurrentHashMap;

.field public final g:Ljava/util/Set;

.field public final h:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile j:Ljava/net/DatagramSocket;

.field public volatile k:Ljava/net/InetAddress;

.field public volatile l:Z

.field public volatile m:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ly0/p;Lu3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ls3/b;-><init>(Ly0/p;Lu3/g;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Ls3/u;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Ls3/u;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Ls3/u;->g:Ljava/util/Set;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 p2, 0x1000

    invoke-direct {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Ls3/u;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Ls3/u;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Ls3/b;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Ls3/u;->j:Ljava/net/DatagramSocket;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Ls3/u;->j:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, Ls3/u;->m:Ljava/lang/Thread;

    .line 21
    .line 22
    iput-object v1, p0, Ls3/u;->m:Ljava/lang/Thread;

    .line 23
    .line 24
    invoke-static {v0}, Ls3/b;->a(Ljava/lang/Thread;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Ls3/u;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Ls3/u;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 35
    .line 36
    .line 37
    :catch_1
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "rdns"

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls3/u;->g:Ljava/util/Set;

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lf/u0;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Ls3/b;->a:Ly0/p;

    if-eqz v1, :cond_3

    iget-object v2, v1, Ly0/p;->j:Ljava/lang/Object;

    check-cast v2, Lf/u0;

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1}, Ly0/p;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Ls3/u;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ls3/u;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls3/b;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Li5/a;->N0(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    move-wide v7, v4

    .line 23
    :goto_0
    const/4 v9, 0x3

    .line 24
    if-ge v6, v9, :cond_12

    .line 25
    .line 26
    iget-boolean v9, v0, Ls3/b;->c:Z

    .line 27
    .line 28
    if-nez v9, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v9, v0, Ls3/u;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    invoke-virtual {v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    if-eqz v9, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v9, v0, Ls3/u;->j:Ljava/net/DatagramSocket;

    .line 41
    .line 42
    iget-object v10, v0, Ls3/u;->k:Ljava/net/InetAddress;

    .line 43
    .line 44
    if-eqz v9, :cond_12

    .line 45
    .line 46
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->isClosed()Z

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    if-nez v11, :cond_12

    .line 51
    .line 52
    if-nez v10, :cond_2

    .line 53
    .line 54
    goto/16 :goto_7

    .line 55
    .line 56
    :cond_2
    cmp-long v11, v7, v4

    .line 57
    .line 58
    if-lez v11, :cond_4

    .line 59
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v11

    .line 64
    sub-long/2addr v11, v7

    .line 65
    const-wide/16 v7, 0x12c

    .line 66
    .line 67
    sub-long/2addr v7, v11

    .line 68
    cmp-long v11, v7, v4

    .line 69
    .line 70
    if-lez v11, :cond_3

    .line 71
    .line 72
    invoke-static {v7, v8}, Ls3/b;->d(J)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-boolean v7, v0, Ls3/b;->c:Z

    .line 76
    .line 77
    if-nez v7, :cond_4

    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    :try_start_0
    iget-object v7, v0, Ls3/u;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    .line 82
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    const v8, 0xffff

    .line 87
    .line 88
    .line 89
    and-int/2addr v7, v8

    .line 90
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    const/16 v11, 0x100

    .line 95
    .line 96
    invoke-static {v7, v11, v8}, Li5/a;->z0(IILjava/util/List;)[B

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    iget-object v8, v0, Ls3/u;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    .line 102
    invoke-virtual {v8, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    new-instance v8, Ljava/net/DatagramPacket;

    .line 106
    .line 107
    array-length v11, v7

    .line 108
    const/16 v12, 0x35

    .line 109
    .line 110
    invoke-direct {v8, v7, v11, v10, v12}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v8}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 120
    const/16 v9, 0x5dc

    .line 121
    .line 122
    new-array v10, v9, [B

    .line 123
    .line 124
    :cond_5
    :goto_1
    iget-boolean v11, v0, Ls3/b;->c:Z

    .line 125
    .line 126
    if-eqz v11, :cond_12

    .line 127
    .line 128
    iget-object v11, v0, Ls3/u;->j:Ljava/net/DatagramSocket;

    .line 129
    .line 130
    if-eqz v11, :cond_12

    .line 131
    .line 132
    invoke-virtual {v11}, Ljava/net/DatagramSocket;->isClosed()Z

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    if-eqz v12, :cond_6

    .line 137
    .line 138
    goto/16 :goto_7

    .line 139
    .line 140
    :cond_6
    new-instance v12, Ljava/net/DatagramPacket;

    .line 141
    .line 142
    invoke-direct {v12, v10, v9}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 143
    .line 144
    .line 145
    :try_start_1
    invoke-virtual {v11, v12}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 146
    .line 147
    .line 148
    :try_start_2
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getData()[B

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getLength()I

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    invoke-static {v12, v11}, Li5/a;->t0(I[B)Landroidx/emoji2/text/q;

    .line 157
    .line 158
    .line 159
    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    if-eqz v11, :cond_5

    .line 161
    .line 162
    iget-boolean v12, v11, Landroidx/emoji2/text/q;->c:Z

    .line 163
    .line 164
    if-nez v12, :cond_7

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_7
    iget-object v12, v11, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v12, Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v12

    .line 175
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    iget-object v14, v0, Ls3/u;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 180
    .line 181
    const/16 v15, 0xc

    .line 182
    .line 183
    if-eqz v13, :cond_9

    .line 184
    .line 185
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    check-cast v13, Ls3/c;

    .line 190
    .line 191
    iget-object v13, v13, Ls3/c;->a:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {v13}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 198
    .line 199
    invoke-virtual {v13, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v14, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Ljava/lang/String;

    .line 208
    .line 209
    if-eqz v4, :cond_8

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_8
    const-wide/16 v4, 0x0

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_9
    iget-object v4, v11, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v4, Ljava/util/List;

    .line 218
    .line 219
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    :cond_a
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-eqz v5, :cond_c

    .line 228
    .line 229
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    check-cast v5, Ls3/d;

    .line 234
    .line 235
    iget v12, v5, Ls3/d;->b:I

    .line 236
    .line 237
    if-eq v12, v15, :cond_b

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_b
    iget-object v5, v5, Ls3/d;->a:Ljava/lang/String;

    .line 241
    .line 242
    invoke-static {v5}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 247
    .line 248
    invoke-virtual {v5, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-virtual {v14, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    check-cast v5, Ljava/lang/String;

    .line 257
    .line 258
    if-eqz v5, :cond_a

    .line 259
    .line 260
    move-object v4, v5

    .line 261
    goto :goto_4

    .line 262
    :cond_c
    const/4 v4, 0x0

    .line 263
    :goto_4
    if-nez v4, :cond_e

    .line 264
    .line 265
    :catch_0
    :cond_d
    :goto_5
    const-wide/16 v4, 0x0

    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_e
    iget v5, v11, Landroidx/emoji2/text/q;->d:I

    .line 270
    .line 271
    if-eqz v5, :cond_f

    .line 272
    .line 273
    iget-object v5, v0, Ls3/u;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 274
    .line 275
    invoke-static {v4}, Li5/a;->N0(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    invoke-static {v11}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v11

    .line 283
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 284
    .line 285
    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    invoke-virtual {v5, v11}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    if-eqz v4, :cond_d

    .line 297
    .line 298
    goto :goto_7

    .line 299
    :cond_f
    iget-object v5, v11, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v5, Ljava/util/List;

    .line 302
    .line 303
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v11

    .line 311
    if-eqz v11, :cond_d

    .line 312
    .line 313
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v11

    .line 317
    check-cast v11, Ls3/d;

    .line 318
    .line 319
    iget v12, v11, Ls3/d;->b:I

    .line 320
    .line 321
    if-eq v12, v15, :cond_10

    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_10
    iget-object v5, v11, Ls3/d;->d:Ljava/lang/String;

    .line 325
    .line 326
    invoke-static {v5}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v11

    .line 334
    if-nez v11, :cond_d

    .line 335
    .line 336
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 337
    .line 338
    .line 339
    move-result v11

    .line 340
    if-eqz v11, :cond_11

    .line 341
    .line 342
    goto :goto_5

    .line 343
    :cond_11
    iget-object v11, v0, Ls3/u;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 344
    .line 345
    invoke-virtual {v11, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    iget-object v11, v0, Ls3/u;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 349
    .line 350
    invoke-static {v4}, Li5/a;->N0(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v12

    .line 354
    invoke-static {v12}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v12

    .line 358
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 359
    .line 360
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v12

    .line 364
    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    new-instance v11, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v12, " -> "

    .line 376
    .line 377
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-virtual {v0, v5}, Ls3/b;->c(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    if-eqz v4, :cond_d

    .line 395
    .line 396
    goto :goto_7

    .line 397
    :catch_1
    add-int/lit8 v6, v6, 0x1

    .line 398
    .line 399
    const-wide/16 v4, 0x0

    .line 400
    .line 401
    goto/16 :goto_0

    .line 402
    .line 403
    :catch_2
    :cond_12
    :goto_7
    return-void
.end method
