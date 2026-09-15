.class public final synthetic Lcom/stryker/terminal/ui/term/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/k0;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/stryker/terminal/ui/term/f;->a:I

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/stryker/terminal/ui/term/f;->d:Ljava/lang/Object;

    iput p3, p0, Lcom/stryker/terminal/ui/term/f;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILandroid/widget/ArrayAdapter;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/stryker/terminal/ui/term/f;->a:I

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/f;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/stryker/terminal/ui/term/f;->b:I

    iput-object p3, p0, Lcom/stryker/terminal/ui/term/f;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lcom/stryker/terminal/ui/term/f;->a:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget v4, v0, Lcom/stryker/terminal/ui/term/f;->b:I

    .line 9
    .line 10
    iget-object v5, v0, Lcom/stryker/terminal/ui/term/f;->d:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v6, v0, Lcom/stryker/terminal/ui/term/f;->c:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v2, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v6, Lr3/t;

    .line 18
    .line 19
    check-cast v5, Lcom/zalexdev/stryker/custom/Device;

    .line 20
    .line 21
    iget-object v2, v6, Lr3/t;->e:Landroid/app/Dialog;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v7, v6, Lr3/t;->c:Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    check-cast v7, Lcom/zalexdev/stryker/custom/Device;

    .line 40
    .line 41
    invoke-virtual {v7}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    iget-object v9, v6, Lr3/t;->d:Ll4/l;

    .line 46
    .line 47
    const/4 v10, 0x2

    .line 48
    const-string v11, " "

    .line 49
    .line 50
    const-string v12, " python3 /CORE/MegaCut/megacut.py "

    .line 51
    .line 52
    const-string v13, " from "

    .line 53
    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    iget-object v9, v9, Ll4/l;->f:Lu3/g;

    .line 57
    .line 58
    const-string v14, "Cutting network connection to "

    .line 59
    .line 60
    invoke-static {v14, v2, v13, v7}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    invoke-virtual {v9, v3, v13}, Lu3/g;->e(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v9, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, " -k"

    .line 82
    .line 83
    :goto_0
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    if-ne v1, v3, :cond_2

    .line 92
    .line 93
    iget-object v9, v9, Ll4/l;->f:Lu3/g;

    .line 94
    .line 95
    const-string v14, "HARD cutting network connection to "

    .line 96
    .line 97
    invoke-static {v14, v2, v13, v7}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    invoke-virtual {v9, v3, v13}, Lu3/g;->e(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v9, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, " -m"

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    if-ne v1, v10, :cond_3

    .line 122
    .line 123
    iget-object v9, v9, Ll4/l;->f:Lu3/g;

    .line 124
    .line 125
    const-string v14, "Cutting network connection (20s) to "

    .line 126
    .line 127
    invoke-static {v14, v2, v13, v7}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    invoke-virtual {v9, v3, v13}, Lu3/g;->e(ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance v9, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v2, " -b"

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_3
    iget-object v9, v9, Ll4/l;->f:Lu3/g;

    .line 152
    .line 153
    const-string v14, "Enabling connection to "

    .line 154
    .line 155
    invoke-static {v14, v2, v13, v7}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    invoke-virtual {v9, v3, v13}, Lu3/g;->e(ILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    new-instance v9, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v2, " -r"

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :goto_1
    new-instance v7, Ljava/lang/Thread;

    .line 180
    .line 181
    new-instance v9, Lr3/l;

    .line 182
    .line 183
    invoke-direct {v9, v6, v2, v10}, Lr3/l;-><init>(Lr3/t;Ljava/lang/String;I)V

    .line 184
    .line 185
    .line 186
    invoke-direct {v7, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 190
    .line 191
    .line 192
    const/4 v2, 0x3

    .line 193
    if-eq v1, v2, :cond_4

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_4
    move v3, v8

    .line 197
    :goto_2
    invoke-virtual {v5, v3}, Lcom/zalexdev/stryker/custom/Device;->setIscutted(Z)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 201
    .line 202
    .line 203
    if-ne v1, v10, :cond_5

    .line 204
    .line 205
    new-instance v11, Ljava/util/Timer;

    .line 206
    .line 207
    invoke-direct {v11}, Ljava/util/Timer;-><init>()V

    .line 208
    .line 209
    .line 210
    new-instance v12, Lr3/p;

    .line 211
    .line 212
    invoke-direct {v12, v6, v5, v4, v11}, Lr3/p;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;ILjava/util/Timer;)V

    .line 213
    .line 214
    .line 215
    const-wide/16 v13, 0x4e20

    .line 216
    .line 217
    const-wide/16 v15, 0x4e20

    .line 218
    .line 219
    invoke-virtual/range {v11 .. v16}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 220
    .line 221
    .line 222
    :cond_5
    return-void

    .line 223
    :pswitch_0
    check-cast v6, Lb3/g;

    .line 224
    .line 225
    check-cast v5, Ljava/lang/String;

    .line 226
    .line 227
    sget-object v1, Lb3/g;->g:Ljava/util/regex/Pattern;

    .line 228
    .line 229
    invoke-virtual {v6, v5}, Lb3/g;->a(Ljava/lang/String;)Ljava/io/File;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-nez v2, :cond_6

    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-eqz v5, :cond_6

    .line 244
    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v5, "rm -f \'"

    .line 248
    .line 249
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v5, "\'"

    .line 260
    .line 261
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    iget-object v5, v6, Lb3/g;->d:Ll4/l;

    .line 269
    .line 270
    invoke-virtual {v5, v2}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    xor-int/lit8 v2, v1, 0x1

    .line 278
    .line 279
    :cond_6
    if-eqz v2, :cond_7

    .line 280
    .line 281
    iget-object v1, v6, Lb3/g;->a:Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/k0;->notifyItemRemoved(I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    invoke-virtual {v6, v4, v1}, Landroidx/recyclerview/widget/k0;->notifyItemRangeChanged(II)V

    .line 294
    .line 295
    .line 296
    iget-object v1, v6, Lb3/g;->e:Ljava/lang/Runnable;

    .line 297
    .line 298
    if-eqz v1, :cond_7

    .line 299
    .line 300
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 301
    .line 302
    .line 303
    :cond_7
    return-void

    .line 304
    :pswitch_1
    check-cast v6, Ljava/util/List;

    .line 305
    .line 306
    check-cast v5, Landroid/widget/ArrayAdapter;

    .line 307
    .line 308
    move-object/from16 v2, p1

    .line 309
    .line 310
    invoke-static {v6, v4, v5, v2, v1}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->h(Ljava/util/List;ILandroid/widget/ArrayAdapter;Landroid/content/DialogInterface;I)V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    nop

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
