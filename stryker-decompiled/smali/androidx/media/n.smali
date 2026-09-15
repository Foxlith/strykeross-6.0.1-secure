.class public final Landroidx/media/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/n;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Landroidx/fragment/app/n;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/n;Landroidx/fragment/app/n;Ljava/lang/String;Landroid/os/Bundle;Lb/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p6, p0, Landroidx/media/n;->a:I

    iput-object p1, p0, Landroidx/media/n;->f:Landroidx/fragment/app/n;

    iput-object p2, p0, Landroidx/media/n;->b:Landroidx/fragment/app/n;

    iput-object p3, p0, Landroidx/media/n;->c:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media/n;->d:Landroid/os/Bundle;

    iput-object p5, p0, Landroidx/media/n;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/n;Landroidx/fragment/app/n;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media/n;->a:I

    iput-object p1, p0, Landroidx/media/n;->f:Landroidx/fragment/app/n;

    iput-object p2, p0, Landroidx/media/n;->b:Landroidx/fragment/app/n;

    iput-object p3, p0, Landroidx/media/n;->c:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media/n;->e:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/media/n;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-object v1, p0, Landroidx/media/n;->d:Landroid/os/Bundle;

    .line 3
    .line 4
    iget v2, p0, Landroidx/media/n;->a:I

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/media/n;->e:Ljava/lang/Object;

    .line 7
    .line 8
    const-string v4, "MBServiceCompat"

    .line 9
    .line 10
    iget-object v5, p0, Landroidx/media/n;->c:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    iget-object v7, p0, Landroidx/media/n;->f:Landroidx/fragment/app/n;

    .line 14
    .line 15
    iget-object v8, p0, Landroidx/media/n;->b:Landroidx/fragment/app/n;

    .line 16
    .line 17
    packed-switch v2, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v8}, Landroidx/fragment/app/n;->b()Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v8, v7, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v8, Landroidx/media/MediaBrowserServiceCompat;

    .line 27
    .line 28
    iget-object v8, v8, Landroidx/media/MediaBrowserServiceCompat;->b:Ln/b;

    .line 29
    .line 30
    invoke-virtual {v8, v2, v6}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroidx/media/c;

    .line 35
    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v1, "addSubscription for callback that isn\'t registered id="

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v4, v7, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v4, Landroidx/media/MediaBrowserServiceCompat;

    .line 59
    .line 60
    check-cast v3, Landroid/os/IBinder;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v6, v2, Landroidx/media/c;->c:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    check-cast v7, Ljava/util/List;

    .line 72
    .line 73
    if-nez v7, :cond_1

    .line 74
    .line 75
    new-instance v7, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-eqz v9, :cond_6

    .line 89
    .line 90
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    check-cast v9, Lg0/c;

    .line 95
    .line 96
    iget-object v10, v9, Lg0/c;->a:Ljava/lang/Object;

    .line 97
    .line 98
    if-ne v3, v10, :cond_2

    .line 99
    .line 100
    iget-object v9, v9, Lg0/c;->b:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v9, Landroid/os/Bundle;

    .line 103
    .line 104
    if-ne v1, v9, :cond_3

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    const-string v10, "android.media.browse.extra.PAGE_SIZE"

    .line 108
    .line 109
    const-string v11, "android.media.browse.extra.PAGE"

    .line 110
    .line 111
    if-nez v1, :cond_4

    .line 112
    .line 113
    invoke-virtual {v9, v11, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    if-ne v11, v0, :cond_2

    .line 118
    .line 119
    invoke-virtual {v9, v10, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-ne v9, v0, :cond_2

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    if-nez v9, :cond_5

    .line 127
    .line 128
    invoke-virtual {v1, v11, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-ne v9, v0, :cond_2

    .line 133
    .line 134
    invoke-virtual {v1, v10, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    if-ne v9, v0, :cond_2

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_5
    invoke-virtual {v1, v11, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    invoke-virtual {v9, v11, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    if-ne v12, v11, :cond_2

    .line 150
    .line 151
    invoke-virtual {v1, v10, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    invoke-virtual {v9, v10, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-ne v11, v9, :cond_2

    .line 160
    .line 161
    :goto_0
    return-void

    .line 162
    :cond_6
    new-instance v0, Lg0/c;

    .line 163
    .line 164
    invoke-direct {v0, v3, v1}, Lg0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    if-nez v1, :cond_7

    .line 174
    .line 175
    invoke-virtual {v4}, Landroidx/media/MediaBrowserServiceCompat;->b()V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_7
    invoke-virtual {v4}, Landroidx/media/MediaBrowserServiceCompat;->b()V

    .line 180
    .line 181
    .line 182
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 183
    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v3, "onLoadChildren must call detach() or sendResult() before returning for package="

    .line 187
    .line 188
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v2, v2, Landroidx/media/c;->a:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v2, " id="

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v0

    .line 212
    :pswitch_0
    invoke-virtual {v8}, Landroidx/fragment/app/n;->b()Landroid/os/IBinder;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    iget-object v8, v7, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v8, Landroidx/media/MediaBrowserServiceCompat;

    .line 219
    .line 220
    iget-object v8, v8, Landroidx/media/MediaBrowserServiceCompat;->b:Ln/b;

    .line 221
    .line 222
    invoke-virtual {v8, v2, v6}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    check-cast v2, Landroidx/media/c;

    .line 227
    .line 228
    if-nez v2, :cond_8

    .line 229
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v2, "sendCustomAction for callback that isn\'t registered action="

    .line 233
    .line 234
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v2, ", extras="

    .line 241
    .line 242
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_8
    iget-object v1, v7, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 259
    .line 260
    check-cast v3, Lb/e;

    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3, v0, v6}, Lb/e;->c(ILandroid/os/Bundle;)V

    .line 266
    .line 267
    .line 268
    :goto_2
    return-void

    .line 269
    :pswitch_1
    invoke-virtual {v8}, Landroidx/fragment/app/n;->b()Landroid/os/IBinder;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    iget-object v1, v7, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 276
    .line 277
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->b:Ln/b;

    .line 278
    .line 279
    invoke-virtual {v1, v0, v6}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Landroidx/media/c;

    .line 284
    .line 285
    if-nez v0, :cond_9

    .line 286
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string v1, "search for callback that isn\'t registered query="

    .line 290
    .line 291
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_9
    iget-object v0, v7, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 308
    .line 309
    check-cast v3, Lb/e;

    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    new-instance v0, Landroidx/media/a;

    .line 315
    .line 316
    const/4 v1, 0x1

    .line 317
    invoke-direct {v0, v5, v3, v1}, Landroidx/media/a;-><init>(Ljava/lang/String;Lb/e;I)V

    .line 318
    .line 319
    .line 320
    const/4 v1, 0x4

    .line 321
    iput v1, v0, Landroidx/media/j;->c:I

    .line 322
    .line 323
    invoke-virtual {v0}, Landroidx/media/j;->c()V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Landroidx/media/j;->a()Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-eqz v0, :cond_a

    .line 331
    .line 332
    :goto_3
    return-void

    .line 333
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 334
    .line 335
    const-string v1, "onSearch must call detach() or sendResult() before returning for query="

    .line 336
    .line 337
    invoke-static {v1, v5}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw v0

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
