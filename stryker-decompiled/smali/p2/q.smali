.class public final Lp2/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static i:Landroid/app/Activity;

.field public static j:Landroid/content/Context;

.field public static k:Ljava/lang/Process;

.field public static l:Ll4/l;


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Ljava/io/InputStream;

.field public final c:Ljava/io/OutputStream;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/ArrayList;

.field public g:Lu2/b;

.field public final synthetic h:Lp2/r;


# direct methods
.method public constructor <init>(Lp2/r;Landroidx/fragment/app/a0;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp2/q;->h:Lp2/r;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lp2/q;->f:Ljava/util/ArrayList;

    .line 12
    .line 13
    sput-object p2, Lp2/q;->i:Landroid/app/Activity;

    .line 14
    .line 15
    sput-object p3, Lp2/q;->j:Landroid/content/Context;

    .line 16
    .line 17
    new-instance p1, Ll4/l;

    .line 18
    .line 19
    invoke-direct {p1, p3}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    sput-object p1, Lp2/q;->l:Ll4/l;

    .line 23
    .line 24
    iput-object p4, p0, Lp2/q;->d:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    const-string p3, "shell"

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p2}, Lu3/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-nez p3, :cond_0

    .line 53
    .line 54
    const-string p3, "core"

    .line 55
    .line 56
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-nez p3, :cond_0

    .line 61
    .line 62
    move-object p3, p2

    .line 63
    :cond_1
    iput-object p3, p0, Lp2/q;->e:Ljava/lang/String;

    .line 64
    .line 65
    sget-object p1, Lp2/q;->l:Ll4/l;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    sget-object p2, Lp2/q;->l:Ll4/l;

    .line 77
    .line 78
    invoke-virtual {p2}, Ll4/l;->w()Ljava/lang/Process;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    sput-object p2, Lp2/q;->k:Ljava/lang/Process;

    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iput-object p2, p0, Lp2/q;->a:Ljava/io/InputStream;

    .line 89
    .line 90
    sget-object p2, Lp2/q;->k:Ljava/lang/Process;

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    iput-object p2, p0, Lp2/q;->b:Ljava/io/InputStream;

    .line 97
    .line 98
    sget-object p2, Lp2/q;->k:Ljava/lang/Process;

    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    iput-object p2, p0, Lp2/q;->c:Ljava/io/OutputStream;

    .line 105
    .line 106
    :cond_2
    const/4 p2, 0x0

    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    sget-object p1, Lp2/q;->j:Landroid/content/Context;

    .line 110
    .line 111
    if-eqz p1, :cond_3

    .line 112
    .line 113
    invoke-static {p1}, Lu3/e;->c(Landroid/content/Context;)Lu3/e;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    :cond_3
    new-instance p1, Ljava/lang/Thread;

    .line 118
    .line 119
    new-instance p3, Ll4/d;

    .line 120
    .line 121
    const/4 p4, 0x0

    .line 122
    invoke-direct {p3, p0, p2, p4}, Ll4/d;-><init>(Lp2/q;Lu3/e;I)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    sget-object p1, Lp2/q;->j:Landroid/content/Context;

    .line 133
    .line 134
    if-eqz p1, :cond_5

    .line 135
    .line 136
    invoke-static {p1}, Lu3/e;->c(Landroid/content/Context;)Lu3/e;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    :cond_5
    new-instance p1, Ljava/lang/Thread;

    .line 141
    .line 142
    new-instance p3, Ll4/d;

    .line 143
    .line 144
    const/4 p4, 0x1

    .line 145
    invoke-direct {p3, p0, p2, p4}, Ll4/d;-><init>(Lp2/q;Lu3/e;I)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 152
    .line 153
    .line 154
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lp2/q;->h:Lp2/r;

    .line 2
    .line 3
    iget-object v1, v0, Lp2/r;->m:Ll4/l;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v4, "/opt/exploitdb/searchsploit"

    .line 10
    .line 11
    filled-new-array {v4}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v1, v4}, Ll4/l;->M([Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    move v1, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v3

    .line 24
    :goto_0
    iput-boolean v3, v0, Lp2/r;->h:Z

    .line 25
    .line 26
    iput-boolean v2, v0, Lp2/r;->i:Z

    .line 27
    .line 28
    iput-boolean v1, v0, Lp2/r;->j:Z

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    invoke-virtual {v0, v5, v4}, Lp2/r;->b(II)V

    .line 35
    .line 36
    .line 37
    iput-boolean v3, v0, Lp2/r;->e:Z

    .line 38
    .line 39
    const/16 v5, 0x64

    .line 40
    .line 41
    iput v5, v0, Lp2/r;->f:I

    .line 42
    .line 43
    iget-object v6, v0, Lp2/r;->a:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance v7, Lp2/n;

    .line 46
    .line 47
    invoke-direct {v7, v0, v3, v5, v2}, Lp2/n;-><init>(Ljava/lang/Object;ZII)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    const v2, 0x7f130069

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lp2/r;->e(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Lp2/r;->c(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object v2, Ln2/e;->c:Ln2/e;

    .line 64
    .line 65
    const-string v3, "Searchsploit available"

    .line 66
    .line 67
    :goto_1
    invoke-virtual {v0, v2, v3}, Lp2/r;->a(Ln2/e;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    const v2, 0x7f13006a

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lp2/r;->e(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v2}, Lp2/r;->c(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object v2, Ln2/e;->e:Ln2/e;

    .line 82
    .line 83
    const-string v3, "Verification failed \u2014 searchsploit binary missing"

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :goto_2
    iget-object v2, v0, Lp2/r;->a:Landroid/os/Handler;

    .line 87
    .line 88
    new-instance v3, Lj2/g;

    .line 89
    .line 90
    invoke-direct {v3, v0, v1, v4}, Lj2/g;-><init>(Ljava/lang/Object;ZI)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lp2/q;->h:Lp2/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_8

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "__STRYKER_NO_GIT__"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sget-object v2, Ln2/e;->e:Ln2/e;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x3

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, v3, v4}, Lp2/r;->b(II)V

    .line 27
    .line 28
    .line 29
    const-string p1, "git is still missing after the package install \u2014 check the guest network and apt sources, then retry"

    .line 30
    .line 31
    :cond_1
    :goto_0
    invoke-virtual {v0, v2, p1}, Lp2/r;->a(Ln2/e;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_8

    .line 35
    .line 36
    :cond_2
    const-string v1, "Cloning into "

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v5, 0x2

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0, v3, v5}, Lp2/r;->b(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v5, v3}, Lp2/r;->b(II)V

    .line 49
    .line 50
    .line 51
    const v1, 0x7f130068

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lp2/r;->e(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lp2/r;->c(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v1, Ln2/e;->b:Ln2/e;

    .line 62
    .line 63
    :goto_1
    invoke-virtual {v0, v1, p1}, Lp2/r;->a(Ln2/e;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_8

    .line 67
    .line 68
    :cond_3
    const-string v1, "Receiving objects:"

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const-string v6, "Updating files:"

    .line 75
    .line 76
    if-nez v1, :cond_9

    .line 77
    .line 78
    const-string v1, "Resolving deltas:"

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_9

    .line 85
    .line 86
    const-string v1, "Compressing objects:"

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_9

    .line 93
    .line 94
    const-string v1, "remote: Counting objects:"

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_9

    .line 101
    .line 102
    const-string v1, "remote: Compressing objects:"

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_9

    .line 109
    .line 110
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_4
    const-string v1, "Get:"

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    sget-object v3, Ln2/e;->a:Ln2/e;

    .line 124
    .line 125
    if-nez v1, :cond_8

    .line 126
    .line 127
    const-string v1, "Preparing to unpack"

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_8

    .line 134
    .line 135
    const-string v1, "Unpacking "

    .line 136
    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    const-string v1, "Setting up "

    .line 145
    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_6

    .line 151
    .line 152
    invoke-virtual {v0, p1}, Lp2/r;->c(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    sget-object v1, Ln2/e;->c:Ln2/e;

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_6
    const-string v1, "fatal:"

    .line 159
    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_1

    .line 165
    .line 166
    const-string v1, "E: "

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_1

    .line 173
    .line 174
    const-string v1, "ERROR"

    .line 175
    .line 176
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_1

    .line 181
    .line 182
    const-string v1, "error:"

    .line 183
    .line 184
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_7

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-nez v1, :cond_e

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_8
    :goto_2
    invoke-virtual {v0, p1}, Lp2/r;->c(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :goto_3
    invoke-virtual {v0, v3, p1}, Lp2/r;->a(Ln2/e;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_8

    .line 206
    .line 207
    :cond_9
    :goto_4
    const/16 v1, 0x25

    .line 208
    .line 209
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    const/4 v2, 0x0

    .line 214
    if-gtz v1, :cond_a

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_a
    add-int/lit8 v7, v1, -0x1

    .line 218
    .line 219
    :goto_5
    if-lez v7, :cond_b

    .line 220
    .line 221
    add-int/lit8 v8, v7, -0x1

    .line 222
    .line 223
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    if-eqz v8, :cond_b

    .line 232
    .line 233
    add-int/lit8 v7, v7, -0x1

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_b
    :try_start_0
    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :catch_0
    :goto_6
    if-eqz v2, :cond_d

    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    const/4 v2, 0x0

    .line 259
    iput-boolean v2, v0, Lp2/r;->e:Z

    .line 260
    .line 261
    iput v1, v0, Lp2/r;->f:I

    .line 262
    .line 263
    iput-object p1, v0, Lp2/r;->g:Ljava/lang/CharSequence;

    .line 264
    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 266
    .line 267
    .line 268
    move-result-wide v7

    .line 269
    const/16 v2, 0x64

    .line 270
    .line 271
    if-ge v1, v2, :cond_c

    .line 272
    .line 273
    iget-wide v9, v0, Lp2/r;->b:J

    .line 274
    .line 275
    sub-long v9, v7, v9

    .line 276
    .line 277
    const-wide/16 v11, 0x64

    .line 278
    .line 279
    cmp-long v2, v9, v11

    .line 280
    .line 281
    if-gez v2, :cond_c

    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_c
    iput-wide v7, v0, Lp2/r;->b:J

    .line 285
    .line 286
    iget-object v2, v0, Lp2/r;->a:Landroid/os/Handler;

    .line 287
    .line 288
    new-instance v7, Lcom/stryker/terminal/component/session/b;

    .line 289
    .line 290
    invoke-direct {v7, v0, v1, p1, v3}, Lcom/stryker/terminal/component/session/b;-><init>(Ljava/lang/Object;ILjava/io/Serializable;I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    .line 295
    .line 296
    :cond_d
    :goto_7
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_e

    .line 301
    .line 302
    const-string v1, "100%"

    .line 303
    .line 304
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    if-eqz p1, :cond_e

    .line 309
    .line 310
    invoke-virtual {v0, v5, v5}, Lp2/r;->b(II)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v4, v3}, Lp2/r;->b(II)V

    .line 314
    .line 315
    .line 316
    const p1, 0x7f13006f

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, p1}, Lp2/r;->e(I)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-virtual {v0, p1}, Lp2/r;->c(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    :cond_e
    :goto_8
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lp2/q;->c:Ljava/io/OutputStream;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, "\n"

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lp2/q;->c:Ljava/io/OutputStream;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
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
    :goto_0
    return-void
.end method
