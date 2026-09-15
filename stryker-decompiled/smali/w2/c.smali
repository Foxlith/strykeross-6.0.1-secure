.class public abstract Lw2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "([-]?[0-9]+\\.[0-9]+)\\s*,\\s*([-]?[0-9]+\\.[0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ll4/l;Ljava/lang/String;)[D
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_10

    .line 3
    .line 4
    if-eqz p1, :cond_10

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_b

    .line 13
    .line 14
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, v1

    .line 21
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ge v2, v3, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/16 v4, 0x10

    .line 32
    .line 33
    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ltz v4, :cond_1

    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/16 v3, 0xc

    .line 54
    .line 55
    if-eq v2, v3, :cond_3

    .line 56
    .line 57
    move-object p0, v0

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const/16 v4, 0x11

    .line 62
    .line 63
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    .line 65
    .line 66
    move v4, v1

    .line 67
    :goto_1
    if-ge v4, v3, :cond_5

    .line 68
    .line 69
    if-lez v4, :cond_4

    .line 70
    .line 71
    const/16 v5, 0x3a

    .line 72
    .line 73
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    add-int/lit8 v5, v4, 0x1

    .line 84
    .line 85
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    add-int/lit8 v4, v4, 0x2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    :goto_2
    if-nez p0, :cond_6

    .line 100
    .line 101
    :catch_0
    :goto_3
    move-object p0, v0

    .line 102
    goto :goto_7

    .line 103
    :cond_6
    :try_start_0
    invoke-static {p0}, Lw2/a;->a(Ljava/lang/String;)[B

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    new-instance v3, Lokhttp3/Request$Builder;

    .line 108
    .line 109
    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v4, "https://gs-loc.apple.com/clls/wloc"

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-string v4, "User-Agent"

    .line 119
    .line 120
    const-string v5, "locationd/1753.17 CFNetwork/711.1.12 Darwin/14.0.0"

    .line 121
    .line 122
    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const-string v4, "Accept-Charset"

    .line 127
    .line 128
    const-string v5, "utf-8"

    .line 129
    .line 130
    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    const-string v4, "application/x-www-form-urlencoded"

    .line 135
    .line 136
    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v4, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-static {}, Lw2/a;->b()Lokhttp3/OkHttpClient;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 161
    .line 162
    .line 163
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :try_start_1
    invoke-virtual {v2}, Lokhttp3/Response;->isSuccessful()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_8

    .line 169
    .line 170
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    if-nez v3, :cond_7

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_7
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->bytes()[B

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-static {v3, p0}, Lw2/a;->c([BLjava/lang/String;)[D

    .line 186
    .line 187
    .line 188
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :try_start_2
    invoke-virtual {v2}, Lokhttp3/Response;->close()V

    .line 190
    .line 191
    .line 192
    goto :goto_7

    .line 193
    :catchall_0
    move-exception p0

    .line 194
    goto :goto_5

    .line 195
    :cond_8
    :goto_4
    invoke-virtual {v2}, Lokhttp3/Response;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :goto_5
    if-eqz v2, :cond_9

    .line 200
    .line 201
    :try_start_3
    invoke-virtual {v2}, Lokhttp3/Response;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    .line 203
    .line 204
    goto :goto_6

    .line 205
    :catchall_1
    move-exception v2

    .line 206
    :try_start_4
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    :cond_9
    :goto_6
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 210
    :goto_7
    if-eqz p0, :cond_a

    .line 211
    .line 212
    return-object p0

    .line 213
    :cond_a
    const-string p0, "https://api.mylnikov.org/geolocation/wifi?v=1.1&data=open&bssid="

    .line 214
    .line 215
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const-string p0, "UTF-8"

    .line 221
    .line 222
    invoke-static {p1, p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    new-instance p1, Lokhttp3/OkHttpClient;

    .line 234
    .line 235
    invoke-direct {p1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 236
    .line 237
    .line 238
    new-instance v2, Lokhttp3/Request$Builder;

    .line 239
    .line 240
    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 256
    .line 257
    .line 258
    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 259
    :try_start_6
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-eqz p1, :cond_c

    .line 264
    .line 265
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    if-nez p1, :cond_b

    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_b
    new-instance p1, Lorg/json/JSONObject;

    .line 273
    .line 274
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const-string v2, "result"

    .line 286
    .line 287
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 291
    const/16 v3, 0xc8

    .line 292
    .line 293
    if-eq v2, v3, :cond_d

    .line 294
    .line 295
    :cond_c
    :goto_8
    :try_start_7
    invoke-virtual {p0}, Lokhttp3/Response;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 296
    .line 297
    .line 298
    :catch_1
    move-object v2, v0

    .line 299
    goto :goto_a

    .line 300
    :cond_d
    :try_start_8
    const-string v2, "data"

    .line 301
    .line 302
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    if-nez p1, :cond_e

    .line 307
    .line 308
    goto :goto_8

    .line 309
    :cond_e
    const/4 v2, 0x2

    .line 310
    new-array v2, v2, [D

    .line 311
    .line 312
    const-string v3, "lat"

    .line 313
    .line 314
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 315
    .line 316
    .line 317
    move-result-wide v3

    .line 318
    aput-wide v3, v2, v1

    .line 319
    .line 320
    const-string v1, "lon"

    .line 321
    .line 322
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 323
    .line 324
    .line 325
    move-result-wide v3

    .line 326
    const/4 p1, 0x1

    .line 327
    aput-wide v3, v2, p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 328
    .line 329
    :try_start_9
    invoke-virtual {p0}, Lokhttp3/Response;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 330
    .line 331
    .line 332
    goto :goto_a

    .line 333
    :catchall_2
    move-exception p1

    .line 334
    if-eqz p0, :cond_f

    .line 335
    .line 336
    :try_start_a
    invoke-virtual {p0}, Lokhttp3/Response;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 337
    .line 338
    .line 339
    goto :goto_9

    .line 340
    :catchall_3
    move-exception p0

    .line 341
    :try_start_b
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 342
    .line 343
    .line 344
    :cond_f
    :goto_9
    throw p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 345
    :goto_a
    if-eqz v2, :cond_10

    .line 346
    .line 347
    return-object v2

    .line 348
    :cond_10
    :goto_b
    return-object v0
.end method
