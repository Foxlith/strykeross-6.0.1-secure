.class public final synthetic Ll4/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll4/o;


# direct methods
.method public synthetic constructor <init>(Ll4/o;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ll4/n;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ll4/n;->b:Ll4/o;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Ll4/n;->a:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, p0, Ll4/n;->b:Ll4/o;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, v4, Ll4/o;->h:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v4, v0}, Ll4/o;->a(Ljava/util/ArrayList;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, v4, Ll4/o;->h:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ll4/o;->a(Ljava/util/ArrayList;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v5, "Rootless command: "

    .line 26
    .line 27
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v5, v4, Ll4/o;->e:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v6, v4, Ll4/o;->i:Lu3/g;

    .line 40
    .line 41
    iget-object v7, v4, Ll4/o;->f:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v6, v3, v0, v7}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    iget-object v0, v4, Ll4/o;->j:Ll4/l;

    .line 47
    .line 48
    iget-object v0, v0, Ll4/l;->c:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {v0}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v5}, Lu2/h;->t(Ljava/lang/String;)Lu2/b;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, v4, Ll4/o;->l:Lu2/b;

    .line 59
    .line 60
    :goto_0
    iget-object v0, v4, Ll4/o;->l:Lu2/b;

    .line 61
    .line 62
    iget-object v0, v0, Lu2/b;->c:Ljava/io/BufferedReader;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    const-string v3, "__STRYKER_EXIT__"

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_0

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v6, v2, v0, v7}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v3, v4, Ll4/o;->h:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto :goto_5

    .line 94
    :catch_0
    move-exception v0

    .line 95
    goto :goto_3

    .line 96
    :cond_1
    :goto_1
    iget-object v0, v4, Ll4/o;->l:Lu2/b;

    .line 97
    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    :goto_2
    invoke-virtual {v0}, Lu2/b;->a()V

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    iget-object v0, v4, Ll4/o;->l:Lu2/b;

    .line 108
    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    :goto_4
    new-instance v0, Ll4/n;

    .line 113
    .line 114
    invoke-direct {v0, v4, v1}, Ll4/n;-><init>(Ll4/o;I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v4, Ll4/o;->a:Landroid/app/Activity;

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :goto_5
    iget-object v1, v4, Ll4/o;->l:Lu2/b;

    .line 124
    .line 125
    if-eqz v1, :cond_3

    .line 126
    .line 127
    invoke-virtual {v1}, Lu2/b;->a()V

    .line 128
    .line 129
    .line 130
    :cond_3
    throw v0

    .line 131
    :pswitch_2
    iget-object v0, v4, Ll4/o;->h:Ljava/util/ArrayList;

    .line 132
    .line 133
    const-string v5, "/data/data/com.zalexdev.stryker/files/chroot_exec  \'"

    .line 134
    .line 135
    iget-boolean v6, v4, Ll4/o;->k:Z

    .line 136
    .line 137
    iget-object v7, v4, Ll4/o;->e:Ljava/lang/String;

    .line 138
    .line 139
    if-eqz v6, :cond_4

    .line 140
    .line 141
    goto :goto_8

    .line 142
    :cond_4
    :try_start_2
    iget-boolean v6, v4, Ll4/o;->g:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 143
    .line 144
    iget-object v8, v4, Ll4/o;->d:Ljava/io/OutputStream;

    .line 145
    .line 146
    if-eqz v6, :cond_5

    .line 147
    .line 148
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v5, "\'\nexit\n"

    .line 157
    .line 158
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v8, v5}, Ljava/io/OutputStream;->write([B)V

    .line 170
    .line 171
    .line 172
    goto :goto_6

    .line 173
    :catch_1
    move-exception v5

    .line 174
    goto :goto_7

    .line 175
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v6, "\nexit\n"

    .line 184
    .line 185
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {v8, v5}, Ljava/io/OutputStream;->write([B)V

    .line 197
    .line 198
    .line 199
    :goto_6
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 200
    .line 201
    .line 202
    goto :goto_8

    .line 203
    :goto_7
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    .line 205
    .line 206
    :goto_8
    const-string v5, "Command: "

    .line 207
    .line 208
    invoke-static {v5, v7}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    iget-object v6, v4, Ll4/o;->i:Lu3/g;

    .line 213
    .line 214
    iget-object v7, v4, Ll4/o;->f:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v6, v3, v5, v7}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    new-instance v3, Ljava/io/BufferedReader;

    .line 220
    .line 221
    new-instance v5, Ljava/io/InputStreamReader;

    .line 222
    .line 223
    iget-object v8, v4, Ll4/o;->b:Ljava/io/InputStream;

    .line 224
    .line 225
    invoke-direct {v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 226
    .line 227
    .line 228
    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 229
    .line 230
    .line 231
    :goto_9
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    if-eqz v5, :cond_6

    .line 236
    .line 237
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-virtual {v6, v2, v5, v7}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 245
    .line 246
    .line 247
    goto :goto_9

    .line 248
    :catch_2
    move-exception v3

    .line 249
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    .line 251
    .line 252
    :cond_6
    new-instance v3, Ljava/io/BufferedReader;

    .line 253
    .line 254
    new-instance v5, Ljava/io/InputStreamReader;

    .line 255
    .line 256
    iget-object v8, v4, Ll4/o;->c:Ljava/io/InputStream;

    .line 257
    .line 258
    invoke-direct {v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 259
    .line 260
    .line 261
    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 262
    .line 263
    .line 264
    :goto_a
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    if-eqz v5, :cond_7

    .line 269
    .line 270
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    invoke-virtual {v6, v1, v5, v7}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    new-instance v8, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    const-string v9, "[E] "

    .line 283
    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 295
    .line 296
    .line 297
    goto :goto_a

    .line 298
    :catch_3
    move-exception v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 300
    .line 301
    .line 302
    :cond_7
    :try_start_6
    sget-object v0, Ll4/o;->m:Ljava/lang/Process;

    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    .line 305
    .line 306
    .line 307
    goto :goto_b

    .line 308
    :catch_4
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 310
    .line 311
    .line 312
    :goto_b
    new-instance v0, Ll4/n;

    .line 313
    .line 314
    invoke-direct {v0, v4, v2}, Ll4/n;-><init>(Ll4/o;I)V

    .line 315
    .line 316
    .line 317
    iget-object v1, v4, Ll4/o;->a:Landroid/app/Activity;

    .line 318
    .line 319
    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
