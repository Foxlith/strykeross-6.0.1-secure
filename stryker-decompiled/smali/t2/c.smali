.class public final synthetic Lt2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/dashboard/Dashboard;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lt2/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lt2/c;->b:Lcom/zalexdev/stryker/dashboard/Dashboard;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lt2/c;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lt2/c;->b:Lcom/zalexdev/stryker/dashboard/Dashboard;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->l:Landroid/widget/ScrollView;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->k:Landroid/widget/TextView;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v2, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->l:Landroid/widget/ScrollView;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sub-int/2addr v0, v2

    .line 30
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->l:Landroid/widget/ScrollView;

    .line 35
    .line 36
    invoke-virtual {v1, v3, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void

    .line 40
    :pswitch_0
    sget v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->H:I

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    :try_start_0
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->e:Lu2/h;

    .line 46
    .line 47
    iput-boolean v2, v0, Lu2/h;->m:Z

    .line 48
    .line 49
    invoke-virtual {v0}, Lu2/h;->D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :catchall_0
    return-void

    .line 53
    :pswitch_1
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->e:Lu2/h;

    .line 54
    .line 55
    const/16 v2, 0x190

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lu2/h;->C(I)Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const/16 v3, 0xa

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    const-string v0, "(no console output yet)"

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :goto_2
    iget-object v2, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->a:Landroidx/fragment/app/a0;

    .line 105
    .line 106
    if-nez v2, :cond_4

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_4
    new-instance v3, Lf/n0;

    .line 110
    .line 111
    const/16 v4, 0x1c

    .line 112
    .line 113
    invoke-direct {v3, v1, v0, v4}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    :goto_3
    return-void

    .line 120
    :pswitch_2
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 121
    .line 122
    invoke-virtual {v0}, Ll4/l;->Q()Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    iget-object v4, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 131
    .line 132
    invoke-static {v4, v0, v3}, Lu2/a;->a(Ll4/l;ZZ)Lu2/a;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    iget-object v4, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->a:Landroidx/fragment/app/a0;

    .line 137
    .line 138
    if-nez v4, :cond_5

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_5
    new-instance v5, Ln1/o;

    .line 142
    .line 143
    invoke-direct {v5, v1, v0, v3, v2}, Ln1/o;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 147
    .line 148
    .line 149
    :goto_4
    return-void

    .line 150
    :pswitch_3
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 151
    .line 152
    iget-object v0, v0, Ll4/l;->c:Landroid/content/Context;

    .line 153
    .line 154
    invoke-static {v0}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lu2/h;->A()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    const/4 v4, 0x3

    .line 163
    if-ne v0, v4, :cond_6

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_6
    move v2, v3

    .line 167
    :goto_5
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->a:Landroidx/fragment/app/a0;

    .line 168
    .line 169
    if-nez v0, :cond_7

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_7
    new-instance v3, Lj2/g;

    .line 173
    .line 174
    const/4 v4, 0x5

    .line 175
    invoke-direct {v3, v1, v2, v4}, Lj2/g;-><init>(Ljava/lang/Object;ZI)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 179
    .line 180
    .line 181
    :goto_6
    return-void

    .line 182
    :pswitch_4
    sget v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->H:I

    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/zalexdev/stryker/dashboard/Dashboard;->g()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/zalexdev/stryker/dashboard/Dashboard;->h()V

    .line 188
    .line 189
    .line 190
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->u:Lnet/cachapa/expandablelayout/ExpandableLayout;

    .line 191
    .line 192
    if-eqz v0, :cond_8

    .line 193
    .line 194
    invoke-virtual {v0}, Lnet/cachapa/expandablelayout/ExpandableLayout;->isExpanded()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_8

    .line 199
    .line 200
    invoke-virtual {v1}, Lcom/zalexdev/stryker/dashboard/Dashboard;->f()V

    .line 201
    .line 202
    .line 203
    :cond_8
    iget-boolean v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->w:Z

    .line 204
    .line 205
    if-eqz v0, :cond_9

    .line 206
    .line 207
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->v:Landroid/os/Handler;

    .line 208
    .line 209
    iget-object v1, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->x:Lt2/c;

    .line 210
    .line 211
    const-wide/16 v2, 0x9c4

    .line 212
    .line 213
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    .line 215
    .line 216
    :cond_9
    return-void

    .line 217
    :pswitch_5
    sget v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->H:I

    .line 218
    .line 219
    invoke-virtual {v1}, Lcom/zalexdev/stryker/dashboard/Dashboard;->f()V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :pswitch_6
    sget v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->H:I

    .line 224
    .line 225
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->h:Landroid/widget/TextView;

    .line 226
    .line 227
    if-eqz v0, :cond_b

    .line 228
    .line 229
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 230
    .line 231
    if-nez v0, :cond_a

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_a
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->e:Lu2/h;

    .line 235
    .line 236
    new-instance v2, Ljava/lang/Thread;

    .line 237
    .line 238
    new-instance v3, Lf/n0;

    .line 239
    .line 240
    const/16 v4, 0x1b

    .line 241
    .line 242
    invoke-direct {v3, v1, v0, v4}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 243
    .line 244
    .line 245
    const-string v0, "vm-usb-scan"

    .line 246
    .line 247
    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 251
    .line 252
    .line 253
    :cond_b
    :goto_7
    return-void

    .line 254
    :pswitch_7
    sget v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->H:I

    .line 255
    .line 256
    invoke-virtual {v1}, Lcom/zalexdev/stryker/dashboard/Dashboard;->h()V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :pswitch_8
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 261
    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    iget-object v5, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 268
    .line 269
    invoke-virtual {v5}, Ll4/l;->H()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v5, "/exploits/checker.py"

    .line 277
    .line 278
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-virtual {v0, v4}, Ll4/l;->c(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-nez v0, :cond_c

    .line 290
    .line 291
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->a:Landroidx/fragment/app/a0;

    .line 292
    .line 293
    const v4, 0x1020002

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    const-string v4, "Updating please wait..."

    .line 301
    .line 302
    const v5, 0xea60

    .line 303
    .line 304
    .line 305
    invoke-static {v0, v4, v5}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-object v4, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->a:Landroidx/fragment/app/a0;

    .line 310
    .line 311
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    new-instance v5, Lt2/e;

    .line 315
    .line 316
    invoke-direct {v5, v0, v3}, Lt2/e;-><init>(Lcom/google/android/material/snackbar/Snackbar;I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 320
    .line 321
    .line 322
    iget-object v3, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 323
    .line 324
    invoke-static {v3}, Li5/a;->F(Ll4/l;)Z

    .line 325
    .line 326
    .line 327
    iget-object v3, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 328
    .line 329
    const-string v4, "mkdir -p /sdcard/Stryker/exploits; cp -f /exploits/* /sdcard/Stryker/exploits/ 2>/dev/null"

    .line 330
    .line 331
    invoke-virtual {v3, v4}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 332
    .line 333
    .line 334
    iget-object v3, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->a:Landroidx/fragment/app/a0;

    .line 335
    .line 336
    new-instance v4, Lt2/e;

    .line 337
    .line 338
    invoke-direct {v4, v0, v2}, Lt2/e;-><init>(Lcom/google/android/material/snackbar/Snackbar;I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 342
    .line 343
    .line 344
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 345
    .line 346
    new-instance v3, Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .line 350
    .line 351
    const-string v4, "installed_modules"

    .line 352
    .line 353
    invoke-virtual {v0, v3, v4}, Ll4/l;->d0(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    :cond_c
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 357
    .line 358
    const-string v1, "exploits_v30"

    .line 359
    .line 360
    invoke-virtual {v0, v1, v2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 361
    .line 362
    .line 363
    return-void

    .line 364
    nop

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
