.class public final Lg3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk3/a;

.field public final b:Lk3/a;

.field public final c:Li3/b;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/concurrent/LinkedBlockingQueue;

.field public f:Ld3/a;

.field public g:Ld3/d;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Lk3/a;Lk3/a;Li3/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lg3/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lg3/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p1, p0, Lg3/c;->a:Lk3/a;

    iput-object p2, p0, Lg3/c;->b:Lk3/a;

    iput-object p3, p0, Lg3/c;->c:Li3/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg3/c;->f:Ld3/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ld3/a;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg3/c;->f:Ld3/a;

    :cond_0
    iget-object v0, p0, Lg3/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method public final b(Lg3/q;)V
    .locals 8

    .line 1
    instance-of v0, p1, Lg3/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lg3/i;

    .line 6
    .line 7
    iget-wide v0, p1, Lg3/i;->b:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    instance-of v0, p1, Lg3/p;

    .line 15
    .line 16
    iget-object v1, p0, Lg3/c;->a:Lk3/a;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    check-cast p1, Lg3/p;

    .line 22
    .line 23
    iget-object v0, p1, Lg3/p;->b:Ljava/lang/String;

    .line 24
    .line 25
    move v3, v2

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ge v3, v4, :cond_4

    .line 31
    .line 32
    iget-object v4, p0, Lg3/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    add-int/2addr v3, v5

    .line 51
    iget-object v5, p0, Lg3/c;->c:Li3/b;

    .line 52
    .line 53
    iget-object v5, v5, Li3/b;->c:Ljava/util/Map;

    .line 54
    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Li3/a;

    .line 64
    .line 65
    if-nez v4, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iget v5, v4, Li3/a;->a:I

    .line 69
    .line 70
    iget v4, v4, Li3/a;->b:I

    .line 71
    .line 72
    invoke-static {v5, v4}, Lk3/b;->a(II)Lk3/b;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Lk3/b;->b()[B

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v1, v4}, Lk3/a;->s([B)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lg3/c;->c()V

    .line 87
    .line 88
    .line 89
    const-wide/16 v4, 0x0

    .line 90
    .line 91
    iget-wide v6, p1, Lg3/p;->d:J

    .line 92
    .line 93
    cmp-long v4, v6, v4

    .line 94
    .line 95
    if-lez v4, :cond_1

    .line 96
    .line 97
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    iget-boolean p1, p1, Lg3/p;->c:Z

    .line 102
    .line 103
    if-eqz p1, :cond_f

    .line 104
    .line 105
    const/16 p1, 0x28

    .line 106
    .line 107
    invoke-static {v2, p1}, Lk3/b;->a(II)Lk3/b;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lk3/b;->b()[B

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v1, p1}, Lk3/a;->s([B)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lg3/c;->c()V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :cond_5
    instance-of v0, p1, Lg3/g;

    .line 127
    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    check-cast p1, Lg3/g;

    .line 131
    .line 132
    iget v0, p1, Lg3/g;->b:I

    .line 133
    .line 134
    iget v2, p0, Lg3/c;->h:I

    .line 135
    .line 136
    or-int/2addr v0, v2

    .line 137
    iget p1, p1, Lg3/g;->c:I

    .line 138
    .line 139
    invoke-static {v0, p1}, Lk3/b;->a(II)Lk3/b;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lk3/b;->b()[B

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v1, p1}, Lk3/a;->s([B)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lg3/c;->c()V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_3

    .line 157
    .line 158
    :cond_6
    instance-of v0, p1, Lg3/j;

    .line 159
    .line 160
    if-eqz v0, :cond_7

    .line 161
    .line 162
    check-cast p1, Lg3/j;

    .line 163
    .line 164
    iget v0, p1, Lg3/j;->b:I

    .line 165
    .line 166
    iput v0, p0, Lg3/c;->h:I

    .line 167
    .line 168
    iget p1, p1, Lg3/j;->c:I

    .line 169
    .line 170
    iput p1, p0, Lg3/c;->i:I

    .line 171
    .line 172
    invoke-static {v0, p1}, Lk3/b;->a(II)Lk3/b;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Lk3/b;->b()[B

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {v1, p1}, Lk3/a;->s([B)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_3

    .line 187
    .line 188
    :cond_7
    instance-of v0, p1, Lg3/o;

    .line 189
    .line 190
    if-eqz v0, :cond_8

    .line 191
    .line 192
    iput v2, p0, Lg3/c;->h:I

    .line 193
    .line 194
    iput v2, p0, Lg3/c;->i:I

    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    sget-object p1, Lk3/b;->b:Lk3/b;

    .line 200
    .line 201
    invoke-virtual {p1}, Lk3/b;->b()[B

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {v1, p1}, Lk3/a;->s([B)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_3

    .line 209
    .line 210
    :cond_8
    instance-of v0, p1, Lg3/l;

    .line 211
    .line 212
    iget-object v1, p0, Lg3/c;->b:Lk3/a;

    .line 213
    .line 214
    if-eqz v0, :cond_9

    .line 215
    .line 216
    if-eqz v1, :cond_f

    .line 217
    .line 218
    check-cast p1, Lg3/l;

    .line 219
    .line 220
    new-instance v0, Lg3/b;

    .line 221
    .line 222
    iget v3, p1, Lg3/l;->b:I

    .line 223
    .line 224
    iget p1, p1, Lg3/l;->c:I

    .line 225
    .line 226
    invoke-direct {v0, v2, v3, p1, v2}, Lg3/b;-><init>(IIII)V

    .line 227
    .line 228
    .line 229
    :goto_1
    invoke-virtual {v1, v0}, Lk3/a;->t(Lg3/b;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_3

    .line 233
    .line 234
    :cond_9
    instance-of v0, p1, Lg3/k;

    .line 235
    .line 236
    if-eqz v0, :cond_a

    .line 237
    .line 238
    if-eqz v1, :cond_f

    .line 239
    .line 240
    check-cast p1, Lg3/k;

    .line 241
    .line 242
    new-instance v0, Lg3/b;

    .line 243
    .line 244
    iget p1, p1, Lg3/k;->b:I

    .line 245
    .line 246
    invoke-direct {v0, p1, v2, v2, v2}, Lg3/b;-><init>(IIII)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v0}, Lk3/a;->t(Lg3/b;)V

    .line 250
    .line 251
    .line 252
    new-instance p1, Lg3/b;

    .line 253
    .line 254
    invoke-direct {p1, v2, v2, v2, v2}, Lg3/b;-><init>(IIII)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, p1}, Lk3/a;->t(Lg3/b;)V

    .line 258
    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_a
    instance-of v0, p1, Lg3/m;

    .line 262
    .line 263
    if-eqz v0, :cond_b

    .line 264
    .line 265
    if-eqz v1, :cond_f

    .line 266
    .line 267
    check-cast p1, Lg3/m;

    .line 268
    .line 269
    new-instance v0, Lg3/b;

    .line 270
    .line 271
    iget p1, p1, Lg3/m;->b:I

    .line 272
    .line 273
    invoke-direct {v0, v2, v2, v2, p1}, Lg3/b;-><init>(IIII)V

    .line 274
    .line 275
    .line 276
    goto :goto_1

    .line 277
    :cond_b
    instance-of v0, p1, Lg3/f;

    .line 278
    .line 279
    if-eqz v0, :cond_e

    .line 280
    .line 281
    check-cast p1, Lg3/f;

    .line 282
    .line 283
    iget-object v0, p0, Lg3/c;->f:Ld3/a;

    .line 284
    .line 285
    if-eqz v0, :cond_c

    .line 286
    .line 287
    iget-object v0, p0, Lg3/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    check-cast v1, Ljava/lang/String;

    .line 294
    .line 295
    if-nez v1, :cond_d

    .line 296
    .line 297
    iget-wide v1, p1, Lg3/f;->b:J

    .line 298
    .line 299
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 300
    .line 301
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    move-object v1, v0

    .line 306
    check-cast v1, Ljava/lang/String;

    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_c
    const/4 v1, 0x0

    .line 310
    :cond_d
    :goto_2
    iget-object v0, p0, Lg3/c;->g:Ld3/d;

    .line 311
    .line 312
    if-eqz v0, :cond_f

    .line 313
    .line 314
    iget-object v2, v0, Ld3/d;->d:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v2, Lh3/c;

    .line 317
    .line 318
    iget-object v0, v0, Ld3/d;->c:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v0, Le0/j;

    .line 321
    .line 322
    new-instance v3, Landroidx/emoji2/text/m;

    .line 323
    .line 324
    const/16 v4, 0x12

    .line 325
    .line 326
    invoke-direct {v3, v0, p1, v1, v4}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    invoke-static {v3}, Lh3/c;->a(Ljava/lang/Runnable;)V

    .line 333
    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_e
    instance-of v0, p1, Lg3/n;

    .line 337
    .line 338
    if-eqz v0, :cond_f

    .line 339
    .line 340
    iget-object v0, p0, Lg3/c;->g:Ld3/d;

    .line 341
    .line 342
    if-eqz v0, :cond_f

    .line 343
    .line 344
    iget-object v1, v0, Ld3/d;->d:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast v1, Lh3/c;

    .line 347
    .line 348
    iget-object v0, v0, Ld3/d;->c:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v0, Le0/j;

    .line 351
    .line 352
    new-instance v2, Lw2/h;

    .line 353
    .line 354
    const/16 v3, 0xa

    .line 355
    .line 356
    invoke-direct {v2, v0, p1, v3}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    invoke-static {v2}, Lh3/c;->a(Ljava/lang/Runnable;)V

    .line 363
    .line 364
    .line 365
    :cond_f
    :goto_3
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, Lg3/c;->h:I

    .line 2
    .line 3
    iget-object v1, p0, Lg3/c;->a:Lk3/a;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v2, p0, Lg3/c;->i:I

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lk3/b;->b:Lk3/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Lk3/b;->b()[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Lk3/a;->s([B)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget v2, p0, Lg3/c;->i:I

    .line 25
    .line 26
    invoke-static {v0, v2}, Lk3/b;->a(II)Lk3/b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lk3/b;->b()[B

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Lk3/a;->s([B)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public final d(Lg3/e;Ld3/d;)V
    .locals 12

    .line 1
    iget-object v0, p2, Ld3/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lg3/c;->g:Ld3/d;

    .line 4
    .line 5
    iget-object p1, p1, Lg3/e;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lg3/q;

    .line 24
    .line 25
    instance-of v2, v2, Lg3/f;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lg3/c;->f:Ld3/a;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :try_start_0
    new-instance v1, Lg3/b;

    .line 35
    .line 36
    invoke-direct {v1, p0, v3}, Lg3/b;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Ld3/a;->i(Lg3/b;)Ld3/a;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lg3/c;->f:Ld3/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    iput-object v4, p0, Lg3/c;->f:Ld3/a;

    .line 47
    .line 48
    :goto_0
    iget-object v1, p0, Lg3/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 51
    .line 52
    .line 53
    :cond_2
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lg3/q;

    .line 68
    .line 69
    iget-object v2, p0, Lg3/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 72
    .line 73
    .line 74
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    invoke-virtual {p0}, Lg3/c;->a()V

    .line 78
    .line 79
    .line 80
    iput-object v4, p0, Lg3/c;->g:Ld3/d;

    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    :try_start_2
    iget-object v2, p2, Ld3/d;->b:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v2, [I

    .line 86
    .line 87
    aget v5, v2, v3

    .line 88
    .line 89
    add-int/lit8 v8, v5, 0x1

    .line 90
    .line 91
    aput v8, v2, v3

    .line 92
    .line 93
    iget-object v2, p2, Ld3/d;->d:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v2, Lh3/c;

    .line 96
    .line 97
    move-object v6, v0

    .line 98
    check-cast v6, Le0/j;

    .line 99
    .line 100
    iget v9, p2, Ld3/d;->a:I

    .line 101
    .line 102
    new-instance v11, Lt2/g;

    .line 103
    .line 104
    const/4 v10, 0x2

    .line 105
    move-object v5, v11

    .line 106
    move-object v7, v1

    .line 107
    invoke-direct/range {v5 .. v10}, Lt2/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {v11}, Lh3/c;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    .line 115
    .line 116
    :try_start_3
    invoke-virtual {p0, v1}, Lg3/c;->b(Lg3/q;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catchall_0
    move-exception v2

    .line 121
    :try_start_4
    iget-object v5, p2, Ld3/d;->d:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v5, Lh3/c;

    .line 124
    .line 125
    move-object v6, v0

    .line 126
    check-cast v6, Le0/j;

    .line 127
    .line 128
    new-instance v7, Landroidx/emoji2/text/m;

    .line 129
    .line 130
    const/16 v8, 0x13

    .line 131
    .line 132
    invoke-direct {v7, v6, v1, v2, v8}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-static {v7}, Lh3/c;->a(Ljava/lang/Runnable;)V

    .line 139
    .line 140
    .line 141
    instance-of v1, v2, Ljava/io/IOException;

    .line 142
    .line 143
    if-nez v1, :cond_5

    .line 144
    .line 145
    instance-of v1, v2, Ljava/lang/InterruptedException;

    .line 146
    .line 147
    if-nez v1, :cond_4

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    check-cast v2, Ljava/lang/InterruptedException;

    .line 151
    .line 152
    throw v2

    .line 153
    :catchall_1
    move-exception p1

    .line 154
    goto :goto_2

    .line 155
    :cond_5
    check-cast v2, Ljava/io/IOException;

    .line 156
    .line 157
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 158
    :cond_6
    invoke-virtual {p0}, Lg3/c;->a()V

    .line 159
    .line 160
    .line 161
    iput-object v4, p0, Lg3/c;->g:Ld3/d;

    .line 162
    .line 163
    return-void

    .line 164
    :goto_2
    invoke-virtual {p0}, Lg3/c;->a()V

    .line 165
    .line 166
    .line 167
    iput-object v4, p0, Lg3/c;->g:Ld3/d;

    .line 168
    .line 169
    throw p1
.end method
