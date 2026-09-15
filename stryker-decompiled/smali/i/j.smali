.class public final Li/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public C:Landroid/content/res/ColorStateList;

.field public D:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic E:Li/k;

.field public final a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Landroidx/appcompat/view/menu/r;


# direct methods
.method public constructor <init>(Li/k;Landroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/j;->E:Li/k;

    const/4 p1, 0x0

    iput-object p1, p0, Li/j;->C:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Li/j;->D:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Li/j;->a:Landroid/view/Menu;

    const/4 p1, 0x0

    iput p1, p0, Li/j;->b:I

    iput p1, p0, Li/j;->c:I

    iput p1, p0, Li/j;->d:I

    iput p1, p0, Li/j;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Li/j;->f:Z

    iput-boolean p1, p0, Li/j;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Li/j;->E:Li/k;

    iget-object v0, v0, Li/k;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot instantiate class: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Landroid/view/MenuItem;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Li/j;->s:Z

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Li/j;->t:Z

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-boolean v1, p0, Li/j;->u:Z

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Li/j;->r:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-lt v1, v3, :cond_0

    .line 24
    .line 25
    move v1, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v2

    .line 28
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Li/j;->l:Ljava/lang/CharSequence;

    .line 33
    .line 34
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v1, p0, Li/j;->m:I

    .line 39
    .line 40
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    iget v0, p0, Li/j;->v:I

    .line 44
    .line 45
    if-ltz v0, :cond_1

    .line 46
    .line 47
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Li/j;->y:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v1, p0, Li/j;->E:Li/k;

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget-object v0, v1, Li/k;->c:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    new-instance v0, Li/i;

    .line 65
    .line 66
    iget-object v4, v1, Li/k;->d:Ljava/lang/Object;

    .line 67
    .line 68
    if-nez v4, :cond_2

    .line 69
    .line 70
    iget-object v4, v1, Li/k;->c:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v4}, Li/k;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iput-object v4, v1, Li/k;->d:Ljava/lang/Object;

    .line 77
    .line 78
    :cond_2
    iget-object v4, v1, Li/k;->d:Ljava/lang/Object;

    .line 79
    .line 80
    iget-object v5, p0, Li/j;->y:Ljava/lang/String;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v4, v0, Li/i;->a:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    :try_start_0
    sget-object v6, Li/i;->c:[Ljava/lang/Class;

    .line 92
    .line 93
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    iput-object v6, v0, Li/i;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catch_0
    move-exception p1

    .line 104
    new-instance v0, Landroid/view/InflateException;

    .line 105
    .line 106
    const-string v1, "Couldn\'t resolve menu item onClick handler "

    .line 107
    .line 108
    const-string v2, " in class "

    .line 109
    .line 110
    invoke-static {v1, v5, v2}, Landroid/support/v4/media/session/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 129
    .line 130
    .line 131
    throw v0

    .line 132
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    .line 135
    .line 136
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_4
    :goto_1
    iget v0, p0, Li/j;->r:I

    .line 141
    .line 142
    const/4 v4, 0x2

    .line 143
    if-lt v0, v4, :cond_7

    .line 144
    .line 145
    instance-of v0, p1, Landroidx/appcompat/view/menu/q;

    .line 146
    .line 147
    if-eqz v0, :cond_5

    .line 148
    .line 149
    move-object v0, p1

    .line 150
    check-cast v0, Landroidx/appcompat/view/menu/q;

    .line 151
    .line 152
    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/q;->g(Z)V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_5
    instance-of v0, p1, Landroidx/appcompat/view/menu/w;

    .line 157
    .line 158
    if-eqz v0, :cond_7

    .line 159
    .line 160
    move-object v0, p1

    .line 161
    check-cast v0, Landroidx/appcompat/view/menu/w;

    .line 162
    .line 163
    :try_start_1
    iget-object v4, v0, Landroidx/appcompat/view/menu/w;->e:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    .line 165
    iget-object v5, v0, Landroidx/appcompat/view/menu/w;->d:Lb0/b;

    .line 166
    .line 167
    if-nez v4, :cond_6

    .line 168
    .line 169
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    const-string v6, "setExclusiveCheckable"

    .line 174
    .line 175
    new-array v7, v3, [Ljava/lang/Class;

    .line 176
    .line 177
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 178
    .line 179
    aput-object v8, v7, v2

    .line 180
    .line 181
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    iput-object v4, v0, Landroidx/appcompat/view/menu/w;->e:Ljava/lang/reflect/Method;

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :catch_1
    move-exception v0

    .line 189
    goto :goto_3

    .line 190
    :cond_6
    :goto_2
    iget-object v0, v0, Landroidx/appcompat/view/menu/w;->e:Ljava/lang/reflect/Method;

    .line 191
    .line 192
    new-array v4, v3, [Ljava/lang/Object;

    .line 193
    .line 194
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 195
    .line 196
    aput-object v6, v4, v2

    .line 197
    .line 198
    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :goto_3
    const-string v4, "MenuItemWrapper"

    .line 203
    .line 204
    const-string v5, "Error while calling setExclusiveCheckable"

    .line 205
    .line 206
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .line 208
    .line 209
    :cond_7
    :goto_4
    iget-object v0, p0, Li/j;->x:Ljava/lang/String;

    .line 210
    .line 211
    if-eqz v0, :cond_8

    .line 212
    .line 213
    sget-object v2, Li/k;->e:[Ljava/lang/Class;

    .line 214
    .line 215
    iget-object v1, v1, Li/k;->a:[Ljava/lang/Object;

    .line 216
    .line 217
    invoke-virtual {p0, v0, v2, v1}, Li/j;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Landroid/view/View;

    .line 222
    .line 223
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 224
    .line 225
    .line 226
    move v2, v3

    .line 227
    :cond_8
    iget v0, p0, Li/j;->w:I

    .line 228
    .line 229
    if-lez v0, :cond_a

    .line 230
    .line 231
    if-nez v2, :cond_9

    .line 232
    .line 233
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 234
    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_9
    const-string v0, "SupportMenuInflater"

    .line 238
    .line 239
    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 240
    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    :cond_a
    :goto_5
    iget-object v0, p0, Li/j;->z:Landroidx/appcompat/view/menu/r;

    .line 245
    .line 246
    if-eqz v0, :cond_c

    .line 247
    .line 248
    instance-of v1, p1, Lb0/b;

    .line 249
    .line 250
    if-eqz v1, :cond_b

    .line 251
    .line 252
    move-object v1, p1

    .line 253
    check-cast v1, Lb0/b;

    .line 254
    .line 255
    invoke-interface {v1, v0}, Lb0/b;->b(Landroidx/appcompat/view/menu/r;)Lb0/b;

    .line 256
    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_b
    const-string v0, "MenuItemCompat"

    .line 260
    .line 261
    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    .line 262
    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    :cond_c
    :goto_6
    iget-object v0, p0, Li/j;->A:Ljava/lang/CharSequence;

    .line 267
    .line 268
    instance-of v1, p1, Lb0/b;

    .line 269
    .line 270
    const/16 v2, 0x1a

    .line 271
    .line 272
    if-eqz v1, :cond_d

    .line 273
    .line 274
    move-object v3, p1

    .line 275
    check-cast v3, Lb0/b;

    .line 276
    .line 277
    invoke-interface {v3, v0}, Lb0/b;->setContentDescription(Ljava/lang/CharSequence;)Lb0/b;

    .line 278
    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 282
    .line 283
    if-lt v3, v2, :cond_e

    .line 284
    .line 285
    invoke-static {p1, v0}, Landroidx/core/view/t;->h(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 286
    .line 287
    .line 288
    :cond_e
    :goto_7
    iget-object v0, p0, Li/j;->B:Ljava/lang/CharSequence;

    .line 289
    .line 290
    if-eqz v1, :cond_f

    .line 291
    .line 292
    move-object v3, p1

    .line 293
    check-cast v3, Lb0/b;

    .line 294
    .line 295
    invoke-interface {v3, v0}, Lb0/b;->setTooltipText(Ljava/lang/CharSequence;)Lb0/b;

    .line 296
    .line 297
    .line 298
    goto :goto_8

    .line 299
    :cond_f
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 300
    .line 301
    if-lt v3, v2, :cond_10

    .line 302
    .line 303
    invoke-static {p1, v0}, Landroidx/core/view/t;->m(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 304
    .line 305
    .line 306
    :cond_10
    :goto_8
    iget-char v0, p0, Li/j;->n:C

    .line 307
    .line 308
    iget v3, p0, Li/j;->o:I

    .line 309
    .line 310
    if-eqz v1, :cond_11

    .line 311
    .line 312
    move-object v4, p1

    .line 313
    check-cast v4, Lb0/b;

    .line 314
    .line 315
    invoke-interface {v4, v0, v3}, Lb0/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 316
    .line 317
    .line 318
    goto :goto_9

    .line 319
    :cond_11
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 320
    .line 321
    if-lt v4, v2, :cond_12

    .line 322
    .line 323
    invoke-static {p1, v0, v3}, Landroidx/core/view/t;->g(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    .line 324
    .line 325
    .line 326
    :cond_12
    :goto_9
    iget-char v0, p0, Li/j;->p:C

    .line 327
    .line 328
    iget v3, p0, Li/j;->q:I

    .line 329
    .line 330
    if-eqz v1, :cond_13

    .line 331
    .line 332
    move-object v4, p1

    .line 333
    check-cast v4, Lb0/b;

    .line 334
    .line 335
    invoke-interface {v4, v0, v3}, Lb0/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 336
    .line 337
    .line 338
    goto :goto_a

    .line 339
    :cond_13
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 340
    .line 341
    if-lt v4, v2, :cond_14

    .line 342
    .line 343
    invoke-static {p1, v0, v3}, Landroidx/core/view/t;->k(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    .line 344
    .line 345
    .line 346
    :cond_14
    :goto_a
    iget-object v0, p0, Li/j;->D:Landroid/graphics/PorterDuff$Mode;

    .line 347
    .line 348
    if-eqz v0, :cond_16

    .line 349
    .line 350
    if-eqz v1, :cond_15

    .line 351
    .line 352
    move-object v3, p1

    .line 353
    check-cast v3, Lb0/b;

    .line 354
    .line 355
    invoke-interface {v3, v0}, Lb0/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 356
    .line 357
    .line 358
    goto :goto_b

    .line 359
    :cond_15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 360
    .line 361
    if-lt v3, v2, :cond_16

    .line 362
    .line 363
    invoke-static {p1, v0}, Landroidx/core/view/t;->j(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 364
    .line 365
    .line 366
    :cond_16
    :goto_b
    iget-object v0, p0, Li/j;->C:Landroid/content/res/ColorStateList;

    .line 367
    .line 368
    if-eqz v0, :cond_18

    .line 369
    .line 370
    if-eqz v1, :cond_17

    .line 371
    .line 372
    check-cast p1, Lb0/b;

    .line 373
    .line 374
    invoke-interface {p1, v0}, Lb0/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 375
    .line 376
    .line 377
    goto :goto_c

    .line 378
    :cond_17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 379
    .line 380
    if-lt v1, v2, :cond_18

    .line 381
    .line 382
    invoke-static {p1, v0}, Landroidx/core/view/t;->i(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 383
    .line 384
    .line 385
    :cond_18
    :goto_c
    return-void
.end method
