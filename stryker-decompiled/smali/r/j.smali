.class public final Lr/j;
.super Lr/o;
.source "SourceFile"


# virtual methods
.method public final a(Lr/d;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lr/o;->b:Lq/d;

    .line 2
    .line 3
    check-cast p1, Lq/a;

    .line 4
    .line 5
    iget v0, p1, Lq/a;->s0:I

    .line 6
    .line 7
    iget-object v1, p0, Lr/o;->h:Lr/f;

    .line 8
    .line 9
    iget-object v2, v1, Lr/f;->l:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, -0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    move v5, v3

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-eqz v6, :cond_3

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Lr/f;

    .line 29
    .line 30
    iget v6, v6, Lr/f;->g:I

    .line 31
    .line 32
    if-eq v5, v3, :cond_1

    .line 33
    .line 34
    if-ge v6, v5, :cond_2

    .line 35
    .line 36
    :cond_1
    move v5, v6

    .line 37
    :cond_2
    if-ge v4, v6, :cond_0

    .line 38
    .line 39
    move v4, v6

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    if-eqz v0, :cond_5

    .line 42
    .line 43
    const/4 v2, 0x2

    .line 44
    if-ne v0, v2, :cond_4

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    iget p1, p1, Lq/a;->u0:I

    .line 48
    .line 49
    add-int/2addr v4, p1

    .line 50
    invoke-virtual {v1, v4}, Lr/f;->d(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_5
    :goto_1
    iget p1, p1, Lq/a;->u0:I

    .line 55
    .line 56
    add-int/2addr v5, p1

    .line 57
    invoke-virtual {v1, v5}, Lr/f;->d(I)V

    .line 58
    .line 59
    .line 60
    :goto_2
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 2
    .line 3
    instance-of v1, v0, Lq/a;

    .line 4
    .line 5
    if-eqz v1, :cond_a

    .line 6
    .line 7
    iget-object v1, p0, Lr/o;->h:Lr/f;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v1, Lr/f;->b:Z

    .line 11
    .line 12
    check-cast v0, Lq/a;

    .line 13
    .line 14
    iget v3, v0, Lq/a;->s0:I

    .line 15
    .line 16
    iget-boolean v4, v0, Lq/a;->t0:Z

    .line 17
    .line 18
    const/16 v5, 0x8

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    if-eqz v3, :cond_8

    .line 22
    .line 23
    if-eq v3, v2, :cond_5

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-eq v3, v2, :cond_3

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    if-eq v3, v2, :cond_0

    .line 30
    .line 31
    goto/16 :goto_9

    .line 32
    .line 33
    :cond_0
    const/4 v2, 0x7

    .line 34
    iput v2, v1, Lr/f;->e:I

    .line 35
    .line 36
    :goto_0
    iget v2, v0, Lq/j;->r0:I

    .line 37
    .line 38
    if-ge v6, v2, :cond_2

    .line 39
    .line 40
    iget-object v2, v0, Lq/j;->q0:[Lq/d;

    .line 41
    .line 42
    aget-object v2, v2, v6

    .line 43
    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    iget v3, v2, Lq/d;->g0:I

    .line 47
    .line 48
    if-ne v3, v5, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    iget-object v2, v2, Lq/d;->e:Lr/m;

    .line 52
    .line 53
    iget-object v2, v2, Lr/o;->i:Lr/f;

    .line 54
    .line 55
    iget-object v3, v2, Lr/f;->k:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    iget-object v3, v1, Lr/f;->l:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 69
    .line 70
    iget-object v0, v0, Lq/d;->e:Lr/m;

    .line 71
    .line 72
    iget-object v0, v0, Lr/o;->h:Lr/f;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lr/j;->m(Lr/f;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 78
    .line 79
    iget-object v0, v0, Lq/d;->e:Lr/m;

    .line 80
    .line 81
    :goto_2
    iget-object v0, v0, Lr/o;->i:Lr/f;

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lr/j;->m(Lr/f;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_9

    .line 87
    .line 88
    :cond_3
    const/4 v2, 0x6

    .line 89
    iput v2, v1, Lr/f;->e:I

    .line 90
    .line 91
    :goto_3
    iget v2, v0, Lq/j;->r0:I

    .line 92
    .line 93
    if-ge v6, v2, :cond_2

    .line 94
    .line 95
    iget-object v2, v0, Lq/j;->q0:[Lq/d;

    .line 96
    .line 97
    aget-object v2, v2, v6

    .line 98
    .line 99
    if-nez v4, :cond_4

    .line 100
    .line 101
    iget v3, v2, Lq/d;->g0:I

    .line 102
    .line 103
    if-ne v3, v5, :cond_4

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_4
    iget-object v2, v2, Lq/d;->e:Lr/m;

    .line 107
    .line 108
    iget-object v2, v2, Lr/o;->h:Lr/f;

    .line 109
    .line 110
    iget-object v3, v2, Lr/f;->k:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    iget-object v3, v1, Lr/f;->l:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_5
    const/4 v2, 0x5

    .line 124
    iput v2, v1, Lr/f;->e:I

    .line 125
    .line 126
    :goto_5
    iget v2, v0, Lq/j;->r0:I

    .line 127
    .line 128
    if-ge v6, v2, :cond_7

    .line 129
    .line 130
    iget-object v2, v0, Lq/j;->q0:[Lq/d;

    .line 131
    .line 132
    aget-object v2, v2, v6

    .line 133
    .line 134
    if-nez v4, :cond_6

    .line 135
    .line 136
    iget v3, v2, Lq/d;->g0:I

    .line 137
    .line 138
    if-ne v3, v5, :cond_6

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_6
    iget-object v2, v2, Lq/d;->d:Lr/k;

    .line 142
    .line 143
    iget-object v2, v2, Lr/o;->i:Lr/f;

    .line 144
    .line 145
    iget-object v3, v2, Lr/f;->k:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    iget-object v3, v1, Lr/f;->l:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_7
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 159
    .line 160
    iget-object v0, v0, Lq/d;->d:Lr/k;

    .line 161
    .line 162
    iget-object v0, v0, Lr/o;->h:Lr/f;

    .line 163
    .line 164
    invoke-virtual {p0, v0}, Lr/j;->m(Lr/f;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 168
    .line 169
    iget-object v0, v0, Lq/d;->d:Lr/k;

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_8
    const/4 v2, 0x4

    .line 173
    iput v2, v1, Lr/f;->e:I

    .line 174
    .line 175
    :goto_7
    iget v2, v0, Lq/j;->r0:I

    .line 176
    .line 177
    if-ge v6, v2, :cond_7

    .line 178
    .line 179
    iget-object v2, v0, Lq/j;->q0:[Lq/d;

    .line 180
    .line 181
    aget-object v2, v2, v6

    .line 182
    .line 183
    if-nez v4, :cond_9

    .line 184
    .line 185
    iget v3, v2, Lq/d;->g0:I

    .line 186
    .line 187
    if-ne v3, v5, :cond_9

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_9
    iget-object v2, v2, Lq/d;->d:Lr/k;

    .line 191
    .line 192
    iget-object v2, v2, Lr/o;->h:Lr/f;

    .line 193
    .line 194
    iget-object v3, v2, Lr/f;->k:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    iget-object v3, v1, Lr/f;->l:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 205
    .line 206
    goto :goto_7

    .line 207
    :cond_a
    :goto_9
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 2
    .line 3
    instance-of v1, v0, Lq/a;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lq/a;

    .line 9
    .line 10
    iget v1, v1, Lq/a;->s0:I

    .line 11
    .line 12
    iget-object v2, p0, Lr/o;->h:Lr/f;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v1, v2, Lr/f;->g:I

    .line 21
    .line 22
    iput v1, v0, Lq/d;->Z:I

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    iget v1, v2, Lr/f;->g:I

    .line 26
    .line 27
    iput v1, v0, Lq/d;->Y:I

    .line 28
    .line 29
    :cond_2
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lr/o;->c:Lr/l;

    iget-object v0, p0, Lr/o;->h:Lr/f;

    invoke-virtual {v0}, Lr/f;->c()V

    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final m(Lr/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr/o;->h:Lr/f;

    iget-object v1, v0, Lr/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
