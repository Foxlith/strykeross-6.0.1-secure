.class public final Landroidx/lifecycle/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance p1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final varargs a([Lz0/a;)V
    .locals 7

    .line 1
    const-string v0, "migrations"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    aget-object v2, p1, v1

    .line 11
    .line 12
    iget v3, v2, Lz0/a;->a:I

    .line 13
    .line 14
    iget-object v4, p0, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    new-instance v5, Ljava/util/TreeMap;

    .line 27
    .line 28
    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_0
    check-cast v5, Ljava/util/TreeMap;

    .line 35
    .line 36
    iget v3, v2, Lz0/a;->b:I

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v6, "Overriding migration "

    .line 51
    .line 52
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v6, " with "

    .line 67
    .line 68
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const-string v6, "ROOM"

    .line 79
    .line 80
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    return-void
.end method

.method public final b(Ljava/util/HashMap;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-class v3, Ljava/lang/Boolean;

    .line 45
    .line 46
    if-eq v2, v3, :cond_e

    .line 47
    .line 48
    const-class v3, Ljava/lang/Byte;

    .line 49
    .line 50
    if-eq v2, v3, :cond_e

    .line 51
    .line 52
    const-class v3, Ljava/lang/Integer;

    .line 53
    .line 54
    if-eq v2, v3, :cond_e

    .line 55
    .line 56
    const-class v3, Ljava/lang/Long;

    .line 57
    .line 58
    if-eq v2, v3, :cond_e

    .line 59
    .line 60
    const-class v3, Ljava/lang/Float;

    .line 61
    .line 62
    if-eq v2, v3, :cond_e

    .line 63
    .line 64
    const-class v3, Ljava/lang/Double;

    .line 65
    .line 66
    if-eq v2, v3, :cond_e

    .line 67
    .line 68
    const-class v3, Ljava/lang/String;

    .line 69
    .line 70
    if-eq v2, v3, :cond_e

    .line 71
    .line 72
    const-class v3, [Ljava/lang/Boolean;

    .line 73
    .line 74
    if-eq v2, v3, :cond_e

    .line 75
    .line 76
    const-class v3, [Ljava/lang/Byte;

    .line 77
    .line 78
    if-eq v2, v3, :cond_e

    .line 79
    .line 80
    const-class v3, [Ljava/lang/Integer;

    .line 81
    .line 82
    if-eq v2, v3, :cond_e

    .line 83
    .line 84
    const-class v3, [Ljava/lang/Long;

    .line 85
    .line 86
    if-eq v2, v3, :cond_e

    .line 87
    .line 88
    const-class v3, [Ljava/lang/Float;

    .line 89
    .line 90
    if-eq v2, v3, :cond_e

    .line 91
    .line 92
    const-class v3, [Ljava/lang/Double;

    .line 93
    .line 94
    if-eq v2, v3, :cond_e

    .line 95
    .line 96
    const-class v3, [Ljava/lang/String;

    .line 97
    .line 98
    if-ne v2, v3, :cond_1

    .line 99
    .line 100
    goto/16 :goto_7

    .line 101
    .line 102
    :cond_1
    const-class v3, [Z

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    if-ne v2, v3, :cond_3

    .line 106
    .line 107
    iget-object v2, p0, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 108
    .line 109
    check-cast v0, [Z

    .line 110
    .line 111
    sget-object v3, Lm1/e;->b:Ljava/lang/String;

    .line 112
    .line 113
    array-length v3, v0

    .line 114
    new-array v3, v3, [Ljava/lang/Boolean;

    .line 115
    .line 116
    :goto_1
    array-length v5, v0

    .line 117
    if-ge v4, v5, :cond_2

    .line 118
    .line 119
    aget-boolean v5, v0, v4

    .line 120
    .line 121
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    aput-object v5, v3, v4

    .line 126
    .line 127
    add-int/lit8 v4, v4, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    const-class v3, [B

    .line 135
    .line 136
    if-ne v2, v3, :cond_5

    .line 137
    .line 138
    iget-object v2, p0, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 139
    .line 140
    check-cast v0, [B

    .line 141
    .line 142
    sget-object v3, Lm1/e;->b:Ljava/lang/String;

    .line 143
    .line 144
    array-length v3, v0

    .line 145
    new-array v3, v3, [Ljava/lang/Byte;

    .line 146
    .line 147
    :goto_2
    array-length v5, v0

    .line 148
    if-ge v4, v5, :cond_4

    .line 149
    .line 150
    aget-byte v5, v0, v4

    .line 151
    .line 152
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    aput-object v5, v3, v4

    .line 157
    .line 158
    add-int/lit8 v4, v4, 0x1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_4
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_5
    const-class v3, [I

    .line 167
    .line 168
    if-ne v2, v3, :cond_7

    .line 169
    .line 170
    iget-object v2, p0, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 171
    .line 172
    check-cast v0, [I

    .line 173
    .line 174
    sget-object v3, Lm1/e;->b:Ljava/lang/String;

    .line 175
    .line 176
    array-length v3, v0

    .line 177
    new-array v3, v3, [Ljava/lang/Integer;

    .line 178
    .line 179
    :goto_3
    array-length v5, v0

    .line 180
    if-ge v4, v5, :cond_6

    .line 181
    .line 182
    aget v5, v0, v4

    .line 183
    .line 184
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    aput-object v5, v3, v4

    .line 189
    .line 190
    add-int/lit8 v4, v4, 0x1

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_6
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_7
    const-class v3, [J

    .line 199
    .line 200
    if-ne v2, v3, :cond_9

    .line 201
    .line 202
    iget-object v2, p0, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 203
    .line 204
    check-cast v0, [J

    .line 205
    .line 206
    sget-object v3, Lm1/e;->b:Ljava/lang/String;

    .line 207
    .line 208
    array-length v3, v0

    .line 209
    new-array v3, v3, [Ljava/lang/Long;

    .line 210
    .line 211
    :goto_4
    array-length v5, v0

    .line 212
    if-ge v4, v5, :cond_8

    .line 213
    .line 214
    aget-wide v5, v0, v4

    .line 215
    .line 216
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    aput-object v5, v3, v4

    .line 221
    .line 222
    add-int/lit8 v4, v4, 0x1

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_8
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_9
    const-class v3, [F

    .line 231
    .line 232
    if-ne v2, v3, :cond_b

    .line 233
    .line 234
    iget-object v2, p0, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 235
    .line 236
    check-cast v0, [F

    .line 237
    .line 238
    sget-object v3, Lm1/e;->b:Ljava/lang/String;

    .line 239
    .line 240
    array-length v3, v0

    .line 241
    new-array v3, v3, [Ljava/lang/Float;

    .line 242
    .line 243
    :goto_5
    array-length v5, v0

    .line 244
    if-ge v4, v5, :cond_a

    .line 245
    .line 246
    aget v5, v0, v4

    .line 247
    .line 248
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    aput-object v5, v3, v4

    .line 253
    .line 254
    add-int/lit8 v4, v4, 0x1

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_a
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_b
    const-class v3, [D

    .line 263
    .line 264
    if-ne v2, v3, :cond_d

    .line 265
    .line 266
    iget-object v2, p0, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 267
    .line 268
    check-cast v0, [D

    .line 269
    .line 270
    sget-object v3, Lm1/e;->b:Ljava/lang/String;

    .line 271
    .line 272
    array-length v3, v0

    .line 273
    new-array v3, v3, [Ljava/lang/Double;

    .line 274
    .line 275
    :goto_6
    array-length v5, v0

    .line 276
    if-ge v4, v5, :cond_c

    .line 277
    .line 278
    aget-wide v5, v0, v4

    .line 279
    .line 280
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    aput-object v5, v3, v4

    .line 285
    .line 286
    add-int/lit8 v4, v4, 0x1

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_c
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 295
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v3, "Key "

    .line 299
    .line 300
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v1, "has invalid type "

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    throw p1

    .line 322
    :cond_e
    :goto_7
    iget-object v2, p0, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 323
    .line 324
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_f
    return-void
.end method
