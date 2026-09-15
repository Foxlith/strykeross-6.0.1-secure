.class public final Ly0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:[Ljava/lang/String;


# instance fields
.field public final a:Ly0/w;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:[Ljava/lang/String;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile g:Z

.field public volatile h:Lc1/h;

.field public final i:Ly0/i;

.field public final j:Lk/g;

.field public final k:Ljava/lang/Object;

.field public final l:Ljava/lang/Object;

.field public final m:Landroidx/activity/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "INSERT"

    const-string v1, "UPDATE"

    const-string v2, "DELETE"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ly0/k;->n:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ly0/w;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "database"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ly0/k;->a:Ly0/w;

    .line 10
    .line 11
    iput-object p2, p0, Ly0/k;->b:Ljava/util/Map;

    .line 12
    .line 13
    iput-object p3, p0, Ly0/k;->c:Ljava/util/Map;

    .line 14
    .line 15
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Ly0/k;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    new-instance p2, Ly0/i;

    .line 24
    .line 25
    array-length v0, p4

    .line 26
    invoke-direct {p2, v0}, Ly0/i;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Ly0/k;->i:Ly0/i;

    .line 30
    .line 31
    new-instance p2, Lv1/c;

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    invoke-direct {p2, p1, v0}, Lv1/c;-><init>(Ly0/w;I)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lk/g;

    .line 38
    .line 39
    invoke-direct {p1}, Lk/g;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Ly0/k;->j:Lk/g;

    .line 43
    .line 44
    new-instance p1, Ljava/lang/Object;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Ly0/k;->k:Ljava/lang/Object;

    .line 50
    .line 51
    new-instance p1, Ljava/lang/Object;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Ly0/k;->l:Ljava/lang/Object;

    .line 57
    .line 58
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Ly0/k;->d:Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    array-length p1, p4

    .line 66
    new-array p2, p1, [Ljava/lang/String;

    .line 67
    .line 68
    :goto_0
    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    .line 69
    .line 70
    const-string v1, "US"

    .line 71
    .line 72
    if-ge p3, p1, :cond_2

    .line 73
    .line 74
    aget-object v2, p4, p3

    .line 75
    .line 76
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 77
    .line 78
    invoke-static {v3, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-object v4, p0, Ly0/k;->d:Ljava/util/LinkedHashMap;

    .line 93
    .line 94
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Ly0/k;->b:Ljava/util/Map;

    .line 98
    .line 99
    aget-object v4, p4, p3

    .line 100
    .line 101
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v2, :cond_0

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v2, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_0
    const/4 v2, 0x0

    .line 118
    :goto_1
    if-nez v2, :cond_1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_1
    move-object v1, v2

    .line 122
    :goto_2
    aput-object v1, p2, p3

    .line 123
    .line 124
    add-int/lit8 p3, p3, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    iput-object p2, p0, Ly0/k;->e:[Ljava/lang/String;

    .line 128
    .line 129
    iget-object p1, p0, Ly0/k;->b:Ljava/util/Map;

    .line 130
    .line 131
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-eqz p2, :cond_6

    .line 144
    .line 145
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    check-cast p2, Ljava/util/Map$Entry;

    .line 150
    .line 151
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    check-cast p3, Ljava/lang/String;

    .line 156
    .line 157
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 158
    .line 159
    invoke-static {p4, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    invoke-static {p3, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v2, p0, Ly0/k;->d:Ljava/util/LinkedHashMap;

    .line 170
    .line 171
    invoke-interface {v2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_3

    .line 176
    .line 177
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    check-cast p2, Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-static {p2, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object p4, p0, Ly0/k;->d:Ljava/util/LinkedHashMap;

    .line 191
    .line 192
    const-string v2, "<this>"

    .line 193
    .line 194
    invoke-static {p4, v2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p4, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    if-nez v2, :cond_5

    .line 202
    .line 203
    invoke-interface {p4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-eqz v3, :cond_4

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_4
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 211
    .line 212
    new-instance p2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string p4, "Key "

    .line 215
    .line 216
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string p3, " is missing in the map."

    .line 223
    .line 224
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p1

    .line 235
    :cond_5
    :goto_4
    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_6
    new-instance p1, Landroidx/activity/d;

    .line 240
    .line 241
    const/16 p2, 0xc

    .line 242
    .line 243
    invoke-direct {p1, p0, p2}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    .line 244
    .line 245
    .line 246
    iput-object p1, p0, Ly0/k;->m:Landroidx/activity/d;

    .line 247
    .line 248
    return-void
.end method


# virtual methods
.method public final a(Ly0/m;)V
    .locals 12

    .line 1
    iget-object v0, p1, Ly0/m;->a:[Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ly4/i;

    .line 4
    .line 5
    invoke-direct {v1}, Ly4/i;-><init>()V

    .line 6
    .line 7
    .line 8
    array-length v2, v0

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    if-ge v4, v2, :cond_1

    .line 12
    .line 13
    aget-object v5, v0, v4

    .line 14
    .line 15
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 16
    .line 17
    const-string v7, "US"

    .line 18
    .line 19
    invoke-static {v6, v7}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    const-string v8, "this as java.lang.String).toLowerCase(locale)"

    .line 27
    .line 28
    invoke-static {v7, v8}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v9, p0, Ly0/k;->c:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_0

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v5, v8}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-static {v5}, Li5/a;->m(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    check-cast v5, Ljava/util/Collection;

    .line 54
    .line 55
    invoke-virtual {v1, v5}, Ly4/i;->addAll(Ljava/util/Collection;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {v1, v5}, Ly4/i;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {v1}, Lv1/f;->c(Ly4/i;)Ly4/i;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-array v1, v3, [Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 76
    .line 77
    invoke-static {v0, v1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    check-cast v0, [Ljava/lang/String;

    .line 81
    .line 82
    new-instance v1, Ljava/util/ArrayList;

    .line 83
    .line 84
    array-length v2, v0

    .line 85
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .line 87
    .line 88
    array-length v2, v0

    .line 89
    move v4, v3

    .line 90
    :goto_2
    if-ge v4, v2, :cond_3

    .line 91
    .line 92
    aget-object v5, v0, v4

    .line 93
    .line 94
    iget-object v6, p0, Ly0/k;->d:Ljava/util/LinkedHashMap;

    .line 95
    .line 96
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 97
    .line 98
    const-string v8, "US"

    .line 99
    .line 100
    invoke-static {v7, v8}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    const-string v8, "this as java.lang.String).toLowerCase(locale)"

    .line 108
    .line 109
    invoke-static {v7, v8}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Ljava/lang/Integer;

    .line 117
    .line 118
    if-eqz v6, :cond_2

    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    add-int/lit8 v4, v4, 0x1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    const-string v0, "There is no table with name "

    .line 137
    .line 138
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    new-array v4, v2, [I

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    move v5, v3

    .line 157
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-eqz v6, :cond_4

    .line 162
    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    check-cast v6, Ljava/lang/Number;

    .line 168
    .line 169
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    add-int/lit8 v7, v5, 0x1

    .line 174
    .line 175
    aput v6, v4, v5

    .line 176
    .line 177
    move v5, v7

    .line 178
    goto :goto_3

    .line 179
    :cond_4
    new-instance v1, Ly0/j;

    .line 180
    .line 181
    invoke-direct {v1, p1, v4, v0}, Ly0/j;-><init>(Ly0/m;[I[Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Ly0/k;->j:Lk/g;

    .line 185
    .line 186
    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v5, p0, Ly0/k;->j:Lk/g;

    .line 188
    .line 189
    invoke-virtual {v5, p1}, Lk/g;->a(Ljava/lang/Object;)Lk/c;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    const/4 v7, 0x1

    .line 194
    if-eqz v6, :cond_5

    .line 195
    .line 196
    iget-object p1, v6, Lk/c;->b:Ljava/lang/Object;

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_5
    new-instance v6, Lk/c;

    .line 200
    .line 201
    invoke-direct {v6, p1, v1}, Lk/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    iget p1, v5, Lk/g;->d:I

    .line 205
    .line 206
    add-int/2addr p1, v7

    .line 207
    iput p1, v5, Lk/g;->d:I

    .line 208
    .line 209
    iget-object p1, v5, Lk/g;->b:Lk/c;

    .line 210
    .line 211
    if-nez p1, :cond_6

    .line 212
    .line 213
    iput-object v6, v5, Lk/g;->a:Lk/c;

    .line 214
    .line 215
    :goto_4
    iput-object v6, v5, Lk/g;->b:Lk/c;

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_6
    iput-object v6, p1, Lk/c;->c:Lk/c;

    .line 219
    .line 220
    iput-object p1, v6, Lk/c;->d:Lk/c;

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :goto_5
    const/4 p1, 0x0

    .line 224
    :goto_6
    check-cast p1, Ly0/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 225
    .line 226
    monitor-exit v0

    .line 227
    if-nez p1, :cond_a

    .line 228
    .line 229
    iget-object p1, p0, Ly0/k;->i:Ly0/i;

    .line 230
    .line 231
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    const-string v1, "tableIds"

    .line 239
    .line 240
    invoke-static {v0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    monitor-enter p1

    .line 244
    :try_start_1
    array-length v1, v0

    .line 245
    move v2, v3

    .line 246
    :goto_7
    if-ge v3, v1, :cond_8

    .line 247
    .line 248
    aget v4, v0, v3

    .line 249
    .line 250
    iget-object v5, p1, Ly0/i;->a:[J

    .line 251
    .line 252
    aget-wide v8, v5, v4

    .line 253
    .line 254
    const-wide/16 v10, 0x1

    .line 255
    .line 256
    add-long/2addr v10, v8

    .line 257
    aput-wide v10, v5, v4

    .line 258
    .line 259
    const-wide/16 v4, 0x0

    .line 260
    .line 261
    cmp-long v4, v8, v4

    .line 262
    .line 263
    if-nez v4, :cond_7

    .line 264
    .line 265
    iput-boolean v7, p1, Ly0/i;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    .line 267
    move v2, v7

    .line 268
    goto :goto_8

    .line 269
    :catchall_0
    move-exception v0

    .line 270
    goto :goto_9

    .line 271
    :cond_7
    :goto_8
    add-int/lit8 v3, v3, 0x1

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_8
    monitor-exit p1

    .line 275
    if-eqz v2, :cond_a

    .line 276
    .line 277
    iget-object p1, p0, Ly0/k;->a:Ly0/w;

    .line 278
    .line 279
    invoke-virtual {p1}, Ly0/w;->l()Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-nez v0, :cond_9

    .line 284
    .line 285
    goto :goto_a

    .line 286
    :cond_9
    invoke-virtual {p1}, Ly0/w;->h()Lc1/e;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-interface {p1}, Lc1/e;->q()Lc1/b;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p0, p1}, Ly0/k;->d(Lc1/b;)V

    .line 295
    .line 296
    .line 297
    goto :goto_a

    .line 298
    :goto_9
    monitor-exit p1

    .line 299
    throw v0

    .line 300
    :cond_a
    :goto_a
    return-void

    .line 301
    :catchall_1
    move-exception p1

    .line 302
    monitor-exit v0

    .line 303
    throw p1
.end method

.method public final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ly0/k;->a:Ly0/w;

    invoke-virtual {v0}, Ly0/w;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Ly0/k;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ly0/k;->a:Ly0/w;

    invoke-virtual {v0}, Ly0/w;->h()Lc1/e;

    move-result-object v0

    invoke-interface {v0}, Lc1/e;->q()Lc1/b;

    :cond_1
    iget-boolean v0, p0, Ly0/k;->g:Z

    if-nez v0, :cond_2

    const-string v0, "ROOM"

    const-string v2, "database is not initialized even though it is open"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final c(Lc1/b;I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT OR IGNORE INTO room_table_modification_log VALUES("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lc1/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ly0/k;->e:[Ljava/lang/String;

    aget-object v0, v0, p2

    sget-object v1, Ly0/k;->n:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CREATE TEMP TRIGGER IF NOT EXISTS "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Ld/d;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AFTER "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ON `"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "` BEGIN UPDATE room_table_modification_log SET invalidated = 1 WHERE table_id = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " AND invalidated = 0; END"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lc1/b;->c(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lc1/b;)V
    .locals 13

    .line 1
    const-string v0, "database"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lc1/b;->j()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Ly0/k;->a:Ly0/w;

    .line 14
    .line 15
    iget-object v0, v0, Ly0/w;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "readWriteLock.readLock()"

    .line 22
    .line 23
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :try_start_1
    iget-object v1, p0, Ly0/k;->k:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    iget-object v2, p0, Ly0/k;->i:Ly0/i;

    .line 33
    .line 34
    invoke-virtual {v2}, Ly0/i;->a()[I

    .line 35
    .line 36
    .line 37
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :try_start_4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto/16 :goto_7

    .line 47
    .line 48
    :catch_1
    move-exception p1

    .line 49
    goto/16 :goto_7

    .line 50
    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto/16 :goto_6

    .line 53
    .line 54
    :cond_1
    :try_start_5
    invoke-interface {p1}, Lc1/b;->l()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    invoke-interface {p1}, Lc1/b;->o()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {p1}, Lc1/b;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 65
    .line 66
    .line 67
    :goto_0
    :try_start_6
    array-length v3, v2

    .line 68
    const/4 v4, 0x0

    .line 69
    move v5, v4

    .line 70
    move v6, v5

    .line 71
    :goto_1
    if-ge v5, v3, :cond_6

    .line 72
    .line 73
    aget v7, v2, v5

    .line 74
    .line 75
    add-int/lit8 v8, v6, 0x1

    .line 76
    .line 77
    const/4 v9, 0x1

    .line 78
    if-eq v7, v9, :cond_4

    .line 79
    .line 80
    const/4 v9, 0x2

    .line 81
    if-eq v7, v9, :cond_3

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    iget-object v7, p0, Ly0/k;->e:[Ljava/lang/String;

    .line 85
    .line 86
    aget-object v6, v7, v6

    .line 87
    .line 88
    sget-object v7, Ly0/k;->n:[Ljava/lang/String;

    .line 89
    .line 90
    move v9, v4

    .line 91
    :goto_2
    const/4 v10, 0x3

    .line 92
    if-ge v9, v10, :cond_5

    .line 93
    .line 94
    aget-object v10, v7, v9

    .line 95
    .line 96
    new-instance v11, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v12, "DROP TRIGGER IF EXISTS "

    .line 99
    .line 100
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v6, v10}, Ld/d;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    const-string v11, "StringBuilder().apply(builderAction).toString()"

    .line 115
    .line 116
    invoke-static {v10, v11}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p1, v10}, Lc1/b;->c(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    add-int/lit8 v9, v9, 0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    invoke-virtual {p0, p1, v6}, Ly0/k;->c(Lc1/b;I)V

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 129
    .line 130
    move v6, v8

    .line 131
    goto :goto_1

    .line 132
    :catchall_1
    move-exception v2

    .line 133
    goto :goto_4

    .line 134
    :cond_6
    invoke-interface {p1}, Lc1/b;->n()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 135
    .line 136
    .line 137
    :try_start_7
    invoke-interface {p1}, Lc1/b;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 138
    .line 139
    .line 140
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 141
    :try_start_9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_8

    .line 145
    :catchall_2
    move-exception p1

    .line 146
    goto :goto_5

    .line 147
    :goto_4
    :try_start_a
    invoke-interface {p1}, Lc1/b;->a()V

    .line 148
    .line 149
    .line 150
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 151
    :goto_5
    :try_start_b
    monitor-exit v1

    .line 152
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 153
    :goto_6
    :try_start_c
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 154
    .line 155
    .line 156
    throw p1
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0

    .line 157
    :goto_7
    const-string v0, "ROOM"

    .line 158
    .line 159
    const-string v1, "Cannot run invalidation tracker. Is the db closed?"

    .line 160
    .line 161
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .line 163
    .line 164
    :goto_8
    return-void
.end method
