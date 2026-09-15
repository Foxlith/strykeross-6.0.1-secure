.class public final Landroidx/lifecycle/v;
.super Landroidx/lifecycle/o;
.source "SourceFile"


# instance fields
.field public a:Lk/a;

.field public b:Landroidx/lifecycle/n;

.field public final c:Ljava/lang/ref/WeakReference;

.field public d:I

.field public e:Z

.field public f:Z

.field public final g:Ljava/util/ArrayList;

.field public final h:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/t;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lk/a;

    .line 10
    .line 11
    invoke-direct {v0}, Lk/a;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/lifecycle/v;->a:Lk/a;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroidx/lifecycle/v;->d:I

    .line 18
    .line 19
    iput-boolean v0, p0, Landroidx/lifecycle/v;->e:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/lifecycle/v;->f:Z

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/lifecycle/v;->g:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Landroidx/lifecycle/v;->c:Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    sget-object p1, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 38
    .line 39
    iput-object p1, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Landroidx/lifecycle/v;->h:Z

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/s;)V
    .locals 10

    .line 1
    const-string v0, "addObserver"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 7
    .line 8
    sget-object v1, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 14
    .line 15
    :goto_0
    new-instance v0, Landroidx/lifecycle/u;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v2, Landroidx/lifecycle/w;->a:Ljava/util/HashMap;

    .line 21
    .line 22
    instance-of v2, p1, Landroidx/lifecycle/r;

    .line 23
    .line 24
    instance-of v3, p1, Landroidx/lifecycle/e;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x1

    .line 29
    const/4 v7, 0x0

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    new-instance v2, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    .line 35
    .line 36
    move-object v3, p1

    .line 37
    check-cast v3, Landroidx/lifecycle/e;

    .line 38
    .line 39
    move-object v8, p1

    .line 40
    check-cast v8, Landroidx/lifecycle/r;

    .line 41
    .line 42
    invoke-direct {v2, v3, v8}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/e;Landroidx/lifecycle/r;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    if-eqz v3, :cond_2

    .line 47
    .line 48
    new-instance v2, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    .line 49
    .line 50
    move-object v3, p1

    .line 51
    check-cast v3, Landroidx/lifecycle/e;

    .line 52
    .line 53
    invoke-direct {v2, v3, v5}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/e;Landroidx/lifecycle/r;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    if-eqz v2, :cond_3

    .line 58
    .line 59
    move-object v2, p1

    .line 60
    check-cast v2, Landroidx/lifecycle/r;

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Landroidx/lifecycle/w;->c(Ljava/lang/Class;)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ne v3, v4, :cond_6

    .line 72
    .line 73
    sget-object v3, Landroidx/lifecycle/w;->b:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-ne v3, v6, :cond_4

    .line 86
    .line 87
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 92
    .line 93
    invoke-static {v2, p1}, Landroidx/lifecycle/w;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    new-instance v2, Landroidx/lifecycle/SingleGeneratedAdapterObserver;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    new-array v3, v3, [Landroidx/lifecycle/h;

    .line 107
    .line 108
    move v8, v7

    .line 109
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-ge v8, v9, :cond_5

    .line 114
    .line 115
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    check-cast v9, Ljava/lang/reflect/Constructor;

    .line 120
    .line 121
    invoke-static {v9, p1}, Landroidx/lifecycle/w;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    aput-object v5, v3, v8

    .line 125
    .line 126
    add-int/lit8 v8, v8, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    new-instance v2, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    .line 130
    .line 131
    invoke-direct {v2, v3}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Landroidx/lifecycle/h;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_6
    new-instance v2, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    .line 136
    .line 137
    invoke-direct {v2, p1}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :goto_2
    iput-object v2, v0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/r;

    .line 141
    .line 142
    iput-object v1, v0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 143
    .line 144
    iget-object v1, p0, Landroidx/lifecycle/v;->a:Lk/a;

    .line 145
    .line 146
    invoke-virtual {v1, p1, v0}, Lk/a;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Landroidx/lifecycle/u;

    .line 151
    .line 152
    if-eqz v1, :cond_7

    .line 153
    .line 154
    return-void

    .line 155
    :cond_7
    iget-object v1, p0, Landroidx/lifecycle/v;->c:Ljava/lang/ref/WeakReference;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Landroidx/lifecycle/t;

    .line 162
    .line 163
    if-nez v1, :cond_8

    .line 164
    .line 165
    return-void

    .line 166
    :cond_8
    iget v2, p0, Landroidx/lifecycle/v;->d:I

    .line 167
    .line 168
    if-nez v2, :cond_9

    .line 169
    .line 170
    iget-boolean v2, p0, Landroidx/lifecycle/v;->e:Z

    .line 171
    .line 172
    if-eqz v2, :cond_a

    .line 173
    .line 174
    :cond_9
    move v7, v6

    .line 175
    :cond_a
    invoke-virtual {p0, p1}, Landroidx/lifecycle/v;->c(Landroidx/lifecycle/s;)Landroidx/lifecycle/n;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    iget v3, p0, Landroidx/lifecycle/v;->d:I

    .line 180
    .line 181
    add-int/2addr v3, v6

    .line 182
    iput v3, p0, Landroidx/lifecycle/v;->d:I

    .line 183
    .line 184
    :goto_3
    iget-object v3, v0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 185
    .line 186
    invoke-virtual {v3, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-gez v2, :cond_f

    .line 191
    .line 192
    iget-object v2, p0, Landroidx/lifecycle/v;->a:Lk/a;

    .line 193
    .line 194
    iget-object v2, v2, Lk/a;->e:Ljava/util/HashMap;

    .line 195
    .line 196
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_f

    .line 201
    .line 202
    iget-object v2, v0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 203
    .line 204
    iget-object v3, p0, Landroidx/lifecycle/v;->g:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    iget-object v2, v0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-eq v2, v6, :cond_d

    .line 216
    .line 217
    if-eq v2, v4, :cond_c

    .line 218
    .line 219
    const/4 v3, 0x3

    .line 220
    if-eq v2, v3, :cond_b

    .line 221
    .line 222
    move-object v2, v5

    .line 223
    goto :goto_4

    .line 224
    :cond_b
    sget-object v2, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_c
    sget-object v2, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_d
    sget-object v2, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    .line 231
    .line 232
    :goto_4
    if-eqz v2, :cond_e

    .line 233
    .line 234
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/u;->a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V

    .line 235
    .line 236
    .line 237
    iget-object v2, p0, Landroidx/lifecycle/v;->g:Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    sub-int/2addr v3, v6

    .line 244
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, p1}, Landroidx/lifecycle/v;->c(Landroidx/lifecycle/s;)Landroidx/lifecycle/n;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    goto :goto_3

    .line 252
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 253
    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string v2, "no event up from "

    .line 257
    .line 258
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object v0, v0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 262
    .line 263
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p1

    .line 274
    :cond_f
    if-nez v7, :cond_10

    .line 275
    .line 276
    invoke-virtual {p0}, Landroidx/lifecycle/v;->g()V

    .line 277
    .line 278
    .line 279
    :cond_10
    iget p1, p0, Landroidx/lifecycle/v;->d:I

    .line 280
    .line 281
    sub-int/2addr p1, v6

    .line 282
    iput p1, p0, Landroidx/lifecycle/v;->d:I

    .line 283
    .line 284
    return-void
.end method

.method public final b(Landroidx/lifecycle/s;)V
    .locals 1

    .line 1
    const-string v0, "removeObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->d(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/v;->a:Lk/a;

    invoke-virtual {v0, p1}, Lk/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Landroidx/lifecycle/s;)Landroidx/lifecycle/n;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/v;->a:Lk/a;

    .line 2
    .line 3
    iget-object v0, v0, Lk/a;->e:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lk/c;

    .line 17
    .line 18
    iget-object p1, p1, Lk/c;->d:Lk/c;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, v2

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p1, Lk/c;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Landroidx/lifecycle/u;

    .line 27
    .line 28
    iget-object p1, p1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object p1, v2

    .line 32
    :goto_1
    iget-object v0, p0, Landroidx/lifecycle/v;->g:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->j(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    move-object v2, v0

    .line 46
    check-cast v2, Landroidx/lifecycle/n;

    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-gez v1, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move-object p1, v0

    .line 60
    :goto_2
    if-eqz v2, :cond_4

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-gez v0, :cond_4

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    move-object v2, p1

    .line 70
    :goto_3
    return-object v2
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/v;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lj/a;->L()Lj/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lj/a;->c:Lj/c;

    .line 10
    .line 11
    invoke-virtual {v0}, Lj/c;->M()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "Method "

    .line 21
    .line 22
    const-string v2, " must be called on the main thread"

    .line 23
    .line 24
    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Landroidx/lifecycle/m;)V
    .locals 1

    .line 1
    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/m;->a()Landroidx/lifecycle/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public final f(Landroidx/lifecycle/n;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    sget-object v2, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n;

    if-ne v0, v1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no event down from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    iget-boolean p1, p0, Landroidx/lifecycle/v;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_5

    iget p1, p0, Landroidx/lifecycle/v;->d:I

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Landroidx/lifecycle/v;->e:Z

    invoke-virtual {p0}, Landroidx/lifecycle/v;->g()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/v;->e:Z

    iget-object p1, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    if-ne p1, v2, :cond_4

    new-instance p1, Lk/a;

    invoke-direct {p1}, Lk/a;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/v;->a:Lk/a;

    :cond_4
    return-void

    :cond_5
    :goto_1
    iput-boolean v0, p0, Landroidx/lifecycle/v;->f:Z

    return-void
.end method

.method public final g()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/v;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/t;

    .line 8
    .line 9
    if-eqz v0, :cond_e

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/v;->a:Lk/a;

    .line 12
    .line 13
    iget v2, v1, Lk/g;->d:I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v2, v1, Lk/g;->a:Lk/c;

    .line 20
    .line 21
    iget-object v2, v2, Lk/c;->b:Ljava/lang/Object;

    .line 22
    .line 23
    move-object v4, v2

    .line 24
    check-cast v4, Landroidx/lifecycle/u;

    .line 25
    .line 26
    iget-object v4, v4, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 27
    .line 28
    iget-object v1, v1, Lk/g;->b:Lk/c;

    .line 29
    .line 30
    iget-object v1, v1, Lk/c;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Landroidx/lifecycle/u;

    .line 33
    .line 34
    iget-object v1, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 35
    .line 36
    if-ne v4, v1, :cond_2

    .line 37
    .line 38
    iget-object v4, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 39
    .line 40
    if-ne v4, v1, :cond_2

    .line 41
    .line 42
    :goto_0
    iput-boolean v3, p0, Landroidx/lifecycle/v;->f:Z

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iput-boolean v3, p0, Landroidx/lifecycle/v;->f:Z

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 48
    .line 49
    check-cast v2, Landroidx/lifecycle/u;

    .line 50
    .line 51
    iget-object v2, v2, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v2, 0x0

    .line 58
    const/4 v3, 0x3

    .line 59
    const/4 v4, 0x2

    .line 60
    const/4 v5, 0x1

    .line 61
    if-gez v1, :cond_8

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/lifecycle/v;->a:Lk/a;

    .line 64
    .line 65
    new-instance v6, Lk/b;

    .line 66
    .line 67
    iget-object v7, v1, Lk/g;->b:Lk/c;

    .line 68
    .line 69
    iget-object v8, v1, Lk/g;->a:Lk/c;

    .line 70
    .line 71
    invoke-direct {v6, v7, v8, v5}, Lk/b;-><init>(Lk/c;Lk/c;I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v1, Lk/g;->c:Ljava/util/WeakHashMap;

    .line 75
    .line 76
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v1, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-virtual {v6}, Lk/e;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_8

    .line 86
    .line 87
    iget-boolean v1, p0, Landroidx/lifecycle/v;->f:Z

    .line 88
    .line 89
    if-nez v1, :cond_8

    .line 90
    .line 91
    invoke-virtual {v6}, Lk/e;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Ljava/util/Map$Entry;

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    check-cast v7, Landroidx/lifecycle/u;

    .line 102
    .line 103
    :goto_1
    iget-object v8, v7, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 104
    .line 105
    iget-object v9, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 106
    .line 107
    invoke-virtual {v8, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-lez v8, :cond_3

    .line 112
    .line 113
    iget-boolean v8, p0, Landroidx/lifecycle/v;->f:Z

    .line 114
    .line 115
    if-nez v8, :cond_3

    .line 116
    .line 117
    iget-object v8, p0, Landroidx/lifecycle/v;->a:Lk/a;

    .line 118
    .line 119
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    check-cast v9, Landroidx/lifecycle/s;

    .line 124
    .line 125
    iget-object v8, v8, Lk/a;->e:Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_3

    .line 132
    .line 133
    iget-object v8, v7, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 134
    .line 135
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-eq v8, v4, :cond_6

    .line 140
    .line 141
    if-eq v8, v3, :cond_5

    .line 142
    .line 143
    const/4 v9, 0x4

    .line 144
    if-eq v8, v9, :cond_4

    .line 145
    .line 146
    move-object v8, v2

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    sget-object v8, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    sget-object v8, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_6
    sget-object v8, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    .line 155
    .line 156
    :goto_2
    if-eqz v8, :cond_7

    .line 157
    .line 158
    invoke-virtual {v8}, Landroidx/lifecycle/m;->a()Landroidx/lifecycle/n;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    iget-object v10, p0, Landroidx/lifecycle/v;->g:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, v0, v8}, Landroidx/lifecycle/u;->a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V

    .line 168
    .line 169
    .line 170
    iget-object v8, p0, Landroidx/lifecycle/v;->g:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    sub-int/2addr v9, v5

    .line 177
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 182
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v2, "no event down from "

    .line 186
    .line 187
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v2, v7, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v0

    .line 203
    :cond_8
    iget-object v1, p0, Landroidx/lifecycle/v;->a:Lk/a;

    .line 204
    .line 205
    iget-object v1, v1, Lk/g;->b:Lk/c;

    .line 206
    .line 207
    iget-boolean v6, p0, Landroidx/lifecycle/v;->f:Z

    .line 208
    .line 209
    if-nez v6, :cond_0

    .line 210
    .line 211
    if-eqz v1, :cond_0

    .line 212
    .line 213
    iget-object v6, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 214
    .line 215
    iget-object v1, v1, Lk/c;->b:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v1, Landroidx/lifecycle/u;

    .line 218
    .line 219
    iget-object v1, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 220
    .line 221
    invoke-virtual {v6, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-lez v1, :cond_0

    .line 226
    .line 227
    iget-object v1, p0, Landroidx/lifecycle/v;->a:Lk/a;

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    new-instance v6, Lk/d;

    .line 233
    .line 234
    invoke-direct {v6, v1}, Lk/d;-><init>(Lk/g;)V

    .line 235
    .line 236
    .line 237
    iget-object v1, v1, Lk/g;->c:Ljava/util/WeakHashMap;

    .line 238
    .line 239
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 240
    .line 241
    invoke-virtual {v1, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    :cond_9
    invoke-virtual {v6}, Lk/d;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-eqz v1, :cond_0

    .line 249
    .line 250
    iget-boolean v1, p0, Landroidx/lifecycle/v;->f:Z

    .line 251
    .line 252
    if-nez v1, :cond_0

    .line 253
    .line 254
    invoke-virtual {v6}, Lk/d;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    check-cast v1, Ljava/util/Map$Entry;

    .line 259
    .line 260
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    check-cast v7, Landroidx/lifecycle/u;

    .line 265
    .line 266
    :goto_3
    iget-object v8, v7, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 267
    .line 268
    iget-object v9, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 269
    .line 270
    invoke-virtual {v8, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 271
    .line 272
    .line 273
    move-result v8

    .line 274
    if-gez v8, :cond_9

    .line 275
    .line 276
    iget-boolean v8, p0, Landroidx/lifecycle/v;->f:Z

    .line 277
    .line 278
    if-nez v8, :cond_9

    .line 279
    .line 280
    iget-object v8, p0, Landroidx/lifecycle/v;->a:Lk/a;

    .line 281
    .line 282
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v9

    .line 286
    check-cast v9, Landroidx/lifecycle/s;

    .line 287
    .line 288
    iget-object v8, v8, Lk/a;->e:Ljava/util/HashMap;

    .line 289
    .line 290
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v8

    .line 294
    if-eqz v8, :cond_9

    .line 295
    .line 296
    iget-object v8, v7, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 297
    .line 298
    iget-object v9, p0, Landroidx/lifecycle/v;->g:Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    iget-object v8, v7, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 304
    .line 305
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 306
    .line 307
    .line 308
    move-result v8

    .line 309
    if-eq v8, v5, :cond_c

    .line 310
    .line 311
    if-eq v8, v4, :cond_b

    .line 312
    .line 313
    if-eq v8, v3, :cond_a

    .line 314
    .line 315
    move-object v8, v2

    .line 316
    goto :goto_4

    .line 317
    :cond_a
    sget-object v8, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_b
    sget-object v8, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_c
    sget-object v8, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    .line 324
    .line 325
    :goto_4
    if-eqz v8, :cond_d

    .line 326
    .line 327
    invoke-virtual {v7, v0, v8}, Landroidx/lifecycle/u;->a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V

    .line 328
    .line 329
    .line 330
    iget-object v8, p0, Landroidx/lifecycle/v;->g:Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 333
    .line 334
    .line 335
    move-result v9

    .line 336
    sub-int/2addr v9, v5

    .line 337
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    goto :goto_3

    .line 341
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 342
    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    const-string v2, "no event up from "

    .line 346
    .line 347
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    iget-object v2, v7, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 351
    .line 352
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw v0

    .line 363
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 364
    .line 365
    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    .line 366
    .line 367
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw v0
.end method
