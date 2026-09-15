.class public final Ls3/j;
.super Ls3/b;
.source "SourceFile"


# static fields
.field public static final h:[B


# instance fields
.field public final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public volatile f:Ljava/net/DatagramSocket;

.field public volatile g:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, -0x7e

    .line 7
    .line 8
    aput-byte v2, v0, v1

    .line 9
    .line 10
    const/16 v2, 0x28

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    aput-byte v2, v0, v3

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    aput-byte v1, v0, v2

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    aput-byte v1, v0, v2

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    aput-byte v1, v0, v2

    .line 23
    .line 24
    const/4 v2, 0x5

    .line 25
    aput-byte v3, v0, v2

    .line 26
    .line 27
    const/4 v2, 0x6

    .line 28
    aput-byte v1, v0, v2

    .line 29
    .line 30
    const/4 v2, 0x7

    .line 31
    aput-byte v1, v0, v2

    .line 32
    .line 33
    const/16 v2, 0x8

    .line 34
    .line 35
    aput-byte v1, v0, v2

    .line 36
    .line 37
    const/16 v2, 0x9

    .line 38
    .line 39
    aput-byte v1, v0, v2

    .line 40
    .line 41
    const/16 v2, 0xa

    .line 42
    .line 43
    aput-byte v1, v0, v2

    .line 44
    .line 45
    const/16 v2, 0xb

    .line 46
    .line 47
    aput-byte v1, v0, v2

    .line 48
    .line 49
    const/16 v2, 0xc

    .line 50
    .line 51
    const/16 v4, 0x20

    .line 52
    .line 53
    aput-byte v4, v0, v2

    .line 54
    .line 55
    const/16 v2, 0xd

    .line 56
    .line 57
    const/16 v4, 0x43

    .line 58
    .line 59
    aput-byte v4, v0, v2

    .line 60
    .line 61
    const/16 v2, 0xe

    .line 62
    .line 63
    const/16 v4, 0x4b

    .line 64
    .line 65
    aput-byte v4, v0, v2

    .line 66
    .line 67
    const/16 v2, 0xf

    .line 68
    .line 69
    :goto_0
    const/16 v4, 0x2d

    .line 70
    .line 71
    if-ge v2, v4, :cond_0

    .line 72
    .line 73
    const/16 v4, 0x41

    .line 74
    .line 75
    aput-byte v4, v0, v2

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    aput-byte v1, v0, v4

    .line 81
    .line 82
    const/16 v2, 0x2e

    .line 83
    .line 84
    aput-byte v1, v0, v2

    .line 85
    .line 86
    const/16 v2, 0x2f

    .line 87
    .line 88
    const/16 v4, 0x21

    .line 89
    .line 90
    aput-byte v4, v0, v2

    .line 91
    .line 92
    const/16 v2, 0x30

    .line 93
    .line 94
    aput-byte v1, v0, v2

    .line 95
    .line 96
    const/16 v1, 0x31

    .line 97
    .line 98
    aput-byte v3, v0, v1

    .line 99
    .line 100
    sput-object v0, Ls3/j;->h:[B

    .line 101
    .line 102
    return-void
.end method

.method public constructor <init>(Ly0/p;Lu3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ls3/b;-><init>(Ly0/p;Lu3/g;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Ls3/j;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static j(I[B)I
    .locals 1

    .line 1
    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p0, p0, 0x1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ls3/b;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Ls3/j;->f:Ljava/net/DatagramSocket;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Ls3/j;->f:Ljava/net/DatagramSocket;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :catchall_0
    :goto_0
    iget-object v0, p0, Ls3/j;->g:Ljava/lang/Thread;

    .line 16
    .line 17
    iput-object v1, p0, Ls3/j;->g:Ljava/lang/Thread;

    .line 18
    .line 19
    invoke-static {v0}, Ls3/b;->a(Ljava/lang/Thread;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "netbios"

    return-object v0
.end method

.method public final h(Ljava/net/DatagramPacket;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x89

    .line 8
    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_26

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    goto/16 :goto_e

    .line 32
    .line 33
    :cond_2
    iget-object v2, v0, Ls3/b;->a:Ly0/p;

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ly0/p;->c(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    invoke-virtual {v0, v1}, Ls3/b;->b(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getData()[B

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getOffset()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getLength()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v2, :cond_5

    .line 60
    .line 61
    :cond_4
    :goto_0
    move-object/from16 v17, v1

    .line 62
    .line 63
    :goto_1
    const/4 v5, 0x0

    .line 64
    goto/16 :goto_d

    .line 65
    .line 66
    :cond_5
    if-ltz v3, :cond_4

    .line 67
    .line 68
    if-gez v4, :cond_6

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_6
    array-length v6, v2

    .line 72
    sub-int/2addr v6, v4

    .line 73
    if-le v3, v6, :cond_7

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_7
    const/16 v6, 0x39

    .line 77
    .line 78
    if-ge v4, v6, :cond_8

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_8
    add-int/lit8 v7, v3, 0x2

    .line 82
    .line 83
    invoke-static {v7, v2}, Ls3/j;->j(I[B)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    const v8, 0x8000

    .line 88
    .line 89
    .line 90
    and-int/2addr v7, v8

    .line 91
    if-nez v7, :cond_9

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_9
    add-int/lit8 v7, v3, 0x6

    .line 95
    .line 96
    invoke-static {v7, v2}, Ls3/j;->j(I[B)I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    const/4 v9, 0x1

    .line 101
    if-ge v7, v9, :cond_a

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_a
    add-int/lit8 v7, v3, 0x2e

    .line 105
    .line 106
    invoke-static {v7, v2}, Ls3/j;->j(I[B)I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    const/16 v10, 0x21

    .line 111
    .line 112
    if-eq v7, v10, :cond_b

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_b
    add-int/lit8 v7, v3, 0x30

    .line 116
    .line 117
    invoke-static {v7, v2}, Ls3/j;->j(I[B)I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eq v7, v9, :cond_c

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_c
    add-int/lit8 v7, v3, 0x36

    .line 125
    .line 126
    invoke-static {v7, v2}, Ls3/j;->j(I[B)I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-lez v7, :cond_d

    .line 131
    .line 132
    add-int/lit8 v7, v7, 0x38

    .line 133
    .line 134
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    :cond_d
    if-ge v4, v6, :cond_e

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_e
    add-int/lit8 v6, v3, 0x38

    .line 142
    .line 143
    aget-byte v6, v2, v6

    .line 144
    .line 145
    and-int/lit16 v6, v6, 0xff

    .line 146
    .line 147
    add-int/lit8 v7, v4, -0x39

    .line 148
    .line 149
    div-int/lit8 v7, v7, 0x12

    .line 150
    .line 151
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-ne v7, v6, :cond_f

    .line 156
    .line 157
    move v6, v9

    .line 158
    goto :goto_2

    .line 159
    :cond_f
    const/4 v6, 0x0

    .line 160
    :goto_2
    add-int/lit8 v11, v3, 0x39

    .line 161
    .line 162
    new-instance v12, Ls3/m;

    .line 163
    .line 164
    invoke-direct {v12}, Ls3/m;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v13, ""

    .line 168
    .line 169
    const/4 v14, 0x0

    .line 170
    :goto_3
    iget-object v15, v12, Ls3/m;->g:Ljava/util/ArrayList;

    .line 171
    .line 172
    const-string v5, "%02X"

    .line 173
    .line 174
    if-ge v14, v7, :cond_1d

    .line 175
    .line 176
    mul-int/lit8 v16, v14, 0x12

    .line 177
    .line 178
    add-int v10, v16, v11

    .line 179
    .line 180
    new-instance v9, Ljava/lang/String;

    .line 181
    .line 182
    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 183
    .line 184
    move-object/from16 v17, v1

    .line 185
    .line 186
    const/16 v1, 0xf

    .line 187
    .line 188
    invoke-direct {v9, v2, v10, v1, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 189
    .line 190
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    .line 199
    .line 200
    const/4 v8, 0x0

    .line 201
    :goto_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    move/from16 v18, v3

    .line 206
    .line 207
    const/16 v3, 0x20

    .line 208
    .line 209
    if-ge v8, v0, :cond_12

    .line 210
    .line 211
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-lt v0, v3, :cond_11

    .line 216
    .line 217
    const/16 v3, 0x7f

    .line 218
    .line 219
    if-ne v0, v3, :cond_10

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    :cond_11
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 226
    .line 227
    move/from16 v3, v18

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    :goto_6
    if-lez v0, :cond_13

    .line 235
    .line 236
    add-int/lit8 v8, v0, -0x1

    .line 237
    .line 238
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    if-ne v8, v3, :cond_13

    .line 243
    .line 244
    add-int/lit8 v0, v0, -0x1

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_13
    const/4 v8, 0x0

    .line 248
    :goto_7
    if-ge v8, v0, :cond_14

    .line 249
    .line 250
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 251
    .line 252
    .line 253
    move-result v9

    .line 254
    if-ne v9, v3, :cond_14

    .line 255
    .line 256
    add-int/lit8 v8, v8, 0x1

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_14
    invoke-virtual {v1, v8, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_15

    .line 268
    .line 269
    goto :goto_9

    .line 270
    :cond_15
    add-int/lit8 v1, v10, 0xf

    .line 271
    .line 272
    aget-byte v1, v2, v1

    .line 273
    .line 274
    and-int/lit16 v1, v1, 0xff

    .line 275
    .line 276
    add-int/lit8 v8, v10, 0x10

    .line 277
    .line 278
    aget-byte v8, v2, v8

    .line 279
    .line 280
    and-int/lit16 v8, v8, 0xff

    .line 281
    .line 282
    shl-int/lit8 v8, v8, 0x8

    .line 283
    .line 284
    add-int/lit8 v10, v10, 0x11

    .line 285
    .line 286
    aget-byte v9, v2, v10

    .line 287
    .line 288
    and-int/lit16 v9, v9, 0xff

    .line 289
    .line 290
    or-int/2addr v8, v9

    .line 291
    const v9, 0x8000

    .line 292
    .line 293
    .line 294
    and-int/2addr v8, v9

    .line 295
    if-eqz v8, :cond_16

    .line 296
    .line 297
    const/4 v8, 0x1

    .line 298
    goto :goto_8

    .line 299
    :cond_16
    const/4 v8, 0x0

    .line 300
    :goto_8
    const-string v10, "<"

    .line 301
    .line 302
    invoke-static {v0, v10}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    move-result-object v10

    .line 306
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 307
    .line 308
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object v19

    .line 312
    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-static {v9, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v3, ">"

    .line 324
    .line 325
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    if-nez v1, :cond_19

    .line 336
    .line 337
    if-eqz v8, :cond_17

    .line 338
    .line 339
    iget-object v1, v12, Ls3/m;->b:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_18

    .line 346
    .line 347
    iput-object v0, v12, Ls3/m;->b:Ljava/lang/String;

    .line 348
    .line 349
    goto :goto_9

    .line 350
    :cond_17
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-eqz v1, :cond_18

    .line 355
    .line 356
    iput-object v0, v12, Ls3/m;->a:Ljava/lang/String;

    .line 357
    .line 358
    move-object v13, v0

    .line 359
    :cond_18
    :goto_9
    const/4 v0, 0x1

    .line 360
    goto :goto_a

    .line 361
    :cond_19
    const/4 v3, 0x3

    .line 362
    if-ne v1, v3, :cond_1a

    .line 363
    .line 364
    if-nez v8, :cond_18

    .line 365
    .line 366
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-nez v1, :cond_18

    .line 371
    .line 372
    iget-object v1, v12, Ls3/m;->c:Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_18

    .line 379
    .line 380
    iput-object v0, v12, Ls3/m;->c:Ljava/lang/String;

    .line 381
    .line 382
    goto :goto_9

    .line 383
    :cond_1a
    const/16 v0, 0x20

    .line 384
    .line 385
    if-ne v1, v0, :cond_1b

    .line 386
    .line 387
    const/4 v0, 0x1

    .line 388
    iput-boolean v0, v12, Ls3/m;->e:Z

    .line 389
    .line 390
    goto :goto_a

    .line 391
    :cond_1b
    const/4 v0, 0x1

    .line 392
    const/16 v3, 0x1c

    .line 393
    .line 394
    if-ne v1, v3, :cond_1c

    .line 395
    .line 396
    iput-boolean v0, v12, Ls3/m;->f:Z

    .line 397
    .line 398
    :cond_1c
    :goto_a
    add-int/lit8 v14, v14, 0x1

    .line 399
    .line 400
    move v9, v0

    .line 401
    move-object/from16 v1, v17

    .line 402
    .line 403
    move/from16 v3, v18

    .line 404
    .line 405
    const v8, 0x8000

    .line 406
    .line 407
    .line 408
    move-object/from16 v0, p0

    .line 409
    .line 410
    goto/16 :goto_3

    .line 411
    .line 412
    :cond_1d
    move-object/from16 v17, v1

    .line 413
    .line 414
    move/from16 v18, v3

    .line 415
    .line 416
    mul-int/lit8 v7, v7, 0x12

    .line 417
    .line 418
    add-int/2addr v7, v11

    .line 419
    if-eqz v6, :cond_20

    .line 420
    .line 421
    add-int/lit8 v0, v7, 0x6

    .line 422
    .line 423
    add-int v3, v18, v4

    .line 424
    .line 425
    if-gt v0, v3, :cond_20

    .line 426
    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    const/16 v1, 0x11

    .line 430
    .line 431
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 432
    .line 433
    .line 434
    const/4 v10, 0x0

    .line 435
    :goto_b
    const/4 v1, 0x6

    .line 436
    if-ge v10, v1, :cond_1f

    .line 437
    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    if-lez v1, :cond_1e

    .line 443
    .line 444
    const/16 v1, 0x3a

    .line 445
    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    :cond_1e
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 450
    .line 451
    add-int v3, v7, v10

    .line 452
    .line 453
    aget-byte v3, v2, v3

    .line 454
    .line 455
    and-int/lit16 v3, v3, 0xff

    .line 456
    .line 457
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    invoke-static {v1, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    add-int/lit8 v10, v10, 0x1

    .line 473
    .line 474
    goto :goto_b

    .line 475
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-static {v0}, Ls3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    if-eqz v0, :cond_21

    .line 484
    .line 485
    iput-object v0, v12, Ls3/m;->d:Ljava/lang/String;

    .line 486
    .line 487
    goto :goto_c

    .line 488
    :cond_20
    const/4 v0, 0x0

    .line 489
    :cond_21
    :goto_c
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    if-eqz v1, :cond_22

    .line 494
    .line 495
    if-nez v0, :cond_22

    .line 496
    .line 497
    goto/16 :goto_1

    .line 498
    .line 499
    :cond_22
    move-object v5, v12

    .line 500
    :goto_d
    if-nez v5, :cond_23

    .line 501
    .line 502
    return-void

    .line 503
    :cond_23
    move-object/from16 v0, p0

    .line 504
    .line 505
    iget-object v1, v0, Ls3/j;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 506
    .line 507
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 508
    .line 509
    .line 510
    move-result v2

    .line 511
    const/16 v3, 0x2000

    .line 512
    .line 513
    if-lt v2, v3, :cond_24

    .line 514
    .line 515
    move-object/from16 v2, v17

    .line 516
    .line 517
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    if-nez v3, :cond_25

    .line 522
    .line 523
    return-void

    .line 524
    :cond_24
    move-object/from16 v2, v17

    .line 525
    .line 526
    :cond_25
    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    :cond_26
    :goto_e
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls3/j;->f:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Ls3/b;->c:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    new-instance v1, Ljava/net/DatagramPacket;

    sget-object v2, Ls3/j;->h:[B

    const/16 v3, 0x89

    const/16 v4, 0x32

    invoke-direct {v1, v2, v4, p1, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method
