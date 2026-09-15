.class public final Lq5/g;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/p;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lq5/g;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq5/g;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p2, p0, Lq5/g;->b:Z

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final d(ILjava/lang/CharSequence;)Lw4/c;
    .locals 13

    .line 1
    iget v0, p0, Lq5/g;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lq5/g;->c:Ljava/lang/Object;

    .line 6
    .line 7
    const-string v4, "$this$$receiver"

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast v3, Ljava/util/List;

    .line 16
    .line 17
    iget-boolean v0, p0, Lq5/g;->b:Z

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-ne v5, v1, :cond_3

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    const/4 v1, 0x4

    .line 43
    invoke-static {p2, v0, p1, v4, v1}, Lq5/h;->u1(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-gez p1, :cond_0

    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance p2, Lw4/c;

    .line 56
    .line 57
    invoke-direct {p2, p1, v0}, Lw4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string p2, "List has more than one element."

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 71
    .line 72
    const-string p2, "List is empty."

    .line 73
    .line 74
    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_3
    new-instance v5, Ln5/c;

    .line 79
    .line 80
    if-gez p1, :cond_4

    .line 81
    .line 82
    move p1, v4

    .line 83
    :cond_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-direct {v5, p1, v4, v1}, Ln5/a;-><init>(III)V

    .line 88
    .line 89
    .line 90
    instance-of v1, p2, Ljava/lang/String;

    .line 91
    .line 92
    iget v10, v5, Ln5/a;->c:I

    .line 93
    .line 94
    iget v11, v5, Ln5/a;->b:I

    .line 95
    .line 96
    if-eqz v1, :cond_a

    .line 97
    .line 98
    if-lez v10, :cond_5

    .line 99
    .line 100
    if-le p1, v11, :cond_6

    .line 101
    .line 102
    :cond_5
    if-gez v10, :cond_10

    .line 103
    .line 104
    if-gt v11, p1, :cond_10

    .line 105
    .line 106
    :cond_6
    :goto_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_8

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    move-object v7, v12

    .line 121
    check-cast v7, Ljava/lang/String;

    .line 122
    .line 123
    const/4 v4, 0x0

    .line 124
    move-object v8, p2

    .line 125
    check-cast v8, Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    move v5, p1

    .line 132
    move v9, v0

    .line 133
    invoke-static/range {v4 .. v9}, Lq5/h;->A1(IIILjava/lang/String;Ljava/lang/String;Z)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_7

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_8
    move-object v12, v2

    .line 141
    :goto_1
    check-cast v12, Ljava/lang/String;

    .line 142
    .line 143
    if-eqz v12, :cond_9

    .line 144
    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    new-instance p2, Lw4/c;

    .line 150
    .line 151
    invoke-direct {p2, p1, v12}, Lw4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_9
    if-eq p1, v11, :cond_10

    .line 156
    .line 157
    add-int/2addr p1, v10

    .line 158
    goto :goto_0

    .line 159
    :cond_a
    if-lez v10, :cond_b

    .line 160
    .line 161
    if-le p1, v11, :cond_c

    .line 162
    .line 163
    :cond_b
    if-gez v10, :cond_10

    .line 164
    .line 165
    if-gt v11, p1, :cond_10

    .line 166
    .line 167
    :cond_c
    :goto_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-eqz v4, :cond_e

    .line 176
    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    move-object v4, v12

    .line 182
    check-cast v4, Ljava/lang/String;

    .line 183
    .line 184
    const/4 v6, 0x0

    .line 185
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    move v5, v0

    .line 190
    move-object v7, p2

    .line 191
    move v8, p1

    .line 192
    invoke-static/range {v4 .. v9}, Lq5/h;->B1(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_d

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_e
    move-object v12, v2

    .line 200
    :goto_3
    check-cast v12, Ljava/lang/String;

    .line 201
    .line 202
    if-eqz v12, :cond_f

    .line 203
    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    new-instance p2, Lw4/c;

    .line 209
    .line 210
    invoke-direct {p2, p1, v12}, Lw4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_f
    if-eq p1, v11, :cond_10

    .line 215
    .line 216
    add-int/2addr p1, v10

    .line 217
    goto :goto_2

    .line 218
    :cond_10
    :goto_4
    move-object p2, v2

    .line 219
    :goto_5
    if-eqz p2, :cond_11

    .line 220
    .line 221
    iget-object p1, p2, Lw4/c;->b:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast p1, Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    new-instance v2, Lw4/c;

    .line 234
    .line 235
    iget-object p2, p2, Lw4/c;->a:Ljava/lang/Object;

    .line 236
    .line 237
    invoke-direct {v2, p2, p1}, Lw4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    :cond_11
    return-object v2

    .line 241
    :pswitch_0
    invoke-static {p2, v4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    check-cast v3, [C

    .line 245
    .line 246
    iget-boolean v0, p0, Lq5/g;->b:Z

    .line 247
    .line 248
    invoke-static {p1, p2, v0, v3}, Lq5/h;->v1(ILjava/lang/CharSequence;Z[C)I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    if-gez p1, :cond_12

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    new-instance v2, Lw4/c;

    .line 264
    .line 265
    invoke-direct {v2, p1, p2}, Lw4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :goto_6
    return-object v2

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lq5/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/CharSequence;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Number;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-virtual {p0, p2, p1}, Lq5/g;->d(ILjava/lang/CharSequence;)Lw4/c;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :pswitch_0
    check-cast p1, Ljava/lang/CharSequence;

    .line 20
    .line 21
    check-cast p2, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p0, p2, p1}, Lq5/g;->d(ILjava/lang/CharSequence;)Lw4/c;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
