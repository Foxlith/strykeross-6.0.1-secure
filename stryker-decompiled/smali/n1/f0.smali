.class public final Ln1/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final s:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Lv1/p;

.field public e:Lm1/m;

.field public final f:Ly1/b;

.field public g:Lm1/l;

.field public final h:Lm1/b;

.field public final i:Lu1/a;

.field public final j:Landroidx/work/impl/WorkDatabase;

.field public final k:Lv1/r;

.field public final l:Lv1/c;

.field public final m:Ljava/util/List;

.field public n:Ljava/lang/String;

.field public final p:Lx1/k;

.field public final q:Lx1/k;

.field public volatile r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkerWrapper"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln1/f0;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ln1/e0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lm1/i;

    .line 5
    .line 6
    invoke-direct {v0}, Lm1/i;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ln1/f0;->g:Lm1/l;

    .line 10
    .line 11
    new-instance v0, Lx1/k;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ln1/f0;->p:Lx1/k;

    .line 17
    .line 18
    new-instance v0, Lx1/k;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ln1/f0;->q:Lx1/k;

    .line 24
    .line 25
    iget-object v0, p1, Ln1/e0;->a:Landroid/content/Context;

    .line 26
    .line 27
    iput-object v0, p0, Ln1/f0;->a:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v0, p1, Ln1/e0;->c:Ly1/b;

    .line 30
    .line 31
    iput-object v0, p0, Ln1/f0;->f:Ly1/b;

    .line 32
    .line 33
    iget-object v0, p1, Ln1/e0;->b:Lu1/a;

    .line 34
    .line 35
    iput-object v0, p0, Ln1/f0;->i:Lu1/a;

    .line 36
    .line 37
    iget-object v0, p1, Ln1/e0;->f:Lv1/p;

    .line 38
    .line 39
    iput-object v0, p0, Ln1/f0;->d:Lv1/p;

    .line 40
    .line 41
    iget-object v0, v0, Lv1/p;->a:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v0, p0, Ln1/f0;->b:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v0, p1, Ln1/e0;->g:Ljava/util/List;

    .line 46
    .line 47
    iput-object v0, p0, Ln1/f0;->c:Ljava/util/List;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Ln1/f0;->e:Lm1/m;

    .line 51
    .line 52
    iget-object v0, p1, Ln1/e0;->d:Lm1/b;

    .line 53
    .line 54
    iput-object v0, p0, Ln1/f0;->h:Lm1/b;

    .line 55
    .line 56
    iget-object v0, p1, Ln1/e0;->e:Landroidx/work/impl/WorkDatabase;

    .line 57
    .line 58
    iput-object v0, p0, Ln1/f0;->j:Landroidx/work/impl/WorkDatabase;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, p0, Ln1/f0;->k:Lv1/r;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->q()Lv1/c;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Ln1/f0;->l:Lv1/c;

    .line 71
    .line 72
    iget-object p1, p1, Ln1/e0;->h:Ljava/util/List;

    .line 73
    .line 74
    iput-object p1, p0, Ln1/f0;->m:Ljava/util/List;

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public final a(Lm1/l;)V
    .locals 11

    .line 1
    instance-of v0, p1, Lm1/k;

    .line 2
    .line 3
    iget-object v1, p0, Ln1/f0;->d:Lv1/p;

    .line 4
    .line 5
    sget-object v2, Ln1/f0;->s:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "Worker result SUCCESS for "

    .line 16
    .line 17
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Ln1/f0;->n:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v2, v0}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lv1/p;->d()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Ln1/f0;->d()V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Ln1/f0;->l:Lv1/c;

    .line 44
    .line 45
    iget-object v0, p0, Ln1/f0;->b:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v1, p0, Ln1/f0;->k:Lv1/r;

    .line 48
    .line 49
    iget-object v3, p0, Ln1/f0;->j:Landroidx/work/impl/WorkDatabase;

    .line 50
    .line 51
    invoke-virtual {v3}, Ly0/w;->c()V

    .line 52
    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    const/4 v5, 0x3

    .line 56
    :try_start_0
    invoke-virtual {v1, v5, v0}, Lv1/r;->m(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v5, p0, Ln1/f0;->g:Lm1/l;

    .line 60
    .line 61
    check-cast v5, Lm1/k;

    .line 62
    .line 63
    iget-object v5, v5, Lm1/k;->a:Lm1/e;

    .line 64
    .line 65
    invoke-virtual {v1, v0, v5}, Lv1/r;->l(Ljava/lang/String;Lm1/e;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v5

    .line 72
    invoke-virtual {p1, v0}, Lv1/c;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_2

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    check-cast v7, Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1, v7}, Lv1/r;->f(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    const/4 v9, 0x5

    .line 97
    if-ne v8, v9, :cond_1

    .line 98
    .line 99
    invoke-virtual {p1, v7}, Lv1/c;->c(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-eqz v8, :cond_1

    .line 104
    .line 105
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    new-instance v9, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v10, "Setting status to enqueued for "

    .line 115
    .line 116
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    invoke-virtual {v8, v2, v9}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const/4 v8, 0x1

    .line 130
    invoke-virtual {v1, v8, v7}, Lv1/r;->m(ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v7, v5, v6}, Lv1/r;->k(Ljava/lang/String;J)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :catchall_0
    move-exception p1

    .line 138
    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {v3}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Ly0/w;->k()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v4}, Ln1/f0;->e(Z)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :goto_1
    invoke-virtual {v3}, Ly0/w;->k()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v4}, Ln1/f0;->e(Z)V

    .line 153
    .line 154
    .line 155
    throw p1

    .line 156
    :cond_3
    instance-of p1, p1, Lm1/j;

    .line 157
    .line 158
    if-eqz p1, :cond_4

    .line 159
    .line 160
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v1, "Worker result RETRY for "

    .line 167
    .line 168
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Ln1/f0;->n:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p1, v2, v0}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Ln1/f0;->c()V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_4
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v3, "Worker result FAILURE for "

    .line 194
    .line 195
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v3, p0, Ln1/f0;->n:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p1, v2, v0}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Lv1/p;->d()Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_5

    .line 215
    .line 216
    invoke-virtual {p0}, Ln1/f0;->d()V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_5
    invoke-virtual {p0}, Ln1/f0;->g()V

    .line 221
    .line 222
    .line 223
    :goto_2
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ln1/f0;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Ln1/f0;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Ln1/f0;->j:Landroidx/work/impl/WorkDatabase;

    .line 8
    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {v2}, Ly0/w;->c()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Ln1/f0;->k:Lv1/r;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lv1/r;->f(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->u()Lv1/m;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3, v1}, Lv1/m;->b(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Ln1/f0;->e(Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v3, 0x2

    .line 37
    if-ne v0, v3, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Ln1/f0;->g:Lm1/l;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ln1/f0;->a(Lm1/l;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {v0}, Ll1/e;->a(I)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Ln1/f0;->c()V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ly0/w;->k()V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :goto_1
    invoke-virtual {v2}, Ly0/w;->k()V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_3
    :goto_2
    iget-object v0, p0, Ln1/f0;->c:Ljava/util/List;

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_4

    .line 78
    .line 79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ln1/r;

    .line 84
    .line 85
    invoke-interface {v4, v1}, Ln1/r;->a(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    iget-object v1, p0, Ln1/f0;->h:Lm1/b;

    .line 90
    .line 91
    invoke-static {v1, v2, v0}, Ln1/s;->a(Lm1/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 92
    .line 93
    .line 94
    :cond_5
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Ln1/f0;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Ln1/f0;->k:Lv1/r;

    .line 4
    .line 5
    iget-object v2, p0, Ln1/f0;->j:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    invoke-virtual {v2}, Ly0/w;->c()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    :try_start_0
    invoke-virtual {v1, v3, v0}, Lv1/r;->m(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    invoke-virtual {v1, v0, v4, v5}, Lv1/r;->k(Ljava/lang/String;J)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v4, -0x1

    .line 22
    .line 23
    invoke-virtual {v1, v0, v4, v5}, Lv1/r;->j(Ljava/lang/String;J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ly0/w;->k()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v3}, Ln1/f0;->e(Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    invoke-virtual {v2}, Ly0/w;->k()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v3}, Ln1/f0;->e(Z)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public final d()V
    .locals 8

    .line 1
    iget-object v0, p0, Ln1/f0;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Ln1/f0;->k:Lv1/r;

    .line 4
    .line 5
    iget-object v2, p0, Ln1/f0;->j:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    invoke-virtual {v2}, Ly0/w;->c()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    invoke-virtual {v1, v0, v4, v5}, Lv1/r;->k(Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-virtual {v1, v4, v0}, Lv1/r;->m(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v5, v1, Lv1/r;->a:Ly0/w;

    .line 23
    .line 24
    invoke-virtual {v5}, Ly0/w;->b()V

    .line 25
    .line 26
    .line 27
    iget-object v6, v1, Lv1/r;->j:Lv1/q;

    .line 28
    .line 29
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/d;->c()Lc1/h;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-interface {v7, v4}, Lc1/f;->h(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {v7, v4, v0}, Lc1/f;->d(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {v5}, Ly0/w;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :try_start_1
    invoke-interface {v7}, Lc1/h;->e()I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ly0/w;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 49
    .line 50
    .line 51
    :try_start_2
    invoke-virtual {v5}, Ly0/w;->k()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 55
    .line 56
    .line 57
    iget-object v5, v1, Lv1/r;->a:Ly0/w;

    .line 58
    .line 59
    invoke-virtual {v5}, Ly0/w;->b()V

    .line 60
    .line 61
    .line 62
    iget-object v6, v1, Lv1/r;->f:Lv1/q;

    .line 63
    .line 64
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/d;->c()Lc1/h;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    invoke-interface {v7, v4}, Lc1/f;->h(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-interface {v7, v4, v0}, Lc1/f;->d(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    invoke-virtual {v5}, Ly0/w;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .line 79
    .line 80
    :try_start_3
    invoke-interface {v7}, Lc1/h;->e()I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ly0/w;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    .line 85
    .line 86
    :try_start_4
    invoke-virtual {v5}, Ly0/w;->k()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 90
    .line 91
    .line 92
    const-wide/16 v4, -0x1

    .line 93
    .line 94
    invoke-virtual {v1, v0, v4, v5}, Lv1/r;->j(Ljava/lang/String;J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ly0/w;->o()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ly0/w;->k()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v3}, Ln1/f0;->e(Z)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto :goto_2

    .line 109
    :catchall_1
    move-exception v0

    .line 110
    :try_start_5
    invoke-virtual {v5}, Ly0/w;->k()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :catchall_2
    move-exception v0

    .line 118
    invoke-virtual {v5}, Ly0/w;->k()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 122
    .line 123
    .line 124
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    :goto_2
    invoke-virtual {v2}, Ly0/w;->k()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v3}, Ln1/f0;->e(Z)V

    .line 129
    .line 130
    .line 131
    throw v0
.end method

.method public final e(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Ln1/f0;->j:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly0/w;->c()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Ln1/f0;->j:Landroidx/work/impl/WorkDatabase;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v2, v1}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v0, v0, Lv1/r;->a:Ly0/w;

    .line 23
    .line 24
    invoke-virtual {v0}, Ly0/w;->b()V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, v1, v3}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x1

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 40
    .line 41
    .line 42
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    move v3, v4

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_3

    .line 49
    :cond_0
    move v3, v2

    .line 50
    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ly0/y;->u()V

    .line 54
    .line 55
    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Ln1/f0;->a:Landroid/content/Context;

    .line 59
    .line 60
    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Lw1/m;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_1
    move-exception p1

    .line 67
    goto :goto_4

    .line 68
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Ln1/f0;->k:Lv1/r;

    .line 71
    .line 72
    iget-object v1, p0, Ln1/f0;->b:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v4, v1}, Lv1/r;->m(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Ln1/f0;->k:Lv1/r;

    .line 78
    .line 79
    iget-object v1, p0, Ln1/f0;->b:Ljava/lang/String;

    .line 80
    .line 81
    const-wide/16 v2, -0x1

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2, v3}, Lv1/r;->j(Ljava/lang/String;J)V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object v0, p0, Ln1/f0;->d:Lv1/p;

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    iget-object v0, p0, Ln1/f0;->e:Lm1/m;

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    iget-object v0, p0, Ln1/f0;->i:Lu1/a;

    .line 95
    .line 96
    iget-object v1, p0, Ln1/f0;->b:Ljava/lang/String;

    .line 97
    .line 98
    check-cast v0, Ln1/p;

    .line 99
    .line 100
    iget-object v2, v0, Ln1/p;->l:Ljava/lang/Object;

    .line 101
    .line 102
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    :try_start_3
    iget-object v0, v0, Ln1/p;->f:Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    :try_start_4
    iget-object v0, p0, Ln1/f0;->i:Lu1/a;

    .line 113
    .line 114
    iget-object v1, p0, Ln1/f0;->b:Ljava/lang/String;

    .line 115
    .line 116
    check-cast v0, Ln1/p;

    .line 117
    .line 118
    iget-object v2, v0, Ln1/p;->l:Ljava/lang/Object;

    .line 119
    .line 120
    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 121
    :try_start_5
    iget-object v3, v0, Ln1/p;->f:Ljava/util/HashMap;

    .line 122
    .line 123
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ln1/p;->h()V

    .line 127
    .line 128
    .line 129
    monitor-exit v2

    .line 130
    goto :goto_2

    .line 131
    :catchall_2
    move-exception p1

    .line 132
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 133
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 134
    :catchall_3
    move-exception p1

    .line 135
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 136
    :try_start_8
    throw p1

    .line 137
    :cond_3
    :goto_2
    iget-object v0, p0, Ln1/f0;->j:Landroidx/work/impl/WorkDatabase;

    .line 138
    .line 139
    invoke-virtual {v0}, Ly0/w;->o()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Ln1/f0;->j:Landroidx/work/impl/WorkDatabase;

    .line 143
    .line 144
    invoke-virtual {v0}, Ly0/w;->k()V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Ln1/f0;->p:Lx1/k;

    .line 148
    .line 149
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v0, p1}, Lx1/k;->j(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :goto_3
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ly0/y;->u()V

    .line 161
    .line 162
    .line 163
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 164
    :goto_4
    iget-object v0, p0, Ln1/f0;->j:Landroidx/work/impl/WorkDatabase;

    .line 165
    .line 166
    invoke-virtual {v0}, Ly0/w;->k()V

    .line 167
    .line 168
    .line 169
    throw p1
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln1/f0;->k:Lv1/r;

    iget-object v1, p0, Ln1/f0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lv1/r;->f(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Ln1/f0;->e(Z)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public final g()V
    .locals 8

    .line 1
    iget-object v0, p0, Ln1/f0;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Ln1/f0;->j:Landroidx/work/impl/WorkDatabase;

    .line 4
    .line 5
    invoke-virtual {v1}, Ly0/w;->c()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v5, p0, Ln1/f0;->k:Lv1/r;

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    :try_start_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v5, v4}, Lv1/r;->f(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    const/4 v7, 0x6

    .line 36
    if-eq v6, v7, :cond_0

    .line 37
    .line 38
    const/4 v6, 0x4

    .line 39
    invoke-virtual {v5, v6, v4}, Lv1/r;->m(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v5, p0, Ln1/f0;->l:Lv1/c;

    .line 43
    .line 44
    invoke-virtual {v5, v4}, Lv1/c;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v3, p0, Ln1/f0;->g:Lm1/l;

    .line 53
    .line 54
    check-cast v3, Lm1/i;

    .line 55
    .line 56
    iget-object v3, v3, Lm1/i;->a:Lm1/e;

    .line 57
    .line 58
    invoke-virtual {v5, v0, v3}, Lv1/r;->l(Ljava/lang/String;Lm1/e;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ly0/w;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ly0/w;->k()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v2}, Ln1/f0;->e(Z)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    invoke-virtual {v1}, Ly0/w;->k()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v2}, Ln1/f0;->e(Z)V

    .line 76
    .line 77
    .line 78
    throw v0
.end method

.method public final h()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Ln1/f0;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ln1/f0;->k:Lv1/r;

    iget-object v2, p0, Ln1/f0;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lv1/r;->f(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Ln1/f0;->e(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ll1/e;->a(I)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ln1/f0;->e(Z)V

    :goto_0
    return v2

    :cond_1
    return v1
.end method

.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Work [ id="

    .line 6
    .line 7
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, Ln1/f0;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, ", tags={ "

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v3, v1, Ln1/f0;->m:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const/4 v5, 0x1

    .line 27
    move v6, v5

    .line 28
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    const/4 v8, 0x0

    .line 33
    if-eqz v7, :cond_1

    .line 34
    .line 35
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    check-cast v7, Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v6, :cond_0

    .line 42
    .line 43
    move v6, v8

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const-string v8, ", "

    .line 46
    .line 47
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string v4, " } ]"

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, v1, Ln1/f0;->n:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v4, v1, Ln1/f0;->d:Lv1/p;

    .line 66
    .line 67
    invoke-virtual/range {p0 .. p0}, Ln1/f0;->h()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    goto/16 :goto_c

    .line 74
    .line 75
    :cond_2
    iget-object v6, v1, Ln1/f0;->j:Landroidx/work/impl/WorkDatabase;

    .line 76
    .line 77
    invoke-virtual {v6}, Ly0/w;->c()V

    .line 78
    .line 79
    .line 80
    :try_start_0
    iget v0, v4, Lv1/p;->b:I

    .line 81
    .line 82
    if-eq v0, v5, :cond_3

    .line 83
    .line 84
    invoke-virtual/range {p0 .. p0}, Ln1/f0;->f()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6}, Ly0/w;->o()V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    :goto_2
    invoke-virtual {v6}, Ly0/w;->k()V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_c

    .line 101
    .line 102
    :catchall_0
    move-exception v0

    .line 103
    goto/16 :goto_f

    .line 104
    .line 105
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lv1/p;->d()Z

    .line 106
    .line 107
    .line 108
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    iget-object v7, v4, Lv1/p;->c:Ljava/lang/String;

    .line 110
    .line 111
    if-nez v0, :cond_4

    .line 112
    .line 113
    :try_start_2
    iget v0, v4, Lv1/p;->b:I

    .line 114
    .line 115
    if-ne v0, v5, :cond_5

    .line 116
    .line 117
    iget v0, v4, Lv1/p;->k:I

    .line 118
    .line 119
    if-lez v0, :cond_5

    .line 120
    .line 121
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 122
    .line 123
    .line 124
    move-result-wide v9

    .line 125
    invoke-virtual {v4}, Lv1/p;->a()J

    .line 126
    .line 127
    .line 128
    move-result-wide v11

    .line 129
    cmp-long v0, v9, v11

    .line 130
    .line 131
    if-gez v0, :cond_5

    .line 132
    .line 133
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v2, "Delaying execution for %s because it is being executed before schedule."

    .line 138
    .line 139
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v5}, Ln1/f0;->e(Z)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6}, Ly0/w;->o()V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_5
    invoke-virtual {v6}, Ly0/w;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Ly0/w;->k()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Lv1/p;->d()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    iget-object v9, v4, Lv1/p;->e:Lm1/e;

    .line 167
    .line 168
    iget-object v10, v1, Ln1/f0;->k:Lv1/r;

    .line 169
    .line 170
    sget-object v11, Ln1/f0;->s:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v12, v1, Ln1/f0;->h:Lm1/b;

    .line 173
    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    move v15, v8

    .line 177
    goto/16 :goto_9

    .line 178
    .line 179
    :cond_6
    iget-object v0, v12, Lm1/b;->d:Landroidx/fragment/app/x0;

    .line 180
    .line 181
    iget-object v13, v4, Lv1/p;->d:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    sget-object v0, Lm1/h;->a:Ljava/lang/String;

    .line 187
    .line 188
    const/4 v14, 0x0

    .line 189
    :try_start_3
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    new-array v15, v8, [Ljava/lang/Class;

    .line 194
    .line 195
    invoke-virtual {v0, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    new-array v15, v8, [Ljava/lang/Object;

    .line 200
    .line 201
    invoke-virtual {v0, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lm1/h;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :catch_0
    move-exception v0

    .line 209
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 210
    .line 211
    .line 212
    move-result-object v15

    .line 213
    const-string v8, "Trouble instantiating + "

    .line 214
    .line 215
    invoke-static {v8, v13}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    sget-object v13, Lm1/h;->a:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v15, v13, v8, v0}, Lm1/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    .line 223
    .line 224
    move-object v0, v14

    .line 225
    :goto_3
    if-nez v0, :cond_7

    .line 226
    .line 227
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v3, "Could not create Input Merger "

    .line 234
    .line 235
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget-object v3, v4, Lv1/p;->d:Ljava/lang/String;

    .line 239
    .line 240
    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    :goto_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v0, v11, v2}, Lm1/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual/range {p0 .. p0}, Ln1/f0;->g()V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_c

    .line 254
    .line 255
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    const-string v8, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 267
    .line 268
    invoke-static {v5, v8}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    if-nez v2, :cond_8

    .line 273
    .line 274
    invoke-virtual {v8, v5}, Ly0/y;->h(I)V

    .line 275
    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_8
    invoke-virtual {v8, v5, v2}, Ly0/y;->d(ILjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :goto_6
    iget-object v9, v10, Lv1/r;->a:Ly0/w;

    .line 282
    .line 283
    invoke-virtual {v9}, Ly0/w;->b()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v9, v8, v14}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    :try_start_4
    new-instance v13, Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    .line 293
    .line 294
    .line 295
    move-result v15

    .line 296
    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    .line 298
    .line 299
    :goto_7
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 300
    .line 301
    .line 302
    move-result v15

    .line 303
    if-eqz v15, :cond_a

    .line 304
    .line 305
    const/4 v15, 0x0

    .line 306
    invoke-interface {v9, v15}, Landroid/database/Cursor;->isNull(I)Z

    .line 307
    .line 308
    .line 309
    move-result v16

    .line 310
    if-eqz v16, :cond_9

    .line 311
    .line 312
    move-object/from16 v16, v14

    .line 313
    .line 314
    goto :goto_8

    .line 315
    :cond_9
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getBlob(I)[B

    .line 316
    .line 317
    .line 318
    move-result-object v16

    .line 319
    :goto_8
    invoke-static/range {v16 .. v16}, Lm1/e;->a([B)Lm1/e;

    .line 320
    .line 321
    .line 322
    move-result-object v14

    .line 323
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 324
    .line 325
    .line 326
    const/4 v14, 0x0

    .line 327
    goto :goto_7

    .line 328
    :catchall_1
    move-exception v0

    .line 329
    goto/16 :goto_e

    .line 330
    .line 331
    :cond_a
    const/4 v15, 0x0

    .line 332
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v8}, Ly0/y;->u()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v4}, Lm1/h;->a(Ljava/util/ArrayList;)Lm1/e;

    .line 342
    .line 343
    .line 344
    move-result-object v9

    .line 345
    :goto_9
    new-instance v0, Landroidx/work/WorkerParameters;

    .line 346
    .line 347
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    iget-object v8, v12, Lm1/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 352
    .line 353
    new-instance v13, Lw1/u;

    .line 354
    .line 355
    new-instance v13, Lw1/t;

    .line 356
    .line 357
    iget-object v14, v1, Ln1/f0;->i:Lu1/a;

    .line 358
    .line 359
    iget-object v15, v1, Ln1/f0;->f:Ly1/b;

    .line 360
    .line 361
    invoke-direct {v13, v6, v14, v15}, Lw1/t;-><init>(Landroidx/work/impl/WorkDatabase;Lu1/a;Ly1/b;)V

    .line 362
    .line 363
    .line 364
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 365
    .line 366
    .line 367
    iput-object v4, v0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 368
    .line 369
    iput-object v9, v0, Landroidx/work/WorkerParameters;->b:Lm1/e;

    .line 370
    .line 371
    new-instance v4, Ljava/util/HashSet;

    .line 372
    .line 373
    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 374
    .line 375
    .line 376
    iput-object v8, v0, Landroidx/work/WorkerParameters;->c:Ljava/util/concurrent/Executor;

    .line 377
    .line 378
    iget-object v3, v12, Lm1/b;->c:Lm1/y;

    .line 379
    .line 380
    iput-object v3, v0, Landroidx/work/WorkerParameters;->d:Lm1/y;

    .line 381
    .line 382
    iget-object v4, v1, Ln1/f0;->e:Lm1/m;

    .line 383
    .line 384
    if-nez v4, :cond_b

    .line 385
    .line 386
    iget-object v4, v1, Ln1/f0;->a:Landroid/content/Context;

    .line 387
    .line 388
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    invoke-static {v4, v7, v0}, Lm1/y;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lm1/m;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    iput-object v0, v1, Ln1/f0;->e:Lm1/m;

    .line 396
    .line 397
    :cond_b
    iget-object v0, v1, Ln1/f0;->e:Lm1/m;

    .line 398
    .line 399
    if-nez v0, :cond_c

    .line 400
    .line 401
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    const-string v3, "Could not create Worker "

    .line 408
    .line 409
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    goto/16 :goto_5

    .line 416
    .line 417
    :cond_c
    iget-boolean v3, v0, Lm1/m;->d:Z

    .line 418
    .line 419
    if-eqz v3, :cond_d

    .line 420
    .line 421
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    const-string v3, "Received an already-used Worker "

    .line 428
    .line 429
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    const-string v3, "; Worker Factory should return new instances"

    .line 436
    .line 437
    goto/16 :goto_4

    .line 438
    .line 439
    :cond_d
    iput-boolean v5, v0, Lm1/m;->d:Z

    .line 440
    .line 441
    invoke-virtual {v6}, Ly0/w;->c()V

    .line 442
    .line 443
    .line 444
    :try_start_5
    invoke-virtual {v10, v2}, Lv1/r;->f(Ljava/lang/String;)I

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-ne v0, v5, :cond_f

    .line 449
    .line 450
    const/4 v0, 0x2

    .line 451
    invoke-virtual {v10, v0, v2}, Lv1/r;->m(ILjava/lang/String;)V

    .line 452
    .line 453
    .line 454
    iget-object v3, v10, Lv1/r;->a:Ly0/w;

    .line 455
    .line 456
    invoke-virtual {v3}, Ly0/w;->b()V

    .line 457
    .line 458
    .line 459
    iget-object v4, v10, Lv1/r;->i:Lv1/q;

    .line 460
    .line 461
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/d;->c()Lc1/h;

    .line 462
    .line 463
    .line 464
    move-result-object v7

    .line 465
    if-nez v2, :cond_e

    .line 466
    .line 467
    invoke-interface {v7, v5}, Lc1/f;->h(I)V

    .line 468
    .line 469
    .line 470
    goto :goto_a

    .line 471
    :cond_e
    invoke-interface {v7, v5, v2}, Lc1/f;->d(ILjava/lang/String;)V

    .line 472
    .line 473
    .line 474
    :goto_a
    invoke-virtual {v3}, Ly0/w;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 475
    .line 476
    .line 477
    :try_start_6
    invoke-interface {v7}, Lc1/h;->e()I

    .line 478
    .line 479
    .line 480
    invoke-virtual {v3}, Ly0/w;->o()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 481
    .line 482
    .line 483
    :try_start_7
    invoke-virtual {v3}, Ly0/w;->k()V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v4, v7}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 487
    .line 488
    .line 489
    goto :goto_b

    .line 490
    :catchall_2
    move-exception v0

    .line 491
    invoke-virtual {v3}, Ly0/w;->k()V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v4, v7}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 495
    .line 496
    .line 497
    throw v0

    .line 498
    :catchall_3
    move-exception v0

    .line 499
    goto :goto_d

    .line 500
    :cond_f
    const/4 v5, 0x0

    .line 501
    :goto_b
    invoke-virtual {v6}, Ly0/w;->o()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 502
    .line 503
    .line 504
    invoke-virtual {v6}, Ly0/w;->k()V

    .line 505
    .line 506
    .line 507
    if-eqz v5, :cond_11

    .line 508
    .line 509
    invoke-virtual/range {p0 .. p0}, Ln1/f0;->h()Z

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    if-eqz v0, :cond_10

    .line 514
    .line 515
    goto :goto_c

    .line 516
    :cond_10
    new-instance v0, Lw1/s;

    .line 517
    .line 518
    iget-object v2, v1, Ln1/f0;->a:Landroid/content/Context;

    .line 519
    .line 520
    iget-object v3, v1, Ln1/f0;->d:Lv1/p;

    .line 521
    .line 522
    iget-object v4, v1, Ln1/f0;->e:Lm1/m;

    .line 523
    .line 524
    iget-object v5, v1, Ln1/f0;->f:Ly1/b;

    .line 525
    .line 526
    move-object/from16 v16, v0

    .line 527
    .line 528
    move-object/from16 v17, v2

    .line 529
    .line 530
    move-object/from16 v18, v3

    .line 531
    .line 532
    move-object/from16 v19, v4

    .line 533
    .line 534
    move-object/from16 v20, v13

    .line 535
    .line 536
    move-object/from16 v21, v5

    .line 537
    .line 538
    invoke-direct/range {v16 .. v21}, Lw1/s;-><init>(Landroid/content/Context;Lv1/p;Lm1/m;Lw1/t;Ly1/b;)V

    .line 539
    .line 540
    .line 541
    iget-object v2, v15, Ly1/b;->c:Ly1/a;

    .line 542
    .line 543
    invoke-virtual {v2, v0}, Ly1/a;->execute(Ljava/lang/Runnable;)V

    .line 544
    .line 545
    .line 546
    new-instance v2, Lf/n0;

    .line 547
    .line 548
    iget-object v0, v0, Lw1/s;->a:Lx1/k;

    .line 549
    .line 550
    const/4 v3, 0x4

    .line 551
    invoke-direct {v2, v1, v0, v3}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 552
    .line 553
    .line 554
    new-instance v3, Lf/p0;

    .line 555
    .line 556
    const/4 v4, 0x3

    .line 557
    invoke-direct {v3, v4}, Lf/p0;-><init>(I)V

    .line 558
    .line 559
    .line 560
    iget-object v4, v1, Ln1/f0;->q:Lx1/k;

    .line 561
    .line 562
    invoke-virtual {v4, v2, v3}, Lx1/i;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 563
    .line 564
    .line 565
    new-instance v2, Landroidx/appcompat/widget/j;

    .line 566
    .line 567
    const/4 v3, 0x5

    .line 568
    invoke-direct {v2, v1, v0, v3}, Landroidx/appcompat/widget/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 569
    .line 570
    .line 571
    iget-object v3, v15, Ly1/b;->c:Ly1/a;

    .line 572
    .line 573
    invoke-virtual {v0, v2, v3}, Lx1/i;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 574
    .line 575
    .line 576
    iget-object v0, v1, Ln1/f0;->n:Ljava/lang/String;

    .line 577
    .line 578
    new-instance v2, Landroidx/appcompat/widget/j;

    .line 579
    .line 580
    const/4 v3, 0x6

    .line 581
    invoke-direct {v2, v1, v0, v3}, Landroidx/appcompat/widget/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 582
    .line 583
    .line 584
    iget-object v0, v15, Ly1/b;->a:Lw1/o;

    .line 585
    .line 586
    invoke-virtual {v4, v2, v0}, Lx1/i;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 587
    .line 588
    .line 589
    goto :goto_c

    .line 590
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ln1/f0;->f()V

    .line 591
    .line 592
    .line 593
    :goto_c
    return-void

    .line 594
    :goto_d
    invoke-virtual {v6}, Ly0/w;->k()V

    .line 595
    .line 596
    .line 597
    throw v0

    .line 598
    :goto_e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v8}, Ly0/y;->u()V

    .line 602
    .line 603
    .line 604
    throw v0

    .line 605
    :goto_f
    invoke-virtual {v6}, Ly0/w;->k()V

    .line 606
    .line 607
    .line 608
    throw v0
.end method
