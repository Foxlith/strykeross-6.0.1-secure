.class public final Lt4/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt4/l;

.field public final b:Ljava/util/ArrayList;

.field public c:I

.field public d:Lt4/r;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lt4/l;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0x20

    .line 10
    .line 11
    iput-char v1, v0, Lt4/l;->c:C

    .line 12
    .line 13
    iput-object v0, p0, Lt4/o;->a:Lt4/l;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lt4/o;->b:Ljava/util/ArrayList;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()Lt4/f;
    .locals 11

    .line 1
    iget-object v0, p0, Lt4/o;->d:Lt4/r;

    .line 2
    .line 3
    const-string v1, "Unexpected token: null"

    .line 4
    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-virtual {p0, v2, v3}, Lt4/o;->d(IZ)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v2, :cond_9

    .line 15
    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    invoke-virtual {p0, v2, v5}, Lt4/o;->d(IZ)Z

    .line 20
    .line 21
    .line 22
    new-instance v2, Lt4/q;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Lt4/e;-><init>(Lt4/r;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lt4/o;->b()Lt4/h;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lt4/o;->d:Lt4/r;

    .line 36
    .line 37
    if-eqz v0, :cond_8

    .line 38
    .line 39
    sget-object v6, Lt4/n;->a:[I

    .line 40
    .line 41
    iget v7, v0, Lt4/r;->a:I

    .line 42
    .line 43
    invoke-static {v7}, Lo/i;->c(I)I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    aget v6, v6, v8

    .line 48
    .line 49
    if-ne v6, v5, :cond_7

    .line 50
    .line 51
    const/4 v0, 0x6

    .line 52
    invoke-virtual {p0, v0, v5}, Lt4/o;->d(IZ)Z

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lt4/o;->d:Lt4/r;

    .line 56
    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    invoke-virtual {p0}, Lt4/o;->b()Lt4/h;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const/4 v6, 0x7

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    new-instance v4, Lt4/c;

    .line 67
    .line 68
    invoke-direct {v4, v3, v1}, Lt4/c;-><init>(ILt4/h;)V

    .line 69
    .line 70
    .line 71
    filled-new-array {v4}, [Lt4/c;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v1}, Lv1/f;->J([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const/16 v4, 0x9

    .line 80
    .line 81
    invoke-virtual {p0, v4, v3}, Lt4/o;->d(IZ)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_3

    .line 86
    .line 87
    move v7, v5

    .line 88
    :goto_0
    const/16 v8, 0xb

    .line 89
    .line 90
    iget v9, v0, Lt4/r;->a:I

    .line 91
    .line 92
    if-eq v9, v8, :cond_3

    .line 93
    .line 94
    if-eq v9, v6, :cond_3

    .line 95
    .line 96
    invoke-virtual {p0}, Lt4/o;->b()Lt4/h;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    if-nez v8, :cond_1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    new-instance v9, Lt4/c;

    .line 104
    .line 105
    add-int/lit8 v10, v7, 0x1

    .line 106
    .line 107
    invoke-direct {v9, v7, v8}, Lt4/c;-><init>(ILt4/h;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v4, v3}, Lt4/o;->d(IZ)Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-nez v7, :cond_2

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    move v7, v10

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    :goto_1
    new-instance v4, Lt4/d;

    .line 123
    .line 124
    new-array v0, v3, [Lt4/c;

    .line 125
    .line 126
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, [Lt4/c;

    .line 131
    .line 132
    invoke-direct {v4, v2, v0}, Lt4/d;-><init>(Lt4/q;[Lt4/c;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    invoke-virtual {p0, v6, v5}, Lt4/o;->d(IZ)Z

    .line 136
    .line 137
    .line 138
    if-eqz v4, :cond_5

    .line 139
    .line 140
    new-instance v0, Lt4/h;

    .line 141
    .line 142
    invoke-direct {v0, v4}, Lt4/e;-><init>(Lt4/g;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_5
    new-instance v0, Lt4/h;

    .line 147
    .line 148
    new-instance v1, Lt4/i;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-direct {v0, v1}, Lt4/e;-><init>(Lt4/g;)V

    .line 154
    .line 155
    .line 156
    :goto_2
    new-instance v1, Lt4/f;

    .line 157
    .line 158
    invoke-direct {v1, v2, v0}, Lt4/f;-><init>(Lt4/q;Lt4/h;)V

    .line 159
    .line 160
    .line 161
    return-object v1

    .line 162
    :cond_6
    new-instance v0, Lt4/b;

    .line 163
    .line 164
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_7
    new-instance v1, Lt4/b;

    .line 169
    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v3, "Unexpected token `"

    .line 173
    .line 174
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, v0, Lt4/r;->b:Lt4/s;

    .line 178
    .line 179
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v0, "\' typed `"

    .line 183
    .line 184
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-static {v7}, Lorg/bouncycastle/math/ec/a;->r(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v0, "\' for block"

    .line 195
    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-direct {v1, v0}, Lt4/b;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v1

    .line 207
    :cond_8
    new-instance v0, Lt4/b;

    .line 208
    .line 209
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v0

    .line 213
    :cond_9
    return-object v4

    .line 214
    :cond_a
    new-instance v0, Lt4/b;

    .line 215
    .line 216
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v0
.end method

.method public final b()Lt4/h;
    .locals 5

    .line 1
    iget-object v0, p0, Lt4/o;->d:Lt4/r;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget v1, v0, Lt4/r;->a:I

    .line 6
    .line 7
    invoke-static {v1}, Lo/i;->c(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v1, v2, :cond_3

    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    if-eq v1, v3, :cond_2

    .line 19
    .line 20
    if-eq v1, v4, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    return-object v0

    .line 24
    :cond_0
    const/4 v0, 0x4

    .line 25
    invoke-virtual {p0, v0, v2}, Lt4/o;->d(IZ)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lt4/o;->c()Lt4/k;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x5

    .line 33
    invoke-virtual {p0, v1, v2}, Lt4/o;->d(IZ)Z

    .line 34
    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    new-instance v1, Lt4/h;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Lt4/e;-><init>(Lt4/g;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v1, Lt4/h;

    .line 45
    .line 46
    new-instance v0, Lt4/i;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v0}, Lt4/e;-><init>(Lt4/g;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-object v1

    .line 55
    :cond_2
    invoke-virtual {p0, v4, v2}, Lt4/o;->d(IZ)Z

    .line 56
    .line 57
    .line 58
    new-instance v1, Lt4/h;

    .line 59
    .line 60
    new-instance v2, Lt4/q;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Lt4/e;-><init>(Lt4/r;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v2}, Lt4/e;-><init>(Lt4/g;)V

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_3
    invoke-virtual {p0, v3, v2}, Lt4/o;->d(IZ)Z

    .line 70
    .line 71
    .line 72
    new-instance v1, Lt4/h;

    .line 73
    .line 74
    new-instance v2, Lt4/q;

    .line 75
    .line 76
    invoke-direct {v2, v0}, Lt4/e;-><init>(Lt4/r;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v2}, Lt4/e;-><init>(Lt4/g;)V

    .line 80
    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_4
    invoke-virtual {p0, v2, v2}, Lt4/o;->d(IZ)Z

    .line 84
    .line 85
    .line 86
    new-instance v1, Lt4/h;

    .line 87
    .line 88
    new-instance v2, Lt4/m;

    .line 89
    .line 90
    invoke-direct {v2, v0}, Lt4/e;-><init>(Lt4/r;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, v2}, Lt4/e;-><init>(Lt4/g;)V

    .line 94
    .line 95
    .line 96
    return-object v1

    .line 97
    :cond_5
    new-instance v0, Lt4/b;

    .line 98
    .line 99
    const-string v1, "Unexpected token: null"

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0
.end method

.method public final c()Lt4/k;
    .locals 4

    .line 1
    iget-object v0, p0, Lt4/o;->d:Lt4/r;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Lt4/o;->a()Lt4/f;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    filled-new-array {v1}, [Lt4/f;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lv1/f;->J([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    const/16 v2, 0xb

    .line 20
    .line 21
    iget v3, v0, Lt4/r;->a:I

    .line 22
    .line 23
    if-eq v3, v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x5

    .line 26
    if-eq v3, v2, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x7

    .line 29
    if-eq v3, v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lt4/o;->a()Lt4/f;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    new-instance v0, Lt4/k;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    new-array v2, v2, [Lt4/f;

    .line 46
    .line 47
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, [Lt4/f;

    .line 52
    .line 53
    invoke-direct {v0, v1}, Lt4/k;-><init>([Lt4/f;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    const/4 v0, 0x0

    .line 58
    return-object v0

    .line 59
    :cond_3
    new-instance v0, Lt4/b;

    .line 60
    .line 61
    const-string v1, "Unexpected token: null"

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method public final d(IZ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lt4/o;->d:Lt4/r;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v1, v0, Lt4/r;->a:I

    .line 6
    .line 7
    if-ne v1, p1, :cond_1

    .line 8
    .line 9
    iget p1, p0, Lt4/o;->c:I

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    add-int/2addr p1, p2

    .line 13
    iput p1, p0, Lt4/o;->c:I

    .line 14
    .line 15
    iget-object v0, p0, Lt4/o;->b:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lt p1, v1, :cond_0

    .line 22
    .line 23
    new-instance p1, Lt4/r;

    .line 24
    .line 25
    sget-object v0, Lt4/s;->e:Lt4/s;

    .line 26
    .line 27
    const/16 v1, 0xb

    .line 28
    .line 29
    invoke-direct {p1, v1, v0}, Lt4/r;-><init>(ILt4/s;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iput-object p1, p0, Lt4/o;->d:Lt4/r;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget p1, p0, Lt4/o;->c:I

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lt4/r;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :goto_1
    return p2

    .line 45
    :cond_1
    if-nez p2, :cond_2

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    return p1

    .line 49
    :cond_2
    new-instance p2, Lt4/b;

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v3, "Unexpected token `"

    .line 54
    .line 55
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v3, v0, Lt4/r;->b:Lt4/s;

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v3, "\' typed `"

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Lorg/bouncycastle/math/ec/a;->r(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, "\' near line "

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget v0, v0, Lt4/r;->c:I

    .line 81
    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, ", expected "

    .line 86
    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lorg/bouncycastle/math/ec/a;->r(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {p2, p1}, Lt4/b;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p2

    .line 105
    :cond_3
    new-instance p1, Lt4/b;

    .line 106
    .line 107
    const-string p2, "Unexpected token: null"

    .line 108
    .line 109
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1
.end method

.method public final e()Lt4/p;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lt4/o;->a:Lt4/l;

    .line 4
    .line 5
    iget-object v2, v1, Lt4/l;->a:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lx4/o;->a:Lx4/o;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    move-object v5, v3

    .line 13
    goto/16 :goto_11

    .line 14
    .line 15
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput v4, v1, Lt4/l;->b:I

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    iput v6, v1, Lt4/l;->d:I

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-lez v7, :cond_20

    .line 30
    .line 31
    iget v7, v1, Lt4/l;->b:I

    .line 32
    .line 33
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    iput-char v7, v1, Lt4/l;->c:C

    .line 38
    .line 39
    :goto_0
    iget v7, v1, Lt4/l;->b:I

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-ge v7, v8, :cond_20

    .line 46
    .line 47
    iget-object v7, v1, Lt4/l;->a:Ljava/lang/String;

    .line 48
    .line 49
    if-nez v7, :cond_1

    .line 50
    .line 51
    new-instance v7, Lt4/j;

    .line 52
    .line 53
    invoke-direct {v7}, Lt4/j;-><init>()V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_10

    .line 57
    .line 58
    :cond_1
    iget-char v8, v1, Lt4/l;->c:C

    .line 59
    .line 60
    const/16 v9, 0x20

    .line 61
    .line 62
    const/16 v10, 0xa

    .line 63
    .line 64
    if-eq v8, v9, :cond_1d

    .line 65
    .line 66
    const/16 v9, 0x9

    .line 67
    .line 68
    if-eq v8, v9, :cond_1d

    .line 69
    .line 70
    if-eq v8, v10, :cond_1d

    .line 71
    .line 72
    const/16 v11, 0xd

    .line 73
    .line 74
    if-ne v8, v11, :cond_2

    .line 75
    .line 76
    goto/16 :goto_f

    .line 77
    .line 78
    :cond_2
    iget v8, v1, Lt4/l;->b:I

    .line 79
    .line 80
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-lt v8, v7, :cond_3

    .line 85
    .line 86
    new-instance v7, Lt4/j;

    .line 87
    .line 88
    invoke-direct {v7}, Lt4/j;-><init>()V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_10

    .line 92
    .line 93
    :cond_3
    sget-object v7, Lt4/s;->b:Lt4/s;

    .line 94
    .line 95
    iget-char v7, v1, Lt4/l;->c:C

    .line 96
    .line 97
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-static {v7}, Ld1/h;->c(Ljava/lang/String;)Lt4/s;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    sget-object v8, Lt4/s;->b:Lt4/s;

    .line 106
    .line 107
    invoke-static {v7, v8}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    const/16 v11, 0x8

    .line 112
    .line 113
    if-eqz v8, :cond_4

    .line 114
    .line 115
    invoke-virtual {v1, v6}, Lt4/l;->c(Z)Z

    .line 116
    .line 117
    .line 118
    new-instance v8, Lt4/r;

    .line 119
    .line 120
    invoke-direct {v8, v11, v7}, Lt4/r;-><init>(ILt4/s;)V

    .line 121
    .line 122
    .line 123
    :goto_1
    move-object v7, v8

    .line 124
    goto/16 :goto_e

    .line 125
    .line 126
    :cond_4
    sget-object v8, Lt4/s;->f:Lt4/s;

    .line 127
    .line 128
    invoke-static {v7, v8}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-eqz v8, :cond_5

    .line 133
    .line 134
    invoke-virtual {v1, v6}, Lt4/l;->c(Z)Z

    .line 135
    .line 136
    .line 137
    new-instance v8, Lt4/r;

    .line 138
    .line 139
    const/4 v9, 0x4

    .line 140
    invoke-direct {v8, v9, v7}, Lt4/r;-><init>(ILt4/s;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_5
    sget-object v8, Lt4/s;->g:Lt4/s;

    .line 145
    .line 146
    invoke-static {v7, v8}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    if-eqz v8, :cond_6

    .line 151
    .line 152
    invoke-virtual {v1, v4}, Lt4/l;->c(Z)Z

    .line 153
    .line 154
    .line 155
    new-instance v8, Lt4/r;

    .line 156
    .line 157
    const/4 v9, 0x5

    .line 158
    invoke-direct {v8, v9, v7}, Lt4/r;-><init>(ILt4/s;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_6
    sget-object v8, Lt4/s;->h:Lt4/s;

    .line 163
    .line 164
    invoke-static {v7, v8}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-eqz v8, :cond_7

    .line 169
    .line 170
    invoke-virtual {v1, v4}, Lt4/l;->c(Z)Z

    .line 171
    .line 172
    .line 173
    new-instance v8, Lt4/r;

    .line 174
    .line 175
    const/4 v9, 0x6

    .line 176
    invoke-direct {v8, v9, v7}, Lt4/r;-><init>(ILt4/s;)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_7
    sget-object v8, Lt4/s;->i:Lt4/s;

    .line 181
    .line 182
    invoke-static {v7, v8}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    if-eqz v8, :cond_8

    .line 187
    .line 188
    invoke-virtual {v1, v4}, Lt4/l;->c(Z)Z

    .line 189
    .line 190
    .line 191
    new-instance v8, Lt4/r;

    .line 192
    .line 193
    const/4 v9, 0x7

    .line 194
    invoke-direct {v8, v9, v7}, Lt4/r;-><init>(ILt4/s;)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_8
    sget-object v8, Lt4/s;->c:Lt4/s;

    .line 199
    .line 200
    invoke-static {v7, v8}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    if-eqz v8, :cond_9

    .line 205
    .line 206
    invoke-virtual {v1, v6}, Lt4/l;->c(Z)Z

    .line 207
    .line 208
    .line 209
    new-instance v8, Lt4/r;

    .line 210
    .line 211
    invoke-direct {v8, v9, v7}, Lt4/r;-><init>(ILt4/s;)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_9
    sget-object v8, Lt4/s;->d:Lt4/s;

    .line 216
    .line 217
    invoke-static {v7, v8}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    if-eqz v7, :cond_b

    .line 222
    .line 223
    new-instance v7, Lt4/r;

    .line 224
    .line 225
    invoke-virtual {v1, v6}, Lt4/l;->c(Z)Z

    .line 226
    .line 227
    .line 228
    new-instance v8, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    :goto_2
    iget-char v9, v1, Lt4/l;->c:C

    .line 234
    .line 235
    sget-object v10, Lt4/s;->d:Lt4/s;

    .line 236
    .line 237
    iget-object v10, v10, Lt4/s;->a:Lu4/e;

    .line 238
    .line 239
    iget-object v10, v10, Lu4/e;->a:Ljava/lang/Object;

    .line 240
    .line 241
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    .line 246
    .line 247
    .line 248
    move-result v10

    .line 249
    if-eq v9, v10, :cond_a

    .line 250
    .line 251
    iget-char v9, v1, Lt4/l;->c:C

    .line 252
    .line 253
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v4}, Lt4/l;->c(Z)Z

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    if-eqz v9, :cond_a

    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_a
    invoke-virtual {v1, v4}, Lt4/l;->c(Z)Z

    .line 264
    .line 265
    .line 266
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v8

    .line 270
    const-string v9, "builder.toString()"

    .line 271
    .line 272
    invoke-static {v8, v9}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-static {v8}, Ld1/h;->c(Ljava/lang/String;)Lt4/s;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    const/4 v9, 0x3

    .line 280
    invoke-direct {v7, v9, v8}, Lt4/r;-><init>(ILt4/s;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_e

    .line 284
    .line 285
    :cond_b
    iget-char v7, v1, Lt4/l;->c:C

    .line 286
    .line 287
    invoke-static {v7}, Lt4/l;->b(C)Z

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    const/4 v8, 0x2

    .line 292
    if-eqz v7, :cond_19

    .line 293
    .line 294
    new-instance v7, Lt4/r;

    .line 295
    .line 296
    iget-char v12, v1, Lt4/l;->c:C

    .line 297
    .line 298
    const/16 v13, 0x30

    .line 299
    .line 300
    sub-int/2addr v12, v13

    .line 301
    int-to-double v14, v12

    .line 302
    const-wide/16 v16, 0x0

    .line 303
    .line 304
    cmpl-double v12, v14, v16

    .line 305
    .line 306
    if-lez v12, :cond_f

    .line 307
    .line 308
    invoke-virtual {v1, v4}, Lt4/l;->c(Z)Z

    .line 309
    .line 310
    .line 311
    move-result v8

    .line 312
    move v9, v4

    .line 313
    move v11, v6

    .line 314
    :goto_3
    if-eqz v8, :cond_e

    .line 315
    .line 316
    iget-char v8, v1, Lt4/l;->c:C

    .line 317
    .line 318
    invoke-static {v8}, Lt4/l;->b(C)Z

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    if-eqz v8, :cond_d

    .line 323
    .line 324
    int-to-double v12, v10

    .line 325
    if-eqz v9, :cond_c

    .line 326
    .line 327
    mul-double v16, v16, v12

    .line 328
    .line 329
    iget-char v8, v1, Lt4/l;->c:C

    .line 330
    .line 331
    invoke-static {v8}, Lt4/l;->d(C)I

    .line 332
    .line 333
    .line 334
    move-result v8

    .line 335
    int-to-double v12, v8

    .line 336
    add-double v16, v16, v12

    .line 337
    .line 338
    mul-int/lit8 v11, v11, 0xa

    .line 339
    .line 340
    goto :goto_4

    .line 341
    :cond_c
    mul-double/2addr v14, v12

    .line 342
    iget-char v8, v1, Lt4/l;->c:C

    .line 343
    .line 344
    invoke-static {v8}, Lt4/l;->d(C)I

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    int-to-double v12, v8

    .line 349
    add-double/2addr v14, v12

    .line 350
    :goto_4
    invoke-virtual {v1, v4}, Lt4/l;->c(Z)Z

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    goto :goto_3

    .line 355
    :cond_d
    iget-char v8, v1, Lt4/l;->c:C

    .line 356
    .line 357
    const/16 v9, 0x2e

    .line 358
    .line 359
    if-ne v8, v9, :cond_e

    .line 360
    .line 361
    invoke-virtual {v1, v4}, Lt4/l;->c(Z)Z

    .line 362
    .line 363
    .line 364
    move-result v8

    .line 365
    move v9, v6

    .line 366
    goto :goto_3

    .line 367
    :cond_e
    int-to-double v8, v11

    .line 368
    div-double v16, v16, v8

    .line 369
    .line 370
    add-double v16, v16, v14

    .line 371
    .line 372
    goto/16 :goto_c

    .line 373
    .line 374
    :cond_f
    invoke-virtual {v1, v4}, Lt4/l;->c(Z)Z

    .line 375
    .line 376
    .line 377
    move-result v10

    .line 378
    if-nez v10, :cond_10

    .line 379
    .line 380
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v8

    .line 384
    goto/16 :goto_d

    .line 385
    .line 386
    :cond_10
    iget-char v10, v1, Lt4/l;->c:C

    .line 387
    .line 388
    const/16 v12, 0x78

    .line 389
    .line 390
    if-eq v10, v12, :cond_15

    .line 391
    .line 392
    const/16 v12, 0x58

    .line 393
    .line 394
    if-ne v10, v12, :cond_11

    .line 395
    .line 396
    goto :goto_8

    .line 397
    :cond_11
    const/16 v9, 0x62

    .line 398
    .line 399
    if-eq v10, v9, :cond_14

    .line 400
    .line 401
    const/16 v9, 0x42

    .line 402
    .line 403
    if-ne v10, v9, :cond_12

    .line 404
    .line 405
    goto :goto_6

    .line 406
    :cond_12
    move v8, v6

    .line 407
    :goto_5
    if-eqz v8, :cond_13

    .line 408
    .line 409
    iget-char v8, v1, Lt4/l;->c:C

    .line 410
    .line 411
    if-gt v13, v8, :cond_13

    .line 412
    .line 413
    const/16 v9, 0x38

    .line 414
    .line 415
    if-ge v8, v9, :cond_13

    .line 416
    .line 417
    int-to-double v9, v11

    .line 418
    mul-double/2addr v14, v9

    .line 419
    invoke-static {v8}, Lt4/l;->d(C)I

    .line 420
    .line 421
    .line 422
    move-result v8

    .line 423
    int-to-double v8, v8

    .line 424
    add-double/2addr v14, v8

    .line 425
    invoke-virtual {v1, v4}, Lt4/l;->c(Z)Z

    .line 426
    .line 427
    .line 428
    move-result v8

    .line 429
    goto :goto_5

    .line 430
    :cond_13
    move-wide/from16 v16, v14

    .line 431
    .line 432
    goto :goto_c

    .line 433
    :cond_14
    :goto_6
    invoke-virtual {v1, v4}, Lt4/l;->c(Z)Z

    .line 434
    .line 435
    .line 436
    move-result v9

    .line 437
    :goto_7
    if-eqz v9, :cond_13

    .line 438
    .line 439
    iget-char v9, v1, Lt4/l;->c:C

    .line 440
    .line 441
    if-gt v13, v9, :cond_13

    .line 442
    .line 443
    const/16 v10, 0x32

    .line 444
    .line 445
    if-ge v9, v10, :cond_13

    .line 446
    .line 447
    int-to-double v10, v8

    .line 448
    mul-double/2addr v10, v14

    .line 449
    invoke-static {v9}, Lt4/l;->d(C)I

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    int-to-double v8, v9

    .line 454
    add-double/2addr v10, v8

    .line 455
    add-double/2addr v14, v10

    .line 456
    invoke-virtual {v1, v4}, Lt4/l;->c(Z)Z

    .line 457
    .line 458
    .line 459
    move-result v9

    .line 460
    const/4 v8, 0x2

    .line 461
    goto :goto_7

    .line 462
    :cond_15
    :goto_8
    invoke-virtual {v1, v4}, Lt4/l;->c(Z)Z

    .line 463
    .line 464
    .line 465
    move-result v8

    .line 466
    :goto_9
    if-eqz v8, :cond_13

    .line 467
    .line 468
    iget-char v8, v1, Lt4/l;->c:C

    .line 469
    .line 470
    invoke-static {v8}, Lt4/l;->b(C)Z

    .line 471
    .line 472
    .line 473
    move-result v10

    .line 474
    const/16 v11, 0x41

    .line 475
    .line 476
    if-nez v10, :cond_17

    .line 477
    .line 478
    const/16 v10, 0x61

    .line 479
    .line 480
    if-gt v10, v8, :cond_16

    .line 481
    .line 482
    const/16 v10, 0x67

    .line 483
    .line 484
    if-ge v8, v10, :cond_16

    .line 485
    .line 486
    goto :goto_a

    .line 487
    :cond_16
    if-gt v11, v8, :cond_13

    .line 488
    .line 489
    const/16 v10, 0x47

    .line 490
    .line 491
    if-ge v8, v10, :cond_13

    .line 492
    .line 493
    :cond_17
    :goto_a
    iget-char v8, v1, Lt4/l;->c:C

    .line 494
    .line 495
    and-int/lit8 v10, v8, 0xf

    .line 496
    .line 497
    add-int/lit8 v10, v10, 0x10

    .line 498
    .line 499
    invoke-static {v8, v11}, Li5/a;->t(II)I

    .line 500
    .line 501
    .line 502
    move-result v8

    .line 503
    if-ltz v8, :cond_18

    .line 504
    .line 505
    move v8, v9

    .line 506
    goto :goto_b

    .line 507
    :cond_18
    move v8, v4

    .line 508
    :goto_b
    add-int/2addr v10, v8

    .line 509
    int-to-double v10, v10

    .line 510
    mul-double/2addr v14, v10

    .line 511
    invoke-virtual {v1, v4}, Lt4/l;->c(Z)Z

    .line 512
    .line 513
    .line 514
    move-result v8

    .line 515
    goto :goto_9

    .line 516
    :goto_c
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v8

    .line 520
    :goto_d
    invoke-static {v8}, Ld1/h;->c(Ljava/lang/String;)Lt4/s;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    invoke-direct {v7, v6, v8}, Lt4/r;-><init>(ILt4/s;)V

    .line 525
    .line 526
    .line 527
    goto :goto_e

    .line 528
    :cond_19
    iget-char v7, v1, Lt4/l;->c:C

    .line 529
    .line 530
    invoke-static {v6, v7}, Lt4/l;->a(ZC)Z

    .line 531
    .line 532
    .line 533
    move-result v7

    .line 534
    if-eqz v7, :cond_1c

    .line 535
    .line 536
    new-instance v7, Lt4/r;

    .line 537
    .line 538
    new-instance v8, Ljava/lang/StringBuilder;

    .line 539
    .line 540
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .line 542
    .line 543
    :cond_1a
    iget-char v9, v1, Lt4/l;->c:C

    .line 544
    .line 545
    invoke-static {v4, v9}, Lt4/l;->a(ZC)Z

    .line 546
    .line 547
    .line 548
    move-result v9

    .line 549
    if-eqz v9, :cond_1b

    .line 550
    .line 551
    iget-char v9, v1, Lt4/l;->c:C

    .line 552
    .line 553
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v1, v4}, Lt4/l;->c(Z)Z

    .line 557
    .line 558
    .line 559
    move-result v9

    .line 560
    if-nez v9, :cond_1a

    .line 561
    .line 562
    :cond_1b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v8

    .line 566
    const-string v9, "StringBuilder().apply(builderAction).toString()"

    .line 567
    .line 568
    invoke-static {v8, v9}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-static {v8}, Ld1/h;->c(Ljava/lang/String;)Lt4/s;

    .line 572
    .line 573
    .line 574
    move-result-object v8

    .line 575
    const/4 v9, 0x2

    .line 576
    invoke-direct {v7, v9, v8}, Lt4/r;-><init>(ILt4/s;)V

    .line 577
    .line 578
    .line 579
    :goto_e
    iget v8, v1, Lt4/l;->d:I

    .line 580
    .line 581
    iput v8, v7, Lt4/r;->c:I

    .line 582
    .line 583
    goto :goto_10

    .line 584
    :cond_1c
    new-instance v2, Lt4/b;

    .line 585
    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    .line 587
    .line 588
    const-string v4, "Unexpected character near line "

    .line 589
    .line 590
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    iget v4, v1, Lt4/l;->d:I

    .line 594
    .line 595
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    const-string v4, ": "

    .line 599
    .line 600
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    iget-char v1, v1, Lt4/l;->c:C

    .line 604
    .line 605
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    invoke-direct {v2, v1}, Lt4/b;-><init>(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    throw v2

    .line 616
    :cond_1d
    :goto_f
    if-ne v8, v10, :cond_1e

    .line 617
    .line 618
    iget v8, v1, Lt4/l;->d:I

    .line 619
    .line 620
    add-int/2addr v8, v6

    .line 621
    iput v8, v1, Lt4/l;->d:I

    .line 622
    .line 623
    :cond_1e
    invoke-virtual {v1, v4}, Lt4/l;->c(Z)Z

    .line 624
    .line 625
    .line 626
    move-result v8

    .line 627
    if-nez v8, :cond_1

    .line 628
    .line 629
    new-instance v7, Lt4/j;

    .line 630
    .line 631
    invoke-direct {v7}, Lt4/j;-><init>()V

    .line 632
    .line 633
    .line 634
    :goto_10
    instance-of v8, v7, Lt4/j;

    .line 635
    .line 636
    if-eqz v8, :cond_1f

    .line 637
    .line 638
    goto :goto_11

    .line 639
    :cond_1f
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    goto/16 :goto_0

    .line 643
    .line 644
    :cond_20
    :goto_11
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    if-eqz v1, :cond_21

    .line 649
    .line 650
    new-instance v1, Lt4/p;

    .line 651
    .line 652
    invoke-direct {v1, v3}, Lt4/p;-><init>(Ljava/util/List;)V

    .line 653
    .line 654
    .line 655
    goto :goto_13

    .line 656
    :cond_21
    iget-object v1, v0, Lt4/o;->b:Ljava/util/ArrayList;

    .line 657
    .line 658
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 662
    .line 663
    .line 664
    iput v4, v0, Lt4/o;->c:I

    .line 665
    .line 666
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    check-cast v1, Lt4/r;

    .line 671
    .line 672
    iput-object v1, v0, Lt4/o;->d:Lt4/r;

    .line 673
    .line 674
    invoke-virtual/range {p0 .. p0}, Lt4/o;->c()Lt4/k;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    if-eqz v2, :cond_25

    .line 679
    .line 680
    filled-new-array {v2}, [Lt4/k;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    invoke-static {v2}, Lv1/f;->J([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    :goto_12
    if-eqz v1, :cond_22

    .line 689
    .line 690
    const/16 v3, 0xb

    .line 691
    .line 692
    iget v4, v1, Lt4/r;->a:I

    .line 693
    .line 694
    if-eq v4, v3, :cond_23

    .line 695
    .line 696
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lt4/o;->c()Lt4/k;

    .line 697
    .line 698
    .line 699
    move-result-object v3

    .line 700
    if-nez v3, :cond_24

    .line 701
    .line 702
    :cond_23
    new-instance v1, Lt4/p;

    .line 703
    .line 704
    invoke-direct {v1, v2}, Lt4/p;-><init>(Ljava/util/List;)V

    .line 705
    .line 706
    .line 707
    goto :goto_13

    .line 708
    :cond_24
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    goto :goto_12

    .line 712
    :cond_25
    new-instance v1, Lt4/p;

    .line 713
    .line 714
    invoke-direct {v1, v3}, Lt4/p;-><init>(Ljava/util/List;)V

    .line 715
    .line 716
    .line 717
    :goto_13
    return-object v1
.end method
