.class public final Lr3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static j:Landroid/app/Activity;

.field public static k:Landroid/content/Context;

.field public static l:Ljava/lang/Process;

.field public static m:Ll4/l;


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Ljava/io/InputStream;

.field public final c:Lu3/g;

.field public final d:Ljava/lang/Thread;

.field public final e:Ljava/lang/String;

.field public f:Ls3/t;

.field public volatile g:Z

.field public h:Ljava/util/ArrayList;

.field public final synthetic i:Lcom/zalexdev/stryker/localnetwork/LocalMain;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/localnetwork/LocalMain;Landroidx/fragment/app/a0;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr3/v;->i:Lcom/zalexdev/stryker/localnetwork/LocalMain;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lr3/v;->h:Ljava/util/ArrayList;

    .line 12
    .line 13
    sput-object p2, Lr3/v;->j:Landroid/app/Activity;

    .line 14
    .line 15
    sput-object p3, Lr3/v;->k:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p4, p0, Lr3/v;->e:Ljava/lang/String;

    .line 18
    .line 19
    new-instance p1, Ll4/l;

    .line 20
    .line 21
    invoke-direct {p1, p3}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    sput-object p1, Lr3/v;->m:Ll4/l;

    .line 25
    .line 26
    invoke-static {p1}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    sget-object p1, Lr3/v;->m:Ll4/l;

    .line 33
    .line 34
    invoke-virtual {p1}, Ll4/l;->w()Ljava/lang/Process;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sput-object p1, Lr3/v;->l:Ljava/lang/Process;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lr3/v;->a:Ljava/io/InputStream;

    .line 45
    .line 46
    sget-object p1, Lr3/v;->l:Ljava/lang/Process;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lr3/v;->b:Ljava/io/InputStream;

    .line 53
    .line 54
    sget-object p1, Lr3/v;->l:Ljava/lang/Process;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 57
    .line 58
    .line 59
    :cond_0
    new-instance p1, Lu3/g;

    .line 60
    .line 61
    invoke-direct {p1}, Lu3/g;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lr3/v;->c:Lu3/g;

    .line 65
    .line 66
    new-instance p1, Lt3/a;

    .line 67
    .line 68
    const/4 p3, 0x0

    .line 69
    invoke-direct {p1, p0, p3}, Lt3/a;-><init>(Lr3/v;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Ljava/lang/Thread;

    .line 76
    .line 77
    new-instance p2, Lt3/a;

    .line 78
    .line 79
    const/4 p3, 0x1

    .line 80
    invoke-direct {p2, p0, p3}, Lt3/a;-><init>(Lr3/v;I)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lr3/v;->d:Ljava/lang/Thread;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public static b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/zalexdev/stryker/custom/Device;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/zalexdev/stryker/custom/Device;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    move v4, v3

    .line 14
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-ge v3, v5, :cond_7

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Ljava/lang/String;

    .line 25
    .line 26
    const-string v6, "\\s+"

    .line 27
    .line 28
    const-string v7, " "

    .line 29
    .line 30
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const-string v8, "*"

    .line 35
    .line 36
    const-string v9, ""

    .line 37
    .line 38
    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const-string v8, "STARTEDARPSCAN"

    .line 43
    .line 44
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    const/4 v10, 0x1

    .line 49
    if-eqz v8, :cond_0

    .line 50
    .line 51
    move v4, v10

    .line 52
    :cond_0
    const-string v8, "((\\w{2}:){5}\\w{2})"

    .line 53
    .line 54
    if-nez v4, :cond_3

    .line 55
    .line 56
    const-string v6, "Nmap scan report for "

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_1

    .line 63
    .line 64
    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v1, v5}, Lcom/zalexdev/stryker/custom/Device;->setIp(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_1
    const-string v6, "MAC Address"

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_6

    .line 80
    .line 81
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_2

    .line 94
    .line 95
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 103
    .line 104
    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v1, v6}, Lcom/zalexdev/stryker/custom/Device;->setMac(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-static {v5}, Lt3/g;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v1, v5}, Lcom/zalexdev/stryker/custom/Device;->setVendor(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    new-instance v1, Lcom/zalexdev/stryker/custom/Device;

    .line 122
    .line 123
    invoke-direct {v1}, Lcom/zalexdev/stryker/custom/Device;-><init>()V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_6

    .line 148
    .line 149
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    aget-object v6, v5, v2

    .line 154
    .line 155
    const-string v7, "."

    .line 156
    .line 157
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-eqz v6, :cond_6

    .line 162
    .line 163
    aget-object v6, v5, v2

    .line 164
    .line 165
    invoke-virtual {v1, v6}, Lcom/zalexdev/stryker/custom/Device;->setIp(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    aget-object v5, v5, v10

    .line 169
    .line 170
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 171
    .line 172
    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v1, v5}, Lcom/zalexdev/stryker/custom/Device;->setMac(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    sget-object v5, Lr3/v;->m:Ll4/l;

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Device;->getMac()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v5, v6}, Ll4/l;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v1, v5}, Lcom/zalexdev/stryker/custom/Device;->setVendor(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-eqz v6, :cond_5

    .line 201
    .line 202
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    check-cast v6, Lcom/zalexdev/stryker/custom/Device;

    .line 207
    .line 208
    invoke-virtual {v6}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-eqz v6, :cond_4

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    new-instance v1, Lcom/zalexdev/stryker/custom/Device;

    .line 227
    .line 228
    invoke-direct {v1}, Lcom/zalexdev/stryker/custom/Device;-><init>()V

    .line 229
    .line 230
    .line 231
    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_7
    new-instance p0, Le0/b;

    .line 236
    .line 237
    const/16 v1, 0xa

    .line 238
    .line 239
    invoke-direct {p0, v1}, Le0/b;-><init>(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 243
    .line 244
    .line 245
    return-object v0
.end method

.method public static g(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/Device;
    .locals 10

    .line 1
    new-instance v0, Lcom/zalexdev/stryker/custom/Device;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/zalexdev/stryker/custom/Device;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/custom/Device;->setIp(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/custom/Device;->setShim(Z)V

    .line 16
    .line 17
    .line 18
    move v2, p1

    .line 19
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ge v2, v3, :cond_8

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .line 31
    const-string v4, " "

    .line 32
    .line 33
    const-string v5, "\\s+"

    .line 34
    .line 35
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "*"

    .line 40
    .line 41
    const-string v6, ""

    .line 42
    .line 43
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "/tcp"

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    const-string v8, "\\\\x([A-Z]|[0-9])([A-Z]|[0-9])"

    .line 54
    .line 55
    if-eqz v7, :cond_0

    .line 56
    .line 57
    new-instance v7, Lcom/zalexdev/stryker/custom/Port;

    .line 58
    .line 59
    invoke-direct {v7}, Lcom/zalexdev/stryker/custom/Port;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const-string v4, "open"

    .line 67
    .line 68
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const-string v4, "filtered"

    .line 73
    .line 74
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const-string v4, "[0-9]+"

    .line 83
    .line 84
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eqz v8, :cond_7

    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v7, v4}, Lcom/zalexdev/stryker/custom/Port;->setPortNumber(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v3}, Lcom/zalexdev/stryker/custom/Port;->setPortName(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :cond_0
    const-string v4, "banner"

    .line 122
    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_3

    .line 128
    .line 129
    const-string v4, "banner:"

    .line 130
    .line 131
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    const-string v4, "|"

    .line 136
    .line 137
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    const-string v5, "_"

    .line 142
    .line 143
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    add-int/lit8 v7, v2, 0x1

    .line 152
    .line 153
    :try_start_0
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    check-cast v9, Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-eqz v9, :cond_1

    .line 164
    .line 165
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    check-cast v7, Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    :cond_1
    add-int/lit8 v7, v2, 0x2

    .line 183
    .line 184
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    check-cast v9, Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v9

    .line 194
    if-eqz v9, :cond_2

    .line 195
    .line 196
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    check-cast v7, Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .line 212
    .line 213
    :catch_0
    :cond_2
    const/4 v4, 0x1

    .line 214
    invoke-static {v1, v4}, Landroid/support/v4/media/session/a;->j(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    check-cast v4, Lcom/zalexdev/stryker/custom/Port;

    .line 219
    .line 220
    invoke-virtual {v4, v3}, Lcom/zalexdev/stryker/custom/Port;->setBanner(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_3
    const-string v4, "MAC Address"

    .line 225
    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    if-eqz v4, :cond_5

    .line 231
    .line 232
    const-string v4, "((\\w{2}:){5}\\w{2})"

    .line 233
    .line 234
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-eqz v5, :cond_4

    .line 247
    .line 248
    invoke-virtual {v4, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 256
    .line 257
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-virtual {v0, v4}, Lcom/zalexdev/stryker/custom/Device;->setMac(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :cond_4
    invoke-static {v3}, Lt3/g;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v0, v3}, Lcom/zalexdev/stryker/custom/Device;->setVendor(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_5
    const-string v4, "Running:"

    .line 273
    .line 274
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    if-eqz v4, :cond_6

    .line 279
    .line 280
    const-string v4, "Running: "

    .line 281
    .line 282
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    const-string v4, "Microsoft"

    .line 287
    .line 288
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    :goto_1
    invoke-virtual {v0, v3}, Lcom/zalexdev/stryker/custom/Device;->setOs(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_6
    const-string v4, "No exact matches"

    .line 297
    .line 298
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    if-eqz v3, :cond_7

    .line 303
    .line 304
    const-string v3, "Unknown"

    .line 305
    .line 306
    goto :goto_1

    .line 307
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 308
    .line 309
    goto/16 :goto_0

    .line 310
    .line 311
    :cond_8
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/custom/Device;->setPorts(Ljava/util/ArrayList;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, p0}, Lcom/zalexdev/stryker/custom/Device;->setNmapoutput(Ljava/util/ArrayList;)V

    .line 315
    .line 316
    .line 317
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/zalexdev/stryker/custom/Device;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lr3/v;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/zalexdev/stryker/custom/Device;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    :goto_0
    return p1
.end method

.method public final c(Lcom/zalexdev/stryker/custom/Device;)V
    .locals 2

    .line 1
    sget v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->A:I

    .line 2
    .line 3
    iget-object v0, p0, Lr3/v;->i:Lcom/zalexdev/stryker/localnetwork/LocalMain;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->w:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object p1, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->v:Lr3/t;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->w:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/k0;->notifyItemInserted(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->h()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->l()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final d(Lcom/zalexdev/stryker/custom/Device;I)V
    .locals 2

    .line 1
    sget v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->A:I

    .line 2
    .line 3
    iget-object v0, p0, Lr3/v;->i:Lcom/zalexdev/stryker/localnetwork/LocalMain;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-ltz p2, :cond_1

    .line 13
    .line 14
    :try_start_0
    iget-object v1, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->w:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ge p2, v1, :cond_1

    .line 21
    .line 22
    iget-object v1, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->w:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object p1, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->v:Lr3/t;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr3/v;->i:Lcom/zalexdev/stryker/localnetwork/LocalMain;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->x:Z

    .line 5
    .line 6
    sget-object v2, Lr3/v;->m:Ll4/l;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const-string v3, "lan_last_scanning"

    .line 11
    .line 12
    invoke-virtual {v2, v3, v1}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->d:Lcom/zalexdev/stryker/MainActivity;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v2, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->w:Ljava/util/ArrayList;

    .line 20
    .line 21
    iput-object v2, v1, Lcom/zalexdev/stryker/MainActivity;->h:Ljava/util/ArrayList;

    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->k()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    invoke-virtual {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->m()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->h()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final f(I)V
    .locals 3

    .line 1
    sget v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->A:I

    .line 2
    .line 3
    iget-object v0, p0, Lr3/v;->i:Lcom/zalexdev/stryker/localnetwork/LocalMain;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/16 v1, 0x64

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-gt p1, v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 18
    .line 19
    invoke-virtual {v1, p1, v2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v1, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 26
    .line 27
    .line 28
    :goto_0
    const/16 v1, 0x6d

    .line 29
    .line 30
    if-le p1, v1, :cond_2

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->x:Z

    .line 34
    .line 35
    sget-object v1, Lr3/v;->m:Ll4/l;

    .line 36
    .line 37
    const-string v2, "lan_last_scanning"

    .line 38
    .line 39
    invoke-virtual {v1, v2, p1}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 43
    .line 44
    const/16 v2, 0x8

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->m()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->l()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->h()V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lr3/v;->g:Z

    .line 3
    .line 4
    iget-object v1, p0, Lr3/v;->f:Ls3/t;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v2, v1, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ls3/t;->x()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v1, Ls3/t;->G:Ljava/lang/Thread;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lr3/v;->f:Ls3/t;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lr3/v;->d:Ljava/lang/Thread;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method
