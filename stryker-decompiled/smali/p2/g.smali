.class public final synthetic Lp2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lp2/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lp2/g;->b:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 7
    .line 8
    iput-object p2, p0, Lp2/g;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lp2/g;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lp2/g;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lp2/g;->b:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->d:Ll4/l;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->f(Ll4/l;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, v2, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Lp2/h;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-direct {v1, v2, v0, v3}, Lp2/h;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;ZI)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->i(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :pswitch_0
    iget-object v0, v2, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->m:Lcom/google/android/material/textview/MaterialTextView;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    const v1, 0x7f130079

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const v3, 0x7f130078

    .line 47
    .line 48
    .line 49
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    return-void

    .line 61
    :pswitch_1
    iget-object v0, v2, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->d:Ll4/l;

    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v4, "searchsploit "

    .line 66
    .line 67
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v4, "\'"

    .line 71
    .line 72
    const-string v5, ""

    .line 73
    .line 74
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const-string v6, "`"

    .line 79
    .line 80
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const-string v6, "$"

    .line 85
    .line 86
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v4, " --json"

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v0, v3}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v3, v2, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_2

    .line 113
    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :catch_0
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_7

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Ljava/lang/String;

    .line 136
    .line 137
    if-nez v4, :cond_4

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    const-string v5, ","

    .line 145
    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_5

    .line 151
    .line 152
    const/4 v5, 0x1

    .line 153
    const/4 v6, 0x0

    .line 154
    invoke-static {v4, v5, v6}, Lorg/bouncycastle/math/ec/a;->c(Ljava/lang/String;II)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    :cond_5
    const-string v5, "{"

    .line 159
    .line 160
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-eqz v5, :cond_3

    .line 165
    .line 166
    const-string v5, "}"

    .line 167
    .line 168
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-nez v5, :cond_6

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_6
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 176
    .line 177
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    new-instance v4, Lcom/zalexdev/stryker/custom/Sploit;

    .line 181
    .line 182
    invoke-direct {v4}, Lcom/zalexdev/stryker/custom/Sploit;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v6, "Title"

    .line 186
    .line 187
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v4, v6}, Lcom/zalexdev/stryker/custom/Sploit;->setTitle(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const-string v6, "Date_Published"

    .line 195
    .line 196
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-virtual {v4, v6}, Lcom/zalexdev/stryker/custom/Sploit;->setDate(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-string v6, "Author"

    .line 204
    .line 205
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-virtual {v4, v6}, Lcom/zalexdev/stryker/custom/Sploit;->setAuthor(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string v6, "Type"

    .line 213
    .line 214
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-virtual {v4, v6}, Lcom/zalexdev/stryker/custom/Sploit;->setType(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string v6, "Platform"

    .line 222
    .line 223
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    invoke-virtual {v4, v6}, Lcom/zalexdev/stryker/custom/Sploit;->setPlatform(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v6, "Path"

    .line 231
    .line 232
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-virtual {v4, v6}, Lcom/zalexdev/stryker/custom/Sploit;->setPath(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const-string v6, "EDB-ID"

    .line 240
    .line 241
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-virtual {v4, v5}, Lcom/zalexdev/stryker/custom/Sploit;->setId(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_7
    new-instance v0, Landroidx/emoji2/text/m;

    .line 253
    .line 254
    const/4 v4, 0x7

    .line 255
    invoke-direct {v0, v2, v3, v1, v4}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v0}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->i(Ljava/lang/Runnable;)V

    .line 259
    .line 260
    .line 261
    :goto_3
    return-void

    .line 262
    nop

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
