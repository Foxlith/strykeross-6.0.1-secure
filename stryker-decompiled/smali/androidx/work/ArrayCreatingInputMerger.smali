.class public final Landroidx/work/ArrayCreatingInputMerger;
.super Lm1/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Lm1/e;
    .locals 12

    .line 1
    new-instance v0, Landroidx/lifecycle/a0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Landroidx/lifecycle/a0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_6

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lm1/e;

    .line 27
    .line 28
    iget-object v2, v2, Lm1/e;->a:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "input.keyValueMap"

    .line 35
    .line 36
    invoke-static {v2, v3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/util/Map$Entry;

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const-class v5, Ljava/lang/String;

    .line 77
    .line 78
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const-string v7, "key"

    .line 83
    .line 84
    invoke-static {v4, v7}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v7, "newArray"

    .line 88
    .line 89
    const/4 v8, 0x0

    .line 90
    if-nez v6, :cond_3

    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_2

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_2
    const/4 v6, 0x1

    .line 100
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {v5, v8, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v5, v7}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    move-object v3, v5

    .line 111
    goto :goto_3

    .line 112
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-static {v9, v5}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-eqz v10, :cond_4

    .line 121
    .line 122
    const-string v5, "value"

    .line 123
    .line 124
    invoke-static {v3, v5}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-static {v10}, Li5/a;->m(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    add-int v11, v5, v9

    .line 147
    .line 148
    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    invoke-static {v6, v8, v10, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    .line 154
    .line 155
    invoke-static {v3, v8, v10, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    .line 157
    .line 158
    invoke-static {v10, v7}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    move-object v3, v10

    .line 162
    goto :goto_3

    .line 163
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    invoke-static {v9, v5}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    if-eqz v9, :cond_5

    .line 172
    .line 173
    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    add-int/lit8 v10, v9, 0x1

    .line 178
    .line 179
    invoke-static {v5, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-static {v6, v8, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    .line 185
    .line 186
    invoke-static {v5, v9, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-static {v5, v7}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :goto_3
    const-string v5, "if (existingValue == nul\u2026      }\n                }"

    .line 194
    .line 195
    invoke-static {v3, v5}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 204
    .line 205
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 206
    .line 207
    .line 208
    throw p1

    .line 209
    :cond_6
    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->b(Ljava/util/HashMap;)V

    .line 210
    .line 211
    .line 212
    new-instance p1, Lm1/e;

    .line 213
    .line 214
    iget-object v0, v0, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 215
    .line 216
    invoke-direct {p1, v0}, Lm1/e;-><init>(Ljava/util/HashMap;)V

    .line 217
    .line 218
    .line 219
    invoke-static {p1}, Lm1/e;->b(Lm1/e;)[B

    .line 220
    .line 221
    .line 222
    return-object p1
.end method
