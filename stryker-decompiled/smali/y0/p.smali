.class public final Ly0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/io/Serializable;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;

.field public final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ly0/k;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ly0/p;->a:Ljava/lang/String;

    iput-object p4, p0, Ly0/p;->c:Ljava/lang/Object;

    iput-object p5, p0, Ly0/p;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ly0/p;->e:Ljava/lang/Object;

    new-instance p2, Ly0/n;

    invoke-direct {p2, p0}, Ly0/n;-><init>(Ly0/p;)V

    iput-object p2, p0, Ly0/p;->h:Ljava/lang/Object;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p2, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Ly0/p;->i:Ljava/io/Serializable;

    new-instance p2, Ly0/o;

    invoke-direct {p2, p0}, Ly0/o;-><init>(Ly0/p;)V

    iput-object p2, p0, Ly0/p;->j:Ljava/lang/Object;

    new-instance v0, Ly0/l;

    invoke-direct {v0, p0, p5}, Ly0/l;-><init>(Ly0/p;I)V

    iput-object v0, p0, Ly0/p;->k:Ljava/lang/Object;

    new-instance v0, Ly0/l;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ly0/l;-><init>(Ly0/p;I)V

    iput-object v0, p0, Ly0/p;->l:Ljava/lang/Object;

    .line 1
    iget-object p4, p4, Ly0/k;->d:Ljava/util/LinkedHashMap;

    .line 2
    invoke-virtual {p4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p4

    new-array p5, p5, [Ljava/lang/String;

    invoke-interface {p4, p5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    const-string p5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p4, p5}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, [Ljava/lang/String;

    new-instance p5, Ly0/m;

    invoke-direct {p5, p0, p4}, Ly0/m;-><init>(Ly0/p;[Ljava/lang/String;)V

    iput-object p5, p0, Ly0/p;->f:Ljava/lang/Object;

    invoke-virtual {p1, p3, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILf/u0;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/p;->a:Ljava/lang/String;

    iput-object p2, p0, Ly0/p;->c:Ljava/lang/Object;

    iput-object p3, p0, Ly0/p;->d:Ljava/lang/Object;

    iput-object p4, p0, Ly0/p;->e:Ljava/lang/Object;

    iput-object p5, p0, Ly0/p;->f:Ljava/lang/Object;

    iput-object p6, p0, Ly0/p;->g:Ljava/lang/Object;

    iput-object p7, p0, Ly0/p;->h:Ljava/lang/Object;

    iput-object p8, p0, Ly0/p;->i:Ljava/io/Serializable;

    iput p9, p0, Ly0/p;->b:I

    iput-object p10, p0, Ly0/p;->j:Ljava/lang/Object;

    iput-object p11, p0, Ly0/p;->k:Ljava/lang/Object;

    iput-object p12, p0, Ly0/p;->l:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ly0/p;
    .locals 23

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    const-string v2, "wifi"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/net/wifi/WifiManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    const-wide/16 v2, 0x1

    .line 16
    .line 17
    const-string v5, ""

    .line 18
    .line 19
    const/4 v6, -0x1

    .line 20
    if-eqz v1, :cond_c

    .line 21
    .line 22
    :try_start_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    if-eqz v7, :cond_3

    .line 27
    .line 28
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    if-eqz v8, :cond_0

    .line 33
    .line 34
    invoke-static {v8}, Ly0/p;->d(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    goto :goto_2

    .line 39
    :catch_1
    move-object v8, v5

    .line 40
    move-object v9, v8

    .line 41
    :goto_1
    move-object v10, v9

    .line 42
    goto :goto_5

    .line 43
    :cond_0
    move-object v8, v5

    .line 44
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    if-eqz v9, :cond_1

    .line 49
    .line 50
    const-string v10, "\""

    .line 51
    .line 52
    invoke-virtual {v9, v10, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 56
    goto :goto_3

    .line 57
    :catch_2
    move-object v9, v5

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object v9, v5

    .line 60
    :goto_3
    :try_start_3
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    if-eqz v10, :cond_2

    .line 65
    .line 66
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 71
    .line 72
    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 76
    goto :goto_4

    .line 77
    :catch_3
    move-object v10, v5

    .line 78
    goto :goto_5

    .line 79
    :cond_2
    move-object v10, v5

    .line 80
    :goto_4
    :try_start_4
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    if-eqz v7, :cond_4

    .line 85
    .line 86
    const-string v11, "02:00:00"

    .line 87
    .line 88
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    if-nez v11, :cond_4

    .line 93
    .line 94
    invoke-static {v7}, Ls3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 98
    if-eqz v7, :cond_4

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_3
    move-object v7, v5

    .line 102
    move-object v8, v7

    .line 103
    move-object v9, v8

    .line 104
    move-object v10, v9

    .line 105
    goto :goto_6

    .line 106
    :catch_4
    :cond_4
    :goto_5
    move-object v7, v5

    .line 107
    :goto_6
    :try_start_5
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_a

    .line 112
    .line 113
    iget v11, v1, Landroid/net/DhcpInfo;->gateway:I

    .line 114
    .line 115
    if-eqz v11, :cond_5

    .line 116
    .line 117
    invoke-static {v11}, Ly0/p;->d(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 121
    goto :goto_7

    .line 122
    :catch_5
    move-object v11, v5

    .line 123
    move-object v12, v11

    .line 124
    goto :goto_b

    .line 125
    :cond_5
    move-object v11, v5

    .line 126
    :goto_7
    :try_start_6
    iget v12, v1, Landroid/net/DhcpInfo;->dns1:I

    .line 127
    .line 128
    if-eqz v12, :cond_6

    .line 129
    .line 130
    invoke-static {v12}, Ly0/p;->d(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 134
    goto :goto_8

    .line 135
    :catch_6
    move-object v12, v5

    .line 136
    goto :goto_b

    .line 137
    :cond_6
    move-object v12, v5

    .line 138
    :goto_8
    :try_start_7
    iget v13, v1, Landroid/net/DhcpInfo;->dns2:I

    .line 139
    .line 140
    if-eqz v13, :cond_7

    .line 141
    .line 142
    invoke-static {v13}, Ly0/p;->d(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 146
    goto :goto_9

    .line 147
    :catch_7
    move-object v13, v5

    .line 148
    goto :goto_c

    .line 149
    :cond_7
    move-object v13, v5

    .line 150
    :goto_9
    :try_start_8
    iget v14, v1, Landroid/net/DhcpInfo;->netmask:I

    .line 151
    .line 152
    if-eqz v14, :cond_9

    .line 153
    .line 154
    invoke-static {v14}, Ly0/p;->d(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v14
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 158
    :try_start_9
    invoke-static {v14}, Lf/u0;->g(Ljava/lang/String;)J

    .line 159
    .line 160
    .line 161
    move-result-wide v14
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 162
    const/16 v6, 0x1f

    .line 163
    .line 164
    const/16 v16, 0x0

    .line 165
    .line 166
    :goto_a
    if-ltz v6, :cond_8

    .line 167
    .line 168
    shr-long v17, v14, v6

    .line 169
    .line 170
    and-long v17, v17, v2

    .line 171
    .line 172
    cmp-long v17, v17, v2

    .line 173
    .line 174
    if-nez v17, :cond_8

    .line 175
    .line 176
    add-int/lit8 v16, v16, 0x1

    .line 177
    .line 178
    add-int/lit8 v6, v6, -0x1

    .line 179
    .line 180
    goto :goto_a

    .line 181
    :cond_8
    move/from16 v6, v16

    .line 182
    .line 183
    :catch_8
    :cond_9
    :try_start_a
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v14

    .line 187
    if-eqz v14, :cond_b

    .line 188
    .line 189
    iget v1, v1, Landroid/net/DhcpInfo;->ipAddress:I

    .line 190
    .line 191
    if-eqz v1, :cond_b

    .line 192
    .line 193
    invoke-static {v1}, Ly0/p;->d(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 197
    goto :goto_c

    .line 198
    :cond_a
    move-object v11, v5

    .line 199
    move-object v12, v11

    .line 200
    :goto_b
    move-object v13, v12

    .line 201
    :catch_9
    :cond_b
    :goto_c
    move-object v15, v9

    .line 202
    move-object/from16 v16, v10

    .line 203
    .line 204
    goto :goto_d

    .line 205
    :cond_c
    move-object v7, v5

    .line 206
    move-object v8, v7

    .line 207
    move-object v11, v8

    .line 208
    move-object v12, v11

    .line 209
    move-object v13, v12

    .line 210
    move-object v15, v13

    .line 211
    move-object/from16 v16, v15

    .line 212
    .line 213
    :goto_d
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    const-string v9, "connectivity"

    .line 218
    .line 219
    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 224
    .line 225
    if-eqz v1, :cond_15

    .line 226
    .line 227
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    if-nez v9, :cond_d

    .line 232
    .line 233
    const/4 v1, 0x0

    .line 234
    goto :goto_e

    .line 235
    :cond_d
    invoke-virtual {v1, v9}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    :goto_e
    if-eqz v1, :cond_15

    .line 240
    .line 241
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    :cond_e
    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    if-eqz v10, :cond_11

    .line 254
    .line 255
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    check-cast v10, Ljava/net/InetAddress;

    .line 260
    .line 261
    instance-of v14, v10, Ljava/net/Inet4Address;

    .line 262
    .line 263
    if-nez v14, :cond_f

    .line 264
    .line 265
    goto :goto_f

    .line 266
    :cond_f
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result v14

    .line 270
    if-eqz v14, :cond_10

    .line 271
    .line 272
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v10

    .line 276
    move-object v12, v10

    .line 277
    goto :goto_f

    .line 278
    :cond_10
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 279
    .line 280
    .line 281
    move-result v14

    .line 282
    if-eqz v14, :cond_e

    .line 283
    .line 284
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v14

    .line 288
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v14

    .line 292
    if-nez v14, :cond_e

    .line 293
    .line 294
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v10

    .line 298
    move-object v13, v10

    .line 299
    goto :goto_f

    .line 300
    :cond_11
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    :cond_12
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v9

    .line 312
    if-eqz v9, :cond_15

    .line 313
    .line 314
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    check-cast v9, Landroid/net/LinkAddress;

    .line 319
    .line 320
    invoke-virtual {v9}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 321
    .line 322
    .line 323
    move-result-object v10

    .line 324
    instance-of v10, v10, Ljava/net/Inet4Address;

    .line 325
    .line 326
    if-nez v10, :cond_13

    .line 327
    .line 328
    goto :goto_10

    .line 329
    :cond_13
    invoke-virtual {v9}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 330
    .line 331
    .line 332
    move-result-object v10

    .line 333
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v10

    .line 337
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 338
    .line 339
    .line 340
    move-result v14

    .line 341
    if-eqz v14, :cond_14

    .line 342
    .line 343
    move-object v8, v10

    .line 344
    :cond_14
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v10

    .line 348
    if-eqz v10, :cond_12

    .line 349
    .line 350
    invoke-virtual {v9}, Landroid/net/LinkAddress;->getPrefixLength()I

    .line 351
    .line 352
    .line 353
    move-result v10

    .line 354
    if-lez v10, :cond_12

    .line 355
    .line 356
    invoke-virtual {v9}, Landroid/net/LinkAddress;->getPrefixLength()I

    .line 357
    .line 358
    .line 359
    move-result v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 360
    goto :goto_10

    .line 361
    :catch_a
    :cond_15
    move-object v14, v13

    .line 362
    :try_start_c
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 363
    .line 364
    .line 365
    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    .line 366
    const/4 v9, 0x0

    .line 367
    const/4 v10, 0x0

    .line 368
    :cond_16
    :goto_11
    if-eqz v1, :cond_1d

    .line 369
    .line 370
    :try_start_d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 371
    .line 372
    .line 373
    move-result v13

    .line 374
    if-eqz v13, :cond_1d

    .line 375
    .line 376
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v13

    .line 380
    check-cast v13, Ljava/net/NetworkInterface;

    .line 381
    .line 382
    invoke-virtual {v13}, Ljava/net/NetworkInterface;->isUp()Z

    .line 383
    .line 384
    .line 385
    move-result v17

    .line 386
    if-eqz v17, :cond_1c

    .line 387
    .line 388
    invoke-virtual {v13}, Ljava/net/NetworkInterface;->isLoopback()Z

    .line 389
    .line 390
    .line 391
    move-result v17

    .line 392
    if-eqz v17, :cond_17

    .line 393
    .line 394
    goto :goto_15

    .line 395
    :cond_17
    invoke-virtual {v13}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    .line 396
    .line 397
    .line 398
    move-result-object v17

    .line 399
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 400
    .line 401
    .line 402
    move-result-object v17

    .line 403
    :goto_12
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 404
    .line 405
    .line 406
    move-result v18

    .line 407
    if-eqz v18, :cond_16

    .line 408
    .line 409
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v18

    .line 413
    check-cast v18, Ljava/net/InterfaceAddress;

    .line 414
    .line 415
    invoke-virtual/range {v18 .. v18}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    instance-of v2, v0, Ljava/net/Inet4Address;

    .line 420
    .line 421
    if-nez v2, :cond_19

    .line 422
    .line 423
    :cond_18
    :goto_13
    const-wide/16 v2, 0x1

    .line 424
    .line 425
    goto :goto_12

    .line 426
    :cond_19
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 431
    .line 432
    .line 433
    move-result v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 434
    if-eqz v3, :cond_1a

    .line 435
    .line 436
    :try_start_e
    invoke-virtual/range {v18 .. v18}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    .line 437
    .line 438
    .line 439
    move-result v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 440
    move-object v10, v0

    .line 441
    move-object v8, v2

    .line 442
    :goto_14
    move-object v9, v13

    .line 443
    goto :goto_13

    .line 444
    :catch_b
    move-object v8, v2

    .line 445
    goto :goto_16

    .line 446
    :cond_1a
    :try_start_f
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    if-eqz v2, :cond_18

    .line 451
    .line 452
    if-gtz v6, :cond_1b

    .line 453
    .line 454
    invoke-virtual/range {v18 .. v18}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    .line 455
    .line 456
    .line 457
    move-result v6
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 458
    :cond_1b
    move-object v10, v0

    .line 459
    goto :goto_14

    .line 460
    :cond_1c
    :goto_15
    const-wide/16 v2, 0x1

    .line 461
    .line 462
    goto :goto_11

    .line 463
    :catch_c
    :cond_1d
    :goto_16
    move-object v1, v9

    .line 464
    move-object v0, v10

    .line 465
    move-object v10, v8

    .line 466
    goto :goto_17

    .line 467
    :catch_d
    const/4 v9, 0x0

    .line 468
    const/4 v10, 0x0

    .line 469
    goto :goto_16

    .line 470
    :goto_17
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    const/4 v3, 0x1

    .line 475
    if-eqz v2, :cond_20

    .line 476
    .line 477
    if-eqz v1, :cond_20

    .line 478
    .line 479
    :try_start_10
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    if-eqz v2, :cond_20

    .line 484
    .line 485
    array-length v8, v2

    .line 486
    const/4 v9, 0x6

    .line 487
    if-ne v8, v9, :cond_20

    .line 488
    .line 489
    new-instance v8, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .line 493
    .line 494
    array-length v9, v2

    .line 495
    const/4 v13, 0x0

    .line 496
    :goto_18
    if-ge v13, v9, :cond_1f

    .line 497
    .line 498
    aget-byte v17, v2, v13

    .line 499
    .line 500
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    .line 501
    .line 502
    .line 503
    move-result v18

    .line 504
    if-lez v18, :cond_1e

    .line 505
    .line 506
    const/16 v4, 0x3a

    .line 507
    .line 508
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    :cond_1e
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 512
    .line 513
    move-object/from16 p0, v2

    .line 514
    .line 515
    const-string v2, "%02X"
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    .line 516
    .line 517
    move-object/from16 v22, v5

    .line 518
    .line 519
    :try_start_11
    new-array v5, v3, [Ljava/lang/Object;

    .line 520
    .line 521
    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 522
    .line 523
    .line 524
    move-result-object v17

    .line 525
    const/16 v18, 0x0

    .line 526
    .line 527
    aput-object v17, v5, v18

    .line 528
    .line 529
    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    add-int/lit8 v13, v13, 0x1

    .line 537
    .line 538
    move-object/from16 v2, p0

    .line 539
    .line 540
    move-object/from16 v5, v22

    .line 541
    .line 542
    goto :goto_18

    .line 543
    :cond_1f
    move-object/from16 v22, v5

    .line 544
    .line 545
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v7
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    .line 549
    goto :goto_19

    .line 550
    :catch_e
    :cond_20
    move-object/from16 v22, v5

    .line 551
    .line 552
    :catch_f
    :goto_19
    if-nez v0, :cond_21

    .line 553
    .line 554
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    if-nez v2, :cond_21

    .line 559
    .line 560
    :try_start_12
    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 561
    .line 562
    .line 563
    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    .line 564
    :catch_10
    :cond_21
    const/16 v2, 0x18

    .line 565
    .line 566
    if-lez v6, :cond_22

    .line 567
    .line 568
    const/16 v4, 0x20

    .line 569
    .line 570
    if-le v6, v4, :cond_23

    .line 571
    .line 572
    :cond_22
    move v6, v2

    .line 573
    :cond_23
    if-eqz p1, :cond_27

    .line 574
    .line 575
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v4

    .line 579
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    if-nez v4, :cond_27

    .line 584
    .line 585
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 590
    .line 591
    .line 592
    move-result v5

    .line 593
    if-eqz v5, :cond_24

    .line 594
    .line 595
    goto :goto_1c

    .line 596
    :cond_24
    const/16 v5, 0x2f

    .line 597
    .line 598
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 599
    .line 600
    .line 601
    move-result v5

    .line 602
    if-gez v5, :cond_25

    .line 603
    .line 604
    invoke-static {v2, v4}, Lf/u0;->d(ILjava/lang/String;)Lf/u0;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    :goto_1a
    move-object/from16 v19, v3

    .line 609
    .line 610
    goto :goto_1d

    .line 611
    :cond_25
    const/4 v8, 0x0

    .line 612
    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v8

    .line 616
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v8

    .line 620
    add-int/2addr v5, v3

    .line 621
    :try_start_13
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v3

    .line 625
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 630
    .line 631
    .line 632
    move-result v3
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_11

    .line 633
    goto :goto_1b

    .line 634
    :catch_11
    move v3, v2

    .line 635
    :goto_1b
    invoke-static {v8}, Lf/u0;->c(Ljava/lang/String;)Z

    .line 636
    .line 637
    .line 638
    move-result v4

    .line 639
    if-nez v4, :cond_26

    .line 640
    .line 641
    goto :goto_1c

    .line 642
    :cond_26
    invoke-static {v3, v8}, Lf/u0;->d(ILjava/lang/String;)Lf/u0;

    .line 643
    .line 644
    .line 645
    move-result-object v3

    .line 646
    goto :goto_1a

    .line 647
    :cond_27
    :goto_1c
    const/16 v19, 0x0

    .line 648
    .line 649
    :goto_1d
    if-nez v19, :cond_28

    .line 650
    .line 651
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 652
    .line 653
    .line 654
    move-result v3

    .line 655
    if-nez v3, :cond_28

    .line 656
    .line 657
    invoke-static {v6, v10}, Lf/u0;->d(ILjava/lang/String;)Lf/u0;

    .line 658
    .line 659
    .line 660
    move-result-object v19

    .line 661
    :cond_28
    if-nez v19, :cond_29

    .line 662
    .line 663
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 664
    .line 665
    .line 666
    move-result v3

    .line 667
    if-nez v3, :cond_29

    .line 668
    .line 669
    invoke-static {v2, v11}, Lf/u0;->d(ILjava/lang/String;)Lf/u0;

    .line 670
    .line 671
    .line 672
    move-result-object v19

    .line 673
    :cond_29
    move-object/from16 v3, v19

    .line 674
    .line 675
    if-eqz v3, :cond_2b

    .line 676
    .line 677
    iget v4, v3, Lf/u0;->c:I

    .line 678
    .line 679
    const/16 v5, 0x16

    .line 680
    .line 681
    if-ge v4, v5, :cond_2b

    .line 682
    .line 683
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 684
    .line 685
    .line 686
    move-result v4

    .line 687
    if-nez v4, :cond_2a

    .line 688
    .line 689
    move-object v3, v10

    .line 690
    goto :goto_1e

    .line 691
    :cond_2a
    iget-wide v3, v3, Lf/u0;->a:J

    .line 692
    .line 693
    const-wide/16 v5, 0x1

    .line 694
    .line 695
    add-long/2addr v3, v5

    .line 696
    invoke-static {v3, v4}, Lf/u0;->f(J)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v3

    .line 700
    :goto_1e
    invoke-static {v2, v3}, Lf/u0;->d(ILjava/lang/String;)Lf/u0;

    .line 701
    .line 702
    .line 703
    move-result-object v3

    .line 704
    :cond_2b
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 705
    .line 706
    .line 707
    move-result v4

    .line 708
    if-eqz v4, :cond_2c

    .line 709
    .line 710
    if-eqz v3, :cond_2c

    .line 711
    .line 712
    iget-wide v4, v3, Lf/u0;->a:J

    .line 713
    .line 714
    const-wide/16 v8, 0x1

    .line 715
    .line 716
    add-long/2addr v4, v8

    .line 717
    invoke-static {v4, v5}, Lf/u0;->f(J)Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v4

    .line 721
    goto :goto_1f

    .line 722
    :cond_2c
    move-object v4, v11

    .line 723
    :goto_1f
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 724
    .line 725
    .line 726
    move-result v5

    .line 727
    if-eqz v5, :cond_2d

    .line 728
    .line 729
    move-object v13, v4

    .line 730
    goto :goto_20

    .line 731
    :cond_2d
    move-object v13, v12

    .line 732
    :goto_20
    if-nez v1, :cond_2e

    .line 733
    .line 734
    move-object/from16 v17, v22

    .line 735
    .line 736
    goto :goto_21

    .line 737
    :cond_2e
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v5

    .line 741
    move-object/from16 v17, v5

    .line 742
    .line 743
    :goto_21
    new-instance v5, Ly0/p;

    .line 744
    .line 745
    if-nez v3, :cond_2f

    .line 746
    .line 747
    :goto_22
    move/from16 v18, v2

    .line 748
    .line 749
    goto :goto_23

    .line 750
    :cond_2f
    iget v2, v3, Lf/u0;->c:I

    .line 751
    .line 752
    goto :goto_22

    .line 753
    :goto_23
    move-object v9, v5

    .line 754
    move-object v11, v7

    .line 755
    move-object v12, v4

    .line 756
    move-object/from16 v19, v3

    .line 757
    .line 758
    move-object/from16 v20, v1

    .line 759
    .line 760
    move-object/from16 v21, v0

    .line 761
    .line 762
    invoke-direct/range {v9 .. v21}, Ly0/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILf/u0;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V

    .line 763
    .line 764
    .line 765
    return-object v5
.end method

.method public static d(I)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d.%d.%d.%d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ly0/p;->g:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Ly0/p;->g:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const-string v1, "network"

    .line 25
    .line 26
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Ly0/p;->j:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lf/u0;

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    const-string v1, "?"

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-wide v3, v1, Lf/u0;->a:J

    .line 49
    .line 50
    invoke-static {v3, v4}, Lf/u0;->f(J)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, "/"

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v1, v1, Lf/u0;->c:I

    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, " ip="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Ly0/p;->a:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, " gw="

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Ly0/p;->d:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, " dns="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Ly0/p;->e:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v1, Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ly0/p;->j:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lf/u0;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    check-cast v0, Lf/u0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lf/u0;->c(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p1}, Lf/u0;->g(Ljava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    iget-wide v3, v0, Lf/u0;->a:J

    .line 25
    .line 26
    cmp-long p1, v1, v3

    .line 27
    .line 28
    if-ltz p1, :cond_1

    .line 29
    .line 30
    iget-wide v3, v0, Lf/u0;->b:J

    .line 31
    .line 32
    cmp-long p1, v1, v3

    .line 33
    .line 34
    if-gtz p1, :cond_1

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 39
    :goto_1
    return p1
.end method
