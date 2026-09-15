.class public Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Process;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "NmapReportGenerator"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const-string v0, "192.168.1.1"

    iput-object v0, p0, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->c:I

    iput-boolean v0, p0, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->d:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    new-instance v0, Lv/z;

    .line 2
    .line 3
    const-string v1, "NmapReporter"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lv/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lv/z;->s:Landroid/app/Notification;

    .line 9
    .line 10
    const v2, 0x7f0800c9

    .line 11
    .line 12
    .line 13
    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Report for "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, v0, Lv/z;->e:Ljava/lang/CharSequence;

    .line 36
    .line 37
    const-string v1, "Scanning is done! Please check report in folder!"

    .line 38
    .line 39
    invoke-static {v1}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, v0, Lv/z;->f:Ljava/lang/CharSequence;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    iput v1, v0, Lv/z;->i:I

    .line 47
    .line 48
    const/4 v1, -0x1

    .line 49
    invoke-virtual {v0, v1}, Lv/z;->d(I)V

    .line 50
    .line 51
    .line 52
    const/16 v1, 0x10

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lv/z;->e(I)V

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x8

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lv/z;->e(I)V

    .line 60
    .line 61
    .line 62
    const-string v1, "notification"

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/app/NotificationManager;

    .line 69
    .line 70
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    .line 72
    const/16 v3, 0x1a

    .line 73
    .line 74
    if-lt v2, v3, :cond_0

    .line 75
    .line 76
    invoke-static {}, Lq1/a;->c()Landroid/app/NotificationChannel;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v1, v2}, Lc3/a;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    const/16 v2, 0xc8

    .line 84
    .line 85
    invoke-virtual {v0}, Lv/z;->a()Landroid/app/Notification;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lv/z;

    .line 6
    .line 7
    const-string v1, "NmapReporter"

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lv/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lv/z;->s:Landroid/app/Notification;

    .line 13
    .line 14
    const v2, 0x7f0800d0

    .line 15
    .line 16
    .line 17
    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Error with scanning "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lv/z;->e:Ljava/lang/CharSequence;

    .line 40
    .line 41
    const-string v1, "App was closed by android doze mode!"

    .line 42
    .line 43
    invoke-static {v1}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, v0, Lv/z;->f:Ljava/lang/CharSequence;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    iput v1, v0, Lv/z;->i:I

    .line 51
    .line 52
    const/16 v1, 0x10

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lv/z;->e(I)V

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x8

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lv/z;->e(I)V

    .line 60
    .line 61
    .line 62
    const-string v1, "notification"

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/app/NotificationManager;

    .line 69
    .line 70
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    .line 72
    const/16 v3, 0x1a

    .line 73
    .line 74
    if-lt v2, v3, :cond_0

    .line 75
    .line 76
    invoke-static {}, Lq1/a;->c()Landroid/app/NotificationChannel;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v1, v2}, Lc3/a;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    const/16 v2, 0x64

    .line 84
    .line 85
    invoke-virtual {v0}, Lv/z;->a()Landroid/app/Notification;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    iget v2, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->c:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    add-int/2addr v2, v3

    .line 11
    iput v2, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->c:I

    .line 12
    .line 13
    const-string v2, "ip"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->a:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Lv/z;

    .line 22
    .line 23
    const-string v2, "NmapReporter"

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lv/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v0, Lv/z;->s:Landroid/app/Notification;

    .line 29
    .line 30
    const v4, 0x7f08009b

    .line 31
    .line 32
    .line 33
    iput v4, v2, Landroid/app/Notification;->icon:I

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v4, "Scanning "

    .line 38
    .line 39
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v4, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iput-object v2, v0, Lv/z;->e:Ljava/lang/CharSequence;

    .line 56
    .line 57
    const-string v2, "Please wait..."

    .line 58
    .line 59
    invoke-static {v2}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iput-object v2, v0, Lv/z;->f:Ljava/lang/CharSequence;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    iput v2, v0, Lv/z;->i:I

    .line 67
    .line 68
    new-instance v4, Lv/y;

    .line 69
    .line 70
    invoke-direct {v4}, Lv/y;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v6, "Launching nmap on "

    .line 76
    .line 77
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v6, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->a:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v6, "..."

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-static {v5}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    iput-object v5, v4, Lv/y;->e:Ljava/lang/Object;

    .line 99
    .line 100
    invoke-virtual {v0, v4}, Lv/z;->g(Lv/y;)V

    .line 101
    .line 102
    .line 103
    const/16 v4, 0x10

    .line 104
    .line 105
    invoke-virtual {v0, v4}, Lv/z;->e(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2, v2, v3}, Lv/z;->f(IIZ)V

    .line 109
    .line 110
    .line 111
    const/4 v4, 0x2

    .line 112
    invoke-virtual {v0, v4}, Lv/z;->e(I)V

    .line 113
    .line 114
    .line 115
    const/16 v4, 0x8

    .line 116
    .line 117
    invoke-virtual {v0, v4}, Lv/z;->e(I)V

    .line 118
    .line 119
    .line 120
    const-string v4, "notification"

    .line 121
    .line 122
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Landroid/app/NotificationManager;

    .line 127
    .line 128
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 129
    .line 130
    const/16 v7, 0x1a

    .line 131
    .line 132
    if-lt v6, v7, :cond_0

    .line 133
    .line 134
    invoke-static {}, Lq1/a;->c()Landroid/app/NotificationChannel;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-static {v5, v6}, Lc3/a;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 139
    .line 140
    .line 141
    :cond_0
    iget v6, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->c:I

    .line 142
    .line 143
    invoke-virtual {v0}, Lv/z;->a()Landroid/app/Notification;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 148
    .line 149
    .line 150
    const-string v5, "\n"

    .line 151
    .line 152
    const-string v6, " -A --script=vuln --stats-every 1s -Pn\'\n"

    .line 153
    .line 154
    const-string v7, "/data/data/com.zalexdev.stryker/files/chroot_exec \'nmap "

    .line 155
    .line 156
    iput-boolean v3, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->d:Z

    .line 157
    .line 158
    new-instance v3, Ll4/l;

    .line 159
    .line 160
    invoke-direct {v3, v1}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v3}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    const/16 v9, 0x64

    .line 168
    .line 169
    const-string v10, ""

    .line 170
    .line 171
    const-string v11, "%"

    .line 172
    .line 173
    const-string v12, "[0-9]*\\.[0-9]+%"

    .line 174
    .line 175
    const-string v13, "elapsed"

    .line 176
    .line 177
    const-string v14, "done"

    .line 178
    .line 179
    if-eqz v8, :cond_7

    .line 180
    .line 181
    const-string v5, "nmap "

    .line 182
    .line 183
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    check-cast v4, Landroid/app/NotificationManager;

    .line 188
    .line 189
    new-instance v6, Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .line 193
    .line 194
    const/4 v7, 0x0

    .line 195
    :try_start_0
    iget-object v3, v3, Ll4/l;->c:Landroid/content/Context;

    .line 196
    .line 197
    invoke-static {v3}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v5, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->a:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v5, " -A --script=vuln --stats-every 1s -Pn"

    .line 212
    .line 213
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-virtual {v3, v5}, Lu2/h;->t(Ljava/lang/String;)Lu2/b;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    :goto_0
    iget-object v3, v7, Lu2/b;->c:Ljava/io/BufferedReader;

    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    if-eqz v3, :cond_4

    .line 231
    .line 232
    const-string v5, "__STRYKER_EXIT__"

    .line 233
    .line 234
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-eqz v5, :cond_1

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_1
    new-instance v5, Lv/y;

    .line 242
    .line 243
    invoke-direct {v5}, Lv/y;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-static {v3}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 247
    .line 248
    .line 249
    move-result-object v8

    .line 250
    iput-object v8, v5, Lv/y;->e:Ljava/lang/Object;

    .line 251
    .line 252
    invoke-virtual {v0, v5}, Lv/z;->g(Lv/y;)V

    .line 253
    .line 254
    .line 255
    iget v5, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->c:I

    .line 256
    .line 257
    invoke-virtual {v0}, Lv/z;->a()Landroid/app/Notification;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    invoke-virtual {v4, v5, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-nez v5, :cond_2

    .line 269
    .line 270
    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-nez v5, :cond_2

    .line 275
    .line 276
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    goto :goto_1

    .line 280
    :catchall_0
    move-exception v0

    .line 281
    goto :goto_3

    .line 282
    :cond_2
    :goto_1
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    if-eqz v5, :cond_3

    .line 295
    .line 296
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-virtual {v3, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 305
    .line 306
    .line 307
    move-result-wide v2

    .line 308
    double-to-int v2, v2

    .line 309
    const/4 v3, 0x0

    .line 310
    invoke-virtual {v0, v9, v2, v3}, Lv/z;->f(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    .line 312
    .line 313
    :cond_3
    const/4 v2, 0x0

    .line 314
    goto :goto_0

    .line 315
    :cond_4
    :goto_2
    invoke-virtual {v7}, Lu2/b;->a()V

    .line 316
    .line 317
    .line 318
    :cond_5
    const/4 v0, 0x0

    .line 319
    goto :goto_4

    .line 320
    :goto_3
    if-eqz v7, :cond_6

    .line 321
    .line 322
    invoke-virtual {v7}, Lu2/b;->a()V

    .line 323
    .line 324
    .line 325
    :cond_6
    throw v0

    .line 326
    :catch_0
    if-eqz v7, :cond_5

    .line 327
    .line 328
    goto :goto_2

    .line 329
    :goto_4
    iput-boolean v0, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->d:Z

    .line 330
    .line 331
    iget-object v0, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->a:Ljava/lang/String;

    .line 332
    .line 333
    invoke-static {v6, v0}, Lu3/g;->c(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget v0, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->c:I

    .line 337
    .line 338
    invoke-virtual {v4, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->a()V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_7

    .line 345
    .line 346
    :cond_7
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    check-cast v2, Landroid/app/NotificationManager;

    .line 351
    .line 352
    new-instance v3, Ljava/util/ArrayList;

    .line 353
    .line 354
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .line 356
    .line 357
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    const-string v8, "su -mm"

    .line 362
    .line 363
    invoke-virtual {v4, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    iput-object v4, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->b:Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 368
    .line 369
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    iget-object v8, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->b:Ljava/lang/Process;

    .line 374
    .line 375
    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    iget-object v15, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->b:Ljava/lang/Process;

    .line 380
    .line 381
    invoke-virtual {v15}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 382
    .line 383
    .line 384
    move-result-object v15

    .line 385
    new-instance v9, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    iget-object v7, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->a:Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    .line 403
    .line 404
    .line 405
    move-result-object v6

    .line 406
    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 427
    .line 428
    .line 429
    new-instance v4, Ljava/io/BufferedReader;

    .line 430
    .line 431
    new-instance v5, Ljava/io/InputStreamReader;

    .line 432
    .line 433
    invoke-direct {v5, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 434
    .line 435
    .line 436
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 437
    .line 438
    .line 439
    :goto_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    if-eqz v5, :cond_a

    .line 444
    .line 445
    new-instance v6, Lv/y;

    .line 446
    .line 447
    invoke-direct {v6}, Lv/y;-><init>()V

    .line 448
    .line 449
    .line 450
    invoke-static {v5}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 451
    .line 452
    .line 453
    move-result-object v7

    .line 454
    iput-object v7, v6, Lv/y;->e:Ljava/lang/Object;

    .line 455
    .line 456
    invoke-virtual {v0, v6}, Lv/z;->g(Lv/y;)V

    .line 457
    .line 458
    .line 459
    iget v6, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->c:I

    .line 460
    .line 461
    invoke-virtual {v0}, Lv/z;->a()Landroid/app/Notification;

    .line 462
    .line 463
    .line 464
    move-result-object v7

    .line 465
    invoke-virtual {v2, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 469
    .line 470
    .line 471
    move-result v6

    .line 472
    if-nez v6, :cond_8

    .line 473
    .line 474
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 475
    .line 476
    .line 477
    move-result v6

    .line 478
    if-nez v6, :cond_8

    .line 479
    .line 480
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    :cond_8
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 484
    .line 485
    .line 486
    move-result-object v6

    .line 487
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 492
    .line 493
    .line 494
    move-result v6

    .line 495
    if-eqz v6, :cond_9

    .line 496
    .line 497
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v5

    .line 501
    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 506
    .line 507
    .line 508
    move-result-wide v5

    .line 509
    double-to-int v5, v5

    .line 510
    const/4 v6, 0x0

    .line 511
    const/16 v7, 0x64

    .line 512
    .line 513
    invoke-virtual {v0, v7, v5, v6}, Lv/z;->f(IIZ)V

    .line 514
    .line 515
    .line 516
    goto :goto_5

    .line 517
    :cond_9
    const/16 v7, 0x64

    .line 518
    .line 519
    goto :goto_5

    .line 520
    :cond_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 521
    .line 522
    .line 523
    new-instance v0, Ljava/io/BufferedReader;

    .line 524
    .line 525
    new-instance v4, Ljava/io/InputStreamReader;

    .line 526
    .line 527
    invoke-direct {v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 528
    .line 529
    .line 530
    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 531
    .line 532
    .line 533
    :goto_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v4

    .line 537
    if-eqz v4, :cond_b

    .line 538
    .line 539
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    goto :goto_6

    .line 543
    :cond_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 544
    .line 545
    .line 546
    iget-object v0, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->b:Ljava/lang/Process;

    .line 547
    .line 548
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 549
    .line 550
    .line 551
    iget-object v0, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->b:Ljava/lang/Process;

    .line 552
    .line 553
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 554
    .line 555
    .line 556
    const/4 v0, 0x0

    .line 557
    iput-boolean v0, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->d:Z

    .line 558
    .line 559
    iget-object v0, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->a:Ljava/lang/String;

    .line 560
    .line 561
    invoke-static {v3, v0}, Lu3/g;->c(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    iget v0, v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->c:I

    .line 565
    .line 566
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 567
    .line 568
    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 570
    .line 571
    .line 572
    :catch_1
    :cond_c
    :goto_7
    return-void
.end method
