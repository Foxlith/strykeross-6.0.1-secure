.class public final Li3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/List;


# instance fields
.field public final a:Landroid/content/res/AssetManager;

.field public final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "us"

    const-string v1, "gb"

    const-string v2, "de"

    const-string v3, "fr"

    const-string v4, "es"

    const-string v5, "it"

    const-string v6, "ru"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Li3/c;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Li3/c;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Li3/c;->a:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Li3/b;
    .locals 12

    .line 1
    const-string v0, "hid/keymap/"

    .line 2
    .line 3
    iget-object v1, p0, Li3/c;->b:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Li3/b;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    :try_start_0
    iget-object v2, p0, Li3/c;->a:Landroid/content/res/AssetManager;

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ".json"

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 34
    .line 35
    .line 36
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    .line 38
    .line 39
    new-instance v3, Ljava/io/InputStreamReader;

    .line 40
    .line 41
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 42
    .line 43
    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const/16 v4, 0x1000

    .line 55
    .line 56
    new-array v4, v4, [C

    .line 57
    .line 58
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/Reader;->read([C)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const/4 v6, -0x1

    .line 63
    const/4 v7, 0x0

    .line 64
    if-eq v5, v6, :cond_1

    .line 65
    .line 66
    invoke-virtual {v3, v4, v7, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v3, Lorg/json/JSONObject;

    .line 75
    .line 76
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v2, "name"

    .line 80
    .line 81
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 82
    .line 83
    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const-string v4, "entries"

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    new-instance v4, Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 100
    .line 101
    .line 102
    if-eqz v3, :cond_a

    .line 103
    .line 104
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-eqz v8, :cond_a

    .line 113
    .line 114
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    check-cast v8, Ljava/lang/String;

    .line 119
    .line 120
    if-eqz v8, :cond_5

    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_2

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_2
    const-string v9, "0x"

    .line 130
    .line 131
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    if-nez v9, :cond_6

    .line 136
    .line 137
    const-string v9, "0X"

    .line 138
    .line 139
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-eqz v9, :cond_3

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    const/4 v10, 0x1

    .line 151
    if-ne v9, v10, :cond_4

    .line 152
    .line 153
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    .line 154
    .line 155
    .line 156
    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    goto :goto_4

    .line 158
    :cond_4
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    goto :goto_4

    .line 163
    :catch_0
    :cond_5
    :goto_2
    move v9, v6

    .line 164
    goto :goto_4

    .line 165
    :cond_6
    :goto_3
    const/4 v9, 0x2

    .line 166
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    const/16 v10, 0x10

    .line 171
    .line 172
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 173
    .line 174
    .line 175
    move-result v9
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    :goto_4
    if-gez v9, :cond_7

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_7
    :try_start_3
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    if-nez v8, :cond_8

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_8
    const-string v10, "keycode"

    .line 187
    .line 188
    invoke-virtual {v8, v10, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    const-string v11, "modifier"

    .line 193
    .line 194
    invoke-virtual {v8, v11, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-nez v10, :cond_9

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    new-instance v11, Li3/a;

    .line 206
    .line 207
    invoke-direct {v11, v8, v10}, Li3/a;-><init>(II)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :catchall_0
    move-exception p1

    .line 215
    goto :goto_5

    .line 216
    :cond_a
    new-instance v3, Li3/b;

    .line 217
    .line 218
    invoke-direct {v3, p1, v2, v4}, Li3/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    .line 223
    .line 224
    if-eqz v0, :cond_b

    .line 225
    .line 226
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 227
    .line 228
    .line 229
    :cond_b
    return-object v3

    .line 230
    :goto_5
    if-eqz v0, :cond_c

    .line 231
    .line 232
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 233
    .line 234
    .line 235
    goto :goto_6

    .line 236
    :catchall_1
    move-exception v0

    .line 237
    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    :cond_c
    :goto_6
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    .line 241
    :catch_1
    const/4 p1, 0x0

    .line 242
    return-object p1
.end method
