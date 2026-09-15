.class public final synthetic Lk4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lk4/f;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic d:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic e:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic f:Lcom/google/android/material/chip/Chip;

.field public final synthetic g:Lcom/google/android/material/chip/Chip;

.field public final synthetic h:Lcom/google/android/material/chip/Chip;

.field public final synthetic i:Lcom/google/android/material/chip/Chip;

.field public final synthetic j:Lcom/google/android/material/chip/Chip;

.field public final synthetic k:Lcom/google/android/material/chip/Chip;

.field public final synthetic l:Lcom/google/android/material/button/MaterialButtonToggleGroup;

.field public final synthetic m:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic n:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic p:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic q:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field public final synthetic r:Lcom/google/android/material/checkbox/MaterialCheckBox;


# direct methods
.method public synthetic constructor <init>(Lk4/f;Landroid/content/Context;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;)V
    .locals 2

    .line 1
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lk4/e;->a:Lk4/f;

    move-object v1, p2

    iput-object v1, v0, Lk4/e;->b:Landroid/content/Context;

    move-object v1, p3

    iput-object v1, v0, Lk4/e;->c:Lcom/google/android/material/textfield/TextInputEditText;

    move-object v1, p4

    iput-object v1, v0, Lk4/e;->d:Lcom/google/android/material/textfield/TextInputEditText;

    move-object v1, p5

    iput-object v1, v0, Lk4/e;->e:Lcom/google/android/material/textfield/TextInputEditText;

    move-object v1, p6

    iput-object v1, v0, Lk4/e;->f:Lcom/google/android/material/chip/Chip;

    move-object v1, p7

    iput-object v1, v0, Lk4/e;->g:Lcom/google/android/material/chip/Chip;

    move-object v1, p8

    iput-object v1, v0, Lk4/e;->h:Lcom/google/android/material/chip/Chip;

    move-object v1, p9

    iput-object v1, v0, Lk4/e;->i:Lcom/google/android/material/chip/Chip;

    move-object v1, p10

    iput-object v1, v0, Lk4/e;->j:Lcom/google/android/material/chip/Chip;

    move-object v1, p11

    iput-object v1, v0, Lk4/e;->k:Lcom/google/android/material/chip/Chip;

    move-object v1, p12

    iput-object v1, v0, Lk4/e;->l:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    move-object v1, p13

    iput-object v1, v0, Lk4/e;->m:Lcom/google/android/material/textfield/TextInputEditText;

    move-object/from16 v1, p14

    iput-object v1, v0, Lk4/e;->n:Lcom/google/android/material/textfield/TextInputEditText;

    move-object/from16 v1, p15

    iput-object v1, v0, Lk4/e;->p:Lcom/google/android/material/textfield/TextInputEditText;

    move-object/from16 v1, p16

    iput-object v1, v0, Lk4/e;->q:Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-object/from16 v1, p17

    iput-object v1, v0, Lk4/e;->r:Lcom/google/android/material/checkbox/MaterialCheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lk4/e;->a:Lk4/f;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v2, Ll4/l;

    .line 9
    .line 10
    iget-object v3, v0, Lk4/e;->b:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iget-object v4, v0, Lk4/e;->c:Lcom/google/android/material/textfield/TextInputEditText;

    .line 16
    .line 17
    invoke-static {v4}, Lk4/f;->a(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const v1, 0x7f130083

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v2, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_c

    .line 38
    .line 39
    :cond_0
    iget-object v4, v0, Lk4/e;->d:Lcom/google/android/material/textfield/TextInputEditText;

    .line 40
    .line 41
    invoke-static {v4}, Lk4/f;->a(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    iget-object v4, v0, Lk4/e;->e:Lcom/google/android/material/textfield/TextInputEditText;

    .line 46
    .line 47
    invoke-static {v4}, Lk4/f;->a(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    sget-object v4, Lk4/f;->g:Ljava/util/regex/Pattern;

    .line 52
    .line 53
    invoke-virtual {v4, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_1

    .line 62
    .line 63
    const v1, 0x7f1300c2

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v4, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_2

    .line 76
    .line 77
    const v1, 0x7f13009d

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const-class v4, Lf3/a;

    .line 82
    .line 83
    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    iget-object v4, v0, Lk4/e;->f:Lcom/google/android/material/chip/Chip;

    .line 88
    .line 89
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_3

    .line 94
    .line 95
    sget-object v4, Lf3/a;->c:Lf3/a;

    .line 96
    .line 97
    invoke-virtual {v10, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v4, v0, Lk4/e;->g:Lcom/google/android/material/chip/Chip;

    .line 101
    .line 102
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_4

    .line 107
    .line 108
    sget-object v4, Lf3/a;->d:Lf3/a;

    .line 109
    .line 110
    invoke-virtual {v10, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :cond_4
    iget-object v4, v0, Lk4/e;->h:Lcom/google/android/material/chip/Chip;

    .line 114
    .line 115
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_5

    .line 120
    .line 121
    sget-object v5, Lf3/a;->e:Lf3/a;

    .line 122
    .line 123
    invoke-virtual {v10, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_5
    iget-object v5, v0, Lk4/e;->i:Lcom/google/android/material/chip/Chip;

    .line 127
    .line 128
    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_6

    .line 133
    .line 134
    sget-object v5, Lf3/a;->f:Lf3/a;

    .line 135
    .line 136
    invoke-virtual {v10, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_6
    iget-object v5, v0, Lk4/e;->j:Lcom/google/android/material/chip/Chip;

    .line 140
    .line 141
    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_7

    .line 146
    .line 147
    sget-object v5, Lf3/a;->g:Lf3/a;

    .line 148
    .line 149
    invoke-virtual {v10, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :cond_7
    iget-object v5, v0, Lk4/e;->k:Lcom/google/android/material/chip/Chip;

    .line 153
    .line 154
    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_8

    .line 159
    .line 160
    sget-object v5, Lf3/a;->h:Lf3/a;

    .line 161
    .line 162
    invoke-virtual {v10, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    :cond_8
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eqz v5, :cond_9

    .line 170
    .line 171
    const v1, 0x7f1300b4

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_9
    iget-object v2, v0, Lk4/e;->l:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonId()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    const v3, 0x7f0a00d5

    .line 183
    .line 184
    .line 185
    if-ne v2, v3, :cond_a

    .line 186
    .line 187
    const/4 v2, 0x1

    .line 188
    :goto_1
    move v9, v2

    .line 189
    goto :goto_2

    .line 190
    :cond_a
    const v3, 0x7f0a00d4

    .line 191
    .line 192
    .line 193
    if-ne v2, v3, :cond_b

    .line 194
    .line 195
    const/4 v2, 0x2

    .line 196
    goto :goto_1

    .line 197
    :cond_b
    const v3, 0x7f0a00d3

    .line 198
    .line 199
    .line 200
    if-ne v2, v3, :cond_c

    .line 201
    .line 202
    const/4 v2, 0x3

    .line 203
    goto :goto_1

    .line 204
    :cond_c
    const/4 v2, 0x4

    .line 205
    goto :goto_1

    .line 206
    :goto_2
    new-instance v2, Lf3/b;

    .line 207
    .line 208
    const-wide/16 v21, 0x0

    .line 209
    .line 210
    iget-object v3, v1, Lk4/f;->c:Lf3/b;

    .line 211
    .line 212
    if-nez v3, :cond_d

    .line 213
    .line 214
    move-wide/from16 v23, v21

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_d
    iget-wide v5, v3, Lf3/b;->a:J

    .line 218
    .line 219
    move-wide/from16 v23, v5

    .line 220
    .line 221
    :goto_3
    iget-object v3, v0, Lk4/e;->m:Lcom/google/android/material/textfield/TextInputEditText;

    .line 222
    .line 223
    invoke-static {v3}, Lk4/f;->a(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-eqz v5, :cond_e

    .line 232
    .line 233
    const-string v3, "Stryker"

    .line 234
    .line 235
    :goto_4
    move-object v13, v3

    .line 236
    goto :goto_5

    .line 237
    :cond_e
    invoke-static {v3}, Lk4/f;->a(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    goto :goto_4

    .line 242
    :goto_5
    iget-object v3, v0, Lk4/e;->n:Lcom/google/android/material/textfield/TextInputEditText;

    .line 243
    .line 244
    invoke-static {v3}, Lk4/f;->a(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v5, :cond_f

    .line 253
    .line 254
    const-string v3, "Composite"

    .line 255
    .line 256
    :goto_6
    move-object v14, v3

    .line 257
    goto :goto_7

    .line 258
    :cond_f
    invoke-static {v3}, Lk4/f;->a(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    goto :goto_6

    .line 263
    :goto_7
    iget-object v3, v0, Lk4/e;->p:Lcom/google/android/material/textfield/TextInputEditText;

    .line 264
    .line 265
    invoke-static {v3}, Lk4/f;->a(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_10

    .line 274
    .line 275
    const-string v3, "STRYKER"

    .line 276
    .line 277
    :goto_8
    move-object v15, v3

    .line 278
    goto :goto_9

    .line 279
    :cond_10
    invoke-static {v3}, Lk4/f;->a(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    goto :goto_8

    .line 284
    :goto_9
    const-string v16, "Stryker Gadget"

    .line 285
    .line 286
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    const/4 v4, 0x0

    .line 291
    if-eqz v3, :cond_11

    .line 292
    .line 293
    iget-object v3, v1, Lk4/f;->e:Ljava/lang/String;

    .line 294
    .line 295
    move-object/from16 v17, v3

    .line 296
    .line 297
    goto :goto_a

    .line 298
    :cond_11
    move-object/from16 v17, v4

    .line 299
    .line 300
    :goto_a
    iget-object v3, v0, Lk4/e;->q:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 301
    .line 302
    invoke-virtual {v3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    .line 303
    .line 304
    .line 305
    move-result v18

    .line 306
    iget-object v3, v0, Lk4/e;->r:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 307
    .line 308
    invoke-virtual {v3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    .line 309
    .line 310
    .line 311
    move-result v19

    .line 312
    const-string v20, ""

    .line 313
    .line 314
    move-object v5, v2

    .line 315
    move-wide/from16 v6, v23

    .line 316
    .line 317
    invoke-direct/range {v5 .. v20}, Lf3/b;-><init>(JLjava/lang/String;ILjava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-object v3, v1, Lk4/f;->b:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 321
    .line 322
    invoke-virtual {v3}, Lf/j0;->dismiss()V

    .line 323
    .line 324
    .line 325
    iget-object v1, v1, Lk4/f;->d:Lk4/h;

    .line 326
    .line 327
    iget-object v1, v1, Lk4/h;->a:Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

    .line 328
    .line 329
    iget-object v3, v1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->b:Lg3/b;

    .line 330
    .line 331
    iget-object v3, v3, Lg3/b;->b:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v3, Lj4/a;

    .line 334
    .line 335
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    invoke-static {v2}, Lg3/b;->k(Lf3/b;)Landroid/content/ContentValues;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    cmp-long v5, v23, v21

    .line 344
    .line 345
    const-string v6, "gadget_profile"

    .line 346
    .line 347
    if-lez v5, :cond_12

    .line 348
    .line 349
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    filled-new-array {v5}, [Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v5

    .line 357
    const-string v7, "id=?"

    .line 358
    .line 359
    invoke-virtual {v3, v6, v2, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    if-lez v5, :cond_12

    .line 364
    .line 365
    goto :goto_b

    .line 366
    :cond_12
    invoke-virtual {v3, v6, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 367
    .line 368
    .line 369
    :goto_b
    iget-object v2, v1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->d:Ln2/c;

    .line 370
    .line 371
    iget-object v1, v1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->b:Lg3/b;

    .line 372
    .line 373
    invoke-virtual {v1}, Lg3/b;->f()Ljava/util/ArrayList;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v2, v1}, Ln2/c;->c(Ljava/util/ArrayList;)V

    .line 378
    .line 379
    .line 380
    :goto_c
    return-void
.end method
