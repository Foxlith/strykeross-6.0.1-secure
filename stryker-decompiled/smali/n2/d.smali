.class public abstract Ln2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\.go:\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln2/d;->a:Ljava/util/regex/Pattern;

    const-string v0, "^[A-Za-z0-9._~-]+(/[A-Za-z0-9._~+-]+)+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln2/d;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ln2/e;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget-object v1, Ln2/e;->a:Ln2/e;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    const-string v0, "OK:"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object p0, Ln2/e;->c:Ln2/e;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    sget-object v0, Ln2/d;->b:Ljava/util/regex/Pattern;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_2
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v2, "FATAL"

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_c

    .line 51
    .line 52
    const-string v2, "ERROR"

    .line 53
    .line 54
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_c

    .line 59
    .line 60
    const-string v2, "Errno"

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_3
    const-string v2, "fatal:"

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_c

    .line 77
    .line 78
    const-string v2, "E: "

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_c

    .line 85
    .line 86
    const-string v2, "dpkg: error"

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :cond_4
    const-string v2, "error: "

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_c

    .line 103
    .line 104
    const-string v2, ": error"

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-nez v2, :cond_c

    .line 111
    .line 112
    const-string v2, "error:"

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_5

    .line 119
    .line 120
    goto/16 :goto_2

    .line 121
    .line 122
    :cond_5
    const-string v2, "no such file"

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_c

    .line 129
    .line 130
    const-string v2, "permission denied"

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_c

    .line 137
    .line 138
    const-string v2, "no space left"

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_c

    .line 145
    .line 146
    const-string v2, "cannot find package"

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-nez v2, :cond_c

    .line 153
    .line 154
    const-string v2, "no required module provides"

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_c

    .line 161
    .line 162
    const-string v2, "build failed"

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_c

    .line 169
    .line 170
    const-string v2, "undefined:"

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-nez v2, :cond_c

    .line 177
    .line 178
    const-string v2, "not in std"

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-nez v2, :cond_c

    .line 185
    .line 186
    const-string v2, "not found"

    .line 187
    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-nez v2, :cond_c

    .line 193
    .line 194
    const-string v2, "checksum mismatch"

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-nez v2, :cond_c

    .line 201
    .line 202
    const-string v2, "connection refused"

    .line 203
    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-nez v2, :cond_c

    .line 209
    .line 210
    const-string v2, "could not resolve"

    .line 211
    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_c

    .line 217
    .line 218
    const-string v2, "name resolution"

    .line 219
    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-nez v2, :cond_c

    .line 225
    .line 226
    const-string v2, "network is unreachable"

    .line 227
    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-nez v2, :cond_c

    .line 233
    .line 234
    const-string v2, "i/o timeout"

    .line 235
    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-nez v2, :cond_c

    .line 241
    .line 242
    const-string v2, "handshake timeout"

    .line 243
    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-nez v2, :cond_c

    .line 249
    .line 250
    const-string v2, "unable to "

    .line 251
    .line 252
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-nez v2, :cond_c

    .line 257
    .line 258
    const-string v2, "failed to "

    .line 259
    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-eqz v2, :cond_6

    .line 265
    .line 266
    goto/16 :goto_2

    .line 267
    .line 268
    :cond_6
    sget-object v2, Ln2/d;->a:Ljava/util/regex/Pattern;

    .line 269
    .line 270
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_7

    .line 279
    .line 280
    goto/16 :goto_2

    .line 281
    .line 282
    :cond_7
    const-string v2, "WARNING"

    .line 283
    .line 284
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result p0

    .line 288
    if-nez p0, :cond_b

    .line 289
    .line 290
    const-string p0, "warning"

    .line 291
    .line 292
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result p0

    .line 296
    if-nez p0, :cond_b

    .line 297
    .line 298
    const-string p0, "warning:"

    .line 299
    .line 300
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 301
    .line 302
    .line 303
    move-result p0

    .line 304
    if-nez p0, :cond_b

    .line 305
    .line 306
    const-string p0, "deprecated"

    .line 307
    .line 308
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 309
    .line 310
    .line 311
    move-result p0

    .line 312
    if-eqz p0, :cond_8

    .line 313
    .line 314
    goto/16 :goto_1

    .line 315
    .line 316
    :cond_8
    const-string p0, "go: downloading"

    .line 317
    .line 318
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result p0

    .line 322
    if-nez p0, :cond_a

    .line 323
    .line 324
    const-string p0, "go: finding"

    .line 325
    .line 326
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result p0

    .line 330
    if-nez p0, :cond_a

    .line 331
    .line 332
    const-string p0, "go: extracting"

    .line 333
    .line 334
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result p0

    .line 338
    if-nez p0, :cond_a

    .line 339
    .line 340
    const-string p0, "get:"

    .line 341
    .line 342
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 343
    .line 344
    .line 345
    move-result p0

    .line 346
    if-nez p0, :cond_a

    .line 347
    .line 348
    const-string p0, "setting up "

    .line 349
    .line 350
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result p0

    .line 354
    if-nez p0, :cond_a

    .line 355
    .line 356
    const-string p0, "preparing to unpack"

    .line 357
    .line 358
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 359
    .line 360
    .line 361
    move-result p0

    .line 362
    if-nez p0, :cond_a

    .line 363
    .line 364
    const-string p0, "selecting previously"

    .line 365
    .line 366
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 367
    .line 368
    .line 369
    move-result p0

    .line 370
    if-nez p0, :cond_a

    .line 371
    .line 372
    const-string p0, "reading package lists"

    .line 373
    .line 374
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result p0

    .line 378
    if-nez p0, :cond_a

    .line 379
    .line 380
    const-string p0, "building dependency tree"

    .line 381
    .line 382
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 383
    .line 384
    .line 385
    move-result p0

    .line 386
    if-nez p0, :cond_a

    .line 387
    .line 388
    const-string p0, "fetch "

    .line 389
    .line 390
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 391
    .line 392
    .line 393
    move-result p0

    .line 394
    if-nez p0, :cond_a

    .line 395
    .line 396
    const-string p0, "fetching"

    .line 397
    .line 398
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 399
    .line 400
    .line 401
    move-result p0

    .line 402
    if-nez p0, :cond_a

    .line 403
    .line 404
    const-string p0, "cloning"

    .line 405
    .line 406
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 407
    .line 408
    .line 409
    move-result p0

    .line 410
    if-nez p0, :cond_a

    .line 411
    .line 412
    const-string p0, "receiving"

    .line 413
    .line 414
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 415
    .line 416
    .line 417
    move-result p0

    .line 418
    if-nez p0, :cond_a

    .line 419
    .line 420
    const-string p0, "resolving"

    .line 421
    .line 422
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 423
    .line 424
    .line 425
    move-result p0

    .line 426
    if-nez p0, :cond_a

    .line 427
    .line 428
    const-string p0, "counting"

    .line 429
    .line 430
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 431
    .line 432
    .line 433
    move-result p0

    .line 434
    if-nez p0, :cond_a

    .line 435
    .line 436
    const-string p0, "compressing"

    .line 437
    .line 438
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 439
    .line 440
    .line 441
    move-result p0

    .line 442
    if-nez p0, :cond_a

    .line 443
    .line 444
    const-string p0, "unpacking"

    .line 445
    .line 446
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 447
    .line 448
    .line 449
    move-result p0

    .line 450
    if-nez p0, :cond_a

    .line 451
    .line 452
    const-string p0, "downloading"

    .line 453
    .line 454
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 455
    .line 456
    .line 457
    move-result p0

    .line 458
    if-eqz p0, :cond_9

    .line 459
    .line 460
    goto :goto_0

    .line 461
    :cond_9
    return-object v1

    .line 462
    :cond_a
    :goto_0
    sget-object p0, Ln2/e;->b:Ln2/e;

    .line 463
    .line 464
    return-object p0

    .line 465
    :cond_b
    :goto_1
    sget-object p0, Ln2/e;->d:Ln2/e;

    .line 466
    .line 467
    return-object p0

    .line 468
    :cond_c
    :goto_2
    sget-object p0, Ln2/e;->e:Ln2/e;

    .line 469
    .line 470
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[E]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "[O]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "[W]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "[I]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method
