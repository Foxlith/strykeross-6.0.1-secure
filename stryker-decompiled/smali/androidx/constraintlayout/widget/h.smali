.class public final Landroidx/constraintlayout/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public final d:Landroid/util/SparseArray;

.field public final e:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/h;->b:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/h;->c:I

    .line 8
    .line 9
    new-instance v1, Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroidx/constraintlayout/widget/h;->d:Landroid/util/SparseArray;

    .line 15
    .line 16
    new-instance v1, Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Landroidx/constraintlayout/widget/h;->e:Landroid/util/SparseArray;

    .line 22
    .line 23
    iput-object p2, p0, Landroidx/constraintlayout/widget/h;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_0
    const/4 v2, 0x1

    .line 39
    if-eq p3, v2, :cond_7

    .line 40
    .line 41
    if-eqz p3, :cond_5

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    if-eq p3, v3, :cond_0

    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const/4 v5, 0x4

    .line 57
    const/4 v6, 0x3

    .line 58
    sparse-switch v4, :sswitch_data_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :sswitch_0
    const-string v2, "Variant"

    .line 63
    .line 64
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_1

    .line 69
    .line 70
    move v2, v6

    .line 71
    goto :goto_2

    .line 72
    :catch_0
    move-exception p1

    .line 73
    goto :goto_4

    .line 74
    :catch_1
    move-exception p1

    .line 75
    goto :goto_5

    .line 76
    :sswitch_1
    const-string v2, "layoutDescription"

    .line 77
    .line 78
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-eqz p3, :cond_1

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    goto :goto_2

    .line 86
    :sswitch_2
    const-string v4, "StateSet"

    .line 87
    .line 88
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-eqz p3, :cond_1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :sswitch_3
    const-string v2, "State"

    .line 96
    .line 97
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    if-eqz p3, :cond_1

    .line 102
    .line 103
    move v2, v3

    .line 104
    goto :goto_2

    .line 105
    :sswitch_4
    const-string v2, "ConstraintSet"

    .line 106
    .line 107
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-eqz p3, :cond_1

    .line 112
    .line 113
    move v2, v5

    .line 114
    goto :goto_2

    .line 115
    :cond_1
    :goto_1
    move v2, v0

    .line 116
    :goto_2
    if-eq v2, v3, :cond_4

    .line 117
    .line 118
    if-eq v2, v6, :cond_3

    .line 119
    .line 120
    if-eq v2, v5, :cond_2

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/h;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_3
    new-instance p3, Landroidx/constraintlayout/widget/g;

    .line 128
    .line 129
    invoke-direct {p3, p1, p2}, Landroidx/constraintlayout/widget/g;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 130
    .line 131
    .line 132
    if-eqz v1, :cond_6

    .line 133
    .line 134
    iget-object v2, v1, Landroidx/constraintlayout/widget/f;->b:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_4
    new-instance v1, Landroidx/constraintlayout/widget/f;

    .line 141
    .line 142
    invoke-direct {v1, p1, p2}, Landroidx/constraintlayout/widget/f;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 143
    .line 144
    .line 145
    iget-object p3, p0, Landroidx/constraintlayout/widget/h;->d:Landroid/util/SparseArray;

    .line 146
    .line 147
    iget v2, v1, Landroidx/constraintlayout/widget/f;->a:I

    .line 148
    .line 149
    invoke-virtual {p3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    :cond_6
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 157
    .line 158
    .line 159
    move-result p3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 161
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    .line 163
    .line 164
    goto :goto_6

    .line 165
    :goto_5
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 166
    .line 167
    .line 168
    :cond_7
    :goto_6
    return-void

    .line 169
    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 11

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/o;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/constraintlayout/widget/o;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_11

    .line 13
    .line 14
    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    if-eqz v4, :cond_10

    .line 23
    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    goto/16 :goto_c

    .line 27
    .line 28
    :cond_0
    const-string v6, "id"

    .line 29
    .line 30
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_10

    .line 35
    .line 36
    const-string v1, "/"

    .line 37
    .line 38
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v3, 0x1

    .line 43
    const/4 v4, -0x1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const/16 v1, 0x2f

    .line 47
    .line 48
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/2addr v1, v3

    .line 53
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v7, v1, v6, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v1, v4

    .line 71
    :goto_1
    if-ne v1, v4, :cond_3

    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-le v6, v3, :cond_2

    .line 78
    .line 79
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    const-string v5, "ConstraintLayoutStates"

    .line 89
    .line 90
    const-string v6, "error in parsing id"

    .line 91
    .line 92
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_2
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    const/4 v6, 0x0

    .line 100
    move-object v7, v6

    .line 101
    :goto_3
    if-eq v5, v3, :cond_f

    .line 102
    .line 103
    if-eqz v5, :cond_e

    .line 104
    .line 105
    const/4 v8, 0x3

    .line 106
    const/4 v9, 0x2

    .line 107
    if-eq v5, v9, :cond_7

    .line 108
    .line 109
    if-eq v5, v8, :cond_4

    .line 110
    .line 111
    goto/16 :goto_8

    .line 112
    .line 113
    :cond_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 118
    .line 119
    invoke-virtual {v5, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    sparse-switch v10, :sswitch_data_0

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :sswitch_0
    const-string v10, "constraintset"

    .line 132
    .line 133
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_5

    .line 138
    .line 139
    move v5, v2

    .line 140
    goto :goto_5

    .line 141
    :catch_0
    move-exception p1

    .line 142
    goto/16 :goto_9

    .line 143
    .line 144
    :catch_1
    move-exception p1

    .line 145
    goto/16 :goto_a

    .line 146
    .line 147
    :sswitch_1
    const-string v10, "constraintoverride"

    .line 148
    .line 149
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_5

    .line 154
    .line 155
    move v5, v9

    .line 156
    goto :goto_5

    .line 157
    :sswitch_2
    const-string v10, "constraint"

    .line 158
    .line 159
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-eqz v5, :cond_5

    .line 164
    .line 165
    move v5, v3

    .line 166
    goto :goto_5

    .line 167
    :sswitch_3
    const-string v10, "guideline"

    .line 168
    .line 169
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_5

    .line 174
    .line 175
    move v5, v8

    .line 176
    goto :goto_5

    .line 177
    :cond_5
    :goto_4
    move v5, v4

    .line 178
    :goto_5
    if-eqz v5, :cond_f

    .line 179
    .line 180
    if-eq v5, v3, :cond_6

    .line 181
    .line 182
    if-eq v5, v9, :cond_6

    .line 183
    .line 184
    if-eq v5, v8, :cond_6

    .line 185
    .line 186
    goto/16 :goto_8

    .line 187
    .line 188
    :cond_6
    iget-object v5, v0, Landroidx/constraintlayout/widget/o;->c:Ljava/util/HashMap;

    .line 189
    .line 190
    iget v8, v7, Landroidx/constraintlayout/widget/j;->a:I

    .line 191
    .line 192
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-object v7, v6

    .line 200
    goto/16 :goto_8

    .line 201
    .line 202
    :cond_7
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    sparse-switch v10, :sswitch_data_1

    .line 211
    .line 212
    .line 213
    goto/16 :goto_6

    .line 214
    .line 215
    :sswitch_4
    const-string v8, "Constraint"

    .line 216
    .line 217
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-eqz v5, :cond_8

    .line 222
    .line 223
    move v8, v2

    .line 224
    goto/16 :goto_7

    .line 225
    .line 226
    :sswitch_5
    const-string v8, "CustomAttribute"

    .line 227
    .line 228
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    if-eqz v5, :cond_8

    .line 233
    .line 234
    const/16 v8, 0x8

    .line 235
    .line 236
    goto :goto_7

    .line 237
    :sswitch_6
    const-string v9, "Barrier"

    .line 238
    .line 239
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-eqz v5, :cond_8

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :sswitch_7
    const-string v8, "CustomMethod"

    .line 247
    .line 248
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v5, :cond_8

    .line 253
    .line 254
    const/16 v8, 0x9

    .line 255
    .line 256
    goto :goto_7

    .line 257
    :sswitch_8
    const-string v8, "Guideline"

    .line 258
    .line 259
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-eqz v5, :cond_8

    .line 264
    .line 265
    move v8, v9

    .line 266
    goto :goto_7

    .line 267
    :sswitch_9
    const-string v8, "Transform"

    .line 268
    .line 269
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_8

    .line 274
    .line 275
    const/4 v8, 0x5

    .line 276
    goto :goto_7

    .line 277
    :sswitch_a
    const-string v8, "PropertySet"

    .line 278
    .line 279
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-eqz v5, :cond_8

    .line 284
    .line 285
    const/4 v8, 0x4

    .line 286
    goto :goto_7

    .line 287
    :sswitch_b
    const-string v8, "ConstraintOverride"

    .line 288
    .line 289
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-eqz v5, :cond_8

    .line 294
    .line 295
    move v8, v3

    .line 296
    goto :goto_7

    .line 297
    :sswitch_c
    const-string v8, "Motion"

    .line 298
    .line 299
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    if-eqz v5, :cond_8

    .line 304
    .line 305
    const/4 v8, 0x7

    .line 306
    goto :goto_7

    .line 307
    :sswitch_d
    const-string v8, "Layout"

    .line 308
    .line 309
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    if-eqz v5, :cond_8

    .line 314
    .line 315
    const/4 v8, 0x6

    .line 316
    goto :goto_7

    .line 317
    :cond_8
    :goto_6
    move v8, v4

    .line 318
    :goto_7
    const-string v5, "XML parser error must be within a Constraint "

    .line 319
    .line 320
    packed-switch v8, :pswitch_data_0

    .line 321
    .line 322
    .line 323
    goto/16 :goto_8

    .line 324
    .line 325
    :pswitch_0
    if-eqz v7, :cond_9

    .line 326
    .line 327
    :try_start_1
    iget-object v5, v7, Landroidx/constraintlayout/widget/j;->f:Ljava/util/HashMap;

    .line 328
    .line 329
    invoke-static {p1, p2, v5}, Landroidx/constraintlayout/widget/a;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_8

    .line 333
    .line 334
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 335
    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 345
    .line 346
    .line 347
    move-result p2

    .line 348
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p2

    .line 355
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw p1

    .line 359
    :pswitch_1
    if-eqz v7, :cond_a

    .line 360
    .line 361
    iget-object v5, v7, Landroidx/constraintlayout/widget/j;->c:Landroidx/constraintlayout/widget/l;

    .line 362
    .line 363
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    invoke-virtual {v5, p1, v8}, Landroidx/constraintlayout/widget/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_8

    .line 371
    .line 372
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    .line 373
    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 383
    .line 384
    .line 385
    move-result p2

    .line 386
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p2

    .line 393
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    throw p1

    .line 397
    :pswitch_2
    if-eqz v7, :cond_b

    .line 398
    .line 399
    iget-object v5, v7, Landroidx/constraintlayout/widget/j;->d:Landroidx/constraintlayout/widget/k;

    .line 400
    .line 401
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 402
    .line 403
    .line 404
    move-result-object v8

    .line 405
    invoke-virtual {v5, p1, v8}, Landroidx/constraintlayout/widget/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_8

    .line 409
    .line 410
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    .line 411
    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 421
    .line 422
    .line 423
    move-result p2

    .line 424
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p2

    .line 431
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    throw p1

    .line 435
    :pswitch_3
    if-eqz v7, :cond_c

    .line 436
    .line 437
    iget-object v5, v7, Landroidx/constraintlayout/widget/j;->e:Landroidx/constraintlayout/widget/n;

    .line 438
    .line 439
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 440
    .line 441
    .line 442
    move-result-object v8

    .line 443
    invoke-virtual {v5, p1, v8}, Landroidx/constraintlayout/widget/n;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 444
    .line 445
    .line 446
    goto :goto_8

    .line 447
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    .line 448
    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 458
    .line 459
    .line 460
    move-result p2

    .line 461
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p2

    .line 468
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    throw p1

    .line 472
    :pswitch_4
    if-eqz v7, :cond_d

    .line 473
    .line 474
    iget-object v5, v7, Landroidx/constraintlayout/widget/j;->b:Landroidx/constraintlayout/widget/m;

    .line 475
    .line 476
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 477
    .line 478
    .line 479
    move-result-object v8

    .line 480
    invoke-virtual {v5, p1, v8}, Landroidx/constraintlayout/widget/m;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 481
    .line 482
    .line 483
    goto :goto_8

    .line 484
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    .line 485
    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 495
    .line 496
    .line 497
    move-result p2

    .line 498
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object p2

    .line 505
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    throw p1

    .line 509
    :pswitch_5
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    invoke-static {p1, v5, v2}, Landroidx/constraintlayout/widget/o;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/j;

    .line 514
    .line 515
    .line 516
    move-result-object v7

    .line 517
    iget-object v5, v7, Landroidx/constraintlayout/widget/j;->d:Landroidx/constraintlayout/widget/k;

    .line 518
    .line 519
    iput v3, v5, Landroidx/constraintlayout/widget/k;->h0:I

    .line 520
    .line 521
    goto :goto_8

    .line 522
    :pswitch_6
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    invoke-static {p1, v5, v2}, Landroidx/constraintlayout/widget/o;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/j;

    .line 527
    .line 528
    .line 529
    move-result-object v7

    .line 530
    iget-object v5, v7, Landroidx/constraintlayout/widget/j;->d:Landroidx/constraintlayout/widget/k;

    .line 531
    .line 532
    iput-boolean v3, v5, Landroidx/constraintlayout/widget/k;->a:Z

    .line 533
    .line 534
    goto :goto_8

    .line 535
    :pswitch_7
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    invoke-static {p1, v5, v3}, Landroidx/constraintlayout/widget/o;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/j;

    .line 540
    .line 541
    .line 542
    move-result-object v7

    .line 543
    goto :goto_8

    .line 544
    :pswitch_8
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 545
    .line 546
    .line 547
    move-result-object v5

    .line 548
    invoke-static {p1, v5, v2}, Landroidx/constraintlayout/widget/o;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/j;

    .line 549
    .line 550
    .line 551
    move-result-object v7

    .line 552
    goto :goto_8

    .line 553
    :cond_e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    :goto_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 557
    .line 558
    .line 559
    move-result v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 560
    goto/16 :goto_3

    .line 561
    .line 562
    :goto_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 563
    .line 564
    .line 565
    goto :goto_b

    .line 566
    :goto_a
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 567
    .line 568
    .line 569
    :cond_f
    :goto_b
    iget-object p1, p0, Landroidx/constraintlayout/widget/h;->e:Landroid/util/SparseArray;

    .line 570
    .line 571
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    goto :goto_d

    .line 575
    :cond_10
    :goto_c
    add-int/lit8 v3, v3, 0x1

    .line 576
    .line 577
    goto/16 :goto_0

    .line 578
    .line 579
    :cond_11
    :goto_d
    return-void

    .line 580
    nop

    .line 581
    :sswitch_data_0
    .sparse-switch
        -0x7bb8f310 -> :sswitch_3
        -0xb58ea23 -> :sswitch_2
        0x196d04a9 -> :sswitch_1
        0x7feafd65 -> :sswitch_0
    .end sparse-switch

    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    :sswitch_data_1
    .sparse-switch
        -0x78c018b6 -> :sswitch_d
        -0x7648542a -> :sswitch_c
        -0x74f4db17 -> :sswitch_b
        -0x4bab3dd3 -> :sswitch_a
        -0x49cf74b4 -> :sswitch_9
        -0x446d330 -> :sswitch_8
        0x15d883d2 -> :sswitch_7
        0x4f5d3b97 -> :sswitch_6
        0x6acd460b -> :sswitch_5
        0x6b78f1fd -> :sswitch_4
    .end sparse-switch

    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
