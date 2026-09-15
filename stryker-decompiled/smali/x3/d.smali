.class public final Lx3/d;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ll4/l;

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/util/ArrayList;

.field public e:[Ljava/lang/String;

.field public f:Landroidx/recyclerview/widget/RecyclerView;


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lx3/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zalexdev/stryker/custom/Argument;

    iget-object v3, p0, Lx3/d;->e:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/zalexdev/stryker/custom/Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lx3/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zalexdev/stryker/custom/Argument;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Argument;->getName()Ljava/lang/String;

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
    .locals 9

    .line 1
    check-cast p1, Lx3/c;

    .line 2
    .line 3
    iget-object v0, p0, Lx3/d;->c:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/zalexdev/stryker/custom/Argument;

    .line 10
    .line 11
    iget-object v2, p1, Lx3/c;->a:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->isRequired()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    move v2, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v2, 0x8

    .line 30
    .line 31
    :goto_0
    iget-object v4, p1, Lx3/c;->c:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p1, Lx3/c;->b:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->getDescription()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->getValue()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object p1, p1, Lx3/c;->d:Landroid/widget/AutoCompleteTextView;

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->getValue()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v4, p0, Lx3/d;->a:Landroid/content/Context;

    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    const v6, 0x109000a

    .line 62
    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    const-string v7, ""

    .line 67
    .line 68
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v7, "RPORT"

    .line 83
    .line 84
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_2

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const-string v7, "LPORT"

    .line 95
    .line 96
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_2

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const-string v7, "THREADS"

    .line 107
    .line 108
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_3

    .line 113
    .line 114
    :cond_2
    const/4 v2, 0x2

    .line 115
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :catch_0
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->getValue()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-eqz v2, :cond_5

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->getValue()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    const-string v7, "true"

    .line 130
    .line 131
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    const-string v8, "false"

    .line 136
    .line 137
    if-nez v2, :cond_4

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->getValue()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 150
    .line 151
    .line 152
    new-instance v2, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    new-instance v3, Landroid/widget/ArrayAdapter;

    .line 164
    .line 165
    invoke-direct {v3, v4, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_5
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 173
    .line 174
    .line 175
    const/4 v2, 0x0

    .line 176
    invoke-virtual {p1, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    .line 178
    .line 179
    :goto_2
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->getName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    const-string v3, "LHOST"

    .line 184
    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    iget-object v3, p0, Lx3/d;->b:Ll4/l;

    .line 190
    .line 191
    if-nez v2, :cond_9

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->getName()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    const-string v7, "LHOSTS"

    .line 198
    .line 199
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_6

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_6
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->getName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    const-string v7, "RHOSTS"

    .line 211
    .line 212
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_7

    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->getName()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    const-string v7, "RHOST"

    .line 223
    .line 224
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_a

    .line 229
    .line 230
    :cond_7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    check-cast p2, Lcom/zalexdev/stryker/custom/Argument;

    .line 235
    .line 236
    invoke-virtual {v3}, Ll4/l;->D()Ljava/util/ArrayList;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-eqz v3, :cond_8

    .line 254
    .line 255
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    check-cast v3, Lcom/zalexdev/stryker/custom/Device;

    .line 260
    .line 261
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_8
    invoke-virtual {p2, v2}, Lcom/zalexdev/stryker/custom/Argument;->setAuto(Ljava/util/ArrayList;)V

    .line 270
    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_9
    :goto_4
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    if-nez p2, :cond_a

    .line 282
    .line 283
    iget-object p2, v3, Ll4/l;->c:Landroid/content/Context;

    .line 284
    .line 285
    const-string v0, "wifi"

    .line 286
    .line 287
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    check-cast p2, Landroid/net/wifi/WifiManager;

    .line 292
    .line 293
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    .line 298
    .line 299
    .line 300
    move-result p2

    .line 301
    invoke-static {p2}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p2

    .line 305
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    :cond_a
    :goto_5
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->getAuto()Ljava/util/ArrayList;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 313
    .line 314
    .line 315
    move-result p2

    .line 316
    if-lez p2, :cond_b

    .line 317
    .line 318
    new-instance p2, Landroid/widget/ArrayAdapter;

    .line 319
    .line 320
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Argument;->getAuto()Ljava/util/ArrayList;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-direct {p2, v4, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 331
    .line 332
    .line 333
    :cond_b
    iget-object p2, p0, Lx3/d;->d:Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-nez v0, :cond_c

    .line 340
    .line 341
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    :cond_c
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 2

    .line 1
    iget-object p2, p0, Lx3/d;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const v0, 0x7f0d0056

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
    new-instance p2, Lx3/c;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7f0a0416

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
    iput-object v0, p2, Lx3/c;->a:Landroid/widget/TextView;

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
    iput-object v0, p2, Lx3/c;->b:Landroid/widget/TextView;

    .line 41
    .line 42
    const v0, 0x7f0a0516

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
    iput-object v0, p2, Lx3/c;->c:Landroid/widget/TextView;

    .line 52
    .line 53
    const v0, 0x7f0a069c

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/widget/AutoCompleteTextView;

    .line 61
    .line 62
    iput-object p1, p2, Lx3/c;->d:Landroid/widget/AutoCompleteTextView;

    .line 63
    .line 64
    return-object p2
.end method
