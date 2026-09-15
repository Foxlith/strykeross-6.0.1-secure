.class public final Lg3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/b0;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lg3/b;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg3/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lg3/b;->a:I

    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lg3/b;->b:Ljava/lang/Object;

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-static {p2}, Lg3/b;->d(I)I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    invoke-static {p3}, Lg3/b;->d(I)I

    move-result p1

    int-to-byte p1, p1

    const/4 p2, 0x2

    aput-byte p1, v1, p2

    invoke-static {p4}, Lg3/b;->d(I)I

    move-result p1

    int-to-byte p1, p1

    const/4 p2, 0x3

    aput-byte p1, v1, p2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lg3/b;->a:I

    new-instance v0, Lj4/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lj4/a;-><init>(Lg3/b;Landroid/content/Context;)V

    iput-object v0, p0, Lg3/b;->b:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "gadget_profile"

    const-string v3, "name"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Lv1/f;->E()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf3/b;

    iget-object v3, v2, Lf3/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lg3/b;->k(Lf3/b;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "gadget_profile"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    :cond_3
    return-void

    :goto_2
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg3/b;->a:I

    iput-object p1, p0, Lg3/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public static d(I)I
    .locals 1

    .line 1
    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, -0x7f

    if-ge p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method public static e(Landroid/database/Cursor;)Lf3/b;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "id"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const-string v1, "name"

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const-string v1, "target_os"

    .line 24
    .line 25
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/support/v4/media/session/a;->H(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const-string v1, "functions"

    .line 38
    .line 39
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-class v2, Lf3/a;

    .line 48
    .line 49
    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_0

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_0
    const-string v8, ","

    .line 63
    .line 64
    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    array-length v8, v1

    .line 69
    const/4 v9, 0x0

    .line 70
    :goto_0
    if-ge v9, v8, :cond_2

    .line 71
    .line 72
    aget-object v10, v1, v9

    .line 73
    .line 74
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    if-eqz v11, :cond_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    :try_start_0
    invoke-static {v10}, Lf3/a;->valueOf(Ljava/lang/String;)Lf3/a;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-virtual {v7, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    :catch_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    :goto_2
    const-string v1, "mass_storage_image"

    .line 96
    .line 97
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    new-instance v18, Lf3/b;

    .line 106
    .line 107
    const-string v8, "id_vendor"

    .line 108
    .line 109
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    const-string v9, "id_product"

    .line 118
    .line 119
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    const-string v10, "manufacturer"

    .line 128
    .line 129
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    const-string v11, "product_name"

    .line 138
    .line 139
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v11

    .line 143
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    const-string v12, "serial_number"

    .line 148
    .line 149
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    const-string v13, "config_label"

    .line 158
    .line 159
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v13

    .line 163
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    if-eqz v1, :cond_4

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    if-eqz v14, :cond_3

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_3
    :goto_3
    move-object v14, v1

    .line 177
    goto :goto_5

    .line 178
    :cond_4
    :goto_4
    const/4 v1, 0x0

    .line 179
    goto :goto_3

    .line 180
    :goto_5
    const-string v1, "mass_storage_ro"

    .line 181
    .line 182
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    const/4 v15, 0x1

    .line 191
    if-ne v1, v15, :cond_5

    .line 192
    .line 193
    move v1, v15

    .line 194
    goto :goto_6

    .line 195
    :cond_5
    const/4 v1, 0x0

    .line 196
    :goto_6
    const-string v2, "mass_storage_cdrom"

    .line 197
    .line 198
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-ne v2, v15, :cond_6

    .line 207
    .line 208
    move/from16 v16, v15

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_6
    const/16 v16, 0x0

    .line 212
    .line 213
    :goto_7
    const-string v2, "inquiry_string"

    .line 214
    .line 215
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v17

    .line 223
    move-object/from16 v2, v18

    .line 224
    .line 225
    move v15, v1

    .line 226
    invoke-direct/range {v2 .. v17}, Lf3/b;-><init>(JLjava/lang/String;ILjava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 227
    .line 228
    .line 229
    return-object v18
.end method

.method public static k(Lf3/b;)Landroid/content/ContentValues;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lf3/b;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "name"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lf3/b;->c:I

    .line 14
    .line 15
    invoke-static {v1}, Landroid/support/v4/media/session/a;->E(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "target_os"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lf3/b;->d:Ljava/util/Set;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lf3/a;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-lez v4, :cond_0

    .line 52
    .line 53
    const/16 v4, 0x2c

    .line 54
    .line 55
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v2, "functions"

    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v1, "id_vendor"

    .line 76
    .line 77
    iget-object v2, p0, Lf3/b;->e:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v1, "id_product"

    .line 83
    .line 84
    iget-object v2, p0, Lf3/b;->f:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v1, "manufacturer"

    .line 90
    .line 91
    iget-object v2, p0, Lf3/b;->g:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v1, "product_name"

    .line 97
    .line 98
    iget-object v2, p0, Lf3/b;->h:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v1, "serial_number"

    .line 104
    .line 105
    iget-object v2, p0, Lf3/b;->i:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v1, "config_label"

    .line 111
    .line 112
    iget-object v2, p0, Lf3/b;->j:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lf3/b;->k:Ljava/lang/String;

    .line 118
    .line 119
    if-nez v1, :cond_2

    .line 120
    .line 121
    const-string v1, ""

    .line 122
    .line 123
    :cond_2
    const-string v2, "mass_storage_image"

    .line 124
    .line 125
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-boolean v1, p0, Lf3/b;->l:Z

    .line 129
    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    const-string v2, "mass_storage_ro"

    .line 135
    .line 136
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    .line 138
    .line 139
    iget-boolean v1, p0, Lf3/b;->m:Z

    .line 140
    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v2, "mass_storage_cdrom"

    .line 146
    .line 147
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    .line 149
    .line 150
    const-string v1, "inquiry_string"

    .line 151
    .line 152
    iget-object p0, p0, Lf3/b;->n:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg3/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ls3/t;

    .line 4
    .line 5
    iput p1, v0, Ls3/t;->C:I

    .line 6
    .line 7
    iget-object p1, p0, Lg3/b;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Ls3/t;

    .line 10
    .line 11
    invoke-virtual {p1}, Ls3/t;->o()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lg3/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ls3/t;

    .line 6
    .line 7
    iget-object v1, v0, Ls3/t;->t:Ly0/p;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Ly0/p;->c(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v0, Ls3/t;->o:Ljava/util/Set;

    .line 17
    .line 18
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Ls3/t;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/Set;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, v0, Ls3/t;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    .line 42
    invoke-virtual {v2, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/util/Set;

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    move-object v1, v2

    .line 51
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object p1, v0, Ls3/t;->z:Ls3/u;

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ls3/u;->h(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object p1, v0, Ls3/t;->y:Ls3/x;

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Ls3/x;->r(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lg3/b;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    if-lez v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    check-cast v1, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/Iterator;

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t know how to spread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lg3/b;->b:Ljava/lang/Object;

    check-cast v1, Lj4/a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "gadget_profile"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "name COLLATE NOCASE ASC"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lg3/b;->e(Landroid/database/Cursor;)Lf3/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_1
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v0
.end method

.method public final g(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg3/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/nmap/NmapScanner;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->K:Landroidx/fragment/app/a0;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->K:Landroidx/fragment/app/a0;

    .line 25
    .line 26
    new-instance v1, Lj2/g;

    .line 27
    .line 28
    const/16 v2, 0xd

    .line 29
    .line 30
    invoke-direct {v1, p0, p1, v2}, Lj2/g;-><init>(Ljava/lang/Object;ZI)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lg3/b;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lg3/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lcom/zalexdev/stryker/nmap/NmapScanner;

    .line 9
    .line 10
    iget-object v0, v1, Lcom/zalexdev/stryker/nmap/NmapScanner;->K:Landroidx/fragment/app/a0;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, v1, Lcom/zalexdev/stryker/nmap/NmapScanner;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v2, v1, Lcom/zalexdev/stryker/nmap/NmapScanner;->K:Landroidx/fragment/app/a0;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, v1, Lcom/zalexdev/stryker/nmap/NmapScanner;->K:Landroidx/fragment/app/a0;

    .line 47
    .line 48
    new-instance v2, Lb4/c;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-direct {v2, v1, p1, v3}, Lb4/c;-><init>(Lcom/zalexdev/stryker/nmap/NmapScanner;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void

    .line 58
    :pswitch_0
    check-cast v1, Lg3/c;

    .line 59
    .line 60
    iget-object v0, v1, Lg3/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg3/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;

    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->b:Landroidx/fragment/app/a0;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->b:Landroidx/fragment/app/a0;

    new-instance v1, Lw2/h;

    const/16 v2, 0x1a

    invoke-direct {v1, p0, p1, v2}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg3/b;->b:Ljava/lang/Object;

    check-cast v0, Lr3/v;

    iget-boolean v0, v0, Lr3/v;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lr3/v;->j:Landroid/app/Activity;

    new-instance v1, Ly/n;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2, p0}, Ly/n;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
