.class public final Landroidx/appcompat/widget/z3;
.super Ll0/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic y:I


# instance fields
.field public final h:I

.field public final i:I

.field public final j:Landroid/view/LayoutInflater;

.field public final k:Landroidx/appcompat/widget/SearchView;

.field public final l:Landroid/app/SearchableInfo;

.field public final m:Landroid/content/Context;

.field public final n:Ljava/util/WeakHashMap;

.field public final p:I

.field public q:I

.field public r:Landroid/content/res/ColorStateList;

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getSuggestionRowLayout()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Ll0/b;->b:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-object v2, p0, Ll0/b;->c:Landroid/database/Cursor;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-boolean v2, p0, Ll0/b;->a:Z

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    iput v2, p0, Ll0/b;->d:I

    .line 19
    .line 20
    new-instance v3, Ll0/a;

    .line 21
    .line 22
    invoke-direct {v3, p0}, Ll0/a;-><init>(Ll0/b;)V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Ll0/b;->e:Ll0/a;

    .line 26
    .line 27
    new-instance v3, Landroidx/appcompat/widget/s2;

    .line 28
    .line 29
    invoke-direct {v3, p0, v1}, Landroidx/appcompat/widget/s2;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    iput-object v3, p0, Ll0/b;->f:Landroidx/appcompat/widget/s2;

    .line 33
    .line 34
    iput v0, p0, Landroidx/appcompat/widget/z3;->i:I

    .line 35
    .line 36
    iput v0, p0, Landroidx/appcompat/widget/z3;->h:I

    .line 37
    .line 38
    const-string v0, "layout_inflater"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/view/LayoutInflater;

    .line 45
    .line 46
    iput-object v0, p0, Landroidx/appcompat/widget/z3;->j:Landroid/view/LayoutInflater;

    .line 47
    .line 48
    iput v1, p0, Landroidx/appcompat/widget/z3;->q:I

    .line 49
    .line 50
    iput v2, p0, Landroidx/appcompat/widget/z3;->s:I

    .line 51
    .line 52
    iput v2, p0, Landroidx/appcompat/widget/z3;->t:I

    .line 53
    .line 54
    iput v2, p0, Landroidx/appcompat/widget/z3;->u:I

    .line 55
    .line 56
    iput v2, p0, Landroidx/appcompat/widget/z3;->v:I

    .line 57
    .line 58
    iput v2, p0, Landroidx/appcompat/widget/z3;->w:I

    .line 59
    .line 60
    iput v2, p0, Landroidx/appcompat/widget/z3;->x:I

    .line 61
    .line 62
    iput-object p2, p0, Landroidx/appcompat/widget/z3;->k:Landroidx/appcompat/widget/SearchView;

    .line 63
    .line 64
    iput-object p3, p0, Landroidx/appcompat/widget/z3;->l:Landroid/app/SearchableInfo;

    .line 65
    .line 66
    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getSuggestionCommitIconResId()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    iput p2, p0, Landroidx/appcompat/widget/z3;->p:I

    .line 71
    .line 72
    iput-object p1, p0, Landroidx/appcompat/widget/z3;->m:Landroid/content/Context;

    .line 73
    .line 74
    iput-object p4, p0, Landroidx/appcompat/widget/z3;->n:Ljava/util/WeakHashMap;

    .line 75
    .line 76
    return-void
.end method

.method public static h(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "SuggestionsAdapter"

    const-string v0, "unexpected error retrieving valid column from cursor, did the remote process die?"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v3, v0

    .line 10
    check-cast v3, Landroidx/appcompat/widget/y3;

    .line 11
    .line 12
    iget v0, v1, Landroidx/appcompat/widget/z3;->x:I

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, -0x1

    .line 16
    if-eq v0, v5, :cond_0

    .line 17
    .line 18
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    move v6, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v6, v4

    .line 25
    :goto_0
    iget-object v7, v3, Landroidx/appcompat/widget/y3;->a:Landroid/widget/TextView;

    .line 26
    .line 27
    const/16 v8, 0x8

    .line 28
    .line 29
    if-eqz v7, :cond_2

    .line 30
    .line 31
    iget v0, v1, Landroidx/appcompat/widget/z3;->s:I

    .line 32
    .line 33
    invoke-static {v2, v0}, Landroidx/appcompat/widget/z3;->h(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_1
    const/4 v9, 0x1

    .line 54
    const/4 v10, 0x2

    .line 55
    iget-object v11, v1, Landroidx/appcompat/widget/z3;->m:Landroid/content/Context;

    .line 56
    .line 57
    iget-object v0, v3, Landroidx/appcompat/widget/y3;->b:Landroid/widget/TextView;

    .line 58
    .line 59
    if-eqz v0, :cond_8

    .line 60
    .line 61
    iget v12, v1, Landroidx/appcompat/widget/z3;->u:I

    .line 62
    .line 63
    invoke-static {v2, v12}, Landroidx/appcompat/widget/z3;->h(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    if-eqz v12, :cond_4

    .line 68
    .line 69
    iget-object v13, v1, Landroidx/appcompat/widget/z3;->r:Landroid/content/res/ColorStateList;

    .line 70
    .line 71
    if-nez v13, :cond_3

    .line 72
    .line 73
    new-instance v13, Landroid/util/TypedValue;

    .line 74
    .line 75
    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v11}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 79
    .line 80
    .line 81
    move-result-object v14

    .line 82
    const v15, 0x7f0404f3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v14, v15, v13, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    iget v13, v13, Landroid/util/TypedValue;->resourceId:I

    .line 93
    .line 94
    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    iput-object v13, v1, Landroidx/appcompat/widget/z3;->r:Landroid/content/res/ColorStateList;

    .line 99
    .line 100
    :cond_3
    new-instance v13, Landroid/text/SpannableString;

    .line 101
    .line 102
    invoke-direct {v13, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    new-instance v15, Landroid/text/style/TextAppearanceSpan;

    .line 106
    .line 107
    const/16 v16, 0x0

    .line 108
    .line 109
    const/16 v17, 0x0

    .line 110
    .line 111
    const/16 v18, 0x0

    .line 112
    .line 113
    iget-object v14, v1, Landroidx/appcompat/widget/z3;->r:Landroid/content/res/ColorStateList;

    .line 114
    .line 115
    const/16 v19, 0x0

    .line 116
    .line 117
    move-object/from16 v20, v14

    .line 118
    .line 119
    move-object v14, v15

    .line 120
    move-object v5, v15

    .line 121
    move-object/from16 v15, v16

    .line 122
    .line 123
    move/from16 v16, v17

    .line 124
    .line 125
    move/from16 v17, v18

    .line 126
    .line 127
    move-object/from16 v18, v20

    .line 128
    .line 129
    invoke-direct/range {v14 .. v19}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    const/16 v14, 0x21

    .line 137
    .line 138
    invoke-virtual {v13, v5, v4, v12, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    iget v5, v1, Landroidx/appcompat/widget/z3;->t:I

    .line 143
    .line 144
    invoke-static {v2, v5}, Landroidx/appcompat/widget/z3;->h(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v13

    .line 148
    :goto_2
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_5

    .line 153
    .line 154
    if-eqz v7, :cond_6

    .line 155
    .line 156
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_5
    if-eqz v7, :cond_6

    .line 164
    .line 165
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 169
    .line 170
    .line 171
    :cond_6
    :goto_3
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_7

    .line 179
    .line 180
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_7
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    :cond_8
    :goto_4
    iget-object v12, v3, Landroidx/appcompat/widget/y3;->c:Landroid/widget/ImageView;

    .line 188
    .line 189
    if-eqz v12, :cond_12

    .line 190
    .line 191
    iget v0, v1, Landroidx/appcompat/widget/z3;->v:I

    .line 192
    .line 193
    const/4 v13, -0x1

    .line 194
    if-ne v0, v13, :cond_9

    .line 195
    .line 196
    const/4 v0, 0x0

    .line 197
    goto/16 :goto_a

    .line 198
    .line 199
    :cond_9
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/z3;->f(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-eqz v0, :cond_a

    .line 208
    .line 209
    goto/16 :goto_a

    .line 210
    .line 211
    :cond_a
    iget-object v0, v1, Landroidx/appcompat/widget/z3;->l:Landroid/app/SearchableInfo;

    .line 212
    .line 213
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v13

    .line 221
    iget-object v14, v1, Landroidx/appcompat/widget/z3;->n:Ljava/util/WeakHashMap;

    .line 222
    .line 223
    invoke-virtual {v14, v13}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v15

    .line 227
    if-eqz v15, :cond_c

    .line 228
    .line 229
    invoke-virtual {v14, v13}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 234
    .line 235
    if-nez v0, :cond_b

    .line 236
    .line 237
    const/4 v0, 0x0

    .line 238
    goto :goto_9

    .line 239
    :cond_b
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 240
    .line 241
    .line 242
    move-result-object v13

    .line 243
    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    goto :goto_9

    .line 248
    :cond_c
    const-string v15, "SuggestionsAdapter"

    .line 249
    .line 250
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    const/16 v10, 0x80

    .line 255
    .line 256
    :try_start_0
    invoke-virtual {v5, v0, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 257
    .line 258
    .line 259
    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    invoke-virtual {v10}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-nez v8, :cond_d

    .line 265
    .line 266
    :goto_5
    const/4 v0, 0x0

    .line 267
    goto :goto_7

    .line 268
    :cond_d
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 273
    .line 274
    invoke-virtual {v5, v9, v8, v10}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    if-nez v5, :cond_e

    .line 279
    .line 280
    const-string v5, "Invalid icon resource "

    .line 281
    .line 282
    const-string v9, " for "

    .line 283
    .line 284
    invoke-static {v5, v8, v9}, Landroid/support/v4/media/session/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    :goto_6
    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_e
    move-object v0, v5

    .line 304
    goto :goto_7

    .line 305
    :catch_0
    move-exception v0

    .line 306
    move-object v5, v0

    .line 307
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    goto :goto_6

    .line 312
    :goto_7
    if-nez v0, :cond_f

    .line 313
    .line 314
    const/4 v5, 0x0

    .line 315
    goto :goto_8

    .line 316
    :cond_f
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    :goto_8
    invoke-virtual {v14, v13, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    :goto_9
    if-eqz v0, :cond_10

    .line 324
    .line 325
    goto :goto_a

    .line 326
    :cond_10
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    :goto_a
    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    .line 336
    .line 337
    if-nez v0, :cond_11

    .line 338
    .line 339
    const/4 v0, 0x4

    .line 340
    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    .line 342
    .line 343
    goto :goto_b

    .line 344
    :cond_11
    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 348
    .line 349
    .line 350
    const/4 v5, 0x1

    .line 351
    invoke-virtual {v0, v5, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 352
    .line 353
    .line 354
    :cond_12
    :goto_b
    iget-object v0, v3, Landroidx/appcompat/widget/y3;->d:Landroid/widget/ImageView;

    .line 355
    .line 356
    if-eqz v0, :cond_15

    .line 357
    .line 358
    iget v5, v1, Landroidx/appcompat/widget/z3;->w:I

    .line 359
    .line 360
    const/4 v8, -0x1

    .line 361
    if-ne v5, v8, :cond_13

    .line 362
    .line 363
    const/4 v5, 0x0

    .line 364
    goto :goto_c

    .line 365
    :cond_13
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/z3;->f(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    :goto_c
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    .line 375
    .line 376
    if-nez v5, :cond_14

    .line 377
    .line 378
    const/16 v2, 0x8

    .line 379
    .line 380
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    .line 382
    .line 383
    goto :goto_d

    .line 384
    :cond_14
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v5, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 388
    .line 389
    .line 390
    const/4 v2, 0x1

    .line 391
    invoke-virtual {v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 392
    .line 393
    .line 394
    goto :goto_e

    .line 395
    :cond_15
    :goto_d
    const/4 v2, 0x1

    .line 396
    :goto_e
    iget v0, v1, Landroidx/appcompat/widget/z3;->q:I

    .line 397
    .line 398
    iget-object v3, v3, Landroidx/appcompat/widget/y3;->e:Landroid/widget/ImageView;

    .line 399
    .line 400
    const/4 v5, 0x2

    .line 401
    if-eq v0, v5, :cond_17

    .line 402
    .line 403
    if-ne v0, v2, :cond_16

    .line 404
    .line 405
    and-int/lit8 v0, v6, 0x1

    .line 406
    .line 407
    if-eqz v0, :cond_16

    .line 408
    .line 409
    goto :goto_f

    .line 410
    :cond_16
    const/16 v2, 0x8

    .line 411
    .line 412
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    .line 414
    .line 415
    goto :goto_10

    .line 416
    :cond_17
    :goto_f
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    .line 428
    .line 429
    :goto_10
    return-void
.end method

.method public final b(Landroid/database/Cursor;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Ll0/b;->b(Landroid/database/Cursor;)V

    if-eqz p1, :cond_0

    const-string v0, "suggest_text_1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/z3;->s:I

    const-string v0, "suggest_text_2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/z3;->t:I

    const-string v0, "suggest_text_2_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/z3;->u:I

    const-string v0, "suggest_icon_1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/z3;->v:I

    const-string v0, "suggest_icon_2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/z3;->w:I

    const-string v0, "suggest_flags"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/z3;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SuggestionsAdapter"

    const-string v1, "error changing cursor and caching columns"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final c(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "suggest_intent_query"

    .line 6
    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {p1, v1}, Landroidx/appcompat/widget/z3;->h(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/z3;->l:Landroid/app/SearchableInfo;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    const-string v2, "suggest_intent_data"

    .line 27
    .line 28
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-static {p1, v2}, Landroidx/appcompat/widget/z3;->h(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_2
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    const-string v1, "suggest_text_1"

    .line 46
    .line 47
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {p1, v1}, Landroidx/appcompat/widget/z3;->h(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_3
    return-object v0
.end method

.method public final d(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/z3;->j:Landroid/view/LayoutInflater;

    .line 2
    .line 3
    iget v1, p0, Landroidx/appcompat/widget/z3;->h:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Landroidx/appcompat/widget/y3;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/y3;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a01c5

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/ImageView;

    .line 26
    .line 27
    iget v1, p0, Landroidx/appcompat/widget/z3;->p:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method

.method public final e(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/widget/z3;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    :try_start_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Single path segment is not a resource ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No resource found for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "More than two path segments: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No package found for authority: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No authority: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 1
    const-string v0, "android.resource://"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_8

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_8

    .line 11
    .line 12
    const-string v2, "0"

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/appcompat/widget/z3;->m:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, "/"

    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v3, p0, Landroidx/appcompat/widget/z3;->n:Ljava/util/WeakHashMap;

    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 59
    .line 60
    if-nez v3, :cond_1

    .line 61
    .line 62
    move-object v3, v1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :goto_0
    if-eqz v3, :cond_2

    .line 69
    .line 70
    return-object v3

    .line 71
    :cond_2
    iget-object v3, p0, Landroidx/appcompat/widget/z3;->m:Landroid/content/Context;

    .line 72
    .line 73
    sget-object v4, Lx/g;->a:Ljava/lang/Object;

    .line 74
    .line 75
    invoke-static {v3, v2}, Lx/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    iget-object v3, p0, Landroidx/appcompat/widget/z3;->n:Ljava/util/WeakHashMap;

    .line 82
    .line 83
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v3, v0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    :cond_3
    return-object v2

    .line 91
    :catch_0
    const-string v0, "SuggestionsAdapter"

    .line 92
    .line 93
    const-string v2, "Icon resource not found: "

    .line 94
    .line 95
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return-object v1

    .line 103
    :catch_1
    iget-object v0, p0, Landroidx/appcompat/widget/z3;->n:Ljava/util/WeakHashMap;

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 110
    .line 111
    if-nez v0, :cond_4

    .line 112
    .line 113
    move-object v0, v1

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :goto_1
    if-eqz v0, :cond_5

    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v2, "SuggestionsAdapter"

    .line 127
    .line 128
    const-string v3, "Error closing icon stream for "

    .line 129
    .line 130
    const-string v4, "Failed to open "

    .line 131
    .line 132
    const-string v5, "Resource does not exist: "

    .line 133
    .line 134
    :try_start_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    const-string v7, "android.resource"

    .line 139
    .line 140
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 144
    if-eqz v6, :cond_6

    .line 145
    .line 146
    :try_start_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/z3;->e(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    .line 147
    .line 148
    .line 149
    move-result-object v1
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 150
    goto/16 :goto_5

    .line 151
    .line 152
    :catch_2
    move-exception v3

    .line 153
    goto :goto_4

    .line 154
    :catch_3
    :try_start_3
    new-instance v3, Ljava/io/FileNotFoundException;

    .line 155
    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v3

    .line 172
    :cond_6
    iget-object v5, p0, Landroidx/appcompat/widget/z3;->m:Landroid/content/Context;

    .line 173
    .line 174
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 179
    .line 180
    .line 181
    move-result-object v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 182
    if-eqz v5, :cond_7

    .line 183
    .line 184
    :try_start_4
    invoke-static {v5, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 185
    .line 186
    .line 187
    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :catch_4
    move-exception v5

    .line 193
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-static {v2, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    .line 206
    .line 207
    .line 208
    :goto_2
    move-object v1, v4

    .line 209
    goto :goto_5

    .line 210
    :catchall_0
    move-exception v4

    .line 211
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :catch_5
    move-exception v5

    .line 216
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-static {v2, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .line 230
    .line 231
    :goto_3
    throw v4

    .line 232
    :cond_7
    new-instance v3, Ljava/io/FileNotFoundException;

    .line 233
    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v3
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    .line 250
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v5, "Icon not found: "

    .line 253
    .line 254
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v0, ", "

    .line 261
    .line 262
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    :goto_5
    if-eqz v1, :cond_8

    .line 280
    .line 281
    iget-object v0, p0, Landroidx/appcompat/widget/z3;->n:Ljava/util/WeakHashMap;

    .line 282
    .line 283
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    :cond_8
    :goto_6
    return-object v1
.end method

.method public final g(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    const-string v2, "search_suggest_query"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :goto_1
    const-string p1, "limit"

    const/16 p2, 0x32

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    iget-object p1, p0, Landroidx/appcompat/widget/z3;->m:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ll0/b;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    const-string p2, "SuggestionsAdapter"

    .line 8
    .line 9
    const-string v0, "Search suggestions cursor threw exception."

    .line 10
    .line 11
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Landroidx/appcompat/widget/z3;->j:Landroid/view/LayoutInflater;

    .line 15
    .line 16
    iget v0, p0, Landroidx/appcompat/widget/z3;->i:I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    check-cast p3, Landroidx/appcompat/widget/y3;

    .line 30
    .line 31
    iget-object p3, p3, Landroidx/appcompat/widget/y3;->a:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-object p2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ll0/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "SuggestionsAdapter"

    const-string v0, "Search suggestions cursor threw exception."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/z3;->d(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/y3;

    iget-object p3, p3, Landroidx/appcompat/widget/y3;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll0/b;->c:Landroid/database/Cursor;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v1, "in_progress"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final notifyDataSetInvalidated()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll0/b;->c:Landroid/database/Cursor;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v1, "in_progress"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/z3;->k:Landroidx/appcompat/widget/SearchView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView;->j(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
