.class public abstract Lz1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "DiagnosticsWrkr"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"DiagnosticsWrkr\")"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lz1/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static final a(Lv1/k;Lv1/t;Lv1/h;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 17

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lv1/p;

    .line 23
    .line 24
    invoke-static {v2}, Lv1/f;->t(Lv1/p;)Lv1/i;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    move-object/from16 v4, p2

    .line 29
    .line 30
    invoke-virtual {v4, v3}, Lv1/h;->m(Lv1/i;)Lv1/g;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    iget v3, v3, Lv1/g;->c:I

    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move-object v3, v5

    .line 45
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const-string v6, "SELECT name FROM workname WHERE work_spec_id=?"

    .line 49
    .line 50
    const/4 v7, 0x1

    .line 51
    invoke-static {v7, v6}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    iget-object v8, v2, Lv1/p;->a:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v8, :cond_1

    .line 58
    .line 59
    invoke-virtual {v6, v7}, Ly0/y;->h(I)V

    .line 60
    .line 61
    .line 62
    :goto_2
    move-object/from16 v7, p0

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_1
    invoke-virtual {v6, v7, v8}, Ly0/y;->d(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_3
    iget-object v9, v7, Lv1/k;->a:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v9, Ly0/w;

    .line 72
    .line 73
    invoke-virtual {v9}, Ly0/w;->b()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9, v6, v5}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .line 88
    .line 89
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    if-eqz v11, :cond_3

    .line 94
    .line 95
    const/4 v11, 0x0

    .line 96
    invoke-interface {v9, v11}, Landroid/database/Cursor;->isNull(I)Z

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    if-eqz v12, :cond_2

    .line 101
    .line 102
    move-object v11, v5

    .line 103
    goto :goto_5

    .line 104
    :cond_2
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    :goto_5
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    .line 111
    goto :goto_4

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    goto :goto_6

    .line 114
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Ly0/y;->u()V

    .line 118
    .line 119
    .line 120
    const-string v11, ","

    .line 121
    .line 122
    const/4 v12, 0x0

    .line 123
    const/4 v13, 0x0

    .line 124
    const/4 v14, 0x0

    .line 125
    const/16 v15, 0x3e

    .line 126
    .line 127
    invoke-static/range {v10 .. v15}, Lx4/m;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx4/a;I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    move-object/from16 v10, p1

    .line 132
    .line 133
    invoke-virtual {v10, v8}, Lv1/t;->l(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    const-string v12, ","

    .line 138
    .line 139
    const/4 v15, 0x0

    .line 140
    const/16 v16, 0x3e

    .line 141
    .line 142
    invoke-static/range {v11 .. v16}, Lx4/m;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx4/a;I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    const-string v9, "\n"

    .line 147
    .line 148
    const-string v11, "\t "

    .line 149
    .line 150
    invoke-static {v9, v8, v11}, Landroid/support/v4/media/session/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    iget-object v9, v2, Lv1/p;->c:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget v2, v2, Lv1/p;->b:I

    .line 169
    .line 170
    invoke-static {v2}, Ll1/e;->E(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const/16 v2, 0x9

    .line 190
    .line 191
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :goto_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6}, Ly0/y;->u()V

    .line 207
    .line 208
    .line 209
    throw v0

    .line 210
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    const-string v1, "StringBuilder().apply(builderAction).toString()"

    .line 215
    .line 216
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-object v0
.end method
