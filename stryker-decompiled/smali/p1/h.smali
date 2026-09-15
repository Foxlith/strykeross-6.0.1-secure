.class public final Lp1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Lp1/j;


# direct methods
.method public synthetic constructor <init>(Lp1/j;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lp1/h;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lp1/h;->b:Lp1/j;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lp1/h;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lp1/h;->b:Lp1/j;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lp1/j;->c()V

    .line 21
    .line 22
    .line 23
    iget-object v3, v0, Lp1/j;->g:Ljava/util/ArrayList;

    .line 24
    .line 25
    monitor-enter v3

    .line 26
    :try_start_0
    iget-object v4, v0, Lp1/j;->h:Landroid/content/Intent;

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget-object v5, v0, Lp1/j;->h:Landroid/content/Intent;

    .line 35
    .line 36
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v4, v0, Lp1/j;->g:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/content/Intent;

    .line 49
    .line 50
    iget-object v4, v0, Lp1/j;->h:Landroid/content/Intent;

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    iput-object v2, v0, Lp1/j;->h:Landroid/content/Intent;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_2

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v1, "Dequeue-d command is not the first."

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_1
    :goto_0
    iget-object v2, v0, Lp1/j;->b:Ly1/b;

    .line 73
    .line 74
    iget-object v2, v2, Ly1/b;->a:Lw1/o;

    .line 75
    .line 76
    iget-object v4, v0, Lp1/j;->f:Lp1/c;

    .line 77
    .line 78
    iget-object v5, v4, Lp1/c;->c:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    iget-object v4, v4, Lp1/c;->b:Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    xor-int/2addr v4, v1

    .line 88
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 89
    if-nez v4, :cond_2

    .line 90
    .line 91
    :try_start_2
    iget-object v4, v0, Lp1/j;->g:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_2

    .line 98
    .line 99
    iget-object v4, v2, Lw1/o;->d:Ljava/lang/Object;

    .line 100
    .line 101
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :try_start_3
    iget-object v2, v2, Lw1/o;->a:Ljava/util/ArrayDeque;

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    xor-int/2addr v1, v2

    .line 109
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    if-nez v1, :cond_2

    .line 111
    .line 112
    :try_start_4
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    iget-object v0, v0, Lp1/j;->i:Lp1/i;

    .line 120
    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    check-cast v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catchall_1
    move-exception v0

    .line 130
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 131
    :try_start_6
    throw v0

    .line 132
    :cond_2
    iget-object v1, v0, Lp1/j;->g:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-nez v1, :cond_3

    .line 139
    .line 140
    invoke-virtual {v0}, Lp1/j;->d()V

    .line 141
    .line 142
    .line 143
    :cond_3
    :goto_1
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 144
    return-void

    .line 145
    :catchall_2
    move-exception v0

    .line 146
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 147
    :try_start_8
    throw v0

    .line 148
    :goto_2
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 149
    throw v0

    .line 150
    :pswitch_0
    iget-object v0, p0, Lp1/h;->b:Lp1/j;

    .line 151
    .line 152
    iget-object v0, v0, Lp1/j;->g:Ljava/util/ArrayList;

    .line 153
    .line 154
    monitor-enter v0

    .line 155
    :try_start_9
    iget-object v3, p0, Lp1/h;->b:Lp1/j;

    .line 156
    .line 157
    iget-object v4, v3, Lp1/j;->g:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Landroid/content/Intent;

    .line 164
    .line 165
    iput-object v4, v3, Lp1/j;->h:Landroid/content/Intent;

    .line 166
    .line 167
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 168
    iget-object v0, p0, Lp1/h;->b:Lp1/j;

    .line 169
    .line 170
    iget-object v0, v0, Lp1/j;->h:Landroid/content/Intent;

    .line 171
    .line 172
    if-eqz v0, :cond_4

    .line 173
    .line 174
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v3, p0, Lp1/h;->b:Lp1/j;

    .line 179
    .line 180
    iget-object v3, v3, Lp1/j;->h:Landroid/content/Intent;

    .line 181
    .line 182
    const-string v4, "KEY_START_ID"

    .line 183
    .line 184
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    sget-object v4, Lp1/j;->j:Ljava/lang/String;

    .line 193
    .line 194
    iget-object v4, p0, Lp1/h;->b:Lp1/j;

    .line 195
    .line 196
    iget-object v4, v4, Lp1/j;->h:Landroid/content/Intent;

    .line 197
    .line 198
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    iget-object v3, p0, Lp1/h;->b:Lp1/j;

    .line 205
    .line 206
    iget-object v3, v3, Lp1/j;->a:Landroid/content/Context;

    .line 207
    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v0, " ("

    .line 217
    .line 218
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v0, ")"

    .line 225
    .line 226
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v3, v0}, Lw1/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    :try_start_a
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 248
    .line 249
    .line 250
    iget-object v3, p0, Lp1/h;->b:Lp1/j;

    .line 251
    .line 252
    iget-object v4, v3, Lp1/j;->f:Lp1/c;

    .line 253
    .line 254
    iget-object v5, v3, Lp1/j;->h:Landroid/content/Intent;

    .line 255
    .line 256
    invoke-virtual {v4, v5, v2, v3}, Lp1/c;->a(Landroid/content/Intent;ILp1/j;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 257
    .line 258
    .line 259
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lp1/h;->b:Lp1/j;

    .line 273
    .line 274
    iget-object v2, v0, Lp1/j;->b:Ly1/b;

    .line 275
    .line 276
    iget-object v2, v2, Ly1/b;->c:Ly1/a;

    .line 277
    .line 278
    new-instance v3, Lp1/h;

    .line 279
    .line 280
    invoke-direct {v3, v0, v1}, Lp1/h;-><init>(Lp1/j;I)V

    .line 281
    .line 282
    .line 283
    :goto_3
    invoke-virtual {v2, v3}, Ly1/a;->execute(Ljava/lang/Runnable;)V

    .line 284
    .line 285
    .line 286
    goto :goto_4

    .line 287
    :catchall_3
    move-exception v2

    .line 288
    :try_start_b
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    sget-object v4, Lp1/j;->j:Ljava/lang/String;

    .line 293
    .line 294
    const-string v5, "Unexpected error in onHandleIntent"

    .line 295
    .line 296
    invoke-virtual {v3, v4, v5, v2}, Lm1/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 297
    .line 298
    .line 299
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 310
    .line 311
    .line 312
    iget-object v0, p0, Lp1/h;->b:Lp1/j;

    .line 313
    .line 314
    iget-object v2, v0, Lp1/j;->b:Ly1/b;

    .line 315
    .line 316
    iget-object v2, v2, Ly1/b;->c:Ly1/a;

    .line 317
    .line 318
    new-instance v3, Lp1/h;

    .line 319
    .line 320
    invoke-direct {v3, v0, v1}, Lp1/h;-><init>(Lp1/j;I)V

    .line 321
    .line 322
    .line 323
    goto :goto_3

    .line 324
    :catchall_4
    move-exception v2

    .line 325
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    sget-object v4, Lp1/j;->j:Ljava/lang/String;

    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 338
    .line 339
    .line 340
    iget-object v0, p0, Lp1/h;->b:Lp1/j;

    .line 341
    .line 342
    iget-object v3, v0, Lp1/j;->b:Ly1/b;

    .line 343
    .line 344
    iget-object v3, v3, Ly1/b;->c:Ly1/a;

    .line 345
    .line 346
    new-instance v4, Lp1/h;

    .line 347
    .line 348
    invoke-direct {v4, v0, v1}, Lp1/h;-><init>(Lp1/j;I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3, v4}, Ly1/a;->execute(Ljava/lang/Runnable;)V

    .line 352
    .line 353
    .line 354
    throw v2

    .line 355
    :cond_4
    :goto_4
    return-void

    .line 356
    :catchall_5
    move-exception v1

    .line 357
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 358
    throw v1

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
