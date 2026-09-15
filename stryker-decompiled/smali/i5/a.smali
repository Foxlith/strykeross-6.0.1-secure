.class public abstract Li5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/q1;


# direct methods
.method public static A()I
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static A0([BIILjava/lang/StringBuilder;)I
    .locals 6

    .line 1
    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz p2, :cond_8

    if-lt p2, p1, :cond_0

    goto :goto_1

    :cond_0
    aget-byte v2, p0, p2

    and-int/lit16 v3, v2, 0xff

    if-nez v3, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    and-int/lit16 v4, v2, 0xc0

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_5

    add-int/lit8 v3, p2, 0x1

    if-lt v3, p1, :cond_2

    goto :goto_1

    :cond_2
    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    if-gez v0, :cond_3

    add-int/lit8 p2, p2, 0x2

    move v0, p2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    const/16 p2, 0x20

    if-le v1, p2, :cond_4

    move p2, v2

    goto :goto_1

    :cond_4
    move p2, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v2, p2, 0x1

    add-int v4, v2, v3

    if-le v4, p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_7

    const/16 v4, 0x2e

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    add-int/2addr p2, v3

    goto :goto_0

    :cond_8
    :goto_1
    if-ltz v0, :cond_9

    move p2, v0

    :cond_9
    return p2
.end method

.method public static B(Landroid/content/Context;)I
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p0, v0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static B0([BIIILjava/util/List;)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p3, :cond_d

    .line 3
    .line 4
    if-ge p2, p1, :cond_d

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, p2, v1}, Li5/a;->A0([BIILjava/lang/StringBuilder;)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    add-int/lit8 v2, p2, 0xa

    .line 16
    .line 17
    if-le v2, p1, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    new-instance v3, Ls3/d;

    .line 21
    .line 22
    invoke-direct {v3}, Ls3/d;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v3, Ls3/d;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p2, p0}, Li5/a;->C0(I[B)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput v1, v3, Ls3/d;->b:I

    .line 36
    .line 37
    add-int/lit8 v1, p2, 0x2

    .line 38
    .line 39
    invoke-static {v1, p0}, Li5/a;->C0(I[B)I

    .line 40
    .line 41
    .line 42
    invoke-static {v1, p0}, Li5/a;->C0(I[B)I

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, p2, 0x4

    .line 46
    .line 47
    invoke-static {v1, p0}, Li5/a;->C0(I[B)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    int-to-long v4, v1

    .line 52
    const/16 v1, 0x10

    .line 53
    .line 54
    shl-long/2addr v4, v1

    .line 55
    add-int/lit8 v6, p2, 0x6

    .line 56
    .line 57
    invoke-static {v6, p0}, Li5/a;->C0(I[B)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    int-to-long v6, v6

    .line 62
    or-long/2addr v4, v6

    .line 63
    iput-wide v4, v3, Ls3/d;->c:J

    .line 64
    .line 65
    add-int/lit8 v4, p2, 0x8

    .line 66
    .line 67
    invoke-static {v4, p0}, Li5/a;->C0(I[B)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    add-int v5, v2, v4

    .line 72
    .line 73
    if-le v5, p1, :cond_1

    .line 74
    .line 75
    return p1

    .line 76
    :cond_1
    invoke-static {p0, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 77
    .line 78
    .line 79
    const-string v6, "."

    .line 80
    .line 81
    :try_start_0
    iget v7, v3, Ls3/d;->b:I

    .line 82
    .line 83
    const/4 v8, 0x1

    .line 84
    if-eq v7, v8, :cond_a

    .line 85
    .line 86
    const/4 v6, 0x2

    .line 87
    if-eq v7, v6, :cond_9

    .line 88
    .line 89
    const/4 v6, 0x5

    .line 90
    if-eq v7, v6, :cond_9

    .line 91
    .line 92
    const/16 v6, 0xc

    .line 93
    .line 94
    if-eq v7, v6, :cond_9

    .line 95
    .line 96
    if-eq v7, v1, :cond_6

    .line 97
    .line 98
    const/16 v6, 0x1c

    .line 99
    .line 100
    if-eq v7, v6, :cond_4

    .line 101
    .line 102
    const/16 v1, 0x21

    .line 103
    .line 104
    if-eq v7, v1, :cond_2

    .line 105
    .line 106
    goto/16 :goto_5

    .line 107
    .line 108
    :cond_2
    const/4 v1, 0x7

    .line 109
    if-ge v4, v1, :cond_3

    .line 110
    .line 111
    goto/16 :goto_5

    .line 112
    .line 113
    :cond_3
    add-int/lit8 v1, p2, 0xe

    .line 114
    .line 115
    invoke-static {v1, p0}, Li5/a;->C0(I[B)I

    .line 116
    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    add-int/lit8 p2, p2, 0x10

    .line 124
    .line 125
    invoke-static {p0, p1, p2, v1}, Li5/a;->A0([BIILjava/lang/StringBuilder;)I

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    :goto_1
    iput-object p2, v3, Ls3/d;->d:Ljava/lang/String;

    .line 133
    .line 134
    goto/16 :goto_5

    .line 135
    .line 136
    :cond_4
    if-ge v4, v1, :cond_5

    .line 137
    .line 138
    goto/16 :goto_5

    .line 139
    .line 140
    :cond_5
    add-int/lit8 p2, p2, 0x1a

    .line 141
    .line 142
    invoke-static {p0, v2, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    :goto_2
    iput-object p2, v3, Ls3/d;->e:Ljava/lang/String;

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_6
    :goto_3
    if-ge v2, v5, :cond_c

    .line 158
    .line 159
    aget-byte p2, p0, v2

    .line 160
    .line 161
    and-int/lit16 p2, p2, 0xff

    .line 162
    .line 163
    add-int/lit8 v2, v2, 0x1

    .line 164
    .line 165
    if-eqz p2, :cond_8

    .line 166
    .line 167
    add-int v1, v2, p2

    .line 168
    .line 169
    if-le v1, v5, :cond_7

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_7
    iget-object v4, v3, Ls3/d;->f:Ljava/util/ArrayList;

    .line 173
    .line 174
    new-instance v6, Ljava/lang/String;

    .line 175
    .line 176
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 177
    .line 178
    invoke-direct {v6, p0, v2, p2, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move v2, v1

    .line 185
    goto :goto_3

    .line 186
    :cond_8
    :goto_4
    if-nez p2, :cond_c

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-static {p0, p1, v2, p2}, Li5/a;->A0([BIILjava/lang/StringBuilder;)I

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    goto :goto_1

    .line 202
    :cond_a
    const/4 v1, 0x4

    .line 203
    if-ge v4, v1, :cond_b

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    aget-byte v2, p0, v2

    .line 212
    .line 213
    and-int/lit16 v2, v2, 0xff

    .line 214
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    add-int/lit8 v2, p2, 0xb

    .line 222
    .line 223
    aget-byte v2, p0, v2

    .line 224
    .line 225
    and-int/lit16 v2, v2, 0xff

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    add-int/lit8 v2, p2, 0xc

    .line 234
    .line 235
    aget-byte v2, p0, v2

    .line 236
    .line 237
    and-int/lit16 v2, v2, 0xff

    .line 238
    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    add-int/lit8 p2, p2, 0xd

    .line 246
    .line 247
    aget-byte p2, p0, p2

    .line 248
    .line 249
    and-int/lit16 p2, p2, 0xff

    .line 250
    .line 251
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    goto :goto_2

    .line 259
    :catch_0
    :cond_c
    :goto_5
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    add-int/lit8 v0, v0, 0x1

    .line 263
    .line 264
    move p2, v5

    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_d
    return p2
.end method

.method public static C(Landroid/content/Context;)J
    .locals 4

    .line 1
    invoke-static {p0}, Li5/a;->O0(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_blocks:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x200

    mul-long/2addr v0, v2

    return-wide v0

    :catchall_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static C0(I[B)I
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

.method public static D(Ll4/l;)I
    .locals 2

    .line 1
    iget-object p0, p0, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v0, "rootless_cpus"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-gtz p0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Li5/a;->F0()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    :cond_0
    invoke-static {}, Li5/a;->A()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ge p0, v1, :cond_1

    .line 22
    .line 23
    move p0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-le p0, v0, :cond_2

    .line 26
    .line 27
    move p0, v0

    .line 28
    :cond_2
    :goto_0
    return p0
.end method

.method public static D0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_2
    :goto_3
    return-object v1
.end method

.method public static E(Landroid/content/Context;Ll4/l;)I
    .locals 2

    .line 1
    iget-object p1, p1, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v0, "rootless_ram"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-gtz p1, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Li5/a;->G0(Landroid/content/Context;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :cond_0
    invoke-static {p0}, Li5/a;->q0(Landroid/content/Context;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/16 v0, 0x200

    .line 21
    .line 22
    if-ge p1, v0, :cond_1

    .line 23
    .line 24
    move p1, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-le p1, p0, :cond_2

    .line 27
    .line 28
    move p1, p0

    .line 29
    :cond_2
    :goto_0
    return p1
.end method

.method public static E0(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu2/p;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v2, v1, Lu2/p;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " vCPU: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lu2/p;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "unknown"

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "no candidates to test"

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static F(Ll4/l;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Ll4/l;->c:Landroid/content/Context;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-static {v2}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lu2/h;->h()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_1
    const-string v1, "/data/local/stryker/release/CORE/PixieWps/pixie.py"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ll4/l;->c(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_4

    .line 29
    .line 30
    const-string v3, "cat /data/local/stryker/release/CORE/.version 2>/dev/null"

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_2

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const-string v3, ""

    .line 70
    .line 71
    :goto_0
    const-string v4, "6"

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    const/4 p0, 0x1

    .line 80
    goto/16 :goto_8

    .line 81
    .line 82
    :cond_4
    if-nez v2, :cond_5

    .line 83
    .line 84
    goto/16 :goto_7

    .line 85
    .line 86
    :cond_5
    new-instance v3, Ljava/io/File;

    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const-string v5, "stryker-core.tar"

    .line 93
    .line 94
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-string v4, "rootless/stryker-guest-core.tar"

    .line 102
    .line 103
    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 104
    .line 105
    .line 106
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    .line 108
    .line 109
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    .line 111
    .line 112
    const/high16 v5, 0x10000

    .line 113
    .line 114
    :try_start_2
    new-array v5, v5, [B

    .line 115
    .line 116
    :goto_1
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    const/4 v7, -0x1

    .line 121
    if-eq v6, v7, :cond_6

    .line 122
    .line 123
    invoke-virtual {v4, v5, v0, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    goto :goto_2

    .line 129
    :cond_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .line 131
    .line 132
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    .line 134
    .line 135
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 136
    .line 137
    .line 138
    const-string v0, "mkdir -p /data/local/stryker/release"

    .line 139
    .line 140
    invoke-virtual {p0, v0}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 141
    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v2, "/data/data/com.zalexdev.stryker/files/busybox tar xf "

    .line 146
    .line 147
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v2, " -C /data/local/stryker/release"

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p0, v0}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    const-string v0, "chmod -R 0755 /data/local/stryker/release/CORE /data/local/stryker/release/exploits"

    .line 170
    .line 171
    invoke-virtual {p0, v0}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v1}, Ll4/l;->c(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    goto :goto_7

    .line 182
    :catch_0
    move-exception p0

    .line 183
    goto :goto_6

    .line 184
    :catchall_1
    move-exception p0

    .line 185
    goto :goto_4

    .line 186
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :catchall_2
    move-exception v1

    .line 191
    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    :goto_3
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 195
    :goto_4
    if-eqz v2, :cond_7

    .line 196
    .line 197
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :catchall_3
    move-exception v1

    .line 202
    :try_start_8
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    :cond_7
    :goto_5
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 206
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v2, "staging failed: "

    .line 209
    .line 210
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    const-string v1, "GuestCore"

    .line 225
    .line 226
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    :goto_7
    move p0, v0

    .line 230
    :goto_8
    return p0
.end method

.method public static F0()I
    .locals 2

    .line 1
    invoke-static {}, Li5/a;->A()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static G(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc3/a;->c(Landroid/app/NotificationManager;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lc3/a;->o()V

    const v1, 0x7f130502

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lf4/b;->e(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-static {v0, p0}, Lc3/a;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public static G0(Landroid/content/Context;)I
    .locals 1

    .line 1
    const/16 v0, 0x1000

    invoke-static {p0}, Li5/a;->q0(Landroid/content/Context;)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static H(Landroid/content/Context;Ll4/l;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_9

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    invoke-static {p1}, Li5/a;->T0(Ll4/l;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    invoke-static {p1}, Li5/a;->w(Ll4/l;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "rootless_cpu_verified"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x1

    .line 36
    const-string v4, "QEMU refused -cpu "

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    new-instance p0, Lf4/i;

    .line 42
    .line 43
    const-string v2, "empty cpu model"

    .line 44
    .line 45
    invoke-direct {p0, v3, v2, v5}, Lf4/i;-><init>(ILjava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_3
    invoke-static {p0}, Li5/a;->y0(Landroid/content/Context;)Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_4

    .line 59
    .line 60
    new-instance p0, Lf4/i;

    .line 61
    .line 62
    const-string v2, "engine not installed"

    .line 63
    .line 64
    invoke-direct {p0, v3, v2, v5}, Lf4/i;-><init>(ILjava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    const-string v7, "-M"

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const-string v7, "virt,gic-version=3"

    .line 87
    .line 88
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    const-string v7, "-accel"

    .line 92
    .line 93
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    const-string v7, "tcg,thread=single,tb-size=32"

    .line 97
    .line 98
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    const-string v7, "-cpu"

    .line 102
    .line 103
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    const-string v7, "-m"

    .line 110
    .line 111
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    const-string v7, "128"

    .line 115
    .line 116
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    const-string v7, "-display"

    .line 120
    .line 121
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    const-string v7, "none"

    .line 125
    .line 126
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    const-string v7, "-nodefaults"

    .line 130
    .line 131
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    const-string v7, "-no-user-config"

    .line 135
    .line 136
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    const-string v7, "-S"

    .line 140
    .line 141
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    const-string v7, "QEMU accepted -cpu "

    .line 145
    .line 146
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    invoke-static {p0, v2, v6, v7, v8}, Li5/a;->Q0(Landroid/content/Context;Ljava/io/File;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lf4/i;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    iget-boolean v2, p0, Lf4/i;->a:Z

    .line 159
    .line 160
    if-nez v2, :cond_5

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_5
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 164
    .line 165
    iget-object v6, p0, Lf4/i;->b:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v6, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    const-string v7, "not found"

    .line 172
    .line 173
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-nez v7, :cond_6

    .line 178
    .line 179
    const-string v7, "invalid parameter"

    .line 180
    .line 181
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    if-nez v7, :cond_6

    .line 186
    .line 187
    const-string v7, "cannot enable"

    .line 188
    .line 189
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    if-nez v7, :cond_6

    .line 194
    .line 195
    const-string v7, "does not support"

    .line 196
    .line 197
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_7

    .line 202
    .line 203
    :cond_6
    new-instance p0, Lf4/i;

    .line 204
    .line 205
    invoke-direct {p0, v3, v6, v5}, Lf4/i;-><init>(ILjava/lang/String;Z)V

    .line 206
    .line 207
    .line 208
    :cond_7
    :goto_0
    iget-boolean v2, p0, Lf4/i;->a:Z

    .line 209
    .line 210
    const-string v6, "rootless_cpu_legacy"

    .line 211
    .line 212
    if-eqz v2, :cond_8

    .line 213
    .line 214
    invoke-virtual {p1, v1, v0}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v6, v5}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_8
    invoke-virtual {p1, v6, v3}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 222
    .line 223
    .line 224
    invoke-static {p1}, Li5/a;->w(Ll4/l;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {p1, v1, v2}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    const-string p1, " ("

    .line 232
    .line 233
    invoke-static {v4, v0, p1}, Landroid/support/v4/media/session/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iget-object p0, p0, Lf4/i;->b:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string p0, ") \u2014 falling back to the compatible CPU profile"

    .line 243
    .line 244
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-static {p0}, Lu2/c;->b(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    :cond_9
    :goto_1
    return-void
.end method

.method public static H0(Lcom/zalexdev/stryker/MainActivity;La4/a;Ljava/io/File;)La4/e;
    .locals 27

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v0, :cond_0

    iget-object v2, v0, La4/a;->a:Ljava/lang/String;

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_0
    invoke-static/range {p2 .. p2}, La4/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    if-nez v4, :cond_1

    return-object v2

    :cond_1
    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v6, v3, v5

    const/4 v13, 0x1

    aget-object v3, v3, v13

    sget-object v7, La4/b;->a:Ljava/util/Map;

    if-eqz v6, :cond_3

    if-nez v3, :cond_2

    goto :goto_2

    .line 1
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    sget-object v8, La4/b;->a:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La4/c;

    goto :goto_3

    :cond_3
    :goto_2
    move-object v7, v2

    :goto_3
    if-eqz v7, :cond_4

    move v8, v13

    goto :goto_4

    :cond_4
    const/4 v8, 0x3

    :goto_4
    const/4 v15, 0x2

    if-nez v7, :cond_c

    .line 2
    sget-object v7, La4/d;->a:Ljava/util/regex/Pattern;

    if-eqz v6, :cond_8

    if-nez v3, :cond_5

    goto :goto_6

    .line 3
    :cond_5
    sget-object v7, La4/d;->b:Ljava/util/HashMap;

    if-nez v7, :cond_7

    const-class v9, La4/d;

    monitor-enter v9

    :try_start_0
    sget-object v7, La4/d;->b:Ljava/util/HashMap;

    if-nez v7, :cond_6

    invoke-static/range {p0 .. p0}, La4/d;->a(Lcom/zalexdev/stryker/MainActivity;)Ljava/util/HashMap;

    move-result-object v7

    sput-object v7, La4/d;->b:Ljava/util/HashMap;

    :cond_6
    monitor-exit v9

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_7

    :cond_8
    :goto_6
    move-object v3, v2

    :goto_7
    if-nez v3, :cond_9

    move-object v7, v2

    goto :goto_a

    .line 4
    :cond_9
    sget-object v6, La4/d;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v7

    goto :goto_8

    :cond_a
    move-object/from16 v19, v2

    :goto_8
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_b

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v6, v13

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    move-object/from16 v17, v7

    goto :goto_9

    :cond_b
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    :goto_9
    new-instance v3, La4/c;

    const/16 v20, 0x4

    const/16 v21, 0x4

    const/16 v23, 0x5

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "Legacy DB entry \u2014 capabilities not curated."

    move-object/from16 v16, v3

    move/from16 v22, v23

    invoke-direct/range {v16 .. v26}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v3

    :goto_a
    if-eqz v7, :cond_c

    move v12, v15

    goto :goto_b

    :cond_c
    move v12, v8

    :goto_b
    if-nez v7, :cond_d

    .line 5
    new-instance v3, La4/c;

    const/16 v17, 0x0

    const-string v6, "Unknown device ("

    const-string v7, ")"

    .line 6
    invoke-static {v6, v4, v7}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x4

    const/16 v23, 0x5

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "No entry in the bundled chipset database."

    move-object/from16 v16, v3

    move/from16 v22, v23

    .line 7
    invoke-direct/range {v16 .. v26}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v3

    goto :goto_c

    :cond_d
    move-object v11, v7

    :goto_c
    if-eqz v1, :cond_1b

    .line 8
    sget-object v3, La4/h;->a:Ljava/util/regex/Pattern;

    .line 9
    new-instance v3, La4/g;

    invoke-direct {v3}, La4/g;-><init>()V

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_e

    :cond_e
    sget-object v7, La4/h;->b:Lx2/a;

    invoke-virtual {v1, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_f

    goto :goto_e

    :cond_f
    array-length v8, v7

    move v9, v5

    :goto_d
    if-ge v9, v8, :cond_10

    aget-object v10, v7, v9

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 11
    :cond_10
    :goto_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    iget-object v8, v3, La4/g;->a:Ljava/util/ArrayList;

    if-eqz v7, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "/driver"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 12
    :try_start_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_10

    :catch_0
    move-object v9, v2

    :goto_10
    if-nez v9, :cond_11

    move-object v9, v2

    goto :goto_11

    :cond_11
    const/16 v10, 0x2f

    .line 13
    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    if-gez v10, :cond_12

    goto :goto_11

    :cond_12
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 14
    :goto_11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/modalias"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Li5/a;->D0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/io/File;

    const-string v5, "net"

    invoke-direct {v10, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    goto :goto_12

    :cond_13
    const/4 v5, 0x0

    :goto_12
    if-eqz v9, :cond_14

    iget v7, v3, La4/g;->d:I

    add-int/2addr v7, v13

    iput v7, v3, La4/g;->d:I

    :cond_14
    if-eqz v5, :cond_15

    array-length v7, v5

    const/4 v10, 0x0

    :goto_13
    if-ge v10, v7, :cond_15

    aget-object v18, v5, v10

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_15
    if-eqz v9, :cond_16

    iget-object v5, v3, La4/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    if-eqz v2, :cond_17

    iget-object v5, v3, La4/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    const/4 v2, 0x0

    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_18
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    iput v13, v3, La4/g;->e:I

    goto :goto_14

    :cond_19
    iget v2, v3, La4/g;->d:I

    if-lez v2, :cond_1a

    iput v15, v3, La4/g;->e:I

    goto :goto_14

    :cond_1a
    const/4 v2, 0x3

    iput v2, v3, La4/g;->e:I

    :goto_14
    move-object v10, v3

    goto :goto_15

    .line 15
    :cond_1b
    new-instance v2, La4/g;

    invoke-direct {v2}, La4/g;-><init>()V

    move-object v10, v2

    :goto_15
    if-eqz v1, :cond_1c

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_16
    move-object v5, v2

    goto :goto_17

    :cond_1c
    if-eqz v0, :cond_1d

    iget-object v2, v0, La4/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_1d

    goto :goto_16

    :cond_1d
    const/4 v5, 0x0

    :goto_17
    if-eqz v1, :cond_1e

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_18

    :cond_1e
    const/4 v6, 0x0

    :goto_18
    if-eqz v0, :cond_1f

    iget-object v2, v0, La4/a;->c:Ljava/lang/String;

    goto :goto_19

    :cond_1f
    const/4 v2, 0x0

    :goto_19
    if-eqz v1, :cond_20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "/manufacturer"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Li5/a;->D0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_20
    const/4 v3, 0x0

    :goto_1a
    if-eqz v2, :cond_21

    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_21

    move-object v7, v2

    goto :goto_1b

    :cond_21
    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    move-object v7, v3

    goto :goto_1b

    :cond_22
    const/4 v7, 0x0

    :goto_1b
    if-eqz v0, :cond_23

    .line 17
    iget-object v0, v0, La4/a;->d:Ljava/lang/String;

    goto :goto_1c

    :cond_23
    const/4 v0, 0x0

    :goto_1c
    if-eqz v1, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/product"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Li5/a;->D0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    :cond_24
    const/4 v2, 0x0

    :goto_1d
    if-eqz v0, :cond_25

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    move-object v8, v0

    goto :goto_1e

    :cond_25
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    move-object v8, v2

    goto :goto_1e

    :cond_26
    const/4 v8, 0x0

    :goto_1e
    if-eqz v1, :cond_27

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/speed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li5/a;->D0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_1f

    :cond_27
    const/4 v9, 0x0

    :goto_1f
    new-instance v0, La4/e;

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, La4/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La4/g;La4/c;I)V

    iget-object v1, v0, La4/e;->h:La4/c;

    iget-object v2, v0, La4/e;->g:La4/g;

    .line 20
    iget v3, v2, La4/g;->e:I

    iget v4, v0, La4/e;->i:I

    iget-object v5, v0, La4/e;->k:Ljava/util/ArrayList;

    const/4 v6, 0x3

    if-eq v3, v6, :cond_28

    const/4 v6, 0x4

    if-ne v3, v6, :cond_2c

    iget-object v3, v0, La4/e;->j:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_28
    if-eqz v1, :cond_2a

    iget-object v3, v1, La4/c;->c:Ljava/lang/String;

    if-eqz v3, :cond_2a

    if-ne v4, v13, :cond_2a

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "USB device is recognised, but this kernel has no driver bound for it. The chipset would normally use "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, La4/c;->i:Ljava/lang/String;

    if-eqz v3, :cond_29

    const-string v7, " (mainline kernel \u2265 "

    const-string v8, ")"

    .line 22
    invoke-static {v7, v3, v8}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_20

    :cond_29
    const-string v3, ""

    .line 23
    :goto_20
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Try installing the module via DKMS or boot a kernel that ships it."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_21
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_2a
    if-ne v4, v15, :cond_2b

    const-string v3, "USB device identified by VID:PID, but this phone\'s kernel cannot use it \u2014 no matching driver is loaded. You may need a custom kernel (NetHunter or a vendor kernel) or a DKMS module."

    goto :goto_21

    :cond_2b
    const-string v3, "USB device detected, but this phone with this firmware cannot use it \u2014 VID:PID is not in the bundled database and no driver is bound."

    goto :goto_21

    :cond_2c
    :goto_22
    if-eqz v1, :cond_2e

    iget-object v3, v1, La4/c;->h:Ljava/lang/String;

    if-eqz v3, :cond_2d

    .line 24
    iget v2, v2, La4/g;->e:I

    if-ne v2, v15, :cond_2d

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Driver bound but no netdev \u2014 likely missing firmware "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in /lib/firmware/."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    iget-object v1, v1, La4/c;->j:Ljava/lang/String;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    if-ne v4, v13, :cond_2e

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    return-object v0
.end method

.method public static I(Landroid/content/Context;Lo2/o;)V
    .locals 8

    .line 1
    const-string v0, "VM disk starts at "

    .line 2
    .line 3
    const-string v1, "Could not reserve "

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    :try_start_0
    invoke-static {p0}, Li5/a;->O0(Landroid/content/Context;)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static {p0}, Li5/a;->x(Landroid/content/Context;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    invoke-static {p0}, Li5/a;->S(Landroid/content/Context;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    const-wide v6, 0x10000000000L

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    const-wide v6, 0x200000000L

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    cmp-long v6, v6, v4

    .line 52
    .line 53
    if-ltz v6, :cond_1

    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    new-instance v6, Ljava/io/RandomAccessFile;

    .line 57
    .line 58
    const-string v7, "rw"

    .line 59
    .line 60
    invoke-direct {v6, v3, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    :try_start_1
    invoke-virtual {v6, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 77
    .line 78
    .line 79
    move-result-wide v6

    .line 80
    cmp-long v3, v6, v4

    .line 81
    .line 82
    const-wide/32 v6, 0x40000000

    .line 83
    .line 84
    .line 85
    if-gez v3, :cond_2

    .line 86
    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    div-long/2addr v4, v6

    .line 93
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, " GB for the VM disk"

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {p1, v2, p0}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :catch_0
    move-exception p0

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    new-instance v1, Ll4/l;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    const-string p0, "rootless_disk_resize_pending"

    .line 117
    .line 118
    const/4 v3, 0x1

    .line 119
    invoke-virtual {v1, p0, v3}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 120
    .line 121
    .line 122
    new-instance p0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    div-long/2addr v4, v6

    .line 128
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v0, " GB and grows into free storage automatically"

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    const/4 v0, 0x2

    .line 141
    invoke-static {p1, v0, p0}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :catchall_0
    move-exception p0

    .line 146
    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catchall_1
    move-exception v0

    .line 151
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 155
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v1, "Disk sizing skipped: "

    .line 158
    .line 159
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-static {p1, v2, p0}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :goto_2
    return-void
.end method

.method public static I0(Ll4/l;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "rootless_aio"

    invoke-virtual {p0, v0}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "io_uring"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "threads"

    :goto_0
    return-object v0
.end method

.method public static J()Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "export DEBIAN_FRONTEND=noninteractive"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "export APT_LISTCHANGES_FRONTEND=none"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "export LANG=C.UTF-8 LC_ALL=C.UTF-8"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "export HOME=/root"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "mkdir -p /var/lib/apt/lists/partial /var/cache/apt/archives/partial /tmp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static J0(Landroid/content/Context;)Lf4/c;
    .locals 13

    .line 1
    invoke-static {p0}, Li5/a;->N(Landroid/content/Context;)Lf4/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lf4/g;->b:Lf4/c;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lf4/c;->a:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lf4/e;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lf4/e;->a()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, v0, Lf4/c;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lf4/e;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Lf4/e;->a()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, v0, Lf4/c;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lf4/e;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Lf4/e;->a()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    iget-object v1, v0, Lf4/c;->d:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lf4/e;

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    invoke-virtual {v1}, Lf4/e;->a()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    iget-object v0, v0, Lf4/c;->e:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lf4/e;

    .line 62
    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    invoke-virtual {v0}, Lf4/e;->a()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    iget-object p0, p0, Lf4/g;->b:Lf4/c;

    .line 72
    .line 73
    new-instance v6, Lf4/c;

    .line 74
    .line 75
    iget-object v0, p0, Lf4/c;->a:Ljava/lang/Object;

    .line 76
    .line 77
    move-object v1, v0

    .line 78
    check-cast v1, Lf4/e;

    .line 79
    .line 80
    iget-object v0, p0, Lf4/c;->b:Ljava/lang/Object;

    .line 81
    .line 82
    move-object v2, v0

    .line 83
    check-cast v2, Lf4/e;

    .line 84
    .line 85
    iget-object v0, p0, Lf4/c;->c:Ljava/lang/Object;

    .line 86
    .line 87
    move-object v3, v0

    .line 88
    check-cast v3, Lf4/e;

    .line 89
    .line 90
    iget-object v0, p0, Lf4/c;->d:Ljava/lang/Object;

    .line 91
    .line 92
    move-object v4, v0

    .line 93
    check-cast v4, Lf4/e;

    .line 94
    .line 95
    iget-object p0, p0, Lf4/c;->e:Ljava/lang/Object;

    .line 96
    .line 97
    move-object v5, p0

    .line 98
    check-cast v5, Lf4/e;

    .line 99
    .line 100
    move-object v0, v6

    .line 101
    invoke-direct/range {v0 .. v5}, Lf4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-object v6

    .line 105
    :cond_0
    new-instance p0, Lf4/c;

    .line 106
    .line 107
    new-instance v8, Lf4/e;

    .line 108
    .line 109
    const-string v0, "https://github.com/zalexdev/strykerapp/releases/download/rootless-main/qemu-system-aarch64"

    .line 110
    .line 111
    const-string v1, ""

    .line 112
    .line 113
    const-wide/16 v2, 0x0

    .line 114
    .line 115
    invoke-direct {v8, v0, v1, v2, v3}, Lf4/e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 116
    .line 117
    .line 118
    new-instance v9, Lf4/e;

    .line 119
    .line 120
    const-string v0, "https://github.com/zalexdev/strykerapp/releases/download/rootless-main/Image"

    .line 121
    .line 122
    invoke-direct {v9, v0, v1, v2, v3}, Lf4/e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 123
    .line 124
    .line 125
    new-instance v10, Lf4/e;

    .line 126
    .line 127
    const-string v0, "https://github.com/zalexdev/strykerapp/releases/download/rootless-main/initrd.img"

    .line 128
    .line 129
    invoke-direct {v10, v0, v1, v2, v3}, Lf4/e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 130
    .line 131
    .line 132
    new-instance v11, Lf4/e;

    .line 133
    .line 134
    const-string v0, "https://github.com/zalexdev/strykerapp/releases/download/rootless-main/libslirp.so"

    .line 135
    .line 136
    invoke-direct {v11, v0, v1, v2, v3}, Lf4/e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 137
    .line 138
    .line 139
    new-instance v12, Lf4/e;

    .line 140
    .line 141
    const-string v0, "https://github.com/zalexdev/strykerapp/releases/download/rootless-main/rootfs.imgz"

    .line 142
    .line 143
    invoke-direct {v12, v0, v1, v2, v3}, Lf4/e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 144
    .line 145
    .line 146
    move-object v7, p0

    .line 147
    invoke-direct/range {v7 .. v12}, Lf4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    return-object p0
.end method

.method public static final K(CCZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-eq p0, p1, :cond_3

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method public static K0(Ls3/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls3/q;->h:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object v1, p0, Ls3/q;->h:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Ls3/q;->h:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Ls3/q;->h:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Ls3/q;->h:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Ls3/q;->h:Ljava/lang/String;

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Ls3/q;->g:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Ls3/q;->g:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Ls3/q;->g:Ljava/lang/String;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object v0, p0, Ls3/q;->o:Ls3/m;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    iget-object v0, p0, Ls3/q;->o:Ls3/m;

    .line 54
    .line 55
    iget-object v0, v0, Ls3/m;->a:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    iget-object v0, p0, Ls3/q;->o:Ls3/m;

    .line 60
    .line 61
    iget-object v0, v0, Ls3/m;->a:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    iget-object v0, p0, Ls3/q;->o:Ls3/m;

    .line 70
    .line 71
    iget-object v0, v0, Ls3/m;->a:Ljava/lang/String;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    iget-object v0, p0, Ls3/q;->q:Ls3/p;

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    iget-object v0, p0, Ls3/q;->q:Ls3/p;

    .line 79
    .line 80
    iget-object v0, v0, Ls3/p;->b:Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Ls3/q;->q:Ls3/p;

    .line 85
    .line 86
    iget-object v0, v0, Ls3/p;->b:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    iget-object v0, p0, Ls3/q;->q:Ls3/p;

    .line 95
    .line 96
    iget-object v0, v0, Ls3/p;->b:Ljava/lang/String;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    iget-object v0, p0, Ls3/q;->r:Ls3/o;

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    iget-object v0, p0, Ls3/q;->r:Ls3/o;

    .line 104
    .line 105
    iget-object v0, v0, Ls3/o;->d:Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    iget-object v0, p0, Ls3/q;->r:Ls3/o;

    .line 110
    .line 111
    iget-object v0, v0, Ls3/o;->d:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_6

    .line 118
    .line 119
    iget-object v0, p0, Ls3/q;->r:Ls3/o;

    .line 120
    .line 121
    iget-object v0, v0, Ls3/o;->d:Ljava/lang/String;

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_6
    iget-object v0, p0, Ls3/q;->s:Ls3/l;

    .line 125
    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    iget-object v0, p0, Ls3/q;->s:Ls3/l;

    .line 129
    .line 130
    iget-object v0, v0, Ls3/l;->a:Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    iget-object v0, p0, Ls3/q;->s:Ls3/l;

    .line 135
    .line 136
    iget-object v0, v0, Ls3/l;->a:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_7

    .line 143
    .line 144
    iget-object v0, p0, Ls3/q;->s:Ls3/l;

    .line 145
    .line 146
    iget-object v0, v0, Ls3/l;->a:Ljava/lang/String;

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_7
    move-object v0, v1

    .line 150
    :goto_0
    if-nez v0, :cond_8

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_8
    move-object v1, v0

    .line 154
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iput-object v0, p0, Ls3/q;->h:Ljava/lang/String;

    .line 159
    .line 160
    return-void
.end method

.method public static L(Ljava/util/ArrayList;)Ljava/io/File;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/sdcard/Stryker/geomac"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "export-"

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 21
    .line 22
    const-string v4, "yyyyMMdd-HHmmss"

    .line 23
    .line 24
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 25
    .line 26
    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 27
    .line 28
    .line 29
    new-instance v4, Ljava/util/Date;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, ".json"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lorg/json/JSONArray;

    .line 54
    .line 55
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_0

    .line 67
    .line 68
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ly2/b;

    .line 73
    .line 74
    invoke-virtual {v2}, Ly2/b;->b()Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    .line 83
    .line 84
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v2, "version"

    .line 88
    .line 89
    const/4 v3, 0x2

    .line 90
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    const-string v2, "exportedAt"

    .line 94
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v4

    .line 99
    invoke-virtual {p0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    const-string v2, "pins"

    .line 103
    .line 104
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    new-instance v0, Ljava/io/FileOutputStream;

    .line 108
    .line 109
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 110
    .line 111
    .line 112
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 124
    .line 125
    .line 126
    return-object v1

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catchall_1
    move-exception v0

    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    :goto_1
    throw p0
.end method

.method public static L0(Ll4/l;Ls3/q;)V
    .locals 1

    .line 1
    iget-object v0, p1, Ls3/q;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p1, Ls3/q;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Ls3/q;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ls3/q;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    :try_start_0
    iget-object v0, p1, Ls3/q;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ll4/l;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Ls3/q;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object p0, p1, Ls3/q;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Ls3/q;->q:Ls3/p;

    if-eqz p0, :cond_2

    iget-object p0, p1, Ls3/q;->q:Ls3/p;

    iget-object p0, p0, Ls3/p;->d:Ljava/lang/String;

    if-eqz p0, :cond_2

    iget-object p0, p1, Ls3/q;->q:Ls3/p;

    iget-object p0, p0, Ls3/p;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Ls3/q;->f:Ljava/lang/String;

    :cond_2
    iget-object p0, p1, Ls3/q;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Ls3/q;->s:Ls3/l;

    if-eqz p0, :cond_3

    const-string p0, "Google"

    iput-object p0, p1, Ls3/q;->f:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static M(Ljava/util/ArrayList;)Ljava/io/File;
    .locals 12

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/sdcard/Stryker/geomac"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "export-"

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 21
    .line 22
    const-string v4, "yyyyMMdd-HHmmss"

    .line 23
    .line 24
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 25
    .line 26
    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 27
    .line 28
    .line 29
    new-instance v4, Ljava/util/Date;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, ".kml"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<kml xmlns=\"http://www.opengis.net/kml/2.2\"><Document>\n  <name>Stryker GeoMac export</name>\n"

    .line 56
    .line 57
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_4

    .line 69
    .line 70
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Ly2/b;

    .line 75
    .line 76
    const-string v3, "  <Placemark>\n    <name>"

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v3, v2, Ly2/b;->b:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v4, v2, Ly2/b;->a:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_0

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_0
    iget-object v3, v2, Ly2/b;->b:Ljava/lang/String;

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_1
    :goto_1
    move-object v3, v4

    .line 98
    :goto_2
    const-string v5, "&gt;"

    .line 99
    .line 100
    const-string v6, ">"

    .line 101
    .line 102
    const-string v7, "&lt;"

    .line 103
    .line 104
    const-string v8, "<"

    .line 105
    .line 106
    const-string v9, "&amp;"

    .line 107
    .line 108
    const-string v10, "&"

    .line 109
    .line 110
    const-string v11, ""

    .line 111
    .line 112
    if-nez v3, :cond_2

    .line 113
    .line 114
    move-object v3, v11

    .line 115
    goto :goto_3

    .line 116
    :cond_2
    invoke-virtual {v3, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v3, "</name>\n    <description>BSSID: "

    .line 132
    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    if-nez v4, :cond_3

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_3
    invoke-virtual {v4, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    :goto_4
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v3, " \u00b7 "

    .line 155
    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object v3, v2, Ly2/b;->e:Ly2/a;

    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v3, "</description>\n    <Point><coordinates>"

    .line 169
    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-wide v3, v2, Ly2/b;->d:D

    .line 174
    .line 175
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const/16 v3, 0x2c

    .line 179
    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-wide v2, v2, Ly2/b;->c:D

    .line 184
    .line 185
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v2, ",0</coordinates></Point>\n  </Placemark>\n"

    .line 189
    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_4
    const-string p0, "</Document></kml>\n"

    .line 196
    .line 197
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    new-instance p0, Ljava/io/FileOutputStream;

    .line 201
    .line 202
    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 203
    .line 204
    .line 205
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 217
    .line 218
    .line 219
    return-object v1

    .line 220
    :catchall_0
    move-exception v0

    .line 221
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :catchall_1
    move-exception p0

    .line 226
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 227
    .line 228
    .line 229
    :goto_5
    throw v0
.end method

.method public static M0(Lu2/h;Ll4/l;ZIZILv1/t;)V
    .locals 1

    .line 1
    const-string v0, "rootless_cpus"

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1, p3, v0}, Ll4/l;->c0(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ll4/l;->g0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string p2, "rootless_ram"

    if-eqz p4, :cond_1

    :try_start_1
    invoke-virtual {p1, p5, p2}, Ll4/l;->c0(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Ll4/l;->g0(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lu2/h;->o()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p1, "Restoring previous VM profile\u2026"

    invoke-virtual {p6, p1}, Lv1/t;->q(Ljava/lang/String;)V

    const-wide/16 p1, 0x3a98

    invoke-virtual {p0, p1, p2}, Lu2/h;->B(J)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lu2/h;->y(Lu2/g;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public static N(Landroid/content/Context;)Lf4/g;
    .locals 7

    .line 1
    const-string v0, "manifest_cache"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "stryker_ota"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :try_start_0
    const-string v4, "https://raw.githubusercontent.com/zalexdev/strykerapp/main/stryker_manifest.json"

    .line 15
    .line 16
    new-instance v5, Ljava/lang/String;

    .line 17
    .line 18
    const/high16 v6, 0x80000

    .line 19
    .line 20
    invoke-static {v6, v4}, Lf4/a;->b(ILjava/lang/String;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v5}, Lf4/g;->b(Ljava/lang/String;)Lf4/g;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    return-object v4

    .line 45
    :catch_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    :try_start_1
    invoke-static {p0}, Lf4/g;->b(Ljava/lang/String;)Lf4/g;

    .line 68
    .line 69
    .line 70
    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :catch_1
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static N0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "\\."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x4

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    aget-object v1, v0, v1

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "."

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    aget-object v2, v0, v2

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    aget-object v2, v0, v2

    .line 39
    .line 40
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    aget-object v0, v0, v1

    .line 48
    .line 49
    const-string v1, ".in-addr.arpa."

    .line 50
    .line 51
    invoke-static {p0, v0, v1}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public static O(Lf4/e;Ljava/io/File;Ljava/lang/String;Lo2/o;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    if-eqz p0, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0}, Lf4/e;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "GET "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lf4/e;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-static {p3, v3, v2}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v4, p0, Lf4/e;->a:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v6, p0, Lf4/e;->b:Ljava/lang/String;

    .line 35
    .line 36
    iget-wide v7, p0, Lf4/e;->c:J

    .line 37
    .line 38
    new-instance v9, Lp2/i;

    .line 39
    .line 40
    invoke-direct {v9, p3, p2, v3}, Lp2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    move-object v5, p1

    .line 44
    invoke-static/range {v4 .. v9}, Lf4/j;->d(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLf4/h;)Lf4/i;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-boolean v4, v2, Lf4/i;->a:Z

    .line 49
    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    const-string p0, ": "

    .line 53
    .line 54
    invoke-static {p2, p0}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    iget-object p1, v2, Lf4/i;->b:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :goto_0
    invoke-static {p3, v1, p0}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return v0

    .line 71
    :cond_1
    iget-object p0, p0, Lf4/e;->b:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    :cond_2
    const-string p0, " downloaded but the manifest carries no checksum"

    .line 82
    .line 83
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p3, v1, p0}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    const-string p0, " ready ("

    .line 91
    .line 92
    invoke-static {p2, p0}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 97
    .line 98
    .line 99
    move-result-wide p1

    .line 100
    invoke-static {p1, p2}, Li5/a;->r0(J)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, ")"

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const/4 p1, 0x2

    .line 117
    invoke-static {p3, p1, p0}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return v3

    .line 121
    :cond_4
    :goto_1
    const-string p0, ": no download URL in the manifest"

    .line 122
    .line 123
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    goto :goto_0
.end method

.method public static O0(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "rootfs.img"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static P(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static P0(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "rootless"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v6, p0, v2

    const-string v7, "rootfs.imgz"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v3, v6

    goto :goto_1

    :cond_1
    const-string v7, "rootfs.img.gz"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v4, v6

    goto :goto_1

    :cond_2
    const-string v7, "rootfs.img"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_3

    move-object v5, v6

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    return-object v3

    :cond_5
    if-eqz v4, :cond_6

    return-object v4

    :cond_6
    return-object v5

    :catch_0
    return-object v0
.end method

.method public static varargs Q([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static Q0(Landroid/content/Context;Ljava/io/File;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lf4/i;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    new-instance v3, Ljava/lang/ProcessBuilder;

    .line 5
    .line 6
    invoke-direct {v3, p2}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {v3, p2}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string v4, "LD_LIBRARY_PATH"

    .line 21
    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, ":/system/lib64:/vendor/lib64"

    .line 39
    .line 40
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p2, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :try_start_1
    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :catch_0
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 61
    .line 62
    .line 63
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance p2, Ljava/lang/Thread;

    .line 70
    .line 71
    new-instance v3, Lf/n0;

    .line 72
    .line 73
    const/16 v4, 0x1d

    .line 74
    .line 75
    invoke-direct {v3, p0, p1, v4}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 76
    .line 77
    .line 78
    const-string v4, "vm-probe-reader"

    .line 79
    .line 80
    invoke-direct {p2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    const-wide/16 v5, 0x1770

    .line 94
    .line 95
    add-long/2addr v3, v5

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v5

    .line 100
    const-wide/16 v7, 0x708

    .line 101
    .line 102
    add-long/2addr v5, v7

    .line 103
    move-object p2, v2

    .line 104
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 108
    cmp-long v7, v7, v3

    .line 109
    .line 110
    if-gez v7, :cond_2

    .line 111
    .line 112
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object p2
    :try_end_4
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 120
    goto :goto_3

    .line 121
    :goto_2
    move-object v2, p0

    .line 122
    move-object p0, p1

    .line 123
    goto :goto_5

    .line 124
    :catch_1
    move-object p2, v2

    .line 125
    :goto_3
    if-eqz p2, :cond_0

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_0
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 132
    cmp-long v7, v7, v5

    .line 133
    .line 134
    if-ltz v7, :cond_1

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_1
    const-wide/16 v7, 0x78

    .line 138
    .line 139
    :try_start_6
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :catch_2
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :catchall_1
    move-exception p1

    .line 152
    goto :goto_2

    .line 153
    :cond_2
    :goto_4
    monitor-enter p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 154
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 159
    if-eqz p2, :cond_4

    .line 160
    .line 161
    :try_start_9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_4

    .line 166
    .line 167
    new-instance p1, Lf4/i;

    .line 168
    .line 169
    new-instance p3, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p4, " (exit "

    .line 178
    .line 179
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string p2, ")"

    .line 186
    .line 187
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-static {v2, p2}, Li5/a;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-direct {p1, v1, p2, v0}, Lf4/i;-><init>(ILjava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 199
    .line 200
    .line 201
    if-eqz p0, :cond_3

    .line 202
    .line 203
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 204
    .line 205
    .line 206
    :catchall_2
    :cond_3
    return-object p1

    .line 207
    :cond_4
    :try_start_b
    new-instance p1, Lf4/i;

    .line 208
    .line 209
    invoke-static {v2, p3}, Li5/a;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-direct {p1, v1, p2, v1}, Lf4/i;-><init>(ILjava/lang/String;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 214
    .line 215
    .line 216
    if-eqz p0, :cond_5

    .line 217
    .line 218
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 219
    .line 220
    .line 221
    :catchall_3
    :cond_5
    return-object p1

    .line 222
    :catchall_4
    move-exception p2

    .line 223
    :try_start_d
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 224
    :try_start_e
    throw p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 225
    :goto_5
    :try_start_f
    const-string p1, "VmProbe"

    .line 226
    .line 227
    const-string p2, "probe failed"

    .line 228
    .line 229
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .line 231
    .line 232
    new-instance p1, Lf4/i;

    .line 233
    .line 234
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    if-nez p2, :cond_6

    .line 239
    .line 240
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    goto :goto_6

    .line 245
    :catchall_5
    move-exception p0

    .line 246
    goto :goto_7

    .line 247
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    :goto_6
    invoke-direct {p1, v1, p0, v0}, Lf4/i;-><init>(ILjava/lang/String;Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 252
    .line 253
    .line 254
    if-eqz v2, :cond_7

    .line 255
    .line 256
    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 257
    .line 258
    .line 259
    :catchall_6
    :cond_7
    return-object p1

    .line 260
    :goto_7
    if-eqz v2, :cond_8

    .line 261
    .line 262
    :try_start_11
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 263
    .line 264
    .line 265
    :catchall_7
    :cond_8
    throw p0
.end method

.method public static R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0xa0

    if-le p0, p1, :cond_2

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    return-object p1
.end method

.method public static R0(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    const-string v0, "\necho __STRYKER_CON__$?\n"

    .line 2
    .line 3
    const-string v1, "\n"

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_7

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_8

    .line 15
    .line 16
    :cond_0
    new-instance v3, Landroid/net/LocalSocket;

    .line 17
    .line 18
    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    .line 19
    .line 20
    .line 21
    :try_start_0
    new-instance v4, Landroid/net/LocalSocketAddress;

    .line 22
    .line 23
    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    .line 24
    .line 25
    invoke-direct {v4, p2, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 29
    .line 30
    .line 31
    const/16 p2, 0x4e20

    .line 32
    .line 33
    if-lez p0, :cond_1

    .line 34
    .line 35
    move v4, p0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v4, p2

    .line 38
    :goto_0
    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const/16 v1, 0x1000

    .line 82
    .line 83
    new-array v1, v1, [B

    .line 84
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    if-lez p0, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move p0, p2

    .line 93
    :goto_1
    int-to-long v6, p0

    .line 94
    add-long/2addr v4, v6

    .line 95
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v6

    .line 99
    cmp-long p0, v6, v4

    .line 100
    .line 101
    if-gez p0, :cond_6

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-gtz p0, :cond_4

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    new-instance p2, Ljava/lang/String;

    .line 111
    .line 112
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    invoke-direct {p2, v1, v7, p0, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p0, "__STRYKER_CON__"

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    move v6, v7

    .line 128
    :goto_2
    invoke-virtual {p2, p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-gez v7, :cond_5

    .line 133
    .line 134
    const/4 p0, 0x2

    .line 135
    if-lt v6, p0, :cond_3

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 139
    .line 140
    const/16 v8, 0xf

    .line 141
    .line 142
    add-int/2addr v7, v8

    .line 143
    goto :goto_2

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    goto :goto_7

    .line 146
    :catch_0
    move-exception p0

    .line 147
    goto :goto_5

    .line 148
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {v2, p0}, Li5/a;->s(Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .line 154
    .line 155
    :goto_4
    :try_start_1
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    .line 157
    .line 158
    goto :goto_6

    .line 159
    :goto_5
    :try_start_2
    const-string p1, "GuestConsole"

    .line 160
    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v0, "console command failed: "

    .line 167
    .line 168
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :catch_1
    :goto_6
    return-object v2

    .line 187
    :goto_7
    :try_start_3
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 188
    .line 189
    .line 190
    :catch_2
    throw p0

    .line 191
    :cond_7
    :goto_8
    return-object v2
.end method

.method public static S(Landroid/content/Context;)J
    .locals 6

    .line 1
    invoke-static {p0}, Li5/a;->C(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0}, Li5/a;->i0(Landroid/content/Context;)J

    move-result-wide v2

    const-wide v4, 0x80000000L

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v2, v0

    const-wide/32 v0, 0x40000000

    div-long/2addr v2, v0

    mul-long/2addr v2, v0

    const-wide v0, 0x200000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide v2, 0x10000000000L

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static S0(Ljava/lang/String;Ljava/lang/String;J)Lu2/n;
    .locals 13

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v6, p0

    .line 14
    :try_start_0
    invoke-static {p0, v5}, Lu2/c;->a(Ljava/lang/String;Ljava/lang/String;)Lu2/b;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    iget-object v6, v5, Lu2/b;->a:Ljava/net/Socket;

    .line 19
    .line 20
    const/16 v7, 0x7d0

    .line 21
    .line 22
    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 23
    .line 24
    .line 25
    const/16 v6, 0x400

    .line 26
    .line 27
    new-array v6, v6, [C

    .line 28
    .line 29
    :cond_0
    :goto_0
    invoke-static {}, Li5/a;->l()V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    cmp-long v7, v7, p2

    .line 37
    .line 38
    if-ltz v7, :cond_1

    .line 39
    .line 40
    move v6, v3

    .line 41
    move v3, v4

    .line 42
    goto :goto_3

    .line 43
    :cond_1
    :try_start_1
    iget-object v7, v5, Lu2/b;->c:Ljava/io/BufferedReader;

    .line 44
    .line 45
    invoke-virtual {v7, v6}, Ljava/io/Reader;->read([C)I

    .line 46
    .line 47
    .line 48
    move-result v7
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    if-gez v7, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    if-lez v7, :cond_3

    .line 53
    .line 54
    :try_start_2
    invoke-virtual {v2, v6, v4, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :cond_3
    move-object v7, p1

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_4

    .line 61
    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-ltz v8, :cond_4

    .line 66
    .line 67
    move v6, v4

    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const-string v8, "__STRYKER_EXIT__"

    .line 70
    .line 71
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    if-ltz v8, :cond_5

    .line 76
    .line 77
    :goto_2
    move v3, v4

    .line 78
    move v6, v3

    .line 79
    :goto_3
    invoke-virtual {v5}, Lu2/b;->a()V

    .line 80
    .line 81
    .line 82
    move v10, v3

    .line 83
    move v12, v4

    .line 84
    move v11, v6

    .line 85
    goto :goto_5

    .line 86
    :cond_5
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    const v9, 0x8000

    .line 91
    .line 92
    .line 93
    if-le v8, v9, :cond_0

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    add-int/lit16 v8, v8, -0x1000

    .line 100
    .line 101
    invoke-virtual {v2, v4, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catch_0
    move-object v7, p1

    .line 106
    goto :goto_0

    .line 107
    :goto_4
    if-eqz v5, :cond_6

    .line 108
    .line 109
    invoke-virtual {v5}, Lu2/b;->a()V

    .line 110
    .line 111
    .line 112
    :cond_6
    throw v0

    .line 113
    :catch_1
    if-eqz v5, :cond_7

    .line 114
    .line 115
    invoke-virtual {v5}, Lu2/b;->a()V

    .line 116
    .line 117
    .line 118
    :cond_7
    move v12, v3

    .line 119
    move v10, v4

    .line 120
    move v11, v10

    .line 121
    :goto_5
    new-instance v3, Lu2/n;

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 128
    .line 129
    .line 130
    move-result-wide v4

    .line 131
    sub-long v8, v4, v0

    .line 132
    .line 133
    move-object v6, v3

    .line 134
    invoke-direct/range {v6 .. v12}, Lu2/n;-><init>(Ljava/lang/String;JZZZ)V

    .line 135
    .line 136
    .line 137
    return-object v3
.end method

.method public static T(Ls3/q;Ls3/a;)V
    .locals 11

    .line 1
    iget-object p0, p0, Ls3/q;->p:Ls3/k;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Ls3/k;->b:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-wide v2, 0x3fd3333333333333L    # 0.3

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1, v0, v2, v3}, Ls3/a;->a(Ljava/lang/String;D)V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-static {v0}, Li5/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const-wide v4, 0x3fd47ae147ae147bL    # 0.32

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const-string v6, "Computer"

    .line 40
    .line 41
    const-string v7, "Speaker"

    .line 42
    .line 43
    const-string v8, "Media player"

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_3
    const-string v1, "iphone"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    const-string v0, "Phone"

    .line 58
    .line 59
    invoke-virtual {p1, v0, v4, v5}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 60
    .line 61
    .line 62
    const-string v0, "iOS"

    .line 63
    .line 64
    :goto_0
    invoke-virtual {p1, v0, v4, v5}, Ls3/a;->b(Ljava/lang/String;D)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_4
    const-string v1, "ipad"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    const-string v0, "Tablet"

    .line 78
    .line 79
    invoke-virtual {p1, v0, v4, v5}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 80
    .line 81
    .line 82
    const-string v0, "iPadOS"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    const-string v1, "macbook"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_9

    .line 92
    .line 93
    const-string v1, "imac"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_9

    .line 100
    .line 101
    const-string v1, "macmini"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_9

    .line 108
    .line 109
    const-string v1, "macpro"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_9

    .line 116
    .line 117
    const-string v1, "mac"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    const-string v1, "appletv"

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    invoke-virtual {p1, v8, v4, v5}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 135
    .line 136
    .line 137
    const-string v0, "tvOS"

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_7
    const-string v1, "audioaccessory"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_8

    .line 147
    .line 148
    invoke-virtual {p1, v7, v4, v5}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 149
    .line 150
    .line 151
    const-string v0, "HomePod"

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_8
    const-string v1, "watch"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_a

    .line 161
    .line 162
    const-string v0, "Wearable"

    .line 163
    .line 164
    invoke-virtual {p1, v0, v4, v5}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 165
    .line 166
    .line 167
    const-string v0, "watchOS"

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_9
    :goto_1
    invoke-virtual {p1, v6, v4, v5}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 171
    .line 172
    .line 173
    const-string v0, "macOS"

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_a
    :goto_2
    const-string v0, "_googlecast"

    .line 177
    .line 178
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_b

    .line 183
    .line 184
    invoke-virtual {p1, v8, v2, v3}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 185
    .line 186
    .line 187
    const-string v0, "Google Cast"

    .line 188
    .line 189
    invoke-virtual {p1, v0, v2, v3}, Ls3/a;->b(Ljava/lang/String;D)V

    .line 190
    .line 191
    .line 192
    :cond_b
    const-string v0, "_androidtvremote"

    .line 193
    .line 194
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_c

    .line 199
    .line 200
    const-string v0, "Smart TV"

    .line 201
    .line 202
    const-wide v9, 0x3fd3d70a3d70a3d7L    # 0.31

    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v0, v9, v10}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 208
    .line 209
    .line 210
    const-string v0, "Android TV"

    .line 211
    .line 212
    invoke-virtual {p1, v0, v9, v10}, Ls3/a;->b(Ljava/lang/String;D)V

    .line 213
    .line 214
    .line 215
    :cond_c
    const-string v0, "_airplay"

    .line 216
    .line 217
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    const-string v9, "_raop"

    .line 222
    .line 223
    if-nez v1, :cond_d

    .line 224
    .line 225
    invoke-virtual {p0, v9}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-nez v1, :cond_d

    .line 230
    .line 231
    const-string v1, "_companion-link"

    .line 232
    .line 233
    invoke-virtual {p0, v1}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-nez v1, :cond_d

    .line 238
    .line 239
    const-string v1, "_rdlink"

    .line 240
    .line 241
    invoke-virtual {p0, v1}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-nez v1, :cond_d

    .line 246
    .line 247
    const-string v1, "_touch-able"

    .line 248
    .line 249
    invoke-virtual {p0, v1}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-nez v1, :cond_d

    .line 254
    .line 255
    const-string v1, "_sleep-proxy"

    .line 256
    .line 257
    invoke-virtual {p0, v1}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_e

    .line 262
    .line 263
    :cond_d
    const-string v1, "iOS/macOS"

    .line 264
    .line 265
    invoke-virtual {p1, v1, v2, v3}, Ls3/a;->b(Ljava/lang/String;D)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, v9}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-eqz v1, :cond_e

    .line 273
    .line 274
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-nez v0, :cond_e

    .line 279
    .line 280
    invoke-virtual {p1, v7, v2, v3}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 281
    .line 282
    .line 283
    :cond_e
    const-string v0, "_ipp"

    .line 284
    .line 285
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    const-string v1, "Printer"

    .line 290
    .line 291
    if-nez v0, :cond_f

    .line 292
    .line 293
    const-string v0, "_printer"

    .line 294
    .line 295
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-nez v0, :cond_f

    .line 300
    .line 301
    const-string v0, "_pdl-datastream"

    .line 302
    .line 303
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    if-nez v0, :cond_f

    .line 308
    .line 309
    const-string v0, "_scanner"

    .line 310
    .line 311
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-nez v0, :cond_f

    .line 316
    .line 317
    const-string v0, "_uscan"

    .line 318
    .line 319
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-nez v0, :cond_f

    .line 324
    .line 325
    const-string v0, "_ipps"

    .line 326
    .line 327
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_10

    .line 332
    .line 333
    :cond_f
    invoke-virtual {p1, v1, v4, v5}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 334
    .line 335
    .line 336
    :cond_10
    const-string v0, "_afpovertcp"

    .line 337
    .line 338
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-nez v0, :cond_11

    .line 343
    .line 344
    const-string v0, "_adisk"

    .line 345
    .line 346
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-nez v0, :cond_11

    .line 351
    .line 352
    const-string v0, "_nfs"

    .line 353
    .line 354
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-nez v0, :cond_11

    .line 359
    .line 360
    const-string v0, "_smb"

    .line 361
    .line 362
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-eqz v0, :cond_12

    .line 367
    .line 368
    :cond_11
    const-string v0, "NAS"

    .line 369
    .line 370
    invoke-virtual {p1, v0, v2, v3}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 371
    .line 372
    .line 373
    :cond_12
    const-string v0, "_workstation"

    .line 374
    .line 375
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    .line 380
    .line 381
    if-eqz v0, :cond_13

    .line 382
    .line 383
    invoke-virtual {p1, v6, v2, v3}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 384
    .line 385
    .line 386
    const-string v0, "Linux/Unix"

    .line 387
    .line 388
    invoke-virtual {p1, v0, v4, v5}, Ls3/a;->b(Ljava/lang/String;D)V

    .line 389
    .line 390
    .line 391
    :cond_13
    const-string v0, "_ssh"

    .line 392
    .line 393
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-nez v0, :cond_14

    .line 398
    .line 399
    const-string v0, "_sftp-ssh"

    .line 400
    .line 401
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_15

    .line 406
    .line 407
    :cond_14
    const-wide v9, 0x3fd1eb851eb851ebL    # 0.27999999999999997

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    invoke-virtual {p1, v6, v9, v10}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 413
    .line 414
    .line 415
    :cond_15
    const-string v0, "_hap"

    .line 416
    .line 417
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    if-nez v0, :cond_16

    .line 422
    .line 423
    const-string v0, "_homekit"

    .line 424
    .line 425
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    if-nez v0, :cond_16

    .line 430
    .line 431
    const-string v0, "_miio"

    .line 432
    .line 433
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-nez v0, :cond_16

    .line 438
    .line 439
    const-string v0, "_esphomelib"

    .line 440
    .line 441
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    if-nez v0, :cond_16

    .line 446
    .line 447
    const-string v0, "_shelly"

    .line 448
    .line 449
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    if-nez v0, :cond_16

    .line 454
    .line 455
    const-string v0, "_tuya"

    .line 456
    .line 457
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    if-nez v0, :cond_16

    .line 462
    .line 463
    const-string v0, "_ewelink"

    .line 464
    .line 465
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    if-nez v0, :cond_16

    .line 470
    .line 471
    const-string v0, "_hue"

    .line 472
    .line 473
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    if-nez v0, :cond_16

    .line 478
    .line 479
    const-string v0, "_matter"

    .line 480
    .line 481
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    if-nez v0, :cond_16

    .line 486
    .line 487
    const-string v0, "_matterc"

    .line 488
    .line 489
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    if-eqz v0, :cond_17

    .line 494
    .line 495
    :cond_16
    const-string v0, "Smart device"

    .line 496
    .line 497
    invoke-virtual {p1, v0, v2, v3}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 498
    .line 499
    .line 500
    :cond_17
    const-string v0, "_spotify-connect"

    .line 501
    .line 502
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    if-nez v0, :cond_18

    .line 507
    .line 508
    const-string v0, "_sonos"

    .line 509
    .line 510
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    if-eqz v0, :cond_19

    .line 515
    .line 516
    :cond_18
    invoke-virtual {p1, v7, v2, v3}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 517
    .line 518
    .line 519
    :cond_19
    const-string v0, "_amzn-wplay"

    .line 520
    .line 521
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    if-nez v0, :cond_1a

    .line 526
    .line 527
    const-string v0, "_amzn"

    .line 528
    .line 529
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    if-nez v0, :cond_1a

    .line 534
    .line 535
    const-string v0, "_nvstream"

    .line 536
    .line 537
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-nez v0, :cond_1a

    .line 542
    .line 543
    const-string v0, "_rsp"

    .line 544
    .line 545
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-nez v0, :cond_1a

    .line 550
    .line 551
    const-string v0, "_roku"

    .line 552
    .line 553
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    if-nez v0, :cond_1a

    .line 558
    .line 559
    const-string v0, "_viziocast"

    .line 560
    .line 561
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-nez v0, :cond_1a

    .line 566
    .line 567
    const-string v0, "_plexmediasvr"

    .line 568
    .line 569
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 570
    .line 571
    .line 572
    move-result v0

    .line 573
    if-eqz v0, :cond_1b

    .line 574
    .line 575
    :cond_1a
    invoke-virtual {p1, v8, v2, v3}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 576
    .line 577
    .line 578
    :cond_1b
    const-string v0, "_octoprint"

    .line 579
    .line 580
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    if-eqz v0, :cond_1c

    .line 585
    .line 586
    invoke-virtual {p1, v1, v2, v3}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 587
    .line 588
    .line 589
    :cond_1c
    const-string v0, "_dosvc"

    .line 590
    .line 591
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-nez v0, :cond_1d

    .line 596
    .line 597
    const-string v0, "_ms-device-info"

    .line 598
    .line 599
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    if-eqz v0, :cond_1e

    .line 604
    .line 605
    :cond_1d
    const-string v0, "Windows"

    .line 606
    .line 607
    invoke-virtual {p1, v0, v4, v5}, Ls3/a;->b(Ljava/lang/String;D)V

    .line 608
    .line 609
    .line 610
    :cond_1e
    const-string v0, "_psbsvc"

    .line 611
    .line 612
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 613
    .line 614
    .line 615
    move-result v0

    .line 616
    if-nez v0, :cond_1f

    .line 617
    .line 618
    const-string v0, "_ps4"

    .line 619
    .line 620
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    if-nez v0, :cond_1f

    .line 625
    .line 626
    const-string v0, "_xbox"

    .line 627
    .line 628
    invoke-virtual {p0, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    .line 629
    .line 630
    .line 631
    move-result p0

    .line 632
    if-eqz p0, :cond_20

    .line 633
    .line 634
    :cond_1f
    const-string p0, "Game console"

    .line 635
    .line 636
    invoke-virtual {p1, p0, v2, v3}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 637
    .line 638
    .line 639
    :cond_20
    return-void
.end method

.method public static T0(Ll4/l;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    const-string v0, "rootless_safe_boot"

    invoke-virtual {p0, v0}, Ll4/l;->x(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static U(Ls3/q;Ls3/a;)V
    .locals 6

    .line 1
    iget-object p0, p0, Ls3/q;->s:Ls3/l;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Ls3/l;->b:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-static {p0}, Li5/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Media player"

    const-wide v2, 0x3fd6666666666666L    # 0.35

    invoke-virtual {p1, v1, v2, v3}, Ls3/a;->c(Ljava/lang/String;D)V

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, p0, v2, v3}, Ls3/a;->a(Ljava/lang/String;D)V

    :cond_2
    const-string p0, "chromecast"

    const-string v1, "google home"

    const-string v4, "nest"

    const-string v5, "google tv"

    filled-new-array {p0, v1, v4, v5}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Google Cast"

    invoke-virtual {p1, p0, v2, v3}, Ls3/a;->b(Ljava/lang/String;D)V

    :cond_3
    const-string p0, "nest mini"

    const-string v2, "nest audio"

    const-string v3, "home mini"

    const-string v4, "home max"

    filled-new-array {v1, p0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "Speaker"

    const-wide v1, 0x3fd70a3d70a3d70aL    # 0.36

    invoke-virtual {p1, p0, v1, v2}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_4
    const-string p0, "android tv"

    const-string v1, "shield"

    const-string v2, "bravia"

    const-string v3, "philips tv"

    filled-new-array {p0, v5, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Smart TV"

    const-wide v1, 0x3fd7ae147ae147aeL    # 0.37

    invoke-virtual {p1, p0, v1, v2}, Ls3/a;->c(Ljava/lang/String;D)V

    const-string p0, "Android TV"

    invoke-virtual {p1, p0, v1, v2}, Ls3/a;->b(Ljava/lang/String;D)V

    :cond_5
    const-string p0, "google wifi"

    const-string v1, "nest wifi"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "Router"

    const-wide v0, 0x3fd851eb851eb852L    # 0.38

    invoke-virtual {p1, p0, v0, v1}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_6
    return-void
.end method

.method public static U0(Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public static V(Ls3/q;Ls3/a;)V
    .locals 7

    .line 1
    const v0, 0xf27e

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    const-wide v1, 0x3fc70a3d70a3d70aL    # 0.18

    if-eqz v0, :cond_0

    const-string v0, "Phone"

    invoke-virtual {p1, v0, v1, v2}, Ls3/a;->c(Ljava/lang/String;D)V

    const-string v0, "iOS"

    invoke-virtual {p1, v0, v1, v2}, Ls3/a;->b(Ljava/lang/String;D)V

    :cond_0
    const/16 v0, 0x15b3

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Android"

    invoke-virtual {p1, v0, v1, v2}, Ls3/a;->b(Ljava/lang/String;D)V

    :cond_1
    const/16 v0, 0xd3d

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    const-wide v3, 0x3fc5c28f5c28f5c2L    # 0.16999999999999998

    const/16 v5, 0x1bd

    if-nez v0, :cond_2

    invoke-virtual {p0, v5}, Ls3/q;->e(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "Windows"

    invoke-virtual {p1, v0, v1, v2}, Ls3/a;->b(Ljava/lang/String;D)V

    const-string v0, "Computer"

    invoke-virtual {p1, v0, v3, v4}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_3
    const/16 v0, 0x238c

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x203

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x277

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "Printer"

    invoke-virtual {p1, v0, v1, v2}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_5
    const/16 v0, 0x22a

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x216a

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x9391

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x870b

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "IP camera"

    invoke-virtual {p1, v0, v1, v2}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_7
    const/16 v0, 0x1f49

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x1f48

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const-string v0, "Media player"

    invoke-virtual {p1, v0, v1, v2}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_9
    const/16 v0, 0x7e90

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    const-string v6, "Server"

    if-eqz v0, :cond_a

    invoke-virtual {p1, v6, v1, v2}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_a
    const/16 v0, 0x1d7b

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0x6bb

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const-string v0, "Router"

    invoke-virtual {p1, v0, v1, v2}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_c
    const/16 v0, 0x224

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    const-wide v1, 0x3fc47ae147ae147bL    # 0.16

    if-nez v0, :cond_d

    const/16 v0, 0x801

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    const-string v0, "NAS"

    invoke-virtual {p1, v0, v1, v2}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_e
    const/16 v0, 0x75b

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x22b3

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const-string v0, "Smart device"

    invoke-virtual {p1, v0, v1, v2}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_10
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, v5}, Ls3/q;->e(I)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "Linux/Unix"

    const-wide v1, 0x3fc3333333333333L    # 0.15

    invoke-virtual {p1, v0, v1, v2}, Ls3/a;->b(Ljava/lang/String;D)V

    :cond_11
    const/16 v0, 0xcea

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x1538

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x6989

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x18eb

    invoke-virtual {p0, v0}, Ls3/q;->e(I)Z

    move-result p0

    if-eqz p0, :cond_13

    :cond_12
    invoke-virtual {p1, v6, v3, v4}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_13
    return-void
.end method

.method public static V0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    const-string p0, "\'\'"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\'\\\'\'"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static W(Ls3/q;Ls3/a;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Ls3/q;->r:Ls3/o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Ls3/o;->a:Ljava/lang/String;

    invoke-static {v2}, Li5/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget-object v3, v0, Ls3/o;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x50

    iget-object v0, v0, Ls3/o;->a:Ljava/lang/String;

    if-le v3, v4, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v1, v0, v3, v4}, Ls3/a;->a(Ljava/lang/String;D)V

    const-string v5, "jetdirect"

    const-string v6, "laserjet"

    const-string v7, "officejet"

    const-string v8, "deskjet"

    const-string v9, "brother"

    const-string v10, "canon"

    const-string v11, "epson"

    const-string v12, "lexmark"

    const-string v13, "kyocera"

    const-string v14, "ricoh"

    const-string v15, "xerox"

    const-string v16, "printer"

    filled-new-array/range {v5 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Printer"

    invoke-virtual {v1, v0, v3, v4}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_3
    const-string v5, "cisco ios"

    const-string v6, "mikrotik"

    const-string v7, "routeros"

    const-string v8, "openwrt"

    const-string v9, "dd-wrt"

    const-string v10, "pfsense"

    const-string v11, "edgeos"

    const-string v12, "vyos"

    const-string v13, "junos"

    const-string v14, "fortigate"

    const-string v15, "keenetic"

    const-string v16, "tp-link router"

    filled-new-array/range {v5 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Router"

    invoke-virtual {v1, v0, v3, v4}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_4
    const-string v0, "unifi"

    const-string v5, "aruba"

    const-string v6, "ubiquiti"

    const-string v7, "ruckus"

    const-string v8, "access point"

    filled-new-array {v6, v0, v5, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Access point"

    invoke-virtual {v1, v0, v3, v4}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_5
    const-string v0, "catalyst"

    const-string v5, "procurve"

    const-string v6, "switch"

    const-string v7, "netgear gs"

    const-string v8, "dgs-"

    filled-new-array {v6, v0, v5, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Switch"

    invoke-virtual {v1, v0, v3, v4}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_6
    const-string v0, "qnap"

    const-string v5, "diskstation"

    const-string v6, "synology"

    const-string v7, "truenas"

    const-string v8, "freenas"

    filled-new-array {v6, v0, v5, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "NAS"

    invoke-virtual {v1, v0, v3, v4}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_7
    const-string v0, "apc "

    const-string v5, "ups "

    const-string v6, "smart-ups"

    const-string v7, "eaton"

    filled-new-array {v0, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Smart device"

    invoke-virtual {v1, v0, v3, v4}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_8
    const-string v0, "windows"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Windows"

    :goto_0
    invoke-virtual {v1, v0, v3, v4}, Ls3/a;->b(Ljava/lang/String;D)V

    goto :goto_1

    :cond_9
    const-string v0, "linux"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Linux"

    goto :goto_0

    :cond_a
    const-string v5, "freebsd"

    const-string v6, "openbsd"

    const-string v7, "netbsd"

    const-string v8, "sunos"

    const-string v9, "solaris"

    const-string v10, "hp-ux"

    const-string v11, "aix"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Unix"

    goto :goto_0

    :cond_b
    const-string v0, "darwin"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "macOS"

    goto :goto_0

    :cond_c
    const-string v5, "ios "

    const-string v6, "ios-xe"

    const-string v7, "routeros"

    const-string v8, "junos"

    const-string v9, "vxworks"

    const-string v10, "openwrt"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Network OS"

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    invoke-virtual {v1, v0, v2, v3}, Ls3/a;->b(Ljava/lang/String;D)V

    :cond_d
    :goto_1
    return-void
.end method

.method public static W0(Lo2/o;Lu2/d;)V
    .locals 2

    .line 1
    sget v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->v:I

    .line 2
    .line 3
    iget-object p0, p0, Lo2/o;->a:Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lf/n0;

    .line 9
    .line 10
    const/16 v1, 0x13

    .line 11
    .line 12
    invoke-direct {v0, p0, p1, v1}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->f(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static X(Ls3/q;Ls3/a;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ls3/q;->q:Ls3/p;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v2, Ls3/p;->c:Ljava/lang/String;

    invoke-static {v3}, Li5/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Ls3/p;->d:Ljava/lang/String;

    invoke-static {v4}, Li5/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Ls3/p;->e:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string v5, ""

    :cond_1
    invoke-static {v5}, Li5/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Ls3/p;->j:Ljava/lang/String;

    invoke-static {v7}, Li5/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v2, Ls3/p;->b:Ljava/lang/String;

    invoke-static {v2}, Li5/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    const-wide v9, 0x3fd999999999999aL    # 0.4

    if-nez v8, :cond_2

    invoke-virtual {v1, v5, v9, v10}, Ls3/a;->a(Ljava/lang/String;D)V

    :cond_2
    const-string v5, "wanconnectiondevice"

    const-string v8, "internetgatewaydevice"

    const-string v11, "wandevice"

    filled-new-array {v8, v11, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "Router"

    invoke-virtual {v1, v5, v9, v10}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_3
    iget-boolean v5, v0, Ls3/q;->c:Z

    const-wide v11, 0x3fd851eb851eb852L    # 0.38

    const-string v8, "Smart TV"

    const-string v13, "mediarenderer"

    if-nez v5, :cond_4

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v8, v11, v12}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_4
    iget-boolean v0, v0, Ls3/q;->c:Z

    const-string v5, "Server"

    if-nez v0, :cond_5

    const-string v0, "mediaserver"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v5, v11, v12}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_5
    const-string v0, "printer"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Printer"

    invoke-virtual {v1, v0, v9, v10}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_6
    const-string v0, "zoneplayer"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "sonos"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const-string v0, "Speaker"

    invoke-virtual {v1, v0, v9, v10}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_8
    const-string v0, "digitalsecuritycamera"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ipcamera"

    const-string v11, "ip camera"

    filled-new-array {v0, v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const-string v0, "IP camera"

    invoke-virtual {v1, v0, v9, v10}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_a
    const-string v14, "samsung"

    const-string v15, "lg elec"

    const-string v16, "sony"

    const-string v17, "philips"

    const-string v18, "vizio"

    const-string v19, "hisense"

    const-string v20, "panasonic"

    const-string v21, "sharp"

    const-string v22, "tcl"

    filled-new-array/range {v14 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "basic"

    filled-new-array {v13, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1, v8, v9, v10}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_b
    const-string v0, "xbox"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    const-string v8, "Game console"

    if-nez v3, :cond_c

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {v1, v8, v9, v10}, Ls3/a;->c(Ljava/lang/String;D)V

    const-string v0, "Xbox"

    invoke-virtual {v1, v0, v9, v10}, Ls3/a;->b(Ljava/lang/String;D)V

    :cond_d
    const-string v0, "playstation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    invoke-virtual {v1, v8, v9, v10}, Ls3/a;->c(Ljava/lang/String;D)V

    const-string v0, "PlayStation"

    invoke-virtual {v1, v0, v9, v10}, Ls3/a;->b(Ljava/lang/String;D)V

    :cond_f
    const-string v0, "plex"

    const-string v2, "kodi"

    const-string v3, "jellyfin"

    const-string v8, "emby"

    filled-new-array {v0, v2, v3, v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v1, v5, v9, v10}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_10
    const-string v0, "windows"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    const-wide v2, 0x3fd6666666666667L    # 0.35000000000000003

    if-eqz v0, :cond_11

    const-string v0, "Windows"

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Ls3/a;->b(Ljava/lang/String;D)V

    goto :goto_1

    :cond_11
    const-string v0, "linux"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "Linux"

    goto :goto_0

    :cond_12
    const-string v0, "darwin"

    const-string v5, "mac os"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "macOS"

    goto :goto_0

    :cond_13
    :goto_1
    const-string v0, "synology"

    const-string v2, "qnap"

    const-string v3, "western digital"

    const-string v5, "asustor"

    filled-new-array {v0, v2, v3, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "NAS"

    invoke-virtual {v1, v0, v9, v10}, Ls3/a;->c(Ljava/lang/String;D)V

    :cond_14
    return-void
.end method

.method public static X0(Ln5/c;I)Ln5/a;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "step"

    .line 16
    .line 17
    invoke-static {v1, v2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget v0, p0, Ln5/a;->c:I

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    neg-int p1, p1

    .line 28
    :goto_1
    new-instance v0, Ln5/a;

    .line 29
    .line 30
    iget v1, p0, Ln5/a;->a:I

    .line 31
    .line 32
    iget p0, p0, Ln5/a;->b:I

    .line 33
    .line 34
    invoke-direct {v0, v1, p0, p1}, Ln5/a;-><init>(III)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v0, "Step must be positive, was: "

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v0, 0x2e

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method public static Y(Ls3/q;Ls3/a;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Ls3/q;->f:Ljava/lang/String;

    invoke-static {v0}, Li5/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, "apple"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Phone"

    const-wide v4, 0x3fc3333333333333L    # 0.15

    if-eqz v2, :cond_1

    const-string v0, "iOS/macOS"

    invoke-virtual {v1, v0, v4, v5}, Ls3/a;->b(Ljava/lang/String;D)V

    :goto_0
    invoke-virtual {v1, v3, v4, v5}, Ls3/a;->c(Ljava/lang/String;D)V

    goto/16 :goto_2

    :cond_1
    const-string v6, "samsung"

    const-string v7, "xiaomi"

    const-string v8, "huawei"

    const-string v9, "oneplus"

    const-string v10, "oppo"

    const-string v11, "vivo mobile"

    const-string v12, "realme"

    const-string v13, "motorola"

    const-string v14, "honor"

    const-string v15, "meizu"

    const-string v16, "lenovo mobile"

    const-string v17, "tcl communication"

    const-string v18, "transsion"

    filled-new-array/range {v6 .. v18}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    const-string v6, "Android"

    if-eqz v2, :cond_2

    invoke-virtual {v1, v6, v4, v5}, Ls3/a;->b(Ljava/lang/String;D)V

    goto :goto_0

    :cond_2
    const-string v2, "google"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v6, v4, v5}, Ls3/a;->b(Ljava/lang/String;D)V

    goto/16 :goto_2

    :cond_3
    const-string v7, "tp-link"

    const-string v8, "d-link"

    const-string v9, "netgear"

    const-string v10, "keenetic"

    const-string v11, "mikrotik"

    const-string v12, "zyxel"

    const-string v13, "tenda"

    const-string v14, "asustek"

    const-string v15, "linksys"

    const-string v16, "ubiquiti"

    const-string v17, "mercusys"

    const-string v18, "totolink"

    const-string v19, "sagemcom"

    const-string v20, "technicolor"

    const-string v21, "arris"

    const-string v22, "avm "

    const-string v23, "fritz"

    const-string v24, "eltex"

    const-string v25, "rostelecom"

    filled-new-array/range {v7 .. v25}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "Router"

    invoke-virtual {v1, v0, v4, v5}, Ls3/a;->c(Ljava/lang/String;D)V

    const-string v0, "Linux/Unix"

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v1, v0, v2, v3}, Ls3/a;->b(Ljava/lang/String;D)V

    goto/16 :goto_2

    :cond_4
    const-string v6, "hikvision"

    const-string v7, "dahua"

    const-string v8, "axis communications"

    const-string v9, "reolink"

    const-string v10, "amcrest"

    const-string v11, "uniview"

    const-string v12, "ezviz"

    const-string v13, "foscam"

    const-string v14, "vivotek"

    filled-new-array/range {v6 .. v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "IP camera"

    :goto_1
    invoke-virtual {v1, v0, v4, v5}, Ls3/a;->c(Ljava/lang/String;D)V

    goto/16 :goto_2

    :cond_5
    const-string v6, "hewlett"

    const-string v7, "brother"

    const-string v8, "canon"

    const-string v9, "seiko epson"

    const-string v10, "epson"

    const-string v11, "kyocera"

    const-string v12, "lexmark"

    const-string v13, "ricoh"

    const-string v14, "xerox"

    const-string v15, "pantum"

    const-string v16, "oki data"

    const-string v17, "zebra techn"

    filled-new-array/range {v6 .. v17}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "Printer"

    goto :goto_1

    :cond_6
    const-string v6, "synology"

    const-string v7, "qnap"

    const-string v8, "western digital"

    const-string v9, "buffalo"

    const-string v10, "terramaster"

    const-string v11, "asustor"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "NAS"

    goto :goto_1

    :cond_7
    const-string v6, "sonos"

    const-string v7, "bose"

    const-string v8, "denon"

    const-string v9, "yamaha"

    const-string v10, "harman"

    const-string v11, "marshall"

    const-string v12, "jbl"

    const-string v13, "sonance"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "Speaker"

    goto :goto_1

    :cond_8
    const-string v6, "espressif"

    const-string v7, "tuya"

    const-string v8, "shelly"

    const-string v9, "sonoff"

    const-string v10, "itead"

    const-string v11, "broadlink"

    const-string v12, "nest labs"

    const-string v13, "ecobee"

    const-string v14, "irobot"

    const-string v15, "roborock"

    const-string v16, "tasmota"

    const-string v17, "signify"

    const-string v18, "philips lighting"

    const-string v19, "lifi labs"

    const-string v20, "aqara"

    const-string v21, "lumi united"

    const-string v22, "sengled"

    const-string v23, "wyze"

    filled-new-array/range {v6 .. v23}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "Smart device"

    goto/16 :goto_1

    :cond_9
    const-string v2, "raspberry"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Computer"

    if-eqz v2, :cond_a

    invoke-virtual {v1, v3, v4, v5}, Ls3/a;->c(Ljava/lang/String;D)V

    const-string v0, "Linux"

    invoke-virtual {v1, v0, v4, v5}, Ls3/a;->b(Ljava/lang/String;D)V

    goto :goto_2

    :cond_a
    const-string v6, "intel corporate"

    const-string v7, "dell"

    const-string v8, "micro-star"

    const-string v9, "gigabyte"

    const-string v10, "asrock"

    const-string v11, "microsoft"

    const-string v12, "framework"

    const-string v13, "clevo"

    const-string v14, "tuxedo"

    filled-new-array/range {v6 .. v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const-string v2, "nintendo"

    const-string v3, "sony interactive"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, "Game console"

    goto/16 :goto_1

    :cond_c
    const-string v2, "roku"

    const-string v3, "amazon technologies"

    const-string v6, "amazon.com"

    const-string v7, "nvidia"

    filled-new-array {v2, v3, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v0, "Media player"

    goto/16 :goto_1

    :cond_d
    const-string v6, "lg electronics"

    const-string v7, "sony corporation"

    const-string v8, "vizio"

    const-string v9, "hisense"

    const-string v10, "vestel"

    const-string v11, "panasonic"

    const-string v12, "sharp"

    const-string v13, "philips consumer"

    const-string v14, "skyworth"

    const-string v15, "tcl "

    filled-new-array/range {v6 .. v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Li5/a;->u(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Smart TV"

    goto/16 :goto_1

    :cond_e
    :goto_2
    return-void
.end method

.method public static Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lorg/json/JSONObject;

    if-nez p1, :cond_2

    instance-of p1, p0, Lorg/json/JSONArray;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static final Z(Lo5/c;)Ljava/lang/Class;
    .locals 2

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/internal/c;

    invoke-interface {p0}, Lkotlin/jvm/internal/c;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-class p0, Ljava/lang/Short;

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-class p0, Ljava/lang/Float;

    goto :goto_0

    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-class p0, Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-class p0, Ljava/lang/Void;

    goto :goto_0

    :sswitch_4
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const-class p0, Ljava/lang/Long;

    goto :goto_0

    :sswitch_5
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const-class p0, Ljava/lang/Character;

    goto :goto_0

    :sswitch_6
    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    :sswitch_7
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    :sswitch_8
    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const-class p0, Ljava/lang/Double;

    :goto_0
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static Z0(Ljava/io/Serializable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a0(IJ)I
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3a98

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    const-string v0, "n=$(nproc 2>/dev/null); case \"$n\" in \'\'|*[!0-9]*) n=$(grep -c \'^processor\' /proc/cpuinfo 2>/dev/null);; esac; case \"$n\" in \'\'|*[!0-9]*) n=0;; esac; printf \'\\n__CORES__%s__CORES_END__\\n\' \"$n\""

    .line 13
    .line 14
    const-string v1, "__CORES_END__"

    .line 15
    .line 16
    invoke-static {v0, v1, p1, p2}, Li5/a;->S0(Ljava/lang/String;Ljava/lang/String;J)Lu2/n;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p1, p1, Lu2/n;->a:Ljava/lang/String;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const-string v0, "__CORES__"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-gez v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    add-int/lit8 v0, v0, 0x9

    .line 36
    .line 37
    move v1, p2

    .line 38
    move v2, v1

    .line 39
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ge v0, v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/16 v4, 0x30

    .line 50
    .line 51
    if-lt v3, v4, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/16 v5, 0x39

    .line 58
    .line 59
    if-gt v3, v5, :cond_2

    .line 60
    .line 61
    const/4 v3, 0x4

    .line 62
    if-ge v1, v3, :cond_2

    .line 63
    .line 64
    mul-int/lit8 v2, v2, 0xa

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    sub-int/2addr v3, v4

    .line 71
    add-int/2addr v2, v3

    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    if-nez v1, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move p2, v2

    .line 81
    :goto_1
    const/4 p1, 0x1

    .line 82
    if-ge p2, p1, :cond_4

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    move p0, p2

    .line 86
    :goto_2
    if-ge p0, p1, :cond_5

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_5
    const/16 p1, 0x20

    .line 90
    .line 91
    if-le p0, p1, :cond_6

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_6
    move p1, p0

    .line 95
    :goto_3
    return p1
.end method

.method public static a1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    const-string v0, "."

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {p0, v0, v1}, Lorg/bouncycastle/math/ec/a;->c(Ljava/lang/String;II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return-object p0
.end method

.method public static b0(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;Lo2/o;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const/high16 p1, 0x10000

    invoke-direct {v1, p0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-array p1, p1, [B

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v4, v2

    :cond_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v6, v6

    add-long/2addr v2, v6

    sub-long v6, v2, v4

    const-wide/32 v8, 0x1000000

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const-string v4, "rootfs.img"

    invoke-virtual {p3, v4, v2, v3}, Lo2/o;->a(Ljava/lang/String;J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "rename failed for "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "rootfs.img ready ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Li5/a;->r0(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p3, p1, p0}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
.end method

.method public static b1(Ljava/util/ArrayList;IJD)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0xa

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu2/p;

    iget v3, v1, Lu2/p;->a:I

    if-ne v3, p1, :cond_0

    invoke-virtual {v1}, Lu2/p;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\u2605 "

    goto :goto_1

    :cond_0
    const-string v3, "  "

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lu2/p;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " vCPU \u2192 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lu2/p;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, v1, Lu2/p;->b:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v3, "failed ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lu2/p;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "unknown"

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-lez p0, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x18

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    double-to-long p3, p4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Workload: %,d shell ops in %d slices \u00b7 guest shell %,d ops/s"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/StringBuilder;Ljava/lang/Object;Lj5/l;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    :cond_0
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    if-eqz p2, :cond_2

    :goto_2
    goto :goto_0

    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    goto :goto_3

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_3
    return-void
.end method

.method public static c0(Ljava/io/File;Ljava/io/File;Lo2/o;)Z
    .locals 13

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 p0, 0x10000

    invoke-direct {v3, v4, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-array p0, p0, [B

    const-wide/16 v5, 0x0

    :goto_0
    move-wide v7, v5

    :cond_0
    invoke-virtual {v3, p0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    invoke-virtual {v4, p0, v2, v9}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v9, v9

    add-long/2addr v5, v9

    sub-long v9, v5, v7

    const-wide/32 v11, 0x1000000

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    const-string v7, "rootfs.img"

    invoke-virtual {p2, v7, v5, v6}, Lo2/o;->a(Ljava/lang/String;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "rename failed for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v1, p0}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    return v2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "rootfs.img ready ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Li5/a;->r0(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p2, p1, p0}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Decompression failed: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v1, p0}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return v2
.end method

.method public static c1(Ls3/q;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ls3/q;->k:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move-object v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Ls3/q;->k:Ljava/lang/String;

    .line 10
    .line 11
    :goto_0
    iget-object v2, p0, Ls3/q;->j:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget-object v1, p0, Ls3/q;->j:Ljava/lang/String;

    .line 17
    .line 18
    :goto_1
    invoke-static {v0}, Li5/a;->j0(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_2
    invoke-static {v0}, Li5/a;->j0(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_3

    .line 30
    .line 31
    const-string p0, "Server"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_3

    .line 38
    .line 39
    const-string p0, "Smart TV"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_3

    .line 46
    .line 47
    const-string p0, "Media player"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_3

    .line 54
    .line 55
    const-string p0, "Speaker"

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_3

    .line 62
    .line 63
    const-string p0, "Game console"

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_4

    .line 70
    .line 71
    :cond_3
    const-string p0, "Windows"

    .line 72
    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_8

    .line 78
    .line 79
    const-string p0, "Linux"

    .line 80
    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_8

    .line 86
    .line 87
    const-string p0, "Android"

    .line 88
    .line 89
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-nez p0, :cond_8

    .line 94
    .line 95
    const-string p0, "IOS"

    .line 96
    .line 97
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-nez p0, :cond_8

    .line 102
    .line 103
    const-string p0, "MacOS"

    .line 104
    .line 105
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-nez p0, :cond_8

    .line 110
    .line 111
    const-string p0, "Apple"

    .line 112
    .line 113
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-eqz p0, :cond_4

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-nez p0, :cond_5

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-nez p0, :cond_5

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    if-nez p0, :cond_5

    .line 137
    .line 138
    const-string p0, " \u00b7 "

    .line 139
    .line 140
    invoke-static {v0, p0, v1}, Landroid/support/v4/media/session/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-nez p0, :cond_6

    .line 150
    .line 151
    return-object v0

    .line 152
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-nez p0, :cond_7

    .line 157
    .line 158
    return-object v1

    .line 159
    :cond_7
    const-string p0, "Unknown"

    .line 160
    .line 161
    return-object p0

    .line 162
    :cond_8
    :goto_2
    return-object v0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final d0(La5/j;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lr5/f;->a:Lr5/f;

    .line 2
    .line 3
    invoke-interface {p0, v0}, La5/j;->get(La5/i;)La5/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lr5/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0, p1}, Lr5/h;->a(La5/j;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_1
    invoke-interface {v0, p0, p1}, Lr5/g;->handleException(La5/j;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 24
    .line 25
    const-string v2, "Exception while trying to handle coroutine exception"

    .line 26
    .line 27
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, p1}, Lv1/f;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    move-object p1, v1

    .line 34
    :goto_0
    invoke-static {p0, p1}, Lr5/h;->a(La5/j;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static final d1(JJJLjava/lang/String;)J
    .locals 24

    .line 1
    move-wide/from16 v0, p2

    .line 2
    .line 3
    move-wide/from16 v2, p4

    .line 4
    .line 5
    move-object/from16 v4, p6

    .line 6
    .line 7
    sget v5, Lt5/j;->a:I

    .line 8
    .line 9
    :try_start_0
    invoke-static/range {p6 .. p6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 v6, 0x0

    .line 15
    :goto_0
    if-nez v6, :cond_0

    .line 16
    .line 17
    move-wide/from16 v8, p0

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_0
    const/16 v7, 0xa

    .line 22
    .line 23
    invoke-static {v7}, Li5/a;->q(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-nez v8, :cond_2

    .line 31
    .line 32
    :cond_1
    :goto_1
    move-object/from16 v20, v6

    .line 33
    .line 34
    :goto_2
    const/4 v5, 0x0

    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_2
    const/4 v9, 0x0

    .line 38
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    const/16 v11, 0x30

    .line 43
    .line 44
    invoke-static {v10, v11}, Li5/a;->t(II)I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    if-gez v11, :cond_5

    .line 54
    .line 55
    const/4 v11, 0x1

    .line 56
    if-ne v8, v11, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const/16 v14, 0x2d

    .line 60
    .line 61
    if-ne v10, v14, :cond_4

    .line 62
    .line 63
    const-wide/high16 v12, -0x8000000000000000L

    .line 64
    .line 65
    move v9, v11

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    const/16 v14, 0x2b

    .line 68
    .line 69
    if-ne v10, v14, :cond_1

    .line 70
    .line 71
    move/from16 v23, v11

    .line 72
    .line 73
    move v11, v9

    .line 74
    move/from16 v9, v23

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_5
    move v11, v9

    .line 78
    :goto_3
    const-wide/16 v16, 0x0

    .line 79
    .line 80
    move-wide/from16 v14, v16

    .line 81
    .line 82
    const-wide v16, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :goto_4
    if-ge v9, v8, :cond_a

    .line 88
    .line 89
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    invoke-static {v10, v7}, Ljava/lang/Character;->digit(II)I

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    if-gez v10, :cond_6

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    cmp-long v18, v14, v16

    .line 101
    .line 102
    if-gez v18, :cond_7

    .line 103
    .line 104
    const-wide v18, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    cmp-long v16, v16, v18

    .line 110
    .line 111
    if-nez v16, :cond_1

    .line 112
    .line 113
    move-object/from16 v20, v6

    .line 114
    .line 115
    int-to-long v5, v7

    .line 116
    div-long v16, v12, v5

    .line 117
    .line 118
    cmp-long v5, v14, v16

    .line 119
    .line 120
    if-gez v5, :cond_8

    .line 121
    .line 122
    :goto_5
    goto :goto_2

    .line 123
    :cond_7
    move-object/from16 v20, v6

    .line 124
    .line 125
    const-wide v18, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    :cond_8
    int-to-long v5, v7

    .line 131
    mul-long/2addr v14, v5

    .line 132
    int-to-long v5, v10

    .line 133
    add-long v21, v12, v5

    .line 134
    .line 135
    cmp-long v10, v14, v21

    .line 136
    .line 137
    if-gez v10, :cond_9

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_9
    sub-long/2addr v14, v5

    .line 141
    add-int/lit8 v9, v9, 0x1

    .line 142
    .line 143
    move-object/from16 v6, v20

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_a
    move-object/from16 v20, v6

    .line 147
    .line 148
    if-eqz v11, :cond_b

    .line 149
    .line 150
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    goto :goto_6

    .line 155
    :cond_b
    neg-long v5, v14

    .line 156
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    :goto_6
    const/16 v6, 0x27

    .line 161
    .line 162
    const-string v7, "System property \'"

    .line 163
    .line 164
    if-eqz v5, :cond_d

    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 167
    .line 168
    .line 169
    move-result-wide v8

    .line 170
    cmp-long v5, v0, v8

    .line 171
    .line 172
    if-gtz v5, :cond_c

    .line 173
    .line 174
    cmp-long v5, v8, v2

    .line 175
    .line 176
    if-gtz v5, :cond_c

    .line 177
    .line 178
    :goto_7
    return-wide v8

    .line 179
    :cond_c
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 180
    .line 181
    new-instance v10, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v4, "\' should be in range "

    .line 190
    .line 191
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v0, ".."

    .line 198
    .line 199
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v0, ", but is \'"

    .line 206
    .line 207
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v5

    .line 228
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 229
    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v2, "\' has unrecognized value \'"

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    move-object/from16 v5, v20

    .line 244
    .line 245
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v0
.end method

.method public static e(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    instance-of v0, p0, Lk5/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p0, Lk5/b;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "kotlin.collections.MutableList"

    .line 11
    .line 12
    invoke-static {p0, v0}, Li5/a;->f1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    throw p0

    .line 17
    :cond_1
    :goto_0
    :try_start_0
    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-class v0, Li5/a;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0, p0}, Li5/a;->U0(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static e0(J)Ljava/lang/String;
    .locals 3

    .line 1
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-double p0, p0

    const-wide/high16 v1, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f GB"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-double p0, p0

    const-wide/high16 v1, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.0f MB"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e1(Ljava/lang/String;IIII)I
    .locals 7

    .line 1
    and-int/lit8 v0, p4, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x8

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const p3, 0x7fffffff

    .line 11
    .line 12
    .line 13
    :cond_1
    int-to-long v0, p1

    .line 14
    int-to-long v2, p2

    .line 15
    int-to-long v4, p3

    .line 16
    move-object v6, p0

    .line 17
    invoke-static/range {v0 .. v6}, Li5/a;->d1(JJJLjava/lang/String;)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    long-to-int p0, p0

    .line 22
    return p0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "rootless"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    array-length v2, v1

    move v3, v0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v3, v2, :cond_5

    aget-object v9, v1, v3

    const-string v10, "qemu-system-aarch64"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v4, v8

    goto :goto_1

    :cond_1
    const-string v10, "Image"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v5, v8

    goto :goto_1

    :cond_2
    const-string v10, "libslirp.so"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v6, v8

    goto :goto_1

    :cond_3
    const-string v10, "initrd.img"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v7, v8

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    invoke-static {p0}, Li5/a;->P0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_6

    move v0, v8

    :catch_0
    :cond_6
    return v0
.end method

.method public static f0(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "pins"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Ly2/b;->a(Lorg/json/JSONObject;)Ly2/b;

    move-result-object v2

    iget-object v3, v2, Ly2/b;->a:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0

    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method

.method public static f1(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    const-string v0, " cannot be cast to "

    .line 15
    .line 16
    invoke-static {p0, v0, p1}, Landroid/support/v4/media/session/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance p1, Ljava/lang/ClassCastException;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-class p0, Li5/a;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0, p1}, Li5/a;->U0(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public static g(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "rootless"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static g0(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "initrd.img"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static g1(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "lateinit property "

    .line 2
    .line 3
    const-string v1, " has not been initialized"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Landroidx/fragment/app/u;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-class p0, Li5/a;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0, v0}, Li5/a;->U0(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public static h(Ll4/l;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Li5/a;->T0(Ll4/l;)Z

    move-result v0

    const-string v1, "writeback"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "rootless_cache_mode"

    invoke-virtual {p0, v0}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "writethrough"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "unsafe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-object v1

    :pswitch_0
    return-object p0

    :cond_6
    :goto_1
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x53ccaaba -> :sswitch_3
        -0x3215265a -> :sswitch_2
        -0x115695fa -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static h0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "apt-get -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold -o APT::Sandbox::User=root -o Acquire::Retries=3 install -y --no-install-recommends "

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static h1(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "|"

    .line 7
    .line 8
    invoke-static {v0}, Lq5/h;->w1(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    xor-int/2addr v1, v2

    .line 14
    if-eqz v1, :cond_a

    .line 15
    .line 16
    const-string v1, "\r\n"

    .line 17
    .line 18
    const-string v3, "\n"

    .line 19
    .line 20
    const-string v4, "\r"

    .line 21
    .line 22
    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {p0, v1, v3, v3}, Lq5/h;->z1(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lq5/c;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v4, Lx4/a;

    .line 32
    .line 33
    invoke-direct {v4, p0, v2}, Lx4/a;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lp5/f;

    .line 37
    .line 38
    invoke-direct {v5, v1, v4}, Lp5/f;-><init>(Lp5/g;Lj5/l;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v5}, Lp5/j;->k1(Lp5/g;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lv1/f;->v(Ljava/util/List;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    new-instance v5, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move v6, v3

    .line 66
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    const/4 v8, 0x0

    .line 71
    if-eqz v7, :cond_9

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    add-int/lit8 v9, v6, 0x1

    .line 78
    .line 79
    if-ltz v6, :cond_8

    .line 80
    .line 81
    check-cast v7, Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v6, :cond_0

    .line 84
    .line 85
    if-ne v6, v4, :cond_1

    .line 86
    .line 87
    :cond_0
    invoke-static {v7}, Lq5/h;->w1(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_1

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    move v10, v3

    .line 99
    :goto_1
    const/4 v11, -0x1

    .line 100
    if-ge v10, v6, :cond_3

    .line 101
    .line 102
    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    invoke-static {v12}, Li5/a;->m0(C)Z

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    xor-int/2addr v12, v2

    .line 111
    if-eqz v12, :cond_2

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    move v10, v11

    .line 118
    :goto_2
    if-ne v10, v11, :cond_4

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    invoke-static {v7, v0, v10, v3}, Lq5/h;->J1(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_5

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    add-int/2addr v6, v10

    .line 132
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    const-string v6, "this as java.lang.String).substring(startIndex)"

    .line 137
    .line 138
    invoke-static {v8, v6}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_6
    move-object v8, v7

    .line 145
    :goto_4
    if-eqz v8, :cond_7

    .line 146
    .line 147
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :cond_7
    move v6, v9

    .line 151
    goto :goto_0

    .line 152
    :cond_8
    invoke-static {}, Lv1/f;->V()V

    .line 153
    .line 154
    .line 155
    throw v8

    .line 156
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 159
    .line 160
    .line 161
    const/16 p0, 0x7c

    .line 162
    .line 163
    invoke-static {v5, v0, v8, p0}, Lx4/m;->z0(Ljava/util/List;Ljava/lang/StringBuilder;Lj5/l;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    const-string v0, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    .line 171
    .line 172
    invoke-static {p0, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-object p0

    .line 176
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 177
    .line 178
    const-string v0, "marginPrefix must be non-blank string."

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p0
.end method

.method public static i(J)Lu2/m;
    .locals 15

    .line 1
    const-wide/16 v0, 0x4e20

    .line 2
    .line 3
    :goto_0
    invoke-static {}, Li5/a;->l()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const-wide/16 v4, 0x7530

    .line 11
    .line 12
    add-long/2addr v2, v4

    .line 13
    move-wide v4, p0

    .line 14
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v7, "i=0; while [ $i -lt "

    .line 21
    .line 22
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v7, " ]; do i=$((i+1)); done; printf \'\\n__PROBE_DONE__\\n\'"

    .line 29
    .line 30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const-string v7, "__PROBE_DONE__"

    .line 38
    .line 39
    invoke-static {v6, v7, v2, v3}, Li5/a;->S0(Ljava/lang/String;Ljava/lang/String;J)Lu2/n;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v8, "shell too slow"

    .line 44
    .line 45
    iget-boolean v3, v2, Lu2/n;->d:Z

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    new-instance v0, Lu2/m;

    .line 50
    .line 51
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    const-wide/16 v6, 0x0

    .line 54
    .line 55
    move-object v3, v0

    .line 56
    invoke-direct/range {v3 .. v8}, Lu2/m;-><init>(JDLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_0
    iget-boolean v3, v2, Lu2/n;->e:Z

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    const-string v14, "boot failed"

    .line 65
    .line 66
    new-instance v0, Lu2/m;

    .line 67
    .line 68
    const-wide/16 v10, 0x0

    .line 69
    .line 70
    const-wide/16 v12, 0x0

    .line 71
    .line 72
    move-object v9, v0

    .line 73
    invoke-direct/range {v9 .. v14}, Lu2/m;-><init>(JDLjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_1
    iget-boolean v3, v2, Lu2/n;->c:Z

    .line 78
    .line 79
    if-nez v3, :cond_2

    .line 80
    .line 81
    const-string v14, "no marker"

    .line 82
    .line 83
    new-instance v0, Lu2/m;

    .line 84
    .line 85
    const-wide/16 v10, 0x0

    .line 86
    .line 87
    const-wide/16 v12, 0x0

    .line 88
    .line 89
    move-object v9, v0

    .line 90
    invoke-direct/range {v9 .. v14}, Lu2/m;-><init>(JDLjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_2
    const-wide/16 v6, 0x1

    .line 95
    .line 96
    iget-wide v2, v2, Lu2/n;->b:J

    .line 97
    .line 98
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    const-wide/16 v6, 0x1f4

    .line 103
    .line 104
    cmp-long v6, v2, v6

    .line 105
    .line 106
    if-gez v6, :cond_4

    .line 107
    .line 108
    const-wide/32 v6, 0x138800

    .line 109
    .line 110
    .line 111
    cmp-long v6, v0, v6

    .line 112
    .line 113
    if-ltz v6, :cond_3

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    const-wide/16 v2, 0x4

    .line 117
    .line 118
    mul-long/2addr v0, v2

    .line 119
    goto :goto_0

    .line 120
    :cond_4
    :goto_1
    long-to-double v0, v0

    .line 121
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    mul-double/2addr v0, v4

    .line 127
    long-to-double v2, v2

    .line 128
    div-double v12, v0, v2

    .line 129
    .line 130
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 131
    .line 132
    mul-double/2addr v0, v12

    .line 133
    double-to-long v0, v0

    .line 134
    const-wide/16 v2, 0x12c0

    .line 135
    .line 136
    cmp-long v2, v0, v2

    .line 137
    .line 138
    if-gez v2, :cond_5

    .line 139
    .line 140
    new-instance v0, Lu2/m;

    .line 141
    .line 142
    const-wide/16 v4, 0x0

    .line 143
    .line 144
    const-wide/16 v6, 0x0

    .line 145
    .line 146
    move-object v3, v0

    .line 147
    invoke-direct/range {v3 .. v8}, Lu2/m;-><init>(JDLjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-object v0

    .line 151
    :cond_5
    const-wide/32 v2, 0x2625a00

    .line 152
    .line 153
    .line 154
    cmp-long v4, v0, v2

    .line 155
    .line 156
    if-lez v4, :cond_6

    .line 157
    .line 158
    move-wide v0, v2

    .line 159
    :cond_6
    const-wide/16 v2, 0x18

    .line 160
    .line 161
    div-long/2addr v0, v2

    .line 162
    const-wide/16 v4, 0x32

    .line 163
    .line 164
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 165
    .line 166
    .line 167
    move-result-wide v0

    .line 168
    new-instance v4, Lu2/m;

    .line 169
    .line 170
    mul-long v10, v0, v2

    .line 171
    .line 172
    const/4 v14, 0x0

    .line 173
    move-object v9, v4

    .line 174
    invoke-direct/range {v9 .. v14}, Lu2/m;-><init>(JDLjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-object v4
.end method

.method public static i0(Landroid/content/Context;)J
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static i1(II)Ln5/c;
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Ln5/c;->d:Ln5/c;

    .line 6
    .line 7
    sget-object p0, Ln5/c;->d:Ln5/c;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ln5/c;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr p1, v1

    .line 14
    invoke-direct {v0, p0, p1, v1}, Ln5/a;-><init>(III)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static final j(Landroid/view/View;)V
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/core/view/k1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Landroidx/core/view/k1;-><init>(Landroid/view/View;La5/e;)V

    .line 10
    .line 11
    .line 12
    new-instance p0, Lp5/h;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0, p0}, Lc5/a;->create(Ljava/lang/Object;La5/e;)La5/e;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lp5/h;->d:La5/e;

    .line 22
    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/View;

    .line 34
    .line 35
    const v2, 0x7f0a04cd

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lm0/a;

    .line 43
    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    new-instance v3, Lm0/a;

    .line 47
    .line 48
    invoke-direct {v3}, Lm0/a;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v0, v3, Lm0/a;->a:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-static {v0}, Lv1/f;->v(Ljava/util/List;)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v3, -0x1

    .line 61
    if-lt v3, v2, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :cond_2
    return-void
.end method

.method public static j0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "Router"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Access point"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Switch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Printer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IP camera"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NAS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Smart device"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static j1(ILjava/io/ByteArrayOutputStream;)V
    .locals 1

    .line 1
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public static k(I)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-le v1, p0, :cond_0

    .line 8
    .line 9
    move v1, p0

    .line 10
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-static {}, Li5/a;->F0()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ge v1, v2, :cond_1

    .line 23
    .line 24
    move v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-le v1, p0, :cond_2

    .line 27
    .line 28
    move v1, p0

    .line 29
    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance p0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v1, 0x3

    .line 56
    if-le v0, v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    return-object p0
.end method

.method public static k0(ILjava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lw4/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    instance-of v0, p1, Lkotlin/jvm/internal/g;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lkotlin/jvm/internal/g;

    .line 12
    .line 13
    invoke-interface {p1}, Lkotlin/jvm/internal/g;->getArity()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v0, p1, Lj5/a;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    instance-of v0, p1, Lj5/l;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    move p1, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    instance-of v0, p1, Lj5/p;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    instance-of p1, p1, Ld1/b;

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    const/4 p1, 0x4

    .line 41
    goto :goto_0

    .line 42
    :cond_4
    const/4 p1, -0x1

    .line 43
    :goto_0
    if-ne p1, p0, :cond_5

    .line 44
    .line 45
    move v1, v2

    .line 46
    :cond_5
    return v1
.end method

.method public static l()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "benchmark cancelled"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static l0(Landroid/content/res/Resources;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static m(Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 7
    .line 8
    .line 9
    const-class v0, Li5/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p0}, Li5/a;->U0(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public static final m0(C)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static n(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-class p1, Li5/a;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1, p0}, Li5/a;->U0(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public static n0()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/kvm"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 5
    .line 6
    const-string v0, " must not be null"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-class p1, Li5/a;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1, p0}, Li5/a;->U0(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public static o0(Lo2/o;ILjava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->v:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Ln2/e;->b:Ln2/e;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p1, Ln2/e;->e:Ln2/e;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget-object p1, Ln2/e;->c:Ln2/e;

    .line 16
    .line 17
    :goto_0
    iget-object p0, p0, Lo2/o;->a:Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->e(Ln2/e;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static p(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .line 1
    if-nez p0, :cond_2

    .line 2
    .line 3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-class v1, Li5/a;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    aget-object v4, v0, v3

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :goto_1
    aget-object v4, v0, v3

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    aget-object v0, v0, v3

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v4, "Parameter specified as non-null is null: method "

    .line 63
    .line 64
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, "."

    .line 71
    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, ", parameter "

    .line 79
    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1, p0}, Li5/a;->U0(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_2
    return-void
.end method

.method public static p0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static q(I)V
    .locals 6

    .line 1
    new-instance v0, Ln5/c;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/16 v2, 0x24

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Ln5/a;-><init>(III)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ln5/c;->a(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v4, "radix "

    .line 20
    .line 21
    const-string v5, " was not in valid range "

    .line 22
    .line 23
    invoke-static {v4, p0, v5}, Landroid/support/v4/media/session/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v4, Ln5/c;

    .line 28
    .line 29
    invoke-direct {v4, v1, v2, v3}, Ln5/a;-><init>(III)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public static q0(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Li5/a;->B(Landroid/content/Context;)I

    move-result p0

    if-gtz p0, :cond_0

    const/16 p0, 0x1000

    return p0

    :cond_0
    div-int/lit8 v0, p0, 0x4

    const/16 v1, 0x400

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x200

    sub-int/2addr p0, v0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static r(Ll4/l;Ls3/q;)V
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0, p1}, Li5/a;->L0(Ll4/l;Ls3/q;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Li5/a;->K0(Ls3/q;)V

    .line 7
    .line 8
    .line 9
    new-instance p0, Ls3/a;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Ls3/a;->a:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Ls3/a;->b:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Ls3/a;->c:Ljava/lang/String;

    .line 19
    .line 20
    iget v1, p1, Ls3/q;->m:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    const-string v2, "Windows"

    .line 23
    .line 24
    if-gtz v1, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :try_start_1
    iget v1, p1, Ls3/q;->m:I

    .line 28
    .line 29
    const/16 v3, 0x20

    .line 30
    .line 31
    const-wide v4, 0x3fb999999999999aL    # 0.1

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    if-gt v1, v3, :cond_1

    .line 37
    .line 38
    const-string v1, "Embedded"

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0, v1, v4, v5}, Ls3/a;->b(Ljava/lang/String;D)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v3, 0x40

    .line 45
    .line 46
    if-gt v1, v3, :cond_2

    .line 47
    .line 48
    const-string v1, "Linux/Unix"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/16 v3, 0x80

    .line 52
    .line 53
    if-gt v1, v3, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0, v2, v4, v5}, Ls3/a;->b(Ljava/lang/String;D)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const-string v1, "Network device"

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :goto_1
    invoke-static {p1, p0}, Li5/a;->Y(Ls3/q;Ls3/a;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p0}, Li5/a;->V(Ls3/q;Ls3/a;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p1, Ls3/q;->o:Ls3/m;

    .line 69
    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    const-wide v3, 0x3fc999999999999aL    # 0.2

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2, v3, v4}, Ls3/a;->b(Ljava/lang/String;D)V

    .line 79
    .line 80
    .line 81
    const-string v2, "Computer"

    .line 82
    .line 83
    invoke-virtual {p0, v2, v3, v4}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 84
    .line 85
    .line 86
    iget-boolean v1, v1, Ls3/m;->f:Z

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    const-string v1, "Server"

    .line 91
    .line 92
    const-wide v2, 0x3fcc28f5c28f5c29L    # 0.22

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v1, v2, v3}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 98
    .line 99
    .line 100
    const-string v1, "Windows Server"

    .line 101
    .line 102
    invoke-virtual {p0, v1, v2, v3}, Ls3/a;->b(Ljava/lang/String;D)V

    .line 103
    .line 104
    .line 105
    :cond_5
    :goto_2
    iget-boolean v1, p1, Ls3/q;->c:Z

    .line 106
    .line 107
    if-nez v1, :cond_6

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    const-string v1, "Router"

    .line 111
    .line 112
    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    .line 113
    .line 114
    invoke-virtual {p0, v1, v2, v3}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 115
    .line 116
    .line 117
    :goto_3
    invoke-static {p1, p0}, Li5/a;->T(Ls3/q;Ls3/a;)V

    .line 118
    .line 119
    .line 120
    invoke-static {p1, p0}, Li5/a;->U(Ls3/q;Ls3/a;)V

    .line 121
    .line 122
    .line 123
    invoke-static {p1, p0}, Li5/a;->X(Ls3/q;Ls3/a;)V

    .line 124
    .line 125
    .line 126
    invoke-static {p1, p0}, Li5/a;->W(Ls3/q;Ls3/a;)V

    .line 127
    .line 128
    .line 129
    iget-boolean v1, p1, Ls3/q;->b:Z

    .line 130
    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    const-string v1, "This device"

    .line 134
    .line 135
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 136
    .line 137
    invoke-virtual {p0, v1, v2, v3}, Ls3/a;->c(Ljava/lang/String;D)V

    .line 138
    .line 139
    .line 140
    const-string v1, "Android"

    .line 141
    .line 142
    invoke-virtual {p0, v1, v2, v3}, Ls3/a;->b(Ljava/lang/String;D)V

    .line 143
    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v4, " "

    .line 156
    .line 157
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {p0, v1, v2, v3}, Ls3/a;->a(Ljava/lang/String;D)V

    .line 170
    .line 171
    .line 172
    :cond_7
    iget-object v1, p1, Ls3/q;->j:Ljava/lang/String;

    .line 173
    .line 174
    if-nez v1, :cond_8

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_8
    iget-object v0, p1, Ls3/q;->j:Ljava/lang/String;

    .line 178
    .line 179
    :goto_4
    iget-object v1, p0, Ls3/a;->a:Ljava/lang/String;

    .line 180
    .line 181
    iput-object v1, p1, Ls3/q;->k:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v1, p0, Ls3/a;->b:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_9

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_9
    iget-object v0, p0, Ls3/a;->b:Ljava/lang/String;

    .line 193
    .line 194
    :goto_5
    iput-object v0, p1, Ls3/q;->j:Ljava/lang/String;

    .line 195
    .line 196
    iget-object v0, p0, Ls3/a;->c:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_a

    .line 203
    .line 204
    iget-object v0, p0, Ls3/a;->c:Ljava/lang/String;

    .line 205
    .line 206
    iput-object v0, p1, Ls3/q;->i:Ljava/lang/String;

    .line 207
    .line 208
    :cond_a
    iget-wide v0, p0, Ls3/a;->d:D

    .line 209
    .line 210
    iget-wide v2, p0, Ls3/a;->e:D

    .line 211
    .line 212
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 213
    .line 214
    .line 215
    move-result-wide v0

    .line 216
    iput-wide v0, p1, Ls3/q;->l:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    .line 218
    :catch_0
    return-void
.end method

.method public static r0(J)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-double p0, p0

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v1

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f MB"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "\r?\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    const-string v3, "\r"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "__STRYKER_CON__"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "echo __STRYKER_CON__"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static s0(IIJJ)Lu2/p;
    .locals 7

    .line 1
    const-wide/16 v0, 0x18

    .line 2
    .line 3
    div-long/2addr p2, v0

    .line 4
    const-wide/16 v0, 0x32

    .line 5
    .line 6
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p2

    .line 10
    const/4 v0, 0x1

    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    move p1, v0

    .line 14
    :cond_0
    new-array v1, p1, [I

    .line 15
    .line 16
    const/16 v2, 0x18

    .line 17
    .line 18
    div-int v3, v2, p1

    .line 19
    .line 20
    rem-int/2addr v2, p1

    .line 21
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_0
    if-ge v5, p1, :cond_2

    .line 24
    .line 25
    if-ge v5, v2, :cond_1

    .line 26
    .line 27
    move v6, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v6, v4

    .line 30
    :goto_1
    add-int/2addr v6, v3

    .line 31
    aput v6, v1, v5

    .line 32
    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "w(){ c=0; while [ $c -lt $1 ]; do i=0; while [ $i -lt "

    .line 39
    .line 40
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p2, " ]; do i=$((i+1)); done; printf \'.\'; c=$((c+1)); done; }; "

    .line 47
    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :goto_2
    if-ge v4, p1, :cond_4

    .line 52
    .line 53
    aget p2, v1, v4

    .line 54
    .line 55
    if-lez p2, :cond_3

    .line 56
    .line 57
    const-string p3, "w "

    .line 58
    .line 59
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p2, " & "

    .line 66
    .line 67
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    const-string p1, "wait; printf \'\\n__BENCH_DONE__\\n\'"

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string p2, "__BENCH_DONE__"

    .line 83
    .line 84
    invoke-static {p1, p2, p4, p5}, Li5/a;->S0(Ljava/lang/String;Ljava/lang/String;J)Lu2/n;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-boolean p2, p1, Lu2/n;->c:Z

    .line 89
    .line 90
    if-eqz p2, :cond_5

    .line 91
    .line 92
    new-instance p2, Lu2/p;

    .line 93
    .line 94
    iget-wide p3, p1, Lu2/n;->b:J

    .line 95
    .line 96
    const/4 p1, 0x0

    .line 97
    invoke-direct {p2, p0, p1, p3, p4}, Lu2/p;-><init>(ILjava/lang/String;J)V

    .line 98
    .line 99
    .line 100
    return-object p2

    .line 101
    :cond_5
    iget-boolean p2, p1, Lu2/n;->d:Z

    .line 102
    .line 103
    const-wide/16 p3, -0x1

    .line 104
    .line 105
    if-eqz p2, :cond_6

    .line 106
    .line 107
    new-instance p1, Lu2/p;

    .line 108
    .line 109
    const-string p2, "timed out"

    .line 110
    .line 111
    invoke-direct {p1, p0, p2, p3, p4}, Lu2/p;-><init>(ILjava/lang/String;J)V

    .line 112
    .line 113
    .line 114
    return-object p1

    .line 115
    :cond_6
    iget-boolean p1, p1, Lu2/n;->e:Z

    .line 116
    .line 117
    if-eqz p1, :cond_7

    .line 118
    .line 119
    new-instance p1, Lu2/p;

    .line 120
    .line 121
    const-string p2, "boot failed"

    .line 122
    .line 123
    invoke-direct {p1, p0, p2, p3, p4}, Lu2/p;-><init>(ILjava/lang/String;J)V

    .line 124
    .line 125
    .line 126
    return-object p1

    .line 127
    :cond_7
    new-instance p1, Lu2/p;

    .line 128
    .line 129
    const-string p2, "no marker"

    .line 130
    .line 131
    invoke-direct {p1, p0, p2, p3, p4}, Lu2/p;-><init>(ILjava/lang/String;J)V

    .line 132
    .line 133
    .line 134
    return-object p1
.end method

.method public static t(II)I
    .locals 0

    .line 1
    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static t0(I[B)Landroidx/emoji2/text/q;
    .locals 11

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/16 v0, 0xc

    .line 4
    .line 5
    if-ge p0, v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    new-instance v1, Landroidx/emoji2/text/q;

    .line 10
    .line 11
    invoke-direct {v1}, Landroidx/emoji2/text/q;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v2, p1}, Li5/a;->C0(I[B)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iput v3, v1, Landroidx/emoji2/text/q;->a:I

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-static {v3, p1}, Li5/a;->C0(I[B)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iput v3, v1, Landroidx/emoji2/text/q;->b:I

    .line 27
    .line 28
    const v4, 0x8000

    .line 29
    .line 30
    .line 31
    and-int/2addr v4, v3

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v4, v2

    .line 37
    :goto_0
    iput-boolean v4, v1, Landroidx/emoji2/text/q;->c:Z

    .line 38
    .line 39
    and-int/lit8 v3, v3, 0xf

    .line 40
    .line 41
    iput v3, v1, Landroidx/emoji2/text/q;->d:I

    .line 42
    .line 43
    const/4 v3, 0x4

    .line 44
    invoke-static {v3, p1}, Li5/a;->C0(I[B)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x6

    .line 49
    invoke-static {v4, p1}, Li5/a;->C0(I[B)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/16 v5, 0x8

    .line 54
    .line 55
    invoke-static {v5, p1}, Li5/a;->C0(I[B)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    const/16 v6, 0xa

    .line 60
    .line 61
    invoke-static {v6, p1}, Li5/a;->C0(I[B)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    :goto_1
    if-ge v2, v3, :cond_3

    .line 66
    .line 67
    if-ge v0, p0, :cond_3

    .line 68
    .line 69
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p0, v0, v7}, Li5/a;->A0([BIILjava/lang/StringBuilder;)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    add-int/lit8 v8, v0, 0x4

    .line 79
    .line 80
    if-le v8, p0, :cond_2

    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_2
    new-instance v9, Ls3/c;

    .line 84
    .line 85
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v10, ""

    .line 89
    .line 90
    iput-object v10, v9, Ls3/c;->a:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    iput-object v7, v9, Ls3/c;->a:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v0, p1}, Li5/a;->C0(I[B)I

    .line 99
    .line 100
    .line 101
    add-int/lit8 v0, v0, 0x2

    .line 102
    .line 103
    invoke-static {v0, p1}, Li5/a;->C0(I[B)I

    .line 104
    .line 105
    .line 106
    iget-object v0, v1, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    move v0, v8

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    iget-object v2, v1, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v2, Ljava/util/List;

    .line 120
    .line 121
    invoke-static {p1, p0, v0, v4, v2}, Li5/a;->B0([BIIILjava/util/List;)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iget-object v2, v1, Landroidx/emoji2/text/q;->g:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v2, Ljava/util/List;

    .line 128
    .line 129
    invoke-static {p1, p0, v0, v5, v2}, Li5/a;->B0([BIIILjava/util/List;)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iget-object v2, v1, Landroidx/emoji2/text/q;->h:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, Ljava/util/List;

    .line 136
    .line 137
    invoke-static {p1, p0, v0, v6, v2}, Li5/a;->B0([BIIILjava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    :catch_0
    return-object v1

    .line 141
    :cond_4
    :goto_2
    const/4 p0, 0x0

    .line 142
    return-object p0
.end method

.method public static varargs u(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static u0(Ll4/l;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Li5/a;->T0(Ll4/l;)Z

    move-result v0

    const-string v1, "impdef"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "rootless_pauth"

    invoke-virtual {p0, v0}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "off"

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "qarma"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    return-object v0

    :pswitch_0
    return-object p0

    :cond_6
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x469eb747 -> :sswitch_2
        0x1ad6f -> :sswitch_1
        0x6663176 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static v(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;Lo2/o;Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/high16 v1, 0x10000

    :try_start_1
    new-array v1, v1, [B

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v4, v2

    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p1, v1, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v6, v6

    add-long/2addr v2, v6

    sub-long v6, v2, v4

    const-wide/32 v8, 0x400000

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    invoke-virtual {p3, p4, v2, v3}, Lo2/o;->a(Ljava/lang/String;J)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "rename failed for "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {p3, p4, v2, v3}, Lo2/o;->a(Ljava/lang/String;J)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " extracted ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Li5/a;->r0(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p3, p1, p0}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    if-eqz p0, :cond_4

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    throw p1
.end method

.method public static v0(Landroid/content/Context;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p0 .. p0}, Li5/a;->N(Landroid/content/Context;)Lf4/g;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "stryker_ota"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Ljava/util/HashSet;

    .line 22
    .line 23
    new-instance v5, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v6, "seen_notifications"

    .line 29
    .line 30
    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    iget-object v5, v1, Lf4/g;->e:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    move v7, v4

    .line 44
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    const/high16 v9, 0x14000000

    .line 49
    .line 50
    const-class v10, Lcom/zalexdev/stryker/MainActivity;

    .line 51
    .line 52
    const/high16 v12, 0xc000000

    .line 53
    .line 54
    const-string v15, "stryker_news_channel"

    .line 55
    .line 56
    if-eqz v8, :cond_5

    .line 57
    .line 58
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    check-cast v8, Lf4/f;

    .line 63
    .line 64
    iget v11, v8, Lf4/f;->a:I

    .line 65
    .line 66
    if-eqz v11, :cond_4

    .line 67
    .line 68
    iget-object v11, v8, Lf4/f;->b:Ljava/lang/String;

    .line 69
    .line 70
    if-eqz v11, :cond_4

    .line 71
    .line 72
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v16

    .line 76
    if-eqz v16, :cond_1

    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_1
    iget v13, v8, Lf4/f;->a:I

    .line 81
    .line 82
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v14

    .line 86
    invoke-virtual {v3, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v17

    .line 90
    if-eqz v17, :cond_2

    .line 91
    .line 92
    goto/16 :goto_2

    .line 93
    .line 94
    :cond_2
    invoke-static/range {p0 .. p0}, Li5/a;->G(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    iget-object v7, v8, Lf4/f;->d:Ljava/lang/String;

    .line 98
    .line 99
    if-eqz v7, :cond_3

    .line 100
    .line 101
    const-string v4, "http"

    .line 102
    .line 103
    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_3

    .line 108
    .line 109
    new-instance v4, Landroid/content/Intent;

    .line 110
    .line 111
    const-string v9, "android.intent.action.VIEW"

    .line 112
    .line 113
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 118
    .line 119
    .line 120
    const/high16 v9, 0x10000000

    .line 121
    .line 122
    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    invoke-static {v0, v7, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    goto :goto_1

    .line 134
    :cond_3
    new-instance v4, Landroid/content/Intent;

    .line 135
    .line 136
    invoke-direct {v4, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    const/4 v7, 0x0

    .line 143
    invoke-static {v0, v7, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    :goto_1
    new-instance v7, Lv/z;

    .line 148
    .line 149
    invoke-direct {v7, v0, v15}, Lv/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v9, v7, Lv/z;->s:Landroid/app/Notification;

    .line 153
    .line 154
    const v10, 0x7f08009b

    .line 155
    .line 156
    .line 157
    iput v10, v9, Landroid/app/Notification;->icon:I

    .line 158
    .line 159
    invoke-static {v11}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    iput-object v9, v7, Lv/z;->e:Ljava/lang/CharSequence;

    .line 164
    .line 165
    iget-object v8, v8, Lf4/f;->c:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v8}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    iput-object v9, v7, Lv/z;->f:Ljava/lang/CharSequence;

    .line 172
    .line 173
    new-instance v9, Lv/y;

    .line 174
    .line 175
    invoke-direct {v9}, Lv/y;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-static {v8}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    iput-object v8, v9, Lv/y;->e:Ljava/lang/Object;

    .line 183
    .line 184
    invoke-virtual {v7, v9}, Lv/z;->g(Lv/y;)V

    .line 185
    .line 186
    .line 187
    const/16 v8, 0x10

    .line 188
    .line 189
    invoke-virtual {v7, v8}, Lv/z;->e(I)V

    .line 190
    .line 191
    .line 192
    iput-object v4, v7, Lv/z;->g:Landroid/app/PendingIntent;

    .line 193
    .line 194
    const v4, 0x186a0

    .line 195
    .line 196
    .line 197
    rem-int/2addr v13, v4

    .line 198
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    const v8, 0xaae60

    .line 203
    .line 204
    .line 205
    add-int/2addr v4, v8

    .line 206
    :try_start_0
    new-instance v8, Lv/f0;

    .line 207
    .line 208
    invoke-direct {v8, v0}, Lv/f0;-><init>(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7}, Lv/z;->a()Landroid/app/Notification;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    invoke-virtual {v8, v4, v7}, Lv/f0;->a(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .line 217
    .line 218
    :catch_0
    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    const/4 v4, 0x0

    .line 222
    const/4 v7, 0x1

    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_4
    :goto_2
    const/4 v4, 0x0

    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_5
    if-eqz v7, :cond_6

    .line 229
    .line 230
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-interface {v4, v6, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 239
    .line 240
    .line 241
    :cond_6
    iget-object v3, v1, Lf4/g;->c:Lf4/d;

    .line 242
    .line 243
    if-eqz v3, :cond_7

    .line 244
    .line 245
    iget v3, v3, Lf4/d;->a:I

    .line 246
    .line 247
    const/16 v4, 0x259

    .line 248
    .line 249
    if-le v3, v4, :cond_7

    .line 250
    .line 251
    const-string v3, "ota_notified_version"

    .line 252
    .line 253
    const/4 v4, 0x0

    .line 254
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    iget-object v5, v1, Lf4/g;->c:Lf4/d;

    .line 259
    .line 260
    iget v5, v5, Lf4/d;->a:I

    .line 261
    .line 262
    if-eq v4, v5, :cond_7

    .line 263
    .line 264
    const v4, 0x7f13050c

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    iget-object v5, v1, Lf4/g;->c:Lf4/d;

    .line 272
    .line 273
    iget-object v5, v5, Lf4/d;->b:Ljava/lang/String;

    .line 274
    .line 275
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    const v6, 0x7f13050b

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    invoke-static/range {p0 .. p0}, Li5/a;->G(Landroid/content/Context;)V

    .line 287
    .line 288
    .line 289
    new-instance v6, Lv/z;

    .line 290
    .line 291
    invoke-direct {v6, v0, v15}, Lv/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget-object v7, v6, Lv/z;->s:Landroid/app/Notification;

    .line 295
    .line 296
    const v8, 0x7f08009b

    .line 297
    .line 298
    .line 299
    iput v8, v7, Landroid/app/Notification;->icon:I

    .line 300
    .line 301
    invoke-static {v4}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    iput-object v4, v6, Lv/z;->e:Ljava/lang/CharSequence;

    .line 306
    .line 307
    invoke-static {v5}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    iput-object v4, v6, Lv/z;->f:Ljava/lang/CharSequence;

    .line 312
    .line 313
    new-instance v4, Lv/y;

    .line 314
    .line 315
    invoke-direct {v4}, Lv/y;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-static {v5}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    iput-object v5, v4, Lv/y;->e:Ljava/lang/Object;

    .line 323
    .line 324
    invoke-virtual {v6, v4}, Lv/z;->g(Lv/y;)V

    .line 325
    .line 326
    .line 327
    const/16 v4, 0x10

    .line 328
    .line 329
    invoke-virtual {v6, v4}, Lv/z;->e(I)V

    .line 330
    .line 331
    .line 332
    new-instance v4, Landroid/content/Intent;

    .line 333
    .line 334
    invoke-direct {v4, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 338
    .line 339
    .line 340
    const-string v5, "open_update"

    .line 341
    .line 342
    const/4 v7, 0x1

    .line 343
    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    .line 345
    .line 346
    invoke-static {v0, v7, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    iput-object v4, v6, Lv/z;->g:Landroid/app/PendingIntent;

    .line 351
    .line 352
    :try_start_1
    new-instance v4, Lv/f0;

    .line 353
    .line 354
    invoke-direct {v4, v0}, Lv/f0;-><init>(Landroid/content/Context;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v6}, Lv/z;->a()Landroid/app/Notification;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    const/16 v5, 0x1f3f

    .line 362
    .line 363
    invoke-virtual {v4, v5, v0}, Lv/f0;->a(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 364
    .line 365
    .line 366
    :catch_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    iget-object v1, v1, Lf4/g;->c:Lf4/d;

    .line 371
    .line 372
    iget v1, v1, Lf4/d;->a:I

    .line 373
    .line 374
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 379
    .line 380
    .line 381
    :cond_7
    return-void
.end method

.method public static w(Ll4/l;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Li5/a;->T0(Ll4/l;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p0, :cond_0

    const-string v0, "rootless_cpu_legacy"

    invoke-virtual {p0, v0}, Ll4/l;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Li5/a;->u0(Ll4/l;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "impdef"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "qarma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "max,sve=off,pmu=off,pauth=off"

    return-object p0

    :cond_1
    const-string p0, "max,sve=off,pmu=off,pauth=on,pauth-impdef=off"

    return-object p0

    :cond_2
    const-string p0, "max,sve=off,pmu=off,pauth=on,pauth-impdef=on"

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "max,sve=off,pauth-impdef=on"

    return-object p0
.end method

.method public static w0(Ljava/lang/String;)Ls3/l;
    .locals 16

    .line 1
    const-string v0, "mac_address"

    .line 2
    .line 3
    const-string v1, "ssid"

    .line 4
    .line 5
    const-string v2, "cast_build_revision"

    .line 6
    .line 7
    const-string v3, "build_version"

    .line 8
    .line 9
    const-string v4, "model_name"

    .line 10
    .line 11
    const-string v5, "ssdp_udn"

    .line 12
    .line 13
    const-string v6, "device_name"

    .line 14
    .line 15
    const-string v7, "name"

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    if-eqz v9, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    goto/16 :goto_8

    .line 31
    .line 32
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    const-string v10, ":8008/setup/eureka_info?options=detail"

    .line 37
    .line 38
    const-string v11, "http://"

    .line 39
    .line 40
    const/4 v12, 0x1

    .line 41
    const/4 v13, 0x0

    .line 42
    :try_start_0
    new-instance v14, Ljava/net/URL;

    .line 43
    .line 44
    new-instance v15, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-direct {v14, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    check-cast v9, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    .line 68
    :try_start_1
    const-string v10, "GET"

    .line 69
    .line 70
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/16 v10, 0x9c4

    .line 74
    .line 75
    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9, v13}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v9, v12}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, v13}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 88
    .line 89
    .line 90
    const-string v10, "User-Agent"

    .line 91
    .line 92
    const-string v11, "Stryker"

    .line 93
    .line 94
    invoke-virtual {v9, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v10, "Accept"

    .line 98
    .line 99
    const-string v11, "application/json"

    .line 100
    .line 101
    invoke-virtual {v9, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v10, "Connection"

    .line 105
    .line 106
    const-string v11, "close"

    .line 107
    .line 108
    invoke-virtual {v9, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 112
    .line 113
    .line 114
    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    const/16 v11, 0xc8

    .line 116
    .line 117
    if-eq v10, v11, :cond_4

    .line 118
    .line 119
    :try_start_2
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    if-eqz v10, :cond_2

    .line 124
    .line 125
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    .line 127
    .line 128
    :catch_0
    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 129
    .line 130
    .line 131
    :catch_1
    :cond_3
    const/4 v8, 0x0

    .line 132
    goto/16 :goto_7

    .line 133
    .line 134
    :cond_4
    :try_start_4
    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 135
    .line 136
    .line 137
    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    if-nez v10, :cond_6

    .line 139
    .line 140
    if-eqz v10, :cond_5

    .line 141
    .line 142
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 143
    .line 144
    .line 145
    :catch_2
    :cond_5
    :try_start_6
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    if-eqz v10, :cond_2

    .line 150
    .line 151
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_6
    :try_start_7
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    .line 156
    .line 157
    const/16 v14, 0x1000

    .line 158
    .line 159
    invoke-direct {v11, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 160
    .line 161
    .line 162
    new-array v15, v14, [B

    .line 163
    .line 164
    move v8, v13

    .line 165
    :goto_1
    const/high16 v12, 0x20000

    .line 166
    .line 167
    if-ge v8, v12, :cond_9

    .line 168
    .line 169
    sub-int/2addr v12, v8

    .line 170
    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    invoke-virtual {v10, v15, v13, v12}, Ljava/io/InputStream;->read([BII)I

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    if-gez v12, :cond_7

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_7
    if-nez v12, :cond_8

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_8
    invoke-virtual {v11, v15, v13, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 185
    .line 186
    .line 187
    add-int/2addr v8, v12

    .line 188
    goto :goto_1

    .line 189
    :cond_9
    :goto_2
    if-nez v8, :cond_a

    .line 190
    .line 191
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 192
    .line 193
    .line 194
    :catch_3
    :try_start_9
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    if-eqz v8, :cond_2

    .line 199
    .line 200
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_a
    :try_start_a
    new-instance v8, Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 211
    .line 212
    invoke-direct {v8, v11, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 213
    .line 214
    .line 215
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 216
    .line 217
    .line 218
    :catch_4
    :try_start_c
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    if-eqz v10, :cond_b

    .line 223
    .line 224
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 225
    .line 226
    .line 227
    :catch_5
    :cond_b
    :try_start_d
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 228
    .line 229
    .line 230
    goto :goto_7

    .line 231
    :catchall_0
    :goto_3
    const/4 v10, 0x0

    .line 232
    goto :goto_5

    .line 233
    :catch_6
    :goto_4
    const/4 v10, 0x0

    .line 234
    goto :goto_6

    .line 235
    :catchall_1
    const/4 v9, 0x0

    .line 236
    goto :goto_3

    .line 237
    :catch_7
    const/4 v9, 0x0

    .line 238
    goto :goto_4

    .line 239
    :catchall_2
    :goto_5
    if-eqz v10, :cond_c

    .line 240
    .line 241
    :try_start_e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 242
    .line 243
    .line 244
    :catch_8
    :cond_c
    if-eqz v9, :cond_3

    .line 245
    .line 246
    :try_start_f
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 247
    .line 248
    .line 249
    move-result-object v8

    .line 250
    if-eqz v8, :cond_2

    .line 251
    .line 252
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    .line 253
    .line 254
    .line 255
    goto :goto_0

    .line 256
    :catch_9
    :goto_6
    if-eqz v10, :cond_d

    .line 257
    .line 258
    :try_start_10
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    .line 259
    .line 260
    .line 261
    :catch_a
    :cond_d
    if-eqz v9, :cond_3

    .line 262
    .line 263
    :try_start_11
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    if-eqz v8, :cond_2

    .line 268
    .line 269
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    .line 270
    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :catch_b
    :goto_7
    if-eqz v8, :cond_e

    .line 275
    .line 276
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 277
    .line 278
    .line 279
    move-result v9

    .line 280
    if-eqz v9, :cond_f

    .line 281
    .line 282
    :cond_e
    const/4 v0, 0x0

    .line 283
    goto/16 :goto_8

    .line 284
    .line 285
    :cond_f
    :try_start_12
    new-instance v9, Lorg/json/JSONObject;

    .line 286
    .line 287
    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    const-string v8, "device_info"

    .line 291
    .line 292
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 293
    .line 294
    .line 295
    move-result-object v8

    .line 296
    const/4 v10, 0x6

    .line 297
    new-array v10, v10, [Ljava/lang/String;

    .line 298
    .line 299
    invoke-static {v9, v7}, Li5/a;->Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v11

    .line 303
    aput-object v11, v10, v13

    .line 304
    .line 305
    invoke-static {v8, v7}, Li5/a;->Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    const/4 v11, 0x1

    .line 310
    aput-object v7, v10, v11

    .line 311
    .line 312
    invoke-static {v9, v6}, Li5/a;->Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    const/4 v11, 0x2

    .line 317
    aput-object v7, v10, v11

    .line 318
    .line 319
    invoke-static {v8, v6}, Li5/a;->Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    const/4 v7, 0x3

    .line 324
    aput-object v6, v10, v7

    .line 325
    .line 326
    invoke-static {v9, v5}, Li5/a;->Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    const/4 v12, 0x4

    .line 331
    aput-object v6, v10, v12

    .line 332
    .line 333
    invoke-static {v8, v5}, Li5/a;->Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    const/4 v6, 0x5

    .line 338
    aput-object v5, v10, v6

    .line 339
    .line 340
    invoke-static {v10}, Li5/a;->Q([Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    new-array v6, v11, [Ljava/lang/String;

    .line 345
    .line 346
    invoke-static {v9, v4}, Li5/a;->Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v10

    .line 350
    aput-object v10, v6, v13

    .line 351
    .line 352
    invoke-static {v8, v4}, Li5/a;->Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    const/4 v10, 0x1

    .line 357
    aput-object v4, v6, v10

    .line 358
    .line 359
    invoke-static {v6}, Li5/a;->Q([Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    new-array v6, v12, [Ljava/lang/String;

    .line 364
    .line 365
    invoke-static {v9, v3}, Li5/a;->Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v10

    .line 369
    aput-object v10, v6, v13

    .line 370
    .line 371
    invoke-static {v9, v2}, Li5/a;->Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v10

    .line 375
    const/4 v12, 0x1

    .line 376
    aput-object v10, v6, v12

    .line 377
    .line 378
    invoke-static {v8, v3}, Li5/a;->Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    aput-object v3, v6, v11

    .line 383
    .line 384
    invoke-static {v8, v2}, Li5/a;->Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    aput-object v2, v6, v7

    .line 389
    .line 390
    invoke-static {v6}, Li5/a;->Q([Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    new-array v3, v11, [Ljava/lang/String;

    .line 395
    .line 396
    invoke-static {v9, v1}, Li5/a;->Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    aput-object v6, v3, v13

    .line 401
    .line 402
    invoke-static {v8, v1}, Li5/a;->Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    const/4 v6, 0x1

    .line 407
    aput-object v1, v3, v6

    .line 408
    .line 409
    invoke-static {v3}, Li5/a;->Q([Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    new-array v3, v11, [Ljava/lang/String;

    .line 414
    .line 415
    invoke-static {v9, v0}, Li5/a;->Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    aput-object v6, v3, v13

    .line 420
    .line 421
    invoke-static {v8, v0}, Li5/a;->Y0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    const/4 v6, 0x1

    .line 426
    aput-object v0, v3, v6

    .line 427
    .line 428
    invoke-static {v3}, Li5/a;->Q([Ljava/lang/String;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-static {v0}, Ls3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-eqz v3, :cond_10

    .line 441
    .line 442
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    if-eqz v3, :cond_10

    .line 447
    .line 448
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    if-eqz v3, :cond_10

    .line 453
    .line 454
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-eqz v1, :cond_10

    .line 459
    .line 460
    if-nez v0, :cond_10

    .line 461
    .line 462
    const/4 v1, 0x0

    .line 463
    return-object v1

    .line 464
    :catchall_3
    const/4 v0, 0x0

    .line 465
    goto :goto_8

    .line 466
    :catch_c
    const/4 v0, 0x0

    .line 467
    goto :goto_8

    .line 468
    :cond_10
    new-instance v1, Ls3/l;

    .line 469
    .line 470
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 471
    .line 472
    .line 473
    const-string v3, ""

    .line 474
    .line 475
    iput-object v3, v1, Ls3/l;->c:Ljava/lang/String;

    .line 476
    .line 477
    iput-object v5, v1, Ls3/l;->a:Ljava/lang/String;

    .line 478
    .line 479
    iput-object v4, v1, Ls3/l;->b:Ljava/lang/String;

    .line 480
    .line 481
    iput-object v2, v1, Ls3/l;->d:Ljava/lang/String;

    .line 482
    .line 483
    if-eqz v0, :cond_11

    .line 484
    .line 485
    iput-object v0, v1, Ls3/l;->c:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 486
    .line 487
    :cond_11
    return-object v1

    .line 488
    :goto_8
    return-object v0
.end method

.method public static x(Landroid/content/Context;)J
    .locals 2

    .line 1
    invoke-static {p0}, Li5/a;->O0(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static x0(Ljava/util/LinkedHashSet;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x8

    const/4 v2, 0x6

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :try_start_0
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v3, Lw2/h;

    invoke-direct {v3, v2, v0}, Lw2/h;-><init>(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    const/4 v1, 0x0

    :catch_2
    :cond_3
    if-eqz v1, :cond_4

    :try_start_3
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-interface {v1, v2, v3, p0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :catch_4
    :goto_1
    :try_start_4
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :catch_5
    :cond_4
    return-object v0
.end method

.method public static y()Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Lcom/zalexdev/stryker/custom/News;

    invoke-direct {v0}, Lcom/zalexdev/stryker/custom/News;-><init>()V

    const-string v1, "StrykerOSS is open source"

    iput-object v1, v0, Lcom/zalexdev/stryker/custom/News;->title:Ljava/lang/String;

    const-string v1, "Released as free and open-source software. Visit the GitHub repository for source, issues and contributions."

    iput-object v1, v0, Lcom/zalexdev/stryker/custom/News;->description:Ljava/lang/String;

    const-string v1, "2026"

    iput-object v1, v0, Lcom/zalexdev/stryker/custom/News;->newsDate:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/zalexdev/stryker/custom/News;->id:I

    iput-boolean v1, v0, Lcom/zalexdev/stryker/custom/News;->pinned:Z

    iput-boolean v1, v0, Lcom/zalexdev/stryker/custom/News;->actionbutton1:Z

    const-string v1, "Open GitHub"

    iput-object v1, v0, Lcom/zalexdev/stryker/custom/News;->actionbutton1text:Ljava/lang/String;

    const-string v1, "https://github.com/zalexdev/strykerapp"

    iput-object v1, v0, Lcom/zalexdev/stryker/custom/News;->actionbutton1url:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zalexdev/stryker/custom/News;->actionbutton2:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static y0(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "qemu-system-aarch64"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static z(Ljava/util/ArrayList;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-lt v2, v0, :cond_a

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "root@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "stryker-agentd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "login:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v5, 0x3

    if-ge v1, v5, :cond_4

    const-string v6, "systemd"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "openrc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "starting "

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "udhcpc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "dhcp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v1, v5

    :cond_4
    const/4 v5, 0x2

    if-ge v1, v5, :cond_6

    const-string v6, "ext4-fs"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "mounted filesystem"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "vfs: mounted root"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "switching root"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "freeing unused kernel"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    move v1, v5

    :cond_6
    if-ge v1, v3, :cond_8

    const-string v5, "linux version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "booting linux"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "kernel"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v1, v3

    :cond_8
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_9
    :goto_2
    const/4 p0, 0x4

    return p0

    :cond_a
    return v1
.end method

.method public static z0(IILjava/util/List;)[B
    .locals 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Li5/a;->j1(ILjava/io/ByteArrayOutputStream;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Li5/a;->j1(ILjava/io/ByteArrayOutputStream;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-static {p0, v0}, Li5/a;->j1(ILjava/io/ByteArrayOutputStream;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    invoke-static {p0, v0}, Li5/a;->j1(ILjava/io/ByteArrayOutputStream;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0}, Li5/a;->j1(ILjava/io/ByteArrayOutputStream;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0}, Li5/a;->j1(ILjava/io/ByteArrayOutputStream;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Ljava/lang/String;

    .line 46
    .line 47
    if-nez p2, :cond_0

    .line 48
    .line 49
    const-string p2, ""

    .line 50
    .line 51
    :cond_0
    const-string v1, "\\."

    .line 52
    .line 53
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    array-length v1, p2

    .line 58
    move v2, p0

    .line 59
    :goto_1
    if-ge v2, v1, :cond_2

    .line 60
    .line 61
    aget-object v3, p2, v2

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    array-length v4, v3

    .line 77
    const/16 v5, 0x3f

    .line 78
    .line 79
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3, p0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 87
    .line 88
    .line 89
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 93
    .line 94
    .line 95
    const/16 p2, 0xc

    .line 96
    .line 97
    invoke-static {p2, v0}, Li5/a;->j1(ILjava/io/ByteArrayOutputStream;)V

    .line 98
    .line 99
    .line 100
    const/4 p2, 0x1

    .line 101
    invoke-static {p2, v0}, Li5/a;->j1(ILjava/io/ByteArrayOutputStream;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method
