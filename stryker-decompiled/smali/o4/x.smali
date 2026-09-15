.class public final synthetic Lo4/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/wifi/Wifi;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic d:[I

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Landroid/widget/TextView;

.field public final synthetic i:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wifi/Wifi;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicReference;[ILandroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/x;->a:Lcom/zalexdev/stryker/wifi/Wifi;

    iput-object p2, p0, Lo4/x;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lo4/x;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lo4/x;->d:[I

    iput-object p5, p0, Lo4/x;->e:Landroid/widget/TextView;

    iput-object p6, p0, Lo4/x;->f:Ljava/lang/String;

    iput-object p7, p0, Lo4/x;->g:Landroid/widget/TextView;

    iput-object p8, p0, Lo4/x;->h:Landroid/widget/TextView;

    iput-object p9, p0, Lo4/x;->i:[Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v10, v0, Lo4/x;->b:Landroid/widget/TextView;

    .line 4
    .line 5
    iget-object v11, v0, Lo4/x;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    iget-object v8, v0, Lo4/x;->d:[I

    .line 8
    .line 9
    iget-object v9, v0, Lo4/x;->e:Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object v12, v0, Lo4/x;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v13, v0, Lo4/x;->g:Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object v14, v0, Lo4/x;->h:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object v15, v0, Lo4/x;->i:[Z

    .line 18
    .line 19
    iget-object v7, v0, Lo4/x;->a:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 20
    .line 21
    iget-object v1, v7, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 22
    .line 23
    invoke-virtual {v1}, Ll4/l;->B()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Lr3/d;

    .line 28
    .line 29
    const/4 v6, 0x4

    .line 30
    invoke-direct {v2, v10, v1, v6}, Lr3/d;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7, v2}, Lcom/zalexdev/stryker/wifi/Wifi;->f(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, v7, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 37
    .line 38
    iget-object v2, v2, Ll4/l;->e:Ll4/m;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ll4/m;->c(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v16

    .line 44
    if-nez v16, :cond_0

    .line 45
    .line 46
    new-instance v2, Lv3/g;

    .line 47
    .line 48
    const/16 v3, 0x19

    .line 49
    .line 50
    invoke-direct {v2, v7, v10, v1, v3}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v2}, Lcom/zalexdev/stryker/wifi/Wifi;->f(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    move-object v0, v1

    .line 57
    move-object/from16 v17, v15

    .line 58
    .line 59
    move-object v15, v7

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, v7, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 62
    .line 63
    invoke-virtual {v1}, Ll4/l;->B()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    iget-object v1, v7, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 68
    .line 69
    const-string v2, "mkdir -p /sdcard/Stryker/hs /sdcard/Stryker/captured; rm -f /sdcard/Stryker/hs/handshakenow*"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v2, "airodump-ng "

    .line 77
    .line 78
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, " -w /sdcard/Stryker/hs/handshakenow --ignore-negative-one --output-format pcap,csv  --update 3"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v17

    .line 93
    new-instance v4, Lo4/f0;

    .line 94
    .line 95
    iget-object v3, v7, Lcom/zalexdev/stryker/wifi/Wifi;->s:Landroidx/fragment/app/a0;

    .line 96
    .line 97
    iget-object v2, v7, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    .line 98
    .line 99
    move-object v1, v4

    .line 100
    move-object/from16 v18, v2

    .line 101
    .line 102
    move-object v2, v7

    .line 103
    move-object v0, v4

    .line 104
    move-object/from16 v4, v18

    .line 105
    .line 106
    move-object/from16 v18, v5

    .line 107
    .line 108
    move-object/from16 v5, v17

    .line 109
    .line 110
    move-object v6, v10

    .line 111
    move-object/from16 v17, v15

    .line 112
    .line 113
    move-object v15, v7

    .line 114
    move-object v7, v11

    .line 115
    invoke-direct/range {v1 .. v9}, Lo4/f0;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;Landroidx/fragment/app/a0;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicReference;[ILandroid/widget/TextView;)V

    .line 116
    .line 117
    .line 118
    iput-object v0, v15, Lcom/zalexdev/stryker/wifi/Wifi;->C:Lo4/f0;

    .line 119
    .line 120
    const/4 v1, 0x1

    .line 121
    iput-boolean v1, v0, Ll4/c;->o:Z

    .line 122
    .line 123
    move-object/from16 v0, v18

    .line 124
    .line 125
    :goto_0
    if-eqz v16, :cond_4

    .line 126
    .line 127
    const/4 v1, 0x0

    .line 128
    :goto_1
    const/16 v2, 0x28

    .line 129
    .line 130
    if-ge v1, v2, :cond_4

    .line 131
    .line 132
    iget-object v2, v15, Lcom/zalexdev/stryker/wifi/Wifi;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_4

    .line 139
    .line 140
    iget-object v2, v15, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 141
    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v4, "/handshakenow-01.csv"

    .line 151
    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v2, v3}, Ll4/l;->c(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_2

    .line 164
    .line 165
    const-string v1, ""

    .line 166
    .line 167
    filled-new-array {v1}, [Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v22

    .line 171
    new-instance v1, Ljava/util/Timer;

    .line 172
    .line 173
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v11, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    move-object v9, v1

    .line 184
    check-cast v9, Ljava/util/Timer;

    .line 185
    .line 186
    new-instance v11, Lo4/h0;

    .line 187
    .line 188
    move-object v1, v11

    .line 189
    move-object v2, v15

    .line 190
    move-object v3, v12

    .line 191
    move-object/from16 v4, v22

    .line 192
    .line 193
    move-object v5, v13

    .line 194
    move-object v6, v14

    .line 195
    move-object v7, v10

    .line 196
    move-object/from16 v8, v17

    .line 197
    .line 198
    invoke-direct/range {v1 .. v8}, Lo4/h0;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;[Z)V

    .line 199
    .line 200
    .line 201
    const-wide/16 v4, 0x0

    .line 202
    .line 203
    const-wide/16 v6, 0x9c4

    .line 204
    .line 205
    move-object v2, v9

    .line 206
    move-object v3, v11

    .line 207
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 208
    .line 209
    .line 210
    iget-object v1, v15, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 211
    .line 212
    invoke-virtual {v1}, Ll4/l;->y()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-nez v0, :cond_1

    .line 221
    .line 222
    iget-object v0, v15, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 223
    .line 224
    iget-object v0, v0, Ll4/l;->e:Ll4/m;

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ll4/m;->c(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    iget-object v0, v15, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 230
    .line 231
    invoke-virtual {v0}, Ll4/l;->y()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    :cond_1
    new-instance v0, Lv3/e;

    .line 236
    .line 237
    iget-object v2, v15, Lcom/zalexdev/stryker/wifi/Wifi;->s:Landroidx/fragment/app/a0;

    .line 238
    .line 239
    iget-object v3, v15, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    .line 240
    .line 241
    const-string v4, "mdk4 "

    .line 242
    .line 243
    const-string v5, " d"

    .line 244
    .line 245
    invoke-static {v4, v1, v5}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v20

    .line 249
    const/16 v21, 0x1

    .line 250
    .line 251
    const/16 v23, 0x3

    .line 252
    .line 253
    move-object/from16 v16, v0

    .line 254
    .line 255
    move-object/from16 v17, v15

    .line 256
    .line 257
    move-object/from16 v18, v2

    .line 258
    .line 259
    move-object/from16 v19, v3

    .line 260
    .line 261
    invoke-direct/range {v16 .. v23}, Lv3/e;-><init>(Ljava/lang/Object;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Object;I)V

    .line 262
    .line 263
    .line 264
    iput-object v0, v15, Lcom/zalexdev/stryker/wifi/Wifi;->B:Ll4/c;

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_2
    iget-object v2, v15, Lcom/zalexdev/stryker/wifi/Wifi;->C:Lo4/f0;

    .line 268
    .line 269
    if-eqz v2, :cond_3

    .line 270
    .line 271
    iget-boolean v2, v2, Ll4/c;->n:Z

    .line 272
    .line 273
    if-nez v2, :cond_3

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_3
    const-wide/16 v2, 0x1f4

    .line 277
    .line 278
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .line 280
    .line 281
    add-int/lit8 v1, v1, 0x1

    .line 282
    .line 283
    goto/16 :goto_1

    .line 284
    .line 285
    :catch_0
    :cond_4
    :goto_2
    if-eqz v16, :cond_5

    .line 286
    .line 287
    new-instance v0, Lo4/k;

    .line 288
    .line 289
    const/4 v1, 0x4

    .line 290
    invoke-direct {v0, v10, v1}, Lo4/k;-><init>(Landroid/widget/TextView;I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v15, v0}, Lcom/zalexdev/stryker/wifi/Wifi;->f(Ljava/lang/Runnable;)V

    .line 294
    .line 295
    .line 296
    :cond_5
    :goto_3
    return-void
.end method
