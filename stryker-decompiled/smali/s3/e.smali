.class public abstract Ls3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Z

.field public static volatile b:J

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^(\\d{1,5})/tcp\\s+open\\s+(\\S+)\\s*(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ls3/e;->c:Ljava/util/regex/Pattern;

    const-string v0, "([0-9A-Fa-f]{2}(?:[:-][0-9A-Fa-f]{2}){5})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ls3/e;->d:Ljava/util/regex/Pattern;

    const-string v0, "\\bOSs?:\\s*([^;]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ls3/e;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ls3/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    const v1, 0xffff

    .line 13
    .line 14
    .line 15
    if-gt p1, v1, :cond_0

    .line 16
    .line 17
    move v0, p1

    .line 18
    :catchall_0
    :cond_0
    const/4 p1, 0x0

    .line 19
    if-gtz v0, :cond_1

    .line 20
    .line 21
    return p1

    .line 22
    :cond_1
    if-nez p2, :cond_2

    .line 23
    .line 24
    const-string p2, ""

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :goto_0
    if-nez p3, :cond_3

    .line 32
    .line 33
    const-string p3, ""

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    :goto_1
    iget-object v1, p0, Ls3/q;->u:Ljava/util/List;

    .line 41
    .line 42
    monitor-enter v1

    .line 43
    move v2, p1

    .line 44
    :goto_2
    :try_start_1
    iget-object v3, p0, Ls3/q;->u:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-ge v2, v3, :cond_9

    .line 51
    .line 52
    iget-object v3, p0, Ls3/q;->u:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ls3/n;

    .line 59
    .line 60
    if-eqz v3, :cond_8

    .line 61
    .line 62
    iget v4, v3, Ls3/n;->a:I

    .line 63
    .line 64
    if-eq v4, v0, :cond_4

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_5

    .line 72
    .line 73
    const-string p0, "unknown"

    .line 74
    .line 75
    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-nez p0, :cond_5

    .line 80
    .line 81
    iput-object p2, v3, Ls3/n;->b:Ljava/lang/String;

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :catchall_1
    move-exception p0

    .line 85
    goto :goto_6

    .line 86
    :cond_5
    :goto_3
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-nez p0, :cond_7

    .line 91
    .line 92
    iget-object p0, v3, Ls3/n;->c:Ljava/lang/String;

    .line 93
    .line 94
    if-eqz p0, :cond_6

    .line 95
    .line 96
    iget-object p0, v3, Ls3/n;->c:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_7

    .line 103
    .line 104
    :cond_6
    iput-object p3, v3, Ls3/n;->c:Ljava/lang/String;

    .line 105
    .line 106
    :cond_7
    const/4 p1, 0x1

    .line 107
    goto :goto_5

    .line 108
    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_9
    :goto_5
    monitor-exit v1

    .line 112
    return p1

    .line 113
    :goto_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    throw p0
.end method

.method public static b(Ll4/l;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sget-boolean v3, Ls3/e;->a:Z

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    sget-wide v5, Ls3/e;->b:J

    .line 15
    .line 16
    sub-long v5, v1, v5

    .line 17
    .line 18
    const-wide/16 v7, 0x0

    .line 19
    .line 20
    cmp-long v3, v5, v7

    .line 21
    .line 22
    if-ltz v3, :cond_1

    .line 23
    .line 24
    sget-wide v5, Ls3/e;->b:J

    .line 25
    .line 26
    sub-long v5, v1, v5

    .line 27
    .line 28
    const-wide/32 v7, 0xea60

    .line 29
    .line 30
    .line 31
    cmp-long v3, v5, v7

    .line 32
    .line 33
    if-gez v3, :cond_1

    .line 34
    .line 35
    return v4

    .line 36
    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    sput-boolean v0, Ls3/e;->a:Z

    .line 43
    .line 44
    return v0

    .line 45
    :cond_2
    iget-object v3, p0, Ll4/l;->c:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v3}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_5

    .line 52
    .line 53
    invoke-virtual {v3}, Lu2/h;->n()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const-string v3, "nmap"

    .line 61
    .line 62
    invoke-virtual {p0, v3}, Ll4/l;->O(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_4

    .line 67
    .line 68
    sput-boolean v0, Ls3/e;->a:Z

    .line 69
    .line 70
    return v0

    .line 71
    :cond_4
    sput-wide v1, Ls3/e;->b:J

    .line 72
    .line 73
    sput-boolean v4, Ls3/e;->a:Z

    .line 74
    .line 75
    return v4

    .line 76
    :cond_5
    :goto_0
    sput-boolean v0, Ls3/e;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    return v0

    .line 79
    :catchall_0
    sput-boolean v0, Ls3/e;->a:Z

    .line 80
    .line 81
    return v0
.end method

.method public static c(Ll4/l;Ls3/q;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p1, Ls3/q;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lf/u0;->c(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p0}, Ls3/e;->b(Ll4/l;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p1, Ls3/q;->u:Ljava/util/List;

    .line 23
    .line 24
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    iget-object v2, p1, Ls3/q;->u:Ljava/util/List;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 31
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    move v3, v2

    .line 45
    move v4, v3

    .line 46
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-ge v3, v5, :cond_6

    .line 51
    .line 52
    const/16 v5, 0x28

    .line 53
    .line 54
    if-ge v4, v5, :cond_6

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Ls3/n;

    .line 61
    .line 62
    if-eqz v5, :cond_5

    .line 63
    .line 64
    iget v6, v5, Ls3/n;->a:I

    .line 65
    .line 66
    if-lez v6, :cond_5

    .line 67
    .line 68
    const v7, 0xffff

    .line 69
    .line 70
    .line 71
    if-le v6, v7, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-lez v6, :cond_4

    .line 79
    .line 80
    const/16 v6, 0x2c

    .line 81
    .line 82
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto/16 :goto_8

    .line 88
    .line 89
    :cond_4
    :goto_1
    iget v5, v5, Ls3/n;->a:I

    .line 90
    .line 91
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_6
    if-nez v4, :cond_7

    .line 100
    .line 101
    return-void

    .line 102
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v3, "nmap -Pn -sT -n -sV --version-light --max-retries 1 --host-timeout 40s -p "

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, " "

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v1, p1, Ls3/q;->a:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :try_start_3
    invoke-virtual {p0, v0}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 130
    .line 131
    .line 132
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    goto :goto_3

    .line 134
    :catchall_1
    move-exception v0

    .line 135
    :try_start_4
    sput-boolean v2, Ls3/e;->a:Z

    .line 136
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v3, "command failed: "

    .line 140
    .line 141
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {p0, v0}, Ls3/e;->d(Ll4/l;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_8

    .line 163
    .line 164
    return-void

    .line 165
    :cond_8
    move v1, v2

    .line 166
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-ge v2, v3, :cond_10

    .line 171
    .line 172
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    check-cast v3, Ljava/lang/String;

    .line 177
    .line 178
    if-nez v3, :cond_9

    .line 179
    .line 180
    goto/16 :goto_7

    .line 181
    .line 182
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_a

    .line 191
    .line 192
    goto/16 :goto_7

    .line 193
    .line 194
    :cond_a
    sget-object v4, Ls3/e;->c:Ljava/util/regex/Pattern;

    .line 195
    .line 196
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    const/4 v6, 0x1

    .line 205
    if-eqz v5, :cond_b

    .line 206
    .line 207
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    const/4 v5, 0x2

    .line 212
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    const/4 v7, 0x3

    .line 217
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-static {p1, v3, v5, v4}, Ls3/e;->a(Ls3/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_f

    .line 226
    .line 227
    :goto_5
    move v1, v6

    .line 228
    goto :goto_7

    .line 229
    :cond_b
    const-string v4, "Service Info:"

    .line 230
    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_e

    .line 236
    .line 237
    sget-object v4, Ls3/e;->e:Ljava/util/regex/Pattern;

    .line 238
    .line 239
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    if-eqz v4, :cond_f

    .line 248
    .line 249
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    if-nez v3, :cond_c

    .line 254
    .line 255
    const-string v3, ""

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    :goto_6
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-nez v4, :cond_f

    .line 267
    .line 268
    iget-object v4, p1, Ls3/q;->j:Ljava/lang/String;

    .line 269
    .line 270
    if-eqz v4, :cond_d

    .line 271
    .line 272
    iget-object v4, p1, Ls3/q;->j:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    if-eqz v4, :cond_f

    .line 279
    .line 280
    :cond_d
    iput-object v3, p1, Ls3/q;->j:Ljava/lang/String;

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_e
    const-string v4, "MAC Address:"

    .line 284
    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    if-eqz v4, :cond_f

    .line 290
    .line 291
    sget-object v4, Ls3/e;->d:Ljava/util/regex/Pattern;

    .line 292
    .line 293
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-eqz v4, :cond_f

    .line 302
    .line 303
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    const-string v3, "guest"

    .line 308
    .line 309
    invoke-virtual {p1, v1, v3}, Ls3/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_f
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 314
    .line 315
    goto/16 :goto_4

    .line 316
    .line 317
    :cond_10
    if-eqz v1, :cond_11

    .line 318
    .line 319
    const-string v0, "guest"

    .line 320
    .line 321
    invoke-virtual {p1, v0}, Ls3/q;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 322
    .line 323
    .line 324
    goto :goto_9

    .line 325
    :catchall_2
    move-exception p1

    .line 326
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 327
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 328
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string v1, "enrich failed: "

    .line 331
    .line 332
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    invoke-static {p0, p1}, Ls3/e;->d(Ll4/l;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    :cond_11
    :goto_9
    return-void
.end method

.method public static d(Ll4/l;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "["

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    iget-object p0, p0, Ll4/l;->f:Lu3/g;

    .line 9
    .line 10
    if-nez p0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "guest"

    .line 19
    .line 20
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, "] "

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v0, 0x3

    .line 42
    invoke-virtual {p0, v0, p1}, Lu3/g;->e(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method
