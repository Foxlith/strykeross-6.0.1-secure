.class public final Lx3/b;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public c:Landroid/content/Context;

.field public d:I

.field public e:Ljava/lang/String;


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lx3/b;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_b

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/MsfExploit;->getUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, ""

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    move-object v3, v4

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/MsfExploit;->getUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    :goto_1
    iget v5, p0, Lx3/b;->d:I

    .line 39
    .line 40
    invoke-static {v5}, Lo/i;->c(I)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/4 v6, 0x1

    .line 45
    const-string v7, "auxiliary/"

    .line 46
    .line 47
    if-eq v5, v6, :cond_4

    .line 48
    .line 49
    const/4 v6, 0x2

    .line 50
    if-eq v5, v6, :cond_3

    .line 51
    .line 52
    const/4 v3, 0x3

    .line 53
    if-eq v5, v3, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/MsfExploit;->getRank()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const-string v5, "excellent"

    .line 69
    .line 70
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_5

    .line 75
    .line 76
    const-string v5, "great"

    .line 77
    .line 78
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_0

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-nez v3, :cond_5

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-nez v5, :cond_0

    .line 97
    .line 98
    const-string v5, "post/"

    .line 99
    .line 100
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-nez v5, :cond_0

    .line 105
    .line 106
    const-string v5, "payload/"

    .line 107
    .line 108
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_0

    .line 113
    .line 114
    :cond_5
    :goto_2
    iget-object v3, p0, Lx3/b;->e:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_6

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_6
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/MsfExploit;->getTitle()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-nez v3, :cond_7

    .line 128
    .line 129
    move-object v3, v4

    .line 130
    goto :goto_3

    .line 131
    :cond_7
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/MsfExploit;->getTitle()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    :goto_3
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/MsfExploit;->getDescription()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    if-nez v5, :cond_8

    .line 144
    .line 145
    move-object v5, v4

    .line 146
    goto :goto_4

    .line 147
    :cond_8
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/MsfExploit;->getDescription()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    :goto_4
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/MsfExploit;->getUrl()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    if-nez v6, :cond_9

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_9
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/MsfExploit;->getUrl()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    :goto_5
    iget-object v6, p0, Lx3/b;->e:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-nez v3, :cond_a

    .line 177
    .line 178
    iget-object v3, p0, Lx3/b;->e:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-nez v3, :cond_a

    .line 185
    .line 186
    iget-object v3, p0, Lx3/b;->e:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_0

    .line 193
    .line 194
    :cond_a
    :goto_6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_b
    iput-object v0, p0, Lx3/b;->a:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 202
    .line 203
    .line 204
    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx3/b;->d:I

    invoke-virtual {p0}, Lx3/b;->a()V

    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lx3/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zalexdev/stryker/custom/MsfExploit;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/MsfExploit;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 6

    .line 1
    check-cast p1, Lx3/a;

    .line 2
    .line 3
    iget-object v0, p0, Lx3/b;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 10
    .line 11
    iget-object v0, p1, Lx3/a;->a:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/zalexdev/stryker/custom/MsfExploit;->getTitle()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p1, Lx3/a;->b:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/zalexdev/stryker/custom/MsfExploit;->getDescription()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/zalexdev/stryker/custom/MsfExploit;->getUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    const-string v0, ""

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p2}, Lcom/zalexdev/stryker/custom/MsfExploit;->getUrl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    const-string v1, "auxiliary/"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const-string v2, "#FB8C00"

    .line 49
    .line 50
    iget-object v3, p1, Lx3/a;->e:Landroid/widget/ImageView;

    .line 51
    .line 52
    iget-object v4, p1, Lx3/a;->c:Landroid/widget/TextView;

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    const v0, 0x7f1303d8

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 60
    .line 61
    .line 62
    const-string v0, "#1E88E5"

    .line 63
    .line 64
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    const v1, 0x7f0801a9

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_1
    const-string v1, "post/"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    const v0, 0x7f1303db

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    const v0, 0x7f0801d2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    .line 111
    .line 112
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    const-string v1, "payload/"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    const v0, 0x7f1303da

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 129
    .line 130
    .line 131
    const-string v0, "#AB47BC"

    .line 132
    .line 133
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    .line 139
    .line 140
    const v1, 0x7f08009b

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    const v0, 0x7f1303d9

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 148
    .line 149
    .line 150
    const-string v0, "#E53935"

    .line 151
    .line 152
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    .line 158
    .line 159
    const v1, 0x7f08019c

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :goto_3
    invoke-virtual {p2}, Lcom/zalexdev/stryker/custom/MsfExploit;->getRank()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    iget-object v3, p1, Lx3/a;->d:Landroid/widget/TextView;

    .line 180
    .line 181
    if-nez v1, :cond_b

    .line 182
    .line 183
    const-string v1, "none"

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_4

    .line 190
    .line 191
    goto/16 :goto_8

    .line 192
    .line 193
    :cond_4
    const/4 v1, 0x0

    .line 194
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    const/4 v5, -0x1

    .line 202
    sparse-switch v4, :sswitch_data_0

    .line 203
    .line 204
    .line 205
    :goto_4
    move v1, v5

    .line 206
    goto :goto_5

    .line 207
    :sswitch_0
    const-string v1, "excellent"

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_5

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_5
    const/4 v1, 0x5

    .line 217
    goto :goto_5

    .line 218
    :sswitch_1
    const-string v1, "great"

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_6

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_6
    const/4 v1, 0x4

    .line 228
    goto :goto_5

    .line 229
    :sswitch_2
    const-string v1, "good"

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-nez v0, :cond_7

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_7
    const/4 v1, 0x3

    .line 239
    goto :goto_5

    .line 240
    :sswitch_3
    const-string v1, "low"

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-nez v0, :cond_8

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_8
    const/4 v1, 0x2

    .line 250
    goto :goto_5

    .line 251
    :sswitch_4
    const-string v1, "average"

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-nez v0, :cond_9

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_9
    const/4 v1, 0x1

    .line 261
    goto :goto_5

    .line 262
    :sswitch_5
    const-string v4, "manual"

    .line 263
    .line 264
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-nez v0, :cond_a

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_a
    :goto_5
    packed-switch v1, :pswitch_data_0

    .line 272
    .line 273
    .line 274
    const-string v0, "#757575"

    .line 275
    .line 276
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    const v1, 0x7f1303fe

    .line 281
    .line 282
    .line 283
    :goto_6
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 284
    .line 285
    .line 286
    goto :goto_7

    .line 287
    :pswitch_0
    const-string v0, "#388E3C"

    .line 288
    .line 289
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    const v1, 0x7f1303f9

    .line 294
    .line 295
    .line 296
    goto :goto_6

    .line 297
    :pswitch_1
    const-string v0, "#43A047"

    .line 298
    .line 299
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    const v1, 0x7f1303fb

    .line 304
    .line 305
    .line 306
    goto :goto_6

    .line 307
    :pswitch_2
    const-string v0, "#7CB342"

    .line 308
    .line 309
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    const v1, 0x7f1303fa

    .line 314
    .line 315
    .line 316
    goto :goto_6

    .line 317
    :pswitch_3
    const-string v0, "#F4511E"

    .line 318
    .line 319
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    const v1, 0x7f1303fc

    .line 324
    .line 325
    .line 326
    goto :goto_6

    .line 327
    :pswitch_4
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    const v1, 0x7f1303f8

    .line 332
    .line 333
    .line 334
    goto :goto_6

    .line 335
    :pswitch_5
    const-string v0, "#9E9E9E"

    .line 336
    .line 337
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    const v1, 0x7f1303fd

    .line 342
    .line 343
    .line 344
    goto :goto_6

    .line 345
    :goto_7
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    .line 347
    .line 348
    goto :goto_9

    .line 349
    :cond_b
    :goto_8
    const/16 v0, 0x8

    .line 350
    .line 351
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 352
    .line 353
    .line 354
    :goto_9
    new-instance v0, Lcom/google/android/material/snackbar/a;

    .line 355
    .line 356
    const/16 v1, 0x19

    .line 357
    .line 358
    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 359
    .line 360
    .line 361
    iget-object p2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 362
    .line 363
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    .line 365
    .line 366
    iget-object p1, p1, Lx3/a;->f:Landroid/widget/ImageView;

    .line 367
    .line 368
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    nop

    .line 373
    :sswitch_data_0
    .sparse-switch
        -0x4075183a -> :sswitch_5
        -0x25a321e3 -> :sswitch_4
        0x1a354 -> :sswitch_3
        0x3080bd -> :sswitch_2
        0x5e0ce8d -> :sswitch_1
        0x5813c036 -> :sswitch_0
    .end sparse-switch

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 2

    .line 1
    iget-object p2, p0, Lx3/b;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const v0, 0x7f0d009f

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Lx3/a;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7f0a0657

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object v0, p2, Lx3/a;->a:Landroid/widget/TextView;

    .line 30
    .line 31
    const v0, 0x7f0a0190

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, p2, Lx3/a;->b:Landroid/widget/TextView;

    .line 41
    .line 42
    const v0, 0x7f0a03fd

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v0, p2, Lx3/a;->c:Landroid/widget/TextView;

    .line 52
    .line 53
    const v0, 0x7f0a03ee

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object v0, p2, Lx3/a;->d:Landroid/widget/TextView;

    .line 63
    .line 64
    const v0, 0x7f0a03eb

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/ImageView;

    .line 72
    .line 73
    iput-object v0, p2, Lx3/a;->e:Landroid/widget/ImageView;

    .line 74
    .line 75
    const v0, 0x7f0a053c

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Landroid/widget/ImageView;

    .line 83
    .line 84
    iput-object p1, p2, Lx3/a;->f:Landroid/widget/ImageView;

    .line 85
    .line 86
    return-object p2
.end method
