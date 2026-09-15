.class public final synthetic Ls2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/coremanger/CoreManager;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/coremanger/CoreManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ls2/h;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ls2/h;->b:Lcom/zalexdev/stryker/coremanger/CoreManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Ls2/h;->a:I

    .line 3
    .line 4
    const-string v2, ""

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Ls2/h;->b:Lcom/zalexdev/stryker/coremanger/CoreManager;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v1, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->i:Lcom/google/android/material/textfield/TextInputEditText;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->i:Lcom/google/android/material/textfield/TextInputEditText;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :goto_0
    invoke-virtual {v4, v2}, Lcom/zalexdev/stryker/coremanger/CoreManager;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->h:Lcom/google/android/material/textfield/TextInputLayout;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->k:Lcom/google/android/material/chip/Chip;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->l:Lcom/google/android/material/chip/Chip;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 55
    .line 56
    const/4 v1, 0x4

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->s:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->u:Landroid/widget/TextView;

    .line 68
    .line 69
    const v1, 0x7f130153

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_0
    sget v0, Lcom/zalexdev/stryker/coremanger/CoreManager;->D:I

    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/zalexdev/stryker/coremanger/CoreManager;->e()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_1
    sget v0, Lcom/zalexdev/stryker/coremanger/CoreManager;->D:I

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 90
    .line 91
    .line 92
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v2, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->B:[Lr0/b;

    .line 98
    .line 99
    array-length v5, v2

    .line 100
    :goto_1
    if-ge v3, v5, :cond_2

    .line 101
    .line 102
    aget-object v6, v2, v3

    .line 103
    .line 104
    iget-object v7, v6, Lr0/b;->c:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v7, Ljava/lang/String;

    .line 107
    .line 108
    iget-object v8, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->b:Landroid/content/Context;

    .line 109
    .line 110
    iget-object v9, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->a:Ll4/l;

    .line 111
    .line 112
    invoke-static {v8, v9, v7}, Lcom/zalexdev/stryker/install/InstallService;->h(Landroid/content/Context;Ll4/l;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    iget-object v6, v6, Lr0/b;->c:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v6, Ljava/lang/String;

    .line 122
    .line 123
    iget-object v7, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->a:Ll4/l;

    .line 124
    .line 125
    invoke-virtual {v7, v6}, Ll4/l;->T(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    new-instance v2, Landroidx/emoji2/text/m;

    .line 140
    .line 141
    const/16 v3, 0xa

    .line 142
    .line 143
    invoke-direct {v2, v4, v0, v1, v3}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v2}, Lcom/zalexdev/stryker/coremanger/CoreManager;->j(Ljava/lang/Runnable;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :pswitch_2
    iget-boolean v1, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->w:Z

    .line 151
    .line 152
    if-eqz v1, :cond_8

    .line 153
    .line 154
    iget-object v1, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->a:Ll4/l;

    .line 155
    .line 156
    const-string v2, "dpkg-query -W -f=\'${Package}\\t${Version}\\n\' 2>/dev/null"

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-eqz v5, :cond_7

    .line 176
    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    check-cast v5, Ljava/lang/String;

    .line 182
    .line 183
    if-nez v5, :cond_3

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-eqz v6, :cond_4

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_4
    const-string v6, "\t"

    .line 198
    .line 199
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    array-length v6, v5

    .line 204
    const/4 v7, 0x2

    .line 205
    if-ge v6, v7, :cond_5

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_5
    aget-object v6, v5, v3

    .line 209
    .line 210
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    if-eqz v7, :cond_6

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_6
    new-instance v7, Lcom/zalexdev/stryker/custom/Package;

    .line 222
    .line 223
    invoke-direct {v7}, Lcom/zalexdev/stryker/custom/Package;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7, v6}, Lcom/zalexdev/stryker/custom/Package;->setName(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    aget-object v5, v5, v0

    .line 230
    .line 231
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-virtual {v7, v5}, Lcom/zalexdev/stryker/custom/Package;->setVersion(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v7, v0}, Lcom/zalexdev/stryker/custom/Package;->setInstalled(Z)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7, v3}, Lcom/zalexdev/stryker/custom/Package;->setIsPythonPackage(Z)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_7
    iput-object v2, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->d:Ljava/util/ArrayList;

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_8
    iget-object v1, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->a:Ll4/l;

    .line 252
    .line 253
    const-string v5, "pip list | tail -n +3 | awk \'{print $1\"==\"$2}\'"

    .line 254
    .line 255
    invoke-virtual {v1, v5}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    new-instance v5, Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    if-eqz v6, :cond_c

    .line 273
    .line 274
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    check-cast v6, Ljava/lang/String;

    .line 279
    .line 280
    const-string v7, "=="

    .line 281
    .line 282
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    array-length v7, v6

    .line 287
    if-lt v7, v0, :cond_9

    .line 288
    .line 289
    aget-object v7, v6, v3

    .line 290
    .line 291
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v7

    .line 299
    if-eqz v7, :cond_a

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_a
    new-instance v7, Lcom/zalexdev/stryker/custom/Package;

    .line 303
    .line 304
    invoke-direct {v7}, Lcom/zalexdev/stryker/custom/Package;-><init>()V

    .line 305
    .line 306
    .line 307
    array-length v8, v6

    .line 308
    if-le v8, v0, :cond_b

    .line 309
    .line 310
    aget-object v8, v6, v0

    .line 311
    .line 312
    goto :goto_4

    .line 313
    :cond_b
    move-object v8, v2

    .line 314
    :goto_4
    invoke-virtual {v7, v8}, Lcom/zalexdev/stryker/custom/Package;->setVersion(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    aget-object v6, v6, v3

    .line 318
    .line 319
    invoke-virtual {v7, v6}, Lcom/zalexdev/stryker/custom/Package;->setName(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v7, v0}, Lcom/zalexdev/stryker/custom/Package;->setInstalled(Z)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v7, v0}, Lcom/zalexdev/stryker/custom/Package;->setIsPythonPackage(Z)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    goto :goto_3

    .line 332
    :cond_c
    iput-object v5, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->e:Ljava/util/ArrayList;

    .line 333
    .line 334
    :goto_5
    new-instance v0, Ls2/h;

    .line 335
    .line 336
    const/4 v1, 0x3

    .line 337
    invoke-direct {v0, v4, v1}, Ls2/h;-><init>(Lcom/zalexdev/stryker/coremanger/CoreManager;I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v4, v0}, Lcom/zalexdev/stryker/coremanger/CoreManager;->j(Ljava/lang/Runnable;)V

    .line 341
    .line 342
    .line 343
    return-void

    .line 344
    nop

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
