.class Lorg/bouncycastle/est/HttpAuth$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/est/ESTHijacker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/HttpAuth;->applyAuth(Lorg/bouncycastle/est/ESTRequestBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/est/HttpAuth;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/est/HttpAuth;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hijack(Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)Lorg/bouncycastle/est/ESTResponse;
    .locals 6

    .line 1
    new-instance v0, Lorg/bouncycastle/est/ESTResponse;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/est/ESTResponse;-><init>(Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/16 v1, 0x191

    .line 11
    .line 12
    if-ne p2, v1, :cond_7

    .line 13
    .line 14
    const-string p2, "WWW-Authenticate"

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_6

    .line 21
    .line 22
    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "digest"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    .line 35
    .line 36
    invoke-static {p1, v0}, Lorg/bouncycastle/est/HttpAuth;->access$000(Lorg/bouncycastle/est/HttpAuth;Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTResponse;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_0
    const-string v3, "basic"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_5

    .line 49
    .line 50
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V

    .line 51
    .line 52
    .line 53
    const-string v2, "Basic"

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v2, v0}, Lorg/bouncycastle/est/HttpUtil;->splitCSL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v2, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    .line 64
    .line 65
    invoke-static {v2}, Lorg/bouncycastle/est/HttpAuth;->access$100(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/4 v3, 0x0

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    iget-object v2, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    .line 73
    .line 74
    invoke-static {v2}, Lorg/bouncycastle/est/HttpAuth;->access$100(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v4, "realm"

    .line 79
    .line 80
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    new-instance p1, Lorg/bouncycastle/est/ESTException;

    .line 92
    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "Supplied realm \'"

    .line 96
    .line 97
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    .line 101
    .line 102
    invoke-static {v2}, Lorg/bouncycastle/est/HttpAuth;->access$100(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v2, "\' does not match server realm \'"

    .line 110
    .line 111
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Ljava/lang/String;

    .line 119
    .line 120
    const-string v2, "\'"

    .line 121
    .line 122
    invoke-static {p2, v0, v2}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-direct {p1, p2, v3, v1, v3}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :cond_2
    :goto_0
    new-instance v0, Lorg/bouncycastle/est/ESTRequestBuilder;

    .line 131
    .line 132
    invoke-direct {v0, p1}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Lorg/bouncycastle/est/ESTRequest;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v3}, Lorg/bouncycastle/est/ESTRequestBuilder;->withHijacker(Lorg/bouncycastle/est/ESTHijacker;)Lorg/bouncycastle/est/ESTRequestBuilder;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    .line 140
    .line 141
    invoke-static {v1}, Lorg/bouncycastle/est/HttpAuth;->access$100(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    if-eqz v1, :cond_3

    .line 146
    .line 147
    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    .line 148
    .line 149
    invoke-static {v1}, Lorg/bouncycastle/est/HttpAuth;->access$100(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-lez v1, :cond_3

    .line 158
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v2, "Basic realm=\""

    .line 162
    .line 163
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v2, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    .line 167
    .line 168
    invoke-static {v2}, Lorg/bouncycastle/est/HttpAuth;->access$100(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v2, "\""

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, p2, v1}, Lorg/bouncycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    .line 185
    .line 186
    .line 187
    :cond_3
    iget-object p2, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    .line 188
    .line 189
    invoke-static {p2}, Lorg/bouncycastle/est/HttpAuth;->access$200(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    const-string v1, ":"

    .line 194
    .line 195
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    if-nez p2, :cond_4

    .line 200
    .line 201
    iget-object p2, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    .line 202
    .line 203
    invoke-static {p2}, Lorg/bouncycastle/est/HttpAuth;->access$200(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    add-int/lit8 p2, p2, 0x1

    .line 212
    .line 213
    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    .line 214
    .line 215
    invoke-static {v1}, Lorg/bouncycastle/est/HttpAuth;->access$300(Lorg/bouncycastle/est/HttpAuth;)[C

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    array-length v1, v1

    .line 220
    add-int/2addr p2, v1

    .line 221
    new-array p2, p2, [C

    .line 222
    .line 223
    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    .line 224
    .line 225
    invoke-static {v1}, Lorg/bouncycastle/est/HttpAuth;->access$200(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    iget-object v2, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    .line 234
    .line 235
    invoke-static {v2}, Lorg/bouncycastle/est/HttpAuth;->access$200(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    const/4 v3, 0x0

    .line 244
    invoke-static {v1, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    .line 246
    .line 247
    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    .line 248
    .line 249
    invoke-static {v1}, Lorg/bouncycastle/est/HttpAuth;->access$200(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    const/16 v2, 0x3a

    .line 258
    .line 259
    aput-char v2, p2, v1

    .line 260
    .line 261
    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    .line 262
    .line 263
    invoke-static {v1}, Lorg/bouncycastle/est/HttpAuth;->access$300(Lorg/bouncycastle/est/HttpAuth;)[C

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    iget-object v2, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    .line 268
    .line 269
    invoke-static {v2}, Lorg/bouncycastle/est/HttpAuth;->access$200(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    add-int/lit8 v2, v2, 0x1

    .line 278
    .line 279
    iget-object v4, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    .line 280
    .line 281
    invoke-static {v4}, Lorg/bouncycastle/est/HttpAuth;->access$300(Lorg/bouncycastle/est/HttpAuth;)[C

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    array-length v4, v4

    .line 286
    invoke-static {v1, v3, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    .line 288
    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    const-string v2, "Basic "

    .line 292
    .line 293
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toByteArray([C)[B

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Base64;->toBase64String([B)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    const-string v2, "Authorization"

    .line 312
    .line 313
    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getClient()Lorg/bouncycastle/est/ESTClient;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-interface {p1, v0}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-static {p2, v3}, Lorg/bouncycastle/util/Arrays;->fill([CC)V

    .line 329
    .line 330
    .line 331
    :goto_1
    return-object p1

    .line 332
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 333
    .line 334
    const-string p2, "User must not contain a \':\'"

    .line 335
    .line 336
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw p1

    .line 340
    :cond_5
    new-instance p1, Lorg/bouncycastle/est/ESTException;

    .line 341
    .line 342
    const-string p2, "Unknown auth mode: "

    .line 343
    .line 344
    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p2

    .line 348
    invoke-direct {p1, p2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw p1

    .line 352
    :cond_6
    new-instance p1, Lorg/bouncycastle/est/ESTException;

    .line 353
    .line 354
    const-string p2, "Status of 401 but no WWW-Authenticate header"

    .line 355
    .line 356
    invoke-direct {p1, p2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    throw p1

    .line 360
    :cond_7
    return-object v0
.end method
