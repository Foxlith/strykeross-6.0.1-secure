.class public final synthetic Lr3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr3/t;

.field public final synthetic c:Lcom/zalexdev/stryker/custom/Device;


# direct methods
.method public synthetic constructor <init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lr3/k;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lr3/k;->b:Lr3/t;

    .line 7
    .line 8
    iput-object p2, p0, Lr3/k;->c:Lcom/zalexdev/stryker/custom/Device;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 1
    iget p1, p0, Lr3/k;->a:I

    .line 2
    .line 3
    const-string v0, " "

    .line 4
    .line 5
    const-string v1, ","

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "python3 /CORE/MegaCut/megacut.py "

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    iget-object v5, p0, Lr3/k;->c:Lcom/zalexdev/stryker/custom/Device;

    .line 12
    .line 13
    iget-object v6, p0, Lr3/k;->b:Lr3/t;

    .line 14
    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v2}, Lcom/zalexdev/stryker/custom/Device;->setIscutted(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p2, v6, Lr3/t;->c:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    move v3, v4

    .line 36
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lcom/zalexdev/stryker/custom/Device;

    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    iget-object v8, v6, Lr3/t;->c:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    check-cast v8, Lcom/zalexdev/stryker/custom/Device;

    .line 59
    .line 60
    invoke-virtual {v8}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_1

    .line 69
    .line 70
    if-eqz v3, :cond_0

    .line 71
    .line 72
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    move v3, v2

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :goto_1
    invoke-virtual {v5, v2}, Lcom/zalexdev/stryker/custom/Device;->setIscutted(Z)V

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object v7, v6, Lr3/t;->c:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object p2, v6, Lr3/t;->c:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Lcom/zalexdev/stryker/custom/Device;

    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p2, " -r"

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    new-instance p2, Ljava/lang/Thread;

    .line 128
    .line 129
    new-instance v0, Lr3/e;

    .line 130
    .line 131
    invoke-direct {v0, v6, p1, v4}, Lr3/e;-><init>(Lr3/t;Ljava/lang/StringBuilder;I)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 138
    .line 139
    .line 140
    iget-object p1, v6, Lr3/t;->e:Landroid/app/Dialog;

    .line 141
    .line 142
    if-eqz p1, :cond_3

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 145
    .line 146
    .line 147
    :cond_3
    return-void

    .line 148
    :pswitch_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5, v4}, Lcom/zalexdev/stryker/custom/Device;->setIscutted(Z)V

    .line 157
    .line 158
    .line 159
    iget-object p2, v6, Lr3/t;->c:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    move v3, v4

    .line 166
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-eqz v5, :cond_6

    .line 171
    .line 172
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    check-cast v5, Lcom/zalexdev/stryker/custom/Device;

    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    iget-object v8, v6, Lr3/t;->c:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    check-cast v8, Lcom/zalexdev/stryker/custom/Device;

    .line 189
    .line 190
    invoke-virtual {v8}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-nez v7, :cond_5

    .line 199
    .line 200
    if-eqz v3, :cond_4

    .line 201
    .line 202
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    move v3, v2

    .line 210
    goto :goto_3

    .line 211
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    :goto_3
    invoke-virtual {v5, v4}, Lcom/zalexdev/stryker/custom/Device;->setIscutted(Z)V

    .line 222
    .line 223
    .line 224
    :cond_5
    iget-object v7, v6, Lr3/t;->c:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    iget-object p2, v6, Lr3/t;->c:Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    check-cast p2, Lcom/zalexdev/stryker/custom/Device;

    .line 244
    .line 245
    invoke-virtual {p2}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string p2, " -k"

    .line 253
    .line 254
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    new-instance p2, Ljava/lang/Thread;

    .line 258
    .line 259
    new-instance v0, Lr3/e;

    .line 260
    .line 261
    invoke-direct {v0, v6, p1, v2}, Lr3/e;-><init>(Lr3/t;Ljava/lang/StringBuilder;I)V

    .line 262
    .line 263
    .line 264
    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 268
    .line 269
    .line 270
    iget-object p1, v6, Lr3/t;->e:Landroid/app/Dialog;

    .line 271
    .line 272
    if-eqz p1, :cond_7

    .line 273
    .line 274
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 275
    .line 276
    .line 277
    :cond_7
    return-void

    .line 278
    :pswitch_1
    iget-object p1, v6, Lr3/t;->d:Ll4/l;

    .line 279
    .line 280
    invoke-virtual {p1}, Ll4/l;->A()Ljava/util/ArrayList;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    check-cast p1, Lcom/zalexdev/stryker/custom/Exploit;

    .line 289
    .line 290
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    invoke-virtual {p1, p2}, Lcom/zalexdev/stryker/custom/Exploit;->setIp(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v6}, Lr3/t;->a()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    invoke-virtual {p1, p2}, Lcom/zalexdev/stryker/custom/Exploit;->setGw(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Exploit;->genereteLaunchCommand()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    filled-new-array {p2}, [Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Exploit;->getRequireArgs()Ljava/util/ArrayList;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-lez v0, :cond_8

    .line 321
    .line 322
    new-instance v0, Ljava/lang/Thread;

    .line 323
    .line 324
    new-instance v1, Landroidx/emoji2/text/m;

    .line 325
    .line 326
    const/16 v2, 0x19

    .line 327
    .line 328
    invoke-direct {v1, v6, p1, p2, v2}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 329
    .line 330
    .line 331
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 335
    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_8
    new-instance p2, Lr3/r;

    .line 339
    .line 340
    invoke-direct {p2, p1, v4}, Lr3/r;-><init>(Lcom/zalexdev/stryker/custom/Exploit;I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v6, p2}, Lr3/t;->f(Ljava/util/ArrayList;)V

    .line 344
    .line 345
    .line 346
    :goto_4
    iget-object p1, v6, Lr3/t;->e:Landroid/app/Dialog;

    .line 347
    .line 348
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 349
    .line 350
    .line 351
    return-void

    .line 352
    nop

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
