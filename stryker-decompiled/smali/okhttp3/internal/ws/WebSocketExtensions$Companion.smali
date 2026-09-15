.class public final Lokhttp3/internal/ws/WebSocketExtensions$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "responseHeaders"

    .line 4
    .line 5
    invoke-static {v0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    :goto_0
    if-ge v4, v1, :cond_15

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const-string v12, "Sec-WebSocket-Extensions"

    .line 26
    .line 27
    invoke-static {v5, v12}, Lq5/h;->p1(Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_1

    .line 32
    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    goto/16 :goto_8

    .line 35
    .line 36
    :cond_1
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const/4 v15, 0x0

    .line 41
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v12

    .line 45
    if-ge v15, v12, :cond_0

    .line 46
    .line 47
    const/16 v13, 0x2c

    .line 48
    .line 49
    const/16 v16, 0x0

    .line 50
    .line 51
    const/16 v17, 0x4

    .line 52
    .line 53
    const/16 v18, 0x0

    .line 54
    .line 55
    move-object v12, v5

    .line 56
    move v14, v15

    .line 57
    move v3, v15

    .line 58
    move/from16 v15, v16

    .line 59
    .line 60
    move/from16 v16, v17

    .line 61
    .line 62
    move-object/from16 v17, v18

    .line 63
    .line 64
    invoke-static/range {v12 .. v17}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    const/16 v13, 0x3b

    .line 69
    .line 70
    invoke-static {v5, v13, v3, v12}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    invoke-static {v5, v3, v14}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const/4 v15, 0x1

    .line 79
    add-int/2addr v14, v15

    .line 80
    const-string v15, "permessage-deflate"

    .line 81
    .line 82
    invoke-static {v3, v15}, Lq5/h;->p1(Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_14

    .line 87
    .line 88
    if-eqz v6, :cond_2

    .line 89
    .line 90
    const/4 v11, 0x1

    .line 91
    :cond_2
    move v15, v14

    .line 92
    :goto_2
    if-ge v15, v12, :cond_13

    .line 93
    .line 94
    invoke-static {v5, v13, v15, v12}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const/16 v6, 0x3d

    .line 99
    .line 100
    invoke-static {v5, v6, v15, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-static {v5, v15, v6}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    if-ge v6, v3, :cond_4

    .line 109
    .line 110
    add-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    invoke-static {v5, v6, v3}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    const-string v15, "<this>"

    .line 117
    .line 118
    invoke-static {v6, v15}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v15

    .line 125
    const-string v13, "\""

    .line 126
    .line 127
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v18

    .line 131
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result v19

    .line 135
    add-int v2, v19, v18

    .line 136
    .line 137
    if-lt v15, v2, :cond_3

    .line 138
    .line 139
    invoke-static {v6, v13}, Lq5/h;->M1(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_3

    .line 144
    .line 145
    const/4 v2, 0x0

    .line 146
    invoke-static {v6, v13, v2}, Lq5/h;->o1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 147
    .line 148
    .line 149
    move-result v15

    .line 150
    if-eqz v15, :cond_5

    .line 151
    .line 152
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v18

    .line 160
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 161
    .line 162
    .line 163
    move-result v13

    .line 164
    sub-int v13, v18, v13

    .line 165
    .line 166
    invoke-virtual {v6, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    const-string v13, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 171
    .line 172
    invoke-static {v6, v13}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_3
    const/4 v2, 0x0

    .line 177
    goto :goto_3

    .line 178
    :cond_4
    const/4 v2, 0x0

    .line 179
    const/4 v6, 0x0

    .line 180
    :cond_5
    :goto_3
    add-int/lit8 v15, v3, 0x1

    .line 181
    .line 182
    const-string v3, "client_max_window_bits"

    .line 183
    .line 184
    invoke-static {v14, v3}, Lq5/h;->p1(Ljava/lang/String;Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-eqz v3, :cond_a

    .line 189
    .line 190
    if-eqz v7, :cond_6

    .line 191
    .line 192
    const/4 v11, 0x1

    .line 193
    :cond_6
    if-eqz v6, :cond_7

    .line 194
    .line 195
    invoke-static {v6}, Lq5/f;->k1(Ljava/lang/String;)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    move-object v7, v3

    .line 200
    goto :goto_4

    .line 201
    :cond_7
    const/4 v7, 0x0

    .line 202
    :goto_4
    if-nez v7, :cond_9

    .line 203
    .line 204
    :cond_8
    :goto_5
    const/4 v11, 0x1

    .line 205
    :cond_9
    :goto_6
    const/16 v13, 0x3b

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_a
    const-string v3, "client_no_context_takeover"

    .line 209
    .line 210
    invoke-static {v14, v3}, Lq5/h;->p1(Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_d

    .line 215
    .line 216
    if-eqz v8, :cond_b

    .line 217
    .line 218
    const/4 v11, 0x1

    .line 219
    :cond_b
    if-eqz v6, :cond_c

    .line 220
    .line 221
    const/4 v11, 0x1

    .line 222
    :cond_c
    const/4 v8, 0x1

    .line 223
    goto :goto_6

    .line 224
    :cond_d
    const-string v3, "server_max_window_bits"

    .line 225
    .line 226
    invoke-static {v14, v3}, Lq5/h;->p1(Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_10

    .line 231
    .line 232
    if-eqz v9, :cond_e

    .line 233
    .line 234
    const/4 v11, 0x1

    .line 235
    :cond_e
    if-eqz v6, :cond_f

    .line 236
    .line 237
    invoke-static {v6}, Lq5/f;->k1(Ljava/lang/String;)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    move-object v9, v3

    .line 242
    goto :goto_7

    .line 243
    :cond_f
    const/4 v9, 0x0

    .line 244
    :goto_7
    if-nez v9, :cond_9

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_10
    const-string v3, "server_no_context_takeover"

    .line 248
    .line 249
    invoke-static {v14, v3}, Lq5/h;->p1(Ljava/lang/String;Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-eqz v3, :cond_8

    .line 254
    .line 255
    if-eqz v10, :cond_11

    .line 256
    .line 257
    const/4 v11, 0x1

    .line 258
    :cond_11
    if-eqz v6, :cond_12

    .line 259
    .line 260
    const/4 v11, 0x1

    .line 261
    :cond_12
    const/4 v10, 0x1

    .line 262
    goto :goto_6

    .line 263
    :cond_13
    const/4 v2, 0x0

    .line 264
    const/4 v6, 0x1

    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :cond_14
    const/4 v2, 0x0

    .line 268
    move v15, v14

    .line 269
    const/4 v11, 0x1

    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_15
    new-instance v0, Lokhttp3/internal/ws/WebSocketExtensions;

    .line 277
    .line 278
    move-object v5, v0

    .line 279
    invoke-direct/range {v5 .. v11}, Lokhttp3/internal/ws/WebSocketExtensions;-><init>(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V

    .line 280
    .line 281
    .line 282
    return-object v0
.end method
