.class public final Ls3/x;
.super Ls3/b;
.source "SourceFile"


# static fields
.field public static final j:[Ljava/lang/String;

.field public static final k:[Ljava/lang/String;

.field public static final l:[B


# instance fields
.field public final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public final f:Ljava/util/Set;

.field public final g:Ljava/util/Set;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile i:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "1.3.6.1.2.1.1.1.0"

    const-string v1, "1.3.6.1.2.1.1.2.0"

    const-string v2, "1.3.6.1.2.1.1.4.0"

    const-string v3, "1.3.6.1.2.1.1.5.0"

    const-string v4, "1.3.6.1.2.1.1.6.0"

    const-string v5, "1.3.6.1.2.1.1.7.0"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ls3/x;->j:[Ljava/lang/String;

    const-string v0, "1.3.6.1.2.1.1.2.0"

    const-string v1, "1.3.6.1.2.1.1.5.0"

    const-string v2, "1.3.6.1.2.1.1.1.0"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ls3/x;->k:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ls3/x;->l:[B

    return-void
.end method

.method public constructor <init>(Ly0/p;Lu3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ls3/b;-><init>(Ly0/p;Lu3/g;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Ls3/x;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Ls3/x;->f:Ljava/util/Set;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Ls3/x;->g:Ljava/util/Set;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Ls3/x;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static h(Ls3/o;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, ".0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v0, "1.3.6.1.2.1.1.1.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p2, p0, Ls3/o;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "1.3.6.1.2.1.1.2.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p2, p0, Ls3/o;->b:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "1.3.6.1.2.1.1.4.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p2, p0, Ls3/o;->c:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "1.3.6.1.2.1.1.5.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object p2, p0, Ls3/o;->d:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "1.3.6.1.2.1.1.6.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object p2, p0, Ls3/o;->e:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v0, "1.3.6.1.2.1.1.7.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iput-object p2, p0, Ls3/o;->f:Ljava/lang/String;

    :cond_8
    :goto_0
    return-void
.end method

.method public static i(II[Ljava/lang/String;)[B
    .locals 9

    .line 1
    sget-object v0, Ls3/x;->l:[B

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xa0

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x30

    if-ge v4, v3, :cond_0

    aget-object v6, p2, v4

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x20

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v6}, Ls3/x;->o(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v8, 0x6

    invoke-static {v7, v8, v6}, Ls3/x;->v(Ljava/io/ByteArrayOutputStream;I[B)V

    const/4 v6, 0x5

    invoke-static {v7, v6, v0}, Ls3/x;->v(Ljava/io/ByteArrayOutputStream;I[B)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v1, v5, v6}, Ls3/x;->v(Ljava/io/ByteArrayOutputStream;I[B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0xe0

    invoke-direct {p2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    int-to-long v3, p0

    invoke-static {v3, v4}, Ls3/x;->n(J)[B

    move-result-object p0

    const/4 v3, 0x2

    invoke-static {p2, v3, p0}, Ls3/x;->v(Ljava/io/ByteArrayOutputStream;I[B)V

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ls3/x;->n(J)[B

    move-result-object p0

    invoke-static {p2, v3, p0}, Ls3/x;->v(Ljava/io/ByteArrayOutputStream;I[B)V

    invoke-static {v6, v7}, Ls3/x;->n(J)[B

    move-result-object p0

    invoke-static {p2, v3, p0}, Ls3/x;->v(Ljava/io/ByteArrayOutputStream;I[B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p2, v5, p0}, Ls3/x;->v(Ljava/io/ByteArrayOutputStream;I[B)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x120

    invoke-direct {p0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    int-to-long v6, p1

    invoke-static {v6, v7}, Ls3/x;->n(J)[B

    move-result-object p1

    invoke-static {p0, v3, p1}, Ls3/x;->v(Ljava/io/ByteArrayOutputStream;I[B)V

    const-string p1, "public"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v1, 0x4

    invoke-static {p0, v1, p1}, Ls3/x;->v(Ljava/io/ByteArrayOutputStream;I[B)V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, v2, p1}, Ls3/x;->v(Ljava/io/ByteArrayOutputStream;I[B)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 p2, 0x140

    invoke-direct {p1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p1, v5, p0}, Ls3/x;->v(Ljava/io/ByteArrayOutputStream;I[B)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method public static k([BIII)Ls3/o;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_11

    .line 3
    .line 4
    if-lez p2, :cond_11

    .line 5
    .line 6
    if-ltz p1, :cond_11

    .line 7
    .line 8
    :try_start_0
    array-length v1, p0

    .line 9
    sub-int/2addr v1, p1

    .line 10
    if-le p2, v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    add-int/2addr p2, p1

    .line 15
    invoke-static {p1, p2, p0}, Ls3/x;->t(II[B)Ls3/w;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_11

    .line 20
    .line 21
    iget p2, p1, Ls3/w;->a:I

    .line 22
    .line 23
    const/16 v1, 0x30

    .line 24
    .line 25
    if-eq p2, v1, :cond_1

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_1
    iget p2, p1, Ls3/w;->b:I

    .line 30
    .line 31
    iget p1, p1, Ls3/w;->c:I

    .line 32
    .line 33
    add-int/2addr p1, p2

    .line 34
    invoke-static {p2, p1, p0}, Ls3/x;->t(II[B)Ls3/w;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_11

    .line 39
    .line 40
    iget v2, p2, Ls3/w;->a:I

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    if-eq v2, v3, :cond_2

    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_2
    iget p2, p2, Ls3/w;->d:I

    .line 48
    .line 49
    invoke-static {p2, p1, p0}, Ls3/x;->t(II[B)Ls3/w;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    if-eqz p2, :cond_11

    .line 54
    .line 55
    iget v2, p2, Ls3/w;->a:I

    .line 56
    .line 57
    const/4 v4, 0x4

    .line 58
    if-eq v2, v4, :cond_3

    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_3
    iget p2, p2, Ls3/w;->d:I

    .line 63
    .line 64
    invoke-static {p2, p1, p0}, Ls3/x;->t(II[B)Ls3/w;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_11

    .line 69
    .line 70
    iget p2, p1, Ls3/w;->a:I

    .line 71
    .line 72
    const/16 v2, 0xa2

    .line 73
    .line 74
    if-eq p2, v2, :cond_4

    .line 75
    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_4
    iget p2, p1, Ls3/w;->b:I

    .line 79
    .line 80
    iget p1, p1, Ls3/w;->c:I

    .line 81
    .line 82
    add-int/2addr p1, p2

    .line 83
    invoke-static {p2, p1, p0}, Ls3/x;->t(II[B)Ls3/w;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    if-eqz p2, :cond_11

    .line 88
    .line 89
    iget v2, p2, Ls3/w;->a:I

    .line 90
    .line 91
    if-eq v2, v3, :cond_5

    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_5
    iget v2, p2, Ls3/w;->b:I

    .line 96
    .line 97
    iget v4, p2, Ls3/w;->c:I

    .line 98
    .line 99
    invoke-static {v2, v4, p0}, Ls3/x;->s(II[B)J

    .line 100
    .line 101
    .line 102
    move-result-wide v4

    .line 103
    int-to-long v6, p3

    .line 104
    cmp-long p3, v4, v6

    .line 105
    .line 106
    if-eqz p3, :cond_6

    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_6
    iget p2, p2, Ls3/w;->d:I

    .line 110
    .line 111
    invoke-static {p2, p1, p0}, Ls3/x;->t(II[B)Ls3/w;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    if-eqz p2, :cond_11

    .line 116
    .line 117
    iget p3, p2, Ls3/w;->a:I

    .line 118
    .line 119
    if-eq p3, v3, :cond_7

    .line 120
    .line 121
    goto/16 :goto_3

    .line 122
    .line 123
    :cond_7
    iget p3, p2, Ls3/w;->b:I

    .line 124
    .line 125
    iget v2, p2, Ls3/w;->c:I

    .line 126
    .line 127
    invoke-static {p3, v2, p0}, Ls3/x;->s(II[B)J

    .line 128
    .line 129
    .line 130
    move-result-wide v4

    .line 131
    const-wide/16 v6, 0x0

    .line 132
    .line 133
    cmp-long p3, v4, v6

    .line 134
    .line 135
    if-eqz p3, :cond_8

    .line 136
    .line 137
    return-object v0

    .line 138
    :cond_8
    iget p2, p2, Ls3/w;->d:I

    .line 139
    .line 140
    invoke-static {p2, p1, p0}, Ls3/x;->t(II[B)Ls3/w;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-eqz p2, :cond_11

    .line 145
    .line 146
    iget p3, p2, Ls3/w;->a:I

    .line 147
    .line 148
    if-eq p3, v3, :cond_9

    .line 149
    .line 150
    goto/16 :goto_3

    .line 151
    .line 152
    :cond_9
    iget p2, p2, Ls3/w;->d:I

    .line 153
    .line 154
    invoke-static {p2, p1, p0}, Ls3/x;->t(II[B)Ls3/w;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-eqz p1, :cond_11

    .line 159
    .line 160
    iget p2, p1, Ls3/w;->a:I

    .line 161
    .line 162
    if-eq p2, v1, :cond_a

    .line 163
    .line 164
    goto/16 :goto_3

    .line 165
    .line 166
    :cond_a
    iget p2, p1, Ls3/w;->b:I

    .line 167
    .line 168
    iget p1, p1, Ls3/w;->c:I

    .line 169
    .line 170
    add-int/2addr p1, p2

    .line 171
    new-instance p3, Ls3/o;

    .line 172
    .line 173
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v2, ""

    .line 177
    .line 178
    iput-object v2, p3, Ls3/o;->a:Ljava/lang/String;

    .line 179
    .line 180
    iput-object v2, p3, Ls3/o;->b:Ljava/lang/String;

    .line 181
    .line 182
    iput-object v2, p3, Ls3/o;->c:Ljava/lang/String;

    .line 183
    .line 184
    iput-object v2, p3, Ls3/o;->d:Ljava/lang/String;

    .line 185
    .line 186
    iput-object v2, p3, Ls3/o;->e:Ljava/lang/String;

    .line 187
    .line 188
    iput-object v2, p3, Ls3/o;->f:Ljava/lang/String;

    .line 189
    .line 190
    :goto_0
    if-ge p2, p1, :cond_f

    .line 191
    .line 192
    invoke-static {p2, p1, p0}, Ls3/x;->t(II[B)Ls3/w;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    if-eqz p2, :cond_f

    .line 197
    .line 198
    iget v2, p2, Ls3/w;->a:I

    .line 199
    .line 200
    if-eq v2, v1, :cond_b

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_b
    iget v2, p2, Ls3/w;->d:I

    .line 204
    .line 205
    iget v3, p2, Ls3/w;->b:I

    .line 206
    .line 207
    iget p2, p2, Ls3/w;->c:I

    .line 208
    .line 209
    add-int/2addr p2, v3

    .line 210
    invoke-static {v3, p2, p0}, Ls3/x;->t(II[B)Ls3/w;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    if-eqz v3, :cond_e

    .line 215
    .line 216
    iget v4, v3, Ls3/w;->a:I

    .line 217
    .line 218
    const/4 v5, 0x6

    .line 219
    if-eq v4, v5, :cond_c

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_c
    iget v4, v3, Ls3/w;->d:I

    .line 223
    .line 224
    invoke-static {v4, p2, p0}, Ls3/x;->t(II[B)Ls3/w;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    if-nez p2, :cond_d

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_d
    iget v4, v3, Ls3/w;->b:I

    .line 232
    .line 233
    iget v3, v3, Ls3/w;->c:I

    .line 234
    .line 235
    invoke-static {v4, v3, p0}, Ls3/x;->l(II[B)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-static {p0, p2}, Ls3/x;->m([BLs3/w;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    invoke-static {p3, v3, p2}, Ls3/x;->h(Ls3/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :cond_e
    :goto_1
    move p2, v2

    .line 247
    goto :goto_0

    .line 248
    :cond_f
    :goto_2
    iget-object p0, p3, Ls3/o;->a:Ljava/lang/String;

    .line 249
    .line 250
    invoke-static {p0}, Ls3/x;->p(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    if-nez p0, :cond_10

    .line 255
    .line 256
    iget-object p0, p3, Ls3/o;->b:Ljava/lang/String;

    .line 257
    .line 258
    invoke-static {p0}, Ls3/x;->p(Ljava/lang/String;)Z

    .line 259
    .line 260
    .line 261
    move-result p0

    .line 262
    if-nez p0, :cond_10

    .line 263
    .line 264
    iget-object p0, p3, Ls3/o;->d:Ljava/lang/String;

    .line 265
    .line 266
    invoke-static {p0}, Ls3/x;->p(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    if-nez p0, :cond_10

    .line 271
    .line 272
    iget-object p0, p3, Ls3/o;->c:Ljava/lang/String;

    .line 273
    .line 274
    invoke-static {p0}, Ls3/x;->p(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result p0

    .line 278
    if-nez p0, :cond_10

    .line 279
    .line 280
    iget-object p0, p3, Ls3/o;->e:Ljava/lang/String;

    .line 281
    .line 282
    invoke-static {p0}, Ls3/x;->p(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result p0

    .line 286
    if-nez p0, :cond_10

    .line 287
    .line 288
    iget-object p0, p3, Ls3/o;->f:Ljava/lang/String;

    .line 289
    .line 290
    invoke-static {p0}, Ls3/x;->p(Ljava/lang/String;)Z

    .line 291
    .line 292
    .line 293
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    if-eqz p0, :cond_11

    .line 295
    .line 296
    :cond_10
    move-object v0, p3

    .line 297
    :catchall_0
    :cond_11
    :goto_3
    return-object v0
.end method

.method public static l(II[B)Ljava/lang/String;
    .locals 18

    .line 1
    move/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v1, :cond_8

    if-lez v0, :cond_8

    if-ltz p0, :cond_8

    array-length v2, v1

    sub-int v2, v2, p0

    if-le v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    add-int v0, p0, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    move/from16 v7, p0

    move v11, v5

    move v10, v6

    :goto_0
    if-ge v7, v0, :cond_7

    aget-byte v12, v1, v7

    const/4 v13, 0x7

    shl-long/2addr v8, v13

    and-int/lit8 v13, v12, 0x7f

    int-to-long v13, v13

    or-long/2addr v8, v13

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_1

    add-int/2addr v11, v6

    const/16 v12, 0x8

    if-le v11, v12, :cond_6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v11, 0x2e

    if-eqz v10, :cond_4

    const-wide/16 v12, 0x50

    cmp-long v10, v8, v12

    const-wide/16 v14, 0x28

    if-gez v10, :cond_2

    div-long v16, v8, v14

    :goto_1
    move-wide/from16 v3, v16

    goto :goto_2

    :cond_2
    const-wide/16 v16, 0x2

    goto :goto_1

    :goto_2
    if-gez v10, :cond_3

    rem-long/2addr v8, v14

    goto :goto_3

    :cond_3
    sub-long/2addr v8, v12

    :goto_3
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v10, v5

    goto :goto_4

    :cond_4
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x100

    if-lt v3, v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    move v11, v5

    const-wide/16 v8, 0x0

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    :goto_5
    const-string v0, ""

    return-object v0
.end method

.method public static m([BLs3/w;)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    iget v1, p1, Ls3/w;->a:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq v1, v2, :cond_8

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq v1, v2, :cond_4

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    if-eq v1, v2, :cond_3

    .line 14
    .line 15
    const/4 v2, 0x6

    .line 16
    if-eq v1, v2, :cond_2

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_0
    iget v1, p1, Ls3/w;->b:I

    .line 23
    .line 24
    iget p1, p1, Ls3/w;->c:I

    .line 25
    .line 26
    const-wide/16 v4, 0x0

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    if-lez p1, :cond_1

    .line 31
    .line 32
    if-ltz v1, :cond_1

    .line 33
    .line 34
    array-length v2, p0

    .line 35
    sub-int/2addr v2, v1

    .line 36
    if-le p1, v2, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/16 v2, 0x8

    .line 40
    .line 41
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    add-int/2addr v1, p1

    .line 46
    sub-int/2addr v1, v6

    .line 47
    :goto_0
    if-ge v3, v6, :cond_1

    .line 48
    .line 49
    shl-long/2addr v4, v2

    .line 50
    add-int p1, v1, v3

    .line 51
    .line 52
    aget-byte p1, p0, p1

    .line 53
    .line 54
    int-to-long v7, p1

    .line 55
    const-wide/16 v9, 0xff

    .line 56
    .line 57
    and-long/2addr v7, v9

    .line 58
    or-long/2addr v4, v7

    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_2
    iget v1, p1, Ls3/w;->b:I

    .line 68
    .line 69
    iget p1, p1, Ls3/w;->c:I

    .line 70
    .line 71
    invoke-static {v1, p1, p0}, Ls3/x;->l(II[B)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_3
    return-object v0

    .line 77
    :cond_4
    new-instance v1, Ljava/lang/String;

    .line 78
    .line 79
    iget v2, p1, Ls3/w;->b:I

    .line 80
    .line 81
    iget p1, p1, Ls3/w;->c:I

    .line 82
    .line 83
    const/16 v4, 0x100

    .line 84
    .line 85
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 90
    .line 91
    invoke-direct {v1, p0, v2, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    invoke-static {p0, v4}, Ljava/lang/Math;->min(II)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    .line 106
    .line 107
    :goto_2
    if-ge v3, p0, :cond_7

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    const/16 v4, 0x20

    .line 114
    .line 115
    if-lt v2, v4, :cond_5

    .line 116
    .line 117
    const/16 v5, 0x7f

    .line 118
    .line 119
    if-ne v2, v5, :cond_6

    .line 120
    .line 121
    :cond_5
    move v2, v4

    .line 122
    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0

    .line 137
    :cond_8
    iget v1, p1, Ls3/w;->b:I

    .line 138
    .line 139
    iget p1, p1, Ls3/w;->c:I

    .line 140
    .line 141
    invoke-static {v1, p1, p0}, Ls3/x;->s(II[B)J

    .line 142
    .line 143
    .line 144
    move-result-wide p0

    .line 145
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    return-object p0

    .line 150
    :catchall_0
    return-object v0

    .line 151
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static n(J)[B
    .locals 8

    .line 1
    const/16 v0, 0x9

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    const-wide/16 v4, 0xff

    and-long/2addr v4, p0

    long-to-int v4, v4

    int-to-byte v4, v4

    add-int/lit8 v5, v3, 0x1

    aput-byte v4, v1, v3

    const/16 v3, 0x8

    shr-long/2addr p0, v3

    and-int/lit16 v3, v4, 0x80

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-nez v4, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v4, p0, v6

    if-nez v4, :cond_3

    if-eqz v3, :cond_3

    :cond_2
    move v3, v5

    goto :goto_2

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    :goto_2
    new-array p0, v3, [B

    :goto_3
    if-ge v2, v3, :cond_5

    add-int/lit8 p1, v3, -0x1

    sub-int/2addr p1, v2

    aget-byte p1, v1, p1

    aput-byte p1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-object p0
.end method

.method public static o(Ljava/lang/String;)[B
    .locals 7

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_2
    aget-object v1, p0, v1

    invoke-static {v1}, Ls3/x;->q(Ljava/lang/String;)J

    move-result-wide v1

    array-length v3, p0

    if-le v3, v4, :cond_3

    aget-object v3, p0, v4

    invoke-static {v3}, Ls3/x;->q(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_3
    const-wide/16 v3, 0x0

    :goto_0
    const-wide/16 v5, 0x28

    mul-long/2addr v1, v5

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Ls3/x;->u(Ljava/io/ByteArrayOutputStream;J)V

    const/4 v1, 0x2

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    invoke-static {v2}, Ls3/x;->q(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ls3/x;->u(Ljava/io/ByteArrayOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static q(Ljava/lang/String;)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :catchall_0
    :goto_0
    return-wide v0
.end method

.method public static s(II[B)J
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    if-eqz p2, :cond_2

    if-lez p1, :cond_2

    if-ltz p0, :cond_2

    array-length v2, p2

    sub-int/2addr v2, p0

    if-le p1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr p1, p0

    sub-int/2addr p1, v3

    aget-byte p0, p2, p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1

    const-wide/16 v0, -0x1

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-ge p0, v3, :cond_2

    shl-long/2addr v0, v2

    add-int v4, p1, p0

    aget-byte v4, p2, v4

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v0
.end method

.method public static t(II[B)Ls3/w;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_5

    .line 3
    .line 4
    if-ltz p0, :cond_5

    .line 5
    .line 6
    array-length v1, p2

    .line 7
    if-gt p1, v1, :cond_5

    .line 8
    .line 9
    sub-int v1, p1, p0

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    aget-byte v1, p2, p0

    .line 16
    .line 17
    and-int/lit16 v1, v1, 0xff

    .line 18
    .line 19
    add-int/lit8 v3, p0, 0x1

    .line 20
    .line 21
    add-int/2addr p0, v2

    .line 22
    aget-byte v2, p2, v3

    .line 23
    .line 24
    and-int/lit16 v3, v2, 0xff

    .line 25
    .line 26
    and-int/lit16 v4, v2, 0x80

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    and-int/lit8 v2, v2, 0x7f

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-lt v2, v3, :cond_5

    .line 35
    .line 36
    const/4 v3, 0x4

    .line 37
    if-gt v2, v3, :cond_5

    .line 38
    .line 39
    sub-int v3, p1, p0

    .line 40
    .line 41
    if-le v2, v3, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/4 v3, 0x0

    .line 45
    move v4, v3

    .line 46
    :goto_0
    if-ge v3, v2, :cond_3

    .line 47
    .line 48
    shl-int/lit8 v4, v4, 0x8

    .line 49
    .line 50
    add-int/lit8 v5, p0, 0x1

    .line 51
    .line 52
    aget-byte p0, p2, p0

    .line 53
    .line 54
    and-int/lit16 p0, p0, 0xff

    .line 55
    .line 56
    or-int/2addr v4, p0

    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    move p0, v5

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move v3, v4

    .line 62
    :goto_1
    if-ltz v3, :cond_5

    .line 63
    .line 64
    sub-int/2addr p1, p0

    .line 65
    if-le v3, p1, :cond_4

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    new-instance p1, Ls3/w;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    iput v1, p1, Ls3/w;->a:I

    .line 74
    .line 75
    iput p0, p1, Ls3/w;->b:I

    .line 76
    .line 77
    iput v3, p1, Ls3/w;->c:I

    .line 78
    .line 79
    add-int/2addr p0, v3

    .line 80
    iput p0, p1, Ls3/w;->d:I

    .line 81
    .line 82
    return-object p1

    .line 83
    :cond_5
    :goto_2
    return-object v0
.end method

.method public static u(Ljava/io/ByteArrayOutputStream;J)V
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const/16 v2, 0xa

    new-array v3, v2, [B

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v4, 0x1

    const-wide/16 v6, 0x7f

    and-long/2addr v6, p1

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    const/4 v6, 0x7

    ushr-long/2addr p1, v6

    cmp-long v6, p1, v0

    if-eqz v6, :cond_2

    if-lt v5, v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v4, :cond_4

    aget-byte p1, v3, v4

    and-int/lit8 p1, p1, 0x7f

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    or-int/lit16 p1, p1, 0x80

    :goto_2
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static v(Ljava/io/ByteArrayOutputStream;I[B)V
    .locals 3

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    move v1, p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    array-length v1, p2

    .line 13
    :goto_0
    if-gez v1, :cond_1

    .line 14
    .line 15
    move v1, p1

    .line 16
    :cond_1
    const/16 v2, 0x80

    .line 17
    .line 18
    if-ge v1, v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_2
    if-gt v1, v0, :cond_3

    .line 25
    .line 26
    const/16 v2, 0x81

    .line 27
    .line 28
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 29
    .line 30
    .line 31
    and-int/2addr v0, v1

    .line 32
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_3
    const v2, 0xffff

    .line 37
    .line 38
    .line 39
    if-gt v1, v2, :cond_4

    .line 40
    .line 41
    const/16 v2, 0x82

    .line 42
    .line 43
    :goto_2
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 44
    .line 45
    .line 46
    shr-int/lit8 v2, v1, 0x8

    .line 47
    .line 48
    and-int/2addr v2, v0

    .line 49
    goto :goto_1

    .line 50
    :cond_4
    const/16 v2, 0x83

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 53
    .line 54
    .line 55
    shr-int/lit8 v2, v1, 0x10

    .line 56
    .line 57
    and-int/2addr v2, v0

    .line 58
    goto :goto_2

    .line 59
    :goto_3
    if-eqz p2, :cond_5

    .line 60
    .line 61
    array-length v0, p2

    .line 62
    if-lez v0, :cond_5

    .line 63
    .line 64
    array-length v0, p2

    .line 65
    invoke-virtual {p0, p2, p1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 66
    .line 67
    .line 68
    :cond_5
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls3/b;->c:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ls3/x;->i:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    iput-object v1, p0, Ls3/x;->i:Ljava/util/concurrent/ExecutorService;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual {p0}, Ls3/x;->j()V

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :catchall_1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ls3/x;->j()V

    iget-object v0, p0, Ls3/x;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "snmp"

    return-object v0
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls3/x;->g:Ljava/util/Set;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/DatagramSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Ls3/b;->c:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lf/u0;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ls3/x;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Ls3/x;->i:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Ls3/x;->f:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_4

    return-void

    :cond_4
    :try_start_1
    new-instance v1, Landroidx/appcompat/widget/j;

    const/16 v2, 0xb

    invoke-direct {v1, p0, p1, v2}, Landroidx/appcompat/widget/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    :try_start_2
    iget-object v0, p0, Ls3/x;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_5
    :goto_0
    return-void

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "query failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls3/b;->g(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
