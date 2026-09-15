.class public final Lc3/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ll4/l;

.field public final e:Landroid/app/Activity;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/content/Context;

.field public final i:I

.field public j:Ljava/lang/Process;

.field public k:Lu2/b;

.field public final l:Lu3/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ll4/l;Landroid/app/Activity;Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "/data/data/com.zalexdev.stryker/files/chroot_exec "

    iput-object v0, p0, Lc3/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lc3/b;->d:Ll4/l;

    iput-object p1, p0, Lc3/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lc3/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lc3/b;->e:Landroid/app/Activity;

    iput-object p6, p0, Lc3/b;->f:Landroid/widget/TextView;

    iput-object p7, p0, Lc3/b;->g:Landroid/widget/TextView;

    iput-object p5, p0, Lc3/b;->h:Landroid/content/Context;

    iput p8, p0, Lc3/b;->i:I

    new-instance p1, Lu3/g;

    invoke-direct {p1}, Lu3/g;-><init>()V

    iput-object p1, p0, Lc3/b;->l:Lu3/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 8

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lc3/b;->h:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Lcom/zalexdev/stryker/MainActivity;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v3, 0x1f

    .line 13
    .line 14
    if-lt v2, v3, :cond_0

    .line 15
    .line 16
    const/high16 v2, 0x4000000

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/high16 v2, 0x8000000

    .line 20
    .line 21
    :goto_0
    const/4 v3, 0x0

    .line 22
    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Lc3/a;->b()Landroid/app/NotificationChannel;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v4, Lv/z;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-direct {v4, v1, v5}, Lv/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/16 v5, 0x10

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Lv/z;->e(I)V

    .line 39
    .line 40
    .line 41
    const/4 v5, -0x1

    .line 42
    invoke-virtual {v4, v5}, Lv/z;->d(I)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    iget-object v7, v4, Lv/z;->s:Landroid/app/Notification;

    .line 50
    .line 51
    iput-wide v5, v7, Landroid/app/Notification;->when:J

    .line 52
    .line 53
    const v5, 0x7f08009b

    .line 54
    .line 55
    .line 56
    iput v5, v7, Landroid/app/Notification;->icon:I

    .line 57
    .line 58
    const-string v5, "Brute"

    .line 59
    .line 60
    invoke-static {v5}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    iput-object v5, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 65
    .line 66
    invoke-static {p3}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    iput-object p3, v4, Lv/z;->e:Ljava/lang/CharSequence;

    .line 71
    .line 72
    invoke-static {p1}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, v4, Lv/z;->f:Ljava/lang/CharSequence;

    .line 77
    .line 78
    const-string p1, "BruteForce"

    .line 79
    .line 80
    iput-object p1, v4, Lv/z;->q:Ljava/lang/String;

    .line 81
    .line 82
    const/4 p1, 0x5

    .line 83
    invoke-virtual {v4, p1}, Lv/z;->d(I)V

    .line 84
    .line 85
    .line 86
    iput-object v0, v4, Lv/z;->g:Landroid/app/PendingIntent;

    .line 87
    .line 88
    invoke-virtual {v4, p4, p2, v3}, Lv/z;->f(IIZ)V

    .line 89
    .line 90
    .line 91
    const-string p1, "Info"

    .line 92
    .line 93
    invoke-static {p1}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, v4, Lv/z;->h:Ljava/lang/CharSequence;

    .line 98
    .line 99
    const-string p1, "notification"

    .line 100
    .line 101
    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroid/app/NotificationManager;

    .line 106
    .line 107
    invoke-static {p1, v2}, Lc3/a;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 108
    .line 109
    .line 110
    iget p2, p0, Lc3/b;->i:I

    .line 111
    .line 112
    invoke-virtual {v4}, Lv/z;->a()Landroid/app/Notification;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, [Ljava/lang/Void;

    .line 6
    .line 7
    iget-object v1, v0, Lc3/b;->d:Ll4/l;

    .line 8
    .line 9
    const-string v2, " \'\n"

    .line 10
    .line 11
    const-string v3, "aircrack-ng -w/sdcard/Stryker/wordlists/"

    .line 12
    .line 13
    new-instance v4, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 14
    .line 15
    invoke-direct {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v5, v0, Lc3/b;->l:Lu3/g;

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    const-string v7, "Starting brute handshake"

    .line 22
    .line 23
    invoke-virtual {v5, v6, v7}, Lu3/g;->e(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 30
    .line 31
    .line 32
    move-result v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    iget-object v10, v0, Lc3/b;->b:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v11, v0, Lc3/b;->c:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v12, 0x4

    .line 38
    const-string v13, "Password found: "

    .line 39
    .line 40
    const-string v14, "Success"

    .line 41
    .line 42
    const-string v15, "\\[ (.*?)\\]"

    .line 43
    .line 44
    const-string v8, "KEY FOUND! [ "

    .line 45
    .line 46
    const/4 v7, 0x2

    .line 47
    const-string v6, " /sdcard/Stryker/captured/"

    .line 48
    .line 49
    if-eqz v9, :cond_4

    .line 50
    .line 51
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v3, " "

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v1, v1, Ll4/l;->c:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {v1}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1, v2}, Lu2/h;->t(Ljava/lang/String;)Lu2/b;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iput-object v1, v0, Lc3/b;->k:Lu2/b;

    .line 85
    .line 86
    iget-object v1, v1, Lu2/b;->c:Ljava/io/BufferedReader;

    .line 87
    .line 88
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    const-string v3, "__STRYKER_EXIT__"

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v5, v7, v2}, Lu3/g;->e(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    filled-new-array {v2}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-super {v0, v3}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    new-instance v6, Lw2/h;

    .line 114
    .line 115
    invoke-direct {v6, v0, v3, v12}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 116
    .line 117
    .line 118
    iget-object v3, v0, Lc3/b;->e:Landroid/app/Activity;

    .line 119
    .line 120
    invoke-virtual {v3, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_0

    .line 128
    .line 129
    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_2

    .line 142
    .line 143
    const/4 v3, 0x1

    .line 144
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v4, v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setPsk(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-virtual {v4, v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setOK(Ljava/lang/Boolean;)V

    .line 154
    .line 155
    .line 156
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 157
    .line 158
    const/16 v3, 0x1a

    .line 159
    .line 160
    if-lt v2, v3, :cond_0

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const/16 v3, 0x64

    .line 182
    .line 183
    invoke-virtual {v0, v14, v3, v2, v3}, Lc3/b;->a(Ljava/lang/String;ILjava/lang/String;I)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_3
    :goto_1
    iget-object v1, v0, Lc3/b;->k:Lu2/b;

    .line 188
    .line 189
    invoke-virtual {v1}, Lu2/b;->a()V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_5

    .line 193
    .line 194
    :cond_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    const-string v3, "su"

    .line 199
    .line 200
    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    iput-object v1, v0, Lc3/b;->j:Ljava/lang/Process;

    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    iget-object v3, v0, Lc3/b;->j:Ljava/lang/Process;

    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    iget-object v9, v0, Lc3/b;->j:Ljava/lang/Process;

    .line 217
    .line 218
    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    new-instance v12, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-object v7, v0, Lc3/b;->a:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v7, "\'aircrack-ng -w/sdcard/Stryker/wordlists/"

    .line 233
    .line 234
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 264
    .line 265
    .line 266
    new-instance v1, Ljava/io/BufferedReader;

    .line 267
    .line 268
    new-instance v2, Ljava/io/InputStreamReader;

    .line 269
    .line 270
    invoke-direct {v2, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 271
    .line 272
    .line 273
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 274
    .line 275
    .line 276
    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    if-eqz v2, :cond_7

    .line 281
    .line 282
    const/4 v6, 0x2

    .line 283
    invoke-virtual {v5, v6, v2}, Lu3/g;->e(ILjava/lang/String;)V

    .line 284
    .line 285
    .line 286
    filled-new-array {v2}, [Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    invoke-super {v0, v7}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    new-instance v9, Lw2/h;

    .line 294
    .line 295
    const/4 v10, 0x4

    .line 296
    invoke-direct {v9, v0, v7, v10}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 297
    .line 298
    .line 299
    iget-object v7, v0, Lc3/b;->e:Landroid/app/Activity;

    .line 300
    .line 301
    invoke-virtual {v7, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 305
    .line 306
    .line 307
    move-result v7

    .line 308
    if-eqz v7, :cond_5

    .line 309
    .line 310
    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    if-eqz v7, :cond_6

    .line 323
    .line 324
    const/4 v7, 0x1

    .line 325
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {v4, v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setPsk(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_6
    const/4 v7, 0x1

    .line 334
    :goto_3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 335
    .line 336
    invoke-virtual {v4, v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setOK(Ljava/lang/Boolean;)V

    .line 337
    .line 338
    .line 339
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 340
    .line 341
    const/16 v9, 0x1a

    .line 342
    .line 343
    if-lt v2, v9, :cond_5

    .line 344
    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    const/16 v9, 0x64

    .line 365
    .line 366
    invoke-virtual {v0, v14, v9, v2, v9}, Lc3/b;->a(Ljava/lang/String;ILjava/lang/String;I)V

    .line 367
    .line 368
    .line 369
    goto :goto_2

    .line 370
    :cond_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 371
    .line 372
    .line 373
    new-instance v1, Ljava/io/BufferedReader;

    .line 374
    .line 375
    new-instance v2, Ljava/io/InputStreamReader;

    .line 376
    .line 377
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 378
    .line 379
    .line 380
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 381
    .line 382
    .line 383
    :goto_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    if-eqz v2, :cond_8

    .line 388
    .line 389
    const/4 v3, 0x3

    .line 390
    invoke-virtual {v5, v3, v2}, Lu3/g;->e(ILjava/lang/String;)V

    .line 391
    .line 392
    .line 393
    goto :goto_4

    .line 394
    :cond_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 395
    .line 396
    .line 397
    iget-object v1, v0, Lc3/b;->j:Ljava/lang/Process;

    .line 398
    .line 399
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 400
    .line 401
    .line 402
    iget-object v1, v0, Lc3/b;->j:Ljava/lang/Process;

    .line 403
    .line 404
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 405
    .line 406
    .line 407
    :catch_0
    :goto_5
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getOK()Ljava/lang/Boolean;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-nez v1, :cond_9

    .line 416
    .line 417
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 418
    .line 419
    const/16 v2, 0x1a

    .line 420
    .line 421
    if-lt v1, v2, :cond_9

    .line 422
    .line 423
    const-string v1, "Failed"

    .line 424
    .line 425
    const-string v2, "Password Not Found"

    .line 426
    .line 427
    const/16 v3, 0x64

    .line 428
    .line 429
    invoke-virtual {v0, v1, v3, v2, v3}, Lc3/b;->a(Ljava/lang/String;ILjava/lang/String;I)V

    .line 430
    .line 431
    .line 432
    :cond_9
    return-object v4
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPreExecute()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method public final onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lw2/h;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lc3/b;->e:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
