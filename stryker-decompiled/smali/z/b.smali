.class public final enum Lz/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lz/b;

.field public static final synthetic b:[Lz/b;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Lz/b;

    .line 2
    .line 3
    const-string v1, "CLEAR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lz/b;->a:Lz/b;

    .line 10
    .line 11
    new-instance v1, Lz/b;

    .line 12
    .line 13
    const-string v2, "SRC"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lz/b;

    .line 20
    .line 21
    const-string v3, "DST"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lz/b;

    .line 28
    .line 29
    const-string v4, "SRC_OVER"

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lz/b;

    .line 36
    .line 37
    const-string v5, "DST_OVER"

    .line 38
    .line 39
    const/4 v6, 0x4

    .line 40
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    new-instance v5, Lz/b;

    .line 44
    .line 45
    const-string v6, "SRC_IN"

    .line 46
    .line 47
    const/4 v7, 0x5

    .line 48
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    new-instance v6, Lz/b;

    .line 52
    .line 53
    const-string v7, "DST_IN"

    .line 54
    .line 55
    const/4 v8, 0x6

    .line 56
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    new-instance v7, Lz/b;

    .line 60
    .line 61
    const-string v8, "SRC_OUT"

    .line 62
    .line 63
    const/4 v9, 0x7

    .line 64
    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    new-instance v8, Lz/b;

    .line 68
    .line 69
    const-string v9, "DST_OUT"

    .line 70
    .line 71
    const/16 v10, 0x8

    .line 72
    .line 73
    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    new-instance v9, Lz/b;

    .line 77
    .line 78
    const-string v10, "SRC_ATOP"

    .line 79
    .line 80
    const/16 v11, 0x9

    .line 81
    .line 82
    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    new-instance v10, Lz/b;

    .line 86
    .line 87
    const-string v11, "DST_ATOP"

    .line 88
    .line 89
    const/16 v12, 0xa

    .line 90
    .line 91
    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    new-instance v11, Lz/b;

    .line 95
    .line 96
    const-string v12, "XOR"

    .line 97
    .line 98
    const/16 v13, 0xb

    .line 99
    .line 100
    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    new-instance v12, Lz/b;

    .line 104
    .line 105
    const-string v13, "PLUS"

    .line 106
    .line 107
    const/16 v14, 0xc

    .line 108
    .line 109
    invoke-direct {v12, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    new-instance v13, Lz/b;

    .line 113
    .line 114
    const-string v14, "MODULATE"

    .line 115
    .line 116
    const/16 v15, 0xd

    .line 117
    .line 118
    invoke-direct {v13, v14, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    new-instance v14, Lz/b;

    .line 122
    .line 123
    const-string v15, "SCREEN"

    .line 124
    .line 125
    move-object/from16 v16, v13

    .line 126
    .line 127
    const/16 v13, 0xe

    .line 128
    .line 129
    invoke-direct {v14, v15, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    new-instance v15, Lz/b;

    .line 133
    .line 134
    const-string v13, "OVERLAY"

    .line 135
    .line 136
    move-object/from16 v17, v14

    .line 137
    .line 138
    const/16 v14, 0xf

    .line 139
    .line 140
    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    new-instance v14, Lz/b;

    .line 144
    .line 145
    const-string v13, "DARKEN"

    .line 146
    .line 147
    move-object/from16 v18, v15

    .line 148
    .line 149
    const/16 v15, 0x10

    .line 150
    .line 151
    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    new-instance v15, Lz/b;

    .line 155
    .line 156
    const-string v13, "LIGHTEN"

    .line 157
    .line 158
    move-object/from16 v19, v14

    .line 159
    .line 160
    const/16 v14, 0x11

    .line 161
    .line 162
    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    new-instance v14, Lz/b;

    .line 166
    .line 167
    const-string v13, "COLOR_DODGE"

    .line 168
    .line 169
    move-object/from16 v20, v15

    .line 170
    .line 171
    const/16 v15, 0x12

    .line 172
    .line 173
    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    new-instance v15, Lz/b;

    .line 177
    .line 178
    const-string v13, "COLOR_BURN"

    .line 179
    .line 180
    move-object/from16 v21, v14

    .line 181
    .line 182
    const/16 v14, 0x13

    .line 183
    .line 184
    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 185
    .line 186
    .line 187
    new-instance v14, Lz/b;

    .line 188
    .line 189
    const-string v13, "HARD_LIGHT"

    .line 190
    .line 191
    move-object/from16 v22, v15

    .line 192
    .line 193
    const/16 v15, 0x14

    .line 194
    .line 195
    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    new-instance v15, Lz/b;

    .line 199
    .line 200
    const-string v13, "SOFT_LIGHT"

    .line 201
    .line 202
    move-object/from16 v23, v14

    .line 203
    .line 204
    const/16 v14, 0x15

    .line 205
    .line 206
    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    new-instance v14, Lz/b;

    .line 210
    .line 211
    const-string v13, "DIFFERENCE"

    .line 212
    .line 213
    move-object/from16 v24, v15

    .line 214
    .line 215
    const/16 v15, 0x16

    .line 216
    .line 217
    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    new-instance v15, Lz/b;

    .line 221
    .line 222
    const-string v13, "EXCLUSION"

    .line 223
    .line 224
    move-object/from16 v25, v14

    .line 225
    .line 226
    const/16 v14, 0x17

    .line 227
    .line 228
    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 229
    .line 230
    .line 231
    new-instance v14, Lz/b;

    .line 232
    .line 233
    const-string v13, "MULTIPLY"

    .line 234
    .line 235
    move-object/from16 v26, v15

    .line 236
    .line 237
    const/16 v15, 0x18

    .line 238
    .line 239
    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    new-instance v15, Lz/b;

    .line 243
    .line 244
    const-string v13, "HUE"

    .line 245
    .line 246
    move-object/from16 v27, v14

    .line 247
    .line 248
    const/16 v14, 0x19

    .line 249
    .line 250
    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 251
    .line 252
    .line 253
    new-instance v14, Lz/b;

    .line 254
    .line 255
    const-string v13, "SATURATION"

    .line 256
    .line 257
    move-object/from16 v28, v15

    .line 258
    .line 259
    const/16 v15, 0x1a

    .line 260
    .line 261
    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    new-instance v15, Lz/b;

    .line 265
    .line 266
    const-string v13, "COLOR"

    .line 267
    .line 268
    move-object/from16 v29, v14

    .line 269
    .line 270
    const/16 v14, 0x1b

    .line 271
    .line 272
    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    new-instance v14, Lz/b;

    .line 276
    .line 277
    const-string v13, "LUMINOSITY"

    .line 278
    .line 279
    move-object/from16 v30, v15

    .line 280
    .line 281
    const/16 v15, 0x1c

    .line 282
    .line 283
    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 284
    .line 285
    .line 286
    move-object/from16 v13, v16

    .line 287
    .line 288
    move-object/from16 v16, v19

    .line 289
    .line 290
    move-object/from16 v19, v21

    .line 291
    .line 292
    move-object/from16 v21, v23

    .line 293
    .line 294
    move-object/from16 v23, v25

    .line 295
    .line 296
    move-object/from16 v25, v27

    .line 297
    .line 298
    move-object/from16 v27, v29

    .line 299
    .line 300
    move-object/from16 v29, v14

    .line 301
    .line 302
    move-object/from16 v14, v17

    .line 303
    .line 304
    move-object/from16 v17, v20

    .line 305
    .line 306
    move-object/from16 v20, v22

    .line 307
    .line 308
    move-object/from16 v22, v24

    .line 309
    .line 310
    move-object/from16 v24, v26

    .line 311
    .line 312
    move-object/from16 v26, v28

    .line 313
    .line 314
    move-object/from16 v28, v30

    .line 315
    .line 316
    move-object/from16 v15, v18

    .line 317
    .line 318
    move-object/from16 v18, v19

    .line 319
    .line 320
    move-object/from16 v19, v20

    .line 321
    .line 322
    move-object/from16 v20, v21

    .line 323
    .line 324
    move-object/from16 v21, v22

    .line 325
    .line 326
    move-object/from16 v22, v23

    .line 327
    .line 328
    move-object/from16 v23, v24

    .line 329
    .line 330
    move-object/from16 v24, v25

    .line 331
    .line 332
    move-object/from16 v25, v26

    .line 333
    .line 334
    move-object/from16 v26, v27

    .line 335
    .line 336
    move-object/from16 v27, v28

    .line 337
    .line 338
    move-object/from16 v28, v29

    .line 339
    .line 340
    filled-new-array/range {v0 .. v28}, [Lz/b;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    sput-object v0, Lz/b;->b:[Lz/b;

    .line 345
    .line 346
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz/b;
    .locals 1

    .line 1
    const-class v0, Lz/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz/b;

    return-object p0
.end method

.method public static values()[Lz/b;
    .locals 1

    .line 1
    sget-object v0, Lz/b;->b:[Lz/b;

    invoke-virtual {v0}, [Lz/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz/b;

    return-object v0
.end method
