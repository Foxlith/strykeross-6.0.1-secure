.class public abstract Lw2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static volatile b:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lw2/a;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 8

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v2, 0x1

    .line 13
    int-to-long v2, v2

    .line 14
    const/4 v4, 0x3

    .line 15
    shl-long/2addr v2, v4

    .line 16
    const/4 v5, 0x2

    .line 17
    int-to-long v6, v5

    .line 18
    or-long/2addr v2, v6

    .line 19
    invoke-static {v0, v2, v3}, Lw2/a;->e(Ljava/io/ByteArrayOutputStream;J)V

    .line 20
    .line 21
    .line 22
    array-length v2, p0

    .line 23
    int-to-long v2, v2

    .line 24
    invoke-static {v0, v2, v3}, Lw2/a;->e(Ljava/io/ByteArrayOutputStream;J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 31
    .line 32
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    shl-long v2, v6, v4

    .line 40
    .line 41
    or-long/2addr v2, v6

    .line 42
    invoke-static {p0, v2, v3}, Lw2/a;->e(Ljava/io/ByteArrayOutputStream;J)V

    .line 43
    .line 44
    .line 45
    array-length v2, v0

    .line 46
    int-to-long v2, v2

    .line 47
    invoke-static {p0, v2, v3}, Lw2/a;->e(Ljava/io/ByteArrayOutputStream;J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 51
    .line 52
    .line 53
    int-to-long v2, v4

    .line 54
    shl-long/2addr v2, v4

    .line 55
    const/4 v0, 0x0

    .line 56
    int-to-long v6, v0

    .line 57
    or-long/2addr v2, v6

    .line 58
    invoke-static {p0, v2, v3}, Lw2/a;->e(Ljava/io/ByteArrayOutputStream;J)V

    .line 59
    .line 60
    .line 61
    const-wide/16 v2, 0x0

    .line 62
    .line 63
    invoke-static {p0, v2, v3}, Lw2/a;->e(Ljava/io/ByteArrayOutputStream;J)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x4

    .line 67
    int-to-long v2, v0

    .line 68
    shl-long/2addr v2, v4

    .line 69
    or-long/2addr v2, v6

    .line 70
    invoke-static {p0, v2, v3}, Lw2/a;->e(Ljava/io/ByteArrayOutputStream;J)V

    .line 71
    .line 72
    .line 73
    const-wide/16 v2, 0x64

    .line 74
    .line 75
    invoke-static {p0, v2, v3}, Lw2/a;->e(Ljava/io/ByteArrayOutputStream;J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    .line 86
    .line 87
    new-array v0, v0, [B

    .line 88
    .line 89
    fill-array-data v0, :array_0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 93
    .line 94
    .line 95
    const-string v0, "en_US"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 102
    .line 103
    .line 104
    new-array v0, v5, [B

    .line 105
    .line 106
    fill-array-data v0, :array_1

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 110
    .line 111
    .line 112
    const-string v0, "com.apple.locationd"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 119
    .line 120
    .line 121
    new-array v0, v5, [B

    .line 122
    .line 123
    fill-array-data v0, :array_2

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 127
    .line 128
    .line 129
    const-string v0, "8.4.1.12H321"

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 136
    .line 137
    .line 138
    const/4 v0, 0x6

    .line 139
    new-array v0, v0, [B

    .line 140
    .line 141
    fill-array-data v0, :array_3

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 145
    .line 146
    .line 147
    array-length v0, p0

    .line 148
    shr-int/lit8 v0, v0, 0x8

    .line 149
    .line 150
    and-int/lit16 v0, v0, 0xff

    .line 151
    .line 152
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 153
    .line 154
    .line 155
    array-length v0, p0

    .line 156
    and-int/lit16 v0, v0, 0xff

    .line 157
    .line 158
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    return-object p0

    .line 169
    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x5t
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_1
    .array-data 1
        0x0t
        0x13t
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    nop

    .line 181
    :array_2
    .array-data 1
        0x0t
        0xct
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    nop

    .line 187
    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public static b()Lokhttp3/OkHttpClient;
    .locals 5

    .line 1
    sget-object v0, Lw2/a;->b:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    const-class v1, Lw2/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lw2/a;->b:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v3, 0x14

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lw2/a;->b:Lokhttp3/OkHttpClient;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static c([BLjava/lang/String;)[D
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lw2/a;->a:[B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    add-int/lit8 v4, v3, 0x6

    .line 8
    .line 9
    array-length v5, v0

    .line 10
    if-gt v4, v5, :cond_1

    .line 11
    .line 12
    move v4, v2

    .line 13
    :goto_1
    const/4 v5, 0x6

    .line 14
    if-ge v4, v5, :cond_2

    .line 15
    .line 16
    add-int v5, v3, v4

    .line 17
    .line 18
    aget-byte v5, v0, v5

    .line 19
    .line 20
    aget-byte v6, v1, v4

    .line 21
    .line 22
    if-eq v5, v6, :cond_0

    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v3, -0x1

    .line 31
    :cond_2
    const/4 v1, 0x0

    .line 32
    if-gez v3, :cond_3

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_3
    add-int/lit8 v3, v3, 0x8

    .line 36
    .line 37
    filled-new-array {v3}, [I

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    move-object v4, v1

    .line 42
    :goto_2
    aget v5, v3, v2

    .line 43
    .line 44
    array-length v6, v0

    .line 45
    if-ge v5, v6, :cond_1c

    .line 46
    .line 47
    invoke-static {v0, v3}, Lw2/a;->d([B[I)J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    const-wide/16 v7, 0x0

    .line 52
    .line 53
    cmp-long v9, v5, v7

    .line 54
    .line 55
    if-gez v9, :cond_4

    .line 56
    .line 57
    goto/16 :goto_e

    .line 58
    .line 59
    :cond_4
    const/4 v9, 0x3

    .line 60
    ushr-long v10, v5, v9

    .line 61
    .line 62
    long-to-int v10, v10

    .line 63
    const-wide/16 v11, 0x7

    .line 64
    .line 65
    and-long/2addr v5, v11

    .line 66
    long-to-int v5, v5

    .line 67
    const/4 v6, 0x2

    .line 68
    if-ne v5, v6, :cond_1a

    .line 69
    .line 70
    invoke-static {v0, v3}, Lw2/a;->d([B[I)J

    .line 71
    .line 72
    .line 73
    move-result-wide v13

    .line 74
    cmp-long v5, v13, v7

    .line 75
    .line 76
    if-ltz v5, :cond_1c

    .line 77
    .line 78
    aget v5, v3, v2

    .line 79
    .line 80
    int-to-long v11, v5

    .line 81
    add-long/2addr v11, v13

    .line 82
    array-length v1, v0

    .line 83
    int-to-long v7, v1

    .line 84
    cmp-long v1, v11, v7

    .line 85
    .line 86
    if-lez v1, :cond_5

    .line 87
    .line 88
    goto/16 :goto_e

    .line 89
    .line 90
    :cond_5
    long-to-int v1, v13

    .line 91
    add-int/2addr v1, v5

    .line 92
    aput v1, v3, v2

    .line 93
    .line 94
    if-eq v10, v6, :cond_6

    .line 95
    .line 96
    move v7, v2

    .line 97
    move-object/from16 v19, v3

    .line 98
    .line 99
    move-object/from16 v2, p1

    .line 100
    .line 101
    goto/16 :goto_b

    .line 102
    .line 103
    :cond_6
    filled-new-array {v5}, [I

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const/4 v7, 0x0

    .line 108
    const/4 v8, 0x0

    .line 109
    const/4 v10, 0x0

    .line 110
    :goto_3
    aget v11, v5, v2

    .line 111
    .line 112
    const/4 v12, 0x1

    .line 113
    if-ge v11, v1, :cond_7

    .line 114
    .line 115
    invoke-static {v0, v5}, Lw2/a;->d([B[I)J

    .line 116
    .line 117
    .line 118
    move-result-wide v13

    .line 119
    const-wide/16 v17, 0x0

    .line 120
    .line 121
    cmp-long v11, v13, v17

    .line 122
    .line 123
    if-gez v11, :cond_9

    .line 124
    .line 125
    :cond_7
    move-object/from16 v19, v3

    .line 126
    .line 127
    :cond_8
    move-object/from16 v21, v7

    .line 128
    .line 129
    move-object/from16 v20, v10

    .line 130
    .line 131
    goto/16 :goto_9

    .line 132
    .line 133
    :cond_9
    move-object/from16 v19, v3

    .line 134
    .line 135
    ushr-long v2, v13, v9

    .line 136
    .line 137
    long-to-int v2, v2

    .line 138
    const-wide/16 v15, 0x7

    .line 139
    .line 140
    and-long/2addr v13, v15

    .line 141
    long-to-int v3, v13

    .line 142
    if-ne v3, v6, :cond_12

    .line 143
    .line 144
    invoke-static {v0, v5}, Lw2/a;->d([B[I)J

    .line 145
    .line 146
    .line 147
    move-result-wide v13

    .line 148
    cmp-long v3, v13, v17

    .line 149
    .line 150
    if-ltz v3, :cond_8

    .line 151
    .line 152
    const/4 v3, 0x0

    .line 153
    aget v11, v5, v3

    .line 154
    .line 155
    move-object/from16 v20, v10

    .line 156
    .line 157
    int-to-long v9, v11

    .line 158
    add-long/2addr v9, v13

    .line 159
    move-object/from16 v21, v7

    .line 160
    .line 161
    int-to-long v6, v1

    .line 162
    cmp-long v6, v9, v6

    .line 163
    .line 164
    if-lez v6, :cond_a

    .line 165
    .line 166
    goto/16 :goto_9

    .line 167
    .line 168
    :cond_a
    long-to-int v6, v13

    .line 169
    add-int v7, v11, v6

    .line 170
    .line 171
    aput v7, v5, v3

    .line 172
    .line 173
    if-ne v2, v12, :cond_b

    .line 174
    .line 175
    new-instance v10, Ljava/lang/String;

    .line 176
    .line 177
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 178
    .line 179
    invoke-direct {v10, v0, v11, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 180
    .line 181
    .line 182
    move-object/from16 v7, v21

    .line 183
    .line 184
    const/4 v6, 0x3

    .line 185
    const-wide/16 v13, 0x7

    .line 186
    .line 187
    goto :goto_8

    .line 188
    :cond_b
    const/4 v6, 0x2

    .line 189
    if-ne v2, v6, :cond_11

    .line 190
    .line 191
    filled-new-array {v11}, [I

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    :goto_4
    aget v6, v2, v3

    .line 196
    .line 197
    if-ge v6, v7, :cond_11

    .line 198
    .line 199
    invoke-static {v0, v2}, Lw2/a;->d([B[I)J

    .line 200
    .line 201
    .line 202
    move-result-wide v9

    .line 203
    const-wide/16 v13, 0x0

    .line 204
    .line 205
    cmp-long v3, v9, v13

    .line 206
    .line 207
    if-gez v3, :cond_c

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_c
    const/4 v6, 0x3

    .line 211
    ushr-long v13, v9, v6

    .line 212
    .line 213
    long-to-int v3, v13

    .line 214
    const-wide/16 v13, 0x7

    .line 215
    .line 216
    and-long/2addr v9, v13

    .line 217
    long-to-int v9, v9

    .line 218
    if-eqz v9, :cond_d

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_d
    invoke-static {v0, v2}, Lw2/a;->d([B[I)J

    .line 222
    .line 223
    .line 224
    move-result-wide v9

    .line 225
    const-wide/high16 v15, -0x8000000000000000L

    .line 226
    .line 227
    cmp-long v15, v9, v15

    .line 228
    .line 229
    if-nez v15, :cond_e

    .line 230
    .line 231
    goto :goto_7

    .line 232
    :cond_e
    if-ne v3, v12, :cond_f

    .line 233
    .line 234
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    move-object/from16 v21, v3

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_f
    const/4 v15, 0x2

    .line 242
    if-ne v3, v15, :cond_10

    .line 243
    .line 244
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    move-object v8, v3

    .line 249
    :cond_10
    :goto_5
    const/4 v3, 0x0

    .line 250
    goto :goto_4

    .line 251
    :cond_11
    :goto_6
    const/4 v6, 0x3

    .line 252
    const-wide/16 v13, 0x7

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_12
    move-object/from16 v21, v7

    .line 256
    .line 257
    move v6, v9

    .line 258
    move-object/from16 v20, v10

    .line 259
    .line 260
    const-wide/16 v13, 0x7

    .line 261
    .line 262
    if-nez v3, :cond_14

    .line 263
    .line 264
    invoke-static {v0, v5}, Lw2/a;->d([B[I)J

    .line 265
    .line 266
    .line 267
    move-result-wide v2

    .line 268
    const-wide/16 v9, 0x0

    .line 269
    .line 270
    cmp-long v2, v2, v9

    .line 271
    .line 272
    if-gez v2, :cond_13

    .line 273
    .line 274
    goto :goto_9

    .line 275
    :cond_13
    :goto_7
    move-object/from16 v10, v20

    .line 276
    .line 277
    move-object/from16 v7, v21

    .line 278
    .line 279
    :goto_8
    move v9, v6

    .line 280
    move-object/from16 v3, v19

    .line 281
    .line 282
    const/4 v2, 0x0

    .line 283
    const/4 v6, 0x2

    .line 284
    goto/16 :goto_3

    .line 285
    .line 286
    :cond_14
    :goto_9
    if-eqz v21, :cond_15

    .line 287
    .line 288
    if-nez v8, :cond_16

    .line 289
    .line 290
    :cond_15
    :goto_a
    move-object/from16 v2, p1

    .line 291
    .line 292
    const/4 v7, 0x0

    .line 293
    goto :goto_b

    .line 294
    :cond_16
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    .line 295
    .line 296
    .line 297
    move-result-wide v1

    .line 298
    const-wide v5, -0x430e23400L

    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    cmp-long v1, v1, v5

    .line 304
    .line 305
    if-eqz v1, :cond_15

    .line 306
    .line 307
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 308
    .line 309
    .line 310
    move-result-wide v1

    .line 311
    cmp-long v1, v1, v5

    .line 312
    .line 313
    if-nez v1, :cond_17

    .line 314
    .line 315
    goto :goto_a

    .line 316
    :cond_17
    const/4 v1, 0x2

    .line 317
    new-array v1, v1, [D

    .line 318
    .line 319
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    .line 320
    .line 321
    .line 322
    move-result-wide v2

    .line 323
    long-to-double v2, v2

    .line 324
    const-wide v5, 0x3e45798ee2308c3aL    # 1.0E-8

    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    mul-double/2addr v2, v5

    .line 330
    const/4 v7, 0x0

    .line 331
    aput-wide v2, v1, v7

    .line 332
    .line 333
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 334
    .line 335
    .line 336
    move-result-wide v2

    .line 337
    long-to-double v2, v2

    .line 338
    mul-double/2addr v2, v5

    .line 339
    aput-wide v2, v1, v12

    .line 340
    .line 341
    move-object/from16 v2, p1

    .line 342
    .line 343
    move-object/from16 v10, v20

    .line 344
    .line 345
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-eqz v3, :cond_18

    .line 350
    .line 351
    return-object v1

    .line 352
    :cond_18
    if-nez v4, :cond_19

    .line 353
    .line 354
    move-object v4, v1

    .line 355
    :cond_19
    move-object/from16 v1, v19

    .line 356
    .line 357
    goto :goto_d

    .line 358
    :goto_b
    move v2, v7

    .line 359
    move-object/from16 v3, v19

    .line 360
    .line 361
    :goto_c
    const/4 v1, 0x0

    .line 362
    goto/16 :goto_2

    .line 363
    .line 364
    :cond_1a
    move v7, v2

    .line 365
    move-object/from16 v19, v3

    .line 366
    .line 367
    move-object/from16 v2, p1

    .line 368
    .line 369
    if-nez v5, :cond_1c

    .line 370
    .line 371
    move-object/from16 v1, v19

    .line 372
    .line 373
    invoke-static {v0, v1}, Lw2/a;->d([B[I)J

    .line 374
    .line 375
    .line 376
    move-result-wide v5

    .line 377
    const-wide/16 v8, 0x0

    .line 378
    .line 379
    cmp-long v3, v5, v8

    .line 380
    .line 381
    if-gez v3, :cond_1b

    .line 382
    .line 383
    goto :goto_e

    .line 384
    :cond_1b
    :goto_d
    move-object v3, v1

    .line 385
    move v2, v7

    .line 386
    goto :goto_c

    .line 387
    :cond_1c
    :goto_e
    return-object v4
.end method

.method public static d([B[I)J
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    aget v4, p1, v2

    array-length v5, p0

    if-ge v4, v5, :cond_1

    const/16 v5, 0x40

    if-ge v3, v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    aput v5, p1, v2

    aget-byte v4, p0, v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v3, v3, 0x7

    goto :goto_0

    :cond_1
    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0
.end method

.method public static e(Ljava/io/ByteArrayOutputStream;J)V
    .locals 3

    .line 1
    :goto_0
    const-wide/16 v0, 0x7f

    and-long/2addr v0, p1

    long-to-int v0, v0

    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method
