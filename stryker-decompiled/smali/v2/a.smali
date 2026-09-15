.class public final Lv2/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ll4/l;

.field public final d:Lu3/g;

.field public e:Lo2/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ll4/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lv2/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lv2/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lv2/a;->c:Ll4/l;

    new-instance p1, Lu3/g;

    invoke-direct {p1}, Lu3/g;-><init>()V

    iput-object p1, p0, Lv2/a;->d:Lu3/g;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lu3/g;->e(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    const-string p1, "\'\n"

    .line 4
    .line 5
    const-string v0, "/data/data/com.zalexdev.stryker/files/chroot_exec  \'"

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lv2/a;->c:Ll4/l;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    iget-object v5, p0, Lv2/a;->b:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v6, p0, Lv2/a;->d:Lu3/g;

    .line 29
    .line 30
    iget-object v7, p0, Lv2/a;->a:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v8, 0x2

    .line 33
    const/4 v9, 0x1

    .line 34
    const/4 v10, 0x0

    .line 35
    if-eqz v4, :cond_6

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    :try_start_0
    iget-object v0, v3, Ll4/l;->c:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v0}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v5}, Lu2/h;->t(Ljava/lang/String;)Lu2/b;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_0
    :goto_0
    iget-object v0, p1, Lu2/b;->c:Ljava/io/BufferedReader;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    const-string v2, "__STRYKER_EXIT__"

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    move v10, v9

    .line 72
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v8, v0}, Lu3/g;->e(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lv2/a;->e:Lo2/d;

    .line 79
    .line 80
    if-eqz v2, :cond_0

    .line 81
    .line 82
    filled-new-array {v0}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lu2/b;->a()V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :goto_2
    if-eqz p1, :cond_4

    .line 97
    .line 98
    invoke-virtual {p1}, Lu2/b;->a()V

    .line 99
    .line 100
    .line 101
    :cond_4
    throw v0

    .line 102
    :catch_0
    if-eqz p1, :cond_5

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catch_1
    :cond_5
    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    goto/16 :goto_6

    .line 110
    .line 111
    :cond_6
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    const-string v4, "su -mm"

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    new-instance v13, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v13, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 153
    .line 154
    .line 155
    const-string p1, "\n"

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 168
    .line 169
    .line 170
    new-instance p1, Ljava/io/BufferedReader;

    .line 171
    .line 172
    new-instance v0, Ljava/io/InputStreamReader;

    .line 173
    .line 174
    invoke-direct {v0, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 175
    .line 176
    .line 177
    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 178
    .line 179
    .line 180
    :cond_7
    :goto_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    if-eqz v0, :cond_9

    .line 185
    .line 186
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_8

    .line 191
    .line 192
    move v10, v9

    .line 193
    :cond_8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v8, v0}, Lu3/g;->e(ILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object v4, p0, Lv2/a;->e:Lo2/d;

    .line 200
    .line 201
    if-eqz v4, :cond_7

    .line 202
    .line 203
    filled-new-array {v0}, [Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_9
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 212
    .line 213
    .line 214
    new-instance p1, Ljava/io/BufferedReader;

    .line 215
    .line 216
    new-instance v0, Ljava/io/InputStreamReader;

    .line 217
    .line 218
    invoke-direct {v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 219
    .line 220
    .line 221
    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 222
    .line 223
    .line 224
    :cond_a
    :goto_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-eqz v0, :cond_c

    .line 229
    .line 230
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_b

    .line 235
    .line 236
    move v10, v9

    .line 237
    :cond_b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    const/4 v1, 0x3

    .line 241
    invoke-virtual {v6, v1, v0}, Lu3/g;->e(ILjava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object v1, p0, Lv2/a;->e:Lo2/d;

    .line 245
    .line 246
    if-eqz v1, :cond_a

    .line 247
    .line 248
    filled-new-array {v0}, [Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_c
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 263
    .line 264
    .line 265
    goto/16 :goto_3

    .line 266
    .line 267
    :goto_6
    return-object p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

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
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv2/a;->e:Lo2/d;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    array-length v1, p1

    .line 13
    if-lez v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    aget-object p1, p1, v1

    .line 17
    .line 18
    iget-object v1, v0, Lo2/d;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lr3/t;

    .line 21
    .line 22
    iget-object v2, v0, Lo2/d;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Landroid/widget/TextView;

    .line 25
    .line 26
    iget-object v0, v0, Lo2/d;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroid/widget/ScrollView;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, "\n"

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance p1, Ln3/d;

    .line 57
    .line 58
    const/4 v1, 0x2

    .line 59
    invoke-direct {p1, v0, v1}, Ln3/d;-><init>(Landroid/widget/ScrollView;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void
.end method
