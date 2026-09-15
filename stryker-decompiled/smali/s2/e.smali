.class public final Ls2/e;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/app/Activity;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/zalexdev/stryker/custom/Device;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ls2/e;->a:I

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    iput-object p1, p0, Ls2/e;->c:Landroid/content/Context;

    iput-object p2, p0, Ls2/e;->b:Landroid/app/Activity;

    invoke-virtual {p3}, Lcom/zalexdev/stryker/custom/Device;->getPorts()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Ls2/e;->e:Ljava/lang/Object;

    iput-object p3, p0, Ls2/e;->f:Ljava/lang/Object;

    new-instance p1, Ll4/l;

    iget-object p2, p0, Ls2/e;->c:Landroid/content/Context;

    invoke-direct {p1, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ls2/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/a0;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ls2/e;->a:I

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    iput-object p2, p0, Ls2/e;->b:Landroid/app/Activity;

    iput-object p1, p0, Ls2/e;->c:Landroid/content/Context;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Ls2/e;->d:Ljava/lang/Object;

    const-string p2, "stryker_news"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ls2/e;->e:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    iget-object p2, p0, Ls2/e;->e:Ljava/lang/Object;

    check-cast p2, Landroid/content/SharedPreferences;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    const-string v0, "read"

    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Ls2/e;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/a0;Ljava/util/ArrayList;Ls2/h;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ls2/e;->a:I

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    iput-object p1, p0, Ls2/e;->c:Landroid/content/Context;

    iput-object p3, p0, Ls2/e;->e:Ljava/lang/Object;

    iput-object p2, p0, Ls2/e;->b:Landroid/app/Activity;

    iput-object p4, p0, Ls2/e;->f:Ljava/lang/Object;

    new-instance p2, Ll4/l;

    invoke-direct {p2, p1}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ls2/e;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Ls2/e;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Ls2/e;->c:Landroid/content/Context;

    const v0, 0x7f130500

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Ls2/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls2/e;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :pswitch_0
    iget-object v0, p0, Ls2/e;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :pswitch_1
    iget-object v0, p0, Ls2/e;->e:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    iget v0, p0, Ls2/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/k0;->getItemId(I)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0

    .line 11
    :pswitch_1
    int-to-long v0, p1

    .line 12
    return-wide v0

    .line 13
    :pswitch_2
    iget-object v0, p0, Ls2/e;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/zalexdev/stryker/custom/Package;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Package;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    int-to-long v0, p1

    .line 32
    return-wide v0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    iget v0, p0, Ls2/e;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/k0;->getItemViewType(I)I

    move-result p1

    return p1

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 9

    .line 1
    iget v0, p0, Ls2/e;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    const/16 v5, 0x8

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Lr3/x;

    .line 13
    .line 14
    iget-object v0, p0, Ls2/e;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/zalexdev/stryker/custom/Port;

    .line 23
    .line 24
    iget-object v6, p1, Lr3/x;->a:Landroid/widget/TextView;

    .line 25
    .line 26
    new-instance v7, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v8, " ("

    .line 39
    .line 40
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Port;->getPortName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v8, ")"

    .line 51
    .line 52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Port;->getBanner()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    iget-object v7, p1, Lr3/x;->b:Landroid/widget/TextView;

    .line 67
    .line 68
    if-eqz v6, :cond_0

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Port;->getBanner()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-le v6, v2, :cond_0

    .line 79
    .line 80
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Port;->getBanner()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v2, p1, Lr3/x;->c:Lcom/google/android/material/button/MaterialButton;

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    const-string v1, "80"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_6

    .line 110
    .line 111
    const-string v1, "443"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_6

    .line 118
    .line 119
    const-string v1, "8080"

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_6

    .line 126
    .line 127
    const-string v1, "8088"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_6

    .line 134
    .line 135
    const-string v1, "8000"

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_1

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_1
    const-string v1, "21"

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_5

    .line 151
    .line 152
    const-string v1, "445"

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_2

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_2
    const-string v1, "22"

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_4

    .line 168
    .line 169
    const-string v1, "23"

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_3

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_3
    const v0, 0x7f0801de

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_4
    :goto_1
    const v1, 0x7f0801c8

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    new-instance v1, Lr3/w;

    .line 198
    .line 199
    invoke-direct {v1, p0, v0, v3}, Lr3/w;-><init>(Ls2/e;Ljava/lang/String;I)V

    .line 200
    .line 201
    .line 202
    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_5
    :goto_3
    const v0, 0x7f0800d7

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    new-instance v0, Lcom/nambimobile/widgets/efab/a;

    .line 216
    .line 217
    const/16 v1, 0xe

    .line 218
    .line 219
    invoke-direct {v0, p0, v1}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_6
    :goto_4
    const v1, 0x7f0801dd

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    new-instance v1, Lr3/w;

    .line 236
    .line 237
    invoke-direct {v1, p0, v0, v4}, Lr3/w;-><init>(Ls2/e;Ljava/lang/String;I)V

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :goto_5
    iget-object v0, p0, Ls2/e;->e:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v0, Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    sub-int/2addr v0, v3

    .line 250
    if-ne p2, v0, :cond_7

    .line 251
    .line 252
    move v4, v5

    .line 253
    :cond_7
    iget-object p1, p1, Lr3/x;->d:Landroid/view/View;

    .line 254
    .line 255
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :pswitch_0
    check-cast p1, Lt2/h;

    .line 260
    .line 261
    iget-object v0, p0, Ls2/e;->d:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v0, Ljava/util/List;

    .line 264
    .line 265
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    check-cast p2, Lcom/zalexdev/stryker/custom/News;

    .line 270
    .line 271
    iget-object v0, p1, Lt2/h;->a:Landroid/widget/TextView;

    .line 272
    .line 273
    iget-object v6, p2, Lcom/zalexdev/stryker/custom/News;->title:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    .line 277
    .line 278
    iget-object v0, p0, Ls2/e;->f:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v0, Ljava/util/Set;

    .line 281
    .line 282
    iget v6, p2, Lcom/zalexdev/stryker/custom/News;->id:I

    .line 283
    .line 284
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    xor-int/2addr v0, v3

    .line 293
    iget-object v3, p1, Lt2/h;->a:Landroid/widget/TextView;

    .line 294
    .line 295
    invoke-virtual {v3, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 296
    .line 297
    .line 298
    iget-object v0, p2, Lcom/zalexdev/stryker/custom/News;->newsDate:Ljava/lang/String;

    .line 299
    .line 300
    if-eqz v0, :cond_9

    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_8

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_8
    const-string v1, "-"

    .line 310
    .line 311
    const-string v3, "."

    .line 312
    .line 313
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    goto :goto_7

    .line 318
    :cond_9
    :goto_6
    const-string v0, ""

    .line 319
    .line 320
    :goto_7
    iget-object v1, p1, Lt2/h;->b:Landroid/widget/TextView;

    .line 321
    .line 322
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    .line 324
    .line 325
    iget-object v0, p1, Lt2/h;->c:Landroid/widget/TextView;

    .line 326
    .line 327
    iget-object v1, p2, Lcom/zalexdev/stryker/custom/News;->description:Ljava/lang/String;

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    .line 331
    .line 332
    iget-boolean v0, p2, Lcom/zalexdev/stryker/custom/News;->pinned:Z

    .line 333
    .line 334
    if-eqz v0, :cond_a

    .line 335
    .line 336
    goto :goto_8

    .line 337
    :cond_a
    move v4, v5

    .line 338
    :goto_8
    iget-object v0, p1, Lt2/h;->d:Landroid/widget/ImageView;

    .line 339
    .line 340
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    .line 342
    .line 343
    new-instance v0, Lj2/j;

    .line 344
    .line 345
    invoke-direct {v0, p0, p2, p1, v2}, Lj2/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 346
    .line 347
    .line 348
    iget-object p1, p1, Lt2/h;->e:Lcom/google/android/material/card/MaterialCardView;

    .line 349
    .line 350
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    :pswitch_1
    check-cast p1, Ls2/d;

    .line 355
    .line 356
    iget-object v0, p0, Ls2/e;->e:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v0, Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object p2

    .line 364
    check-cast p2, Lcom/zalexdev/stryker/custom/Package;

    .line 365
    .line 366
    iget-object v0, p1, Ls2/d;->a:Landroid/widget/TextView;

    .line 367
    .line 368
    invoke-virtual {p2}, Lcom/zalexdev/stryker/custom/Package;->getName()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    .line 374
    .line 375
    iget-object v0, p1, Ls2/d;->b:Landroid/widget/TextView;

    .line 376
    .line 377
    invoke-virtual {p2}, Lcom/zalexdev/stryker/custom/Package;->getVersion()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    .line 383
    .line 384
    iget-object v0, p1, Ls2/d;->f:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 385
    .line 386
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 387
    .line 388
    .line 389
    iget-object v0, p1, Ls2/d;->e:Landroid/widget/ImageView;

    .line 390
    .line 391
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p2}, Lcom/zalexdev/stryker/custom/Package;->isPythonPackage()Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    iget-object v2, p1, Ls2/d;->c:Landroid/widget/TextView;

    .line 399
    .line 400
    if-eqz v1, :cond_b

    .line 401
    .line 402
    const v1, 0x7f13013f

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 406
    .line 407
    .line 408
    const-string v1, "#FB8C00"

    .line 409
    .line 410
    :goto_9
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 415
    .line 416
    .line 417
    goto :goto_a

    .line 418
    :cond_b
    const v1, 0x7f13013d

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 422
    .line 423
    .line 424
    const-string v1, "#1E88E5"

    .line 425
    .line 426
    goto :goto_9

    .line 427
    :goto_a
    invoke-virtual {p2}, Lcom/zalexdev/stryker/custom/Package;->isInstalled()Z

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    iget-object v2, p1, Ls2/d;->d:Landroid/widget/TextView;

    .line 432
    .line 433
    if-eqz v1, :cond_c

    .line 434
    .line 435
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 436
    .line 437
    .line 438
    const v1, 0x7f0800bf

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    .line 443
    .line 444
    const-string v1, "#D32F2F"

    .line 445
    .line 446
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 451
    .line 452
    .line 453
    new-instance v1, Ls2/a;

    .line 454
    .line 455
    invoke-direct {v1, v4, p1, p0, p2}, Ls2/a;-><init>(ILs2/d;Ls2/e;Lcom/zalexdev/stryker/custom/Package;)V

    .line 456
    .line 457
    .line 458
    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    .line 460
    .line 461
    goto :goto_c

    .line 462
    :cond_c
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 463
    .line 464
    .line 465
    const v1, 0x7f0800ca

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 469
    .line 470
    .line 471
    const-string v1, "#AB47BC"

    .line 472
    .line 473
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 478
    .line 479
    .line 480
    new-instance v1, Ls2/a;

    .line 481
    .line 482
    invoke-direct {v1, v3, p1, p0, p2}, Ls2/a;-><init>(ILs2/d;Ls2/e;Lcom/zalexdev/stryker/custom/Package;)V

    .line 483
    .line 484
    .line 485
    goto :goto_b

    .line 486
    :goto_c
    return-void

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 2

    .line 1
    iget p2, p0, Ls2/e;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p2, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p2, p0, Ls2/e;->c:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const v1, 0x7f0d0088

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance p2, Lr3/x;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    const v0, 0x7f0a04d4

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object v0, p2, Lr3/x;->a:Landroid/widget/TextView;

    .line 35
    .line 36
    const v0, 0x7f0a04d0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object v0, p2, Lr3/x;->b:Landroid/widget/TextView;

    .line 46
    .line 47
    const v0, 0x7f0a04d2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 55
    .line 56
    iput-object v0, p2, Lr3/x;->c:Lcom/google/android/material/button/MaterialButton;

    .line 57
    .line 58
    const v0, 0x7f0a00b8

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p2, Lr3/x;->d:Landroid/view/View;

    .line 66
    .line 67
    return-object p2

    .line 68
    :pswitch_0
    iget-object p2, p0, Ls2/e;->c:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const v1, 0x7f0d00cb

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance p2, Lt2/h;

    .line 82
    .line 83
    invoke-direct {p2, p1}, Lt2/h;-><init>(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    return-object p2

    .line 87
    :pswitch_1
    iget-object p2, p0, Ls2/e;->c:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const v1, 0x7f0d00df

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance p2, Ls2/d;

    .line 101
    .line 102
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    const v0, 0x7f0a06a1

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/widget/TextView;

    .line 113
    .line 114
    iput-object v0, p2, Ls2/d;->b:Landroid/widget/TextView;

    .line 115
    .line 116
    const v0, 0x7f0a0657

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Landroid/widget/TextView;

    .line 124
    .line 125
    iput-object v0, p2, Ls2/d;->a:Landroid/widget/TextView;

    .line 126
    .line 127
    const v0, 0x7f0a04c6

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Landroid/widget/TextView;

    .line 135
    .line 136
    iput-object v0, p2, Ls2/d;->c:Landroid/widget/TextView;

    .line 137
    .line 138
    const v0, 0x7f0a04c3

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/widget/TextView;

    .line 146
    .line 147
    iput-object v0, p2, Ls2/d;->d:Landroid/widget/TextView;

    .line 148
    .line 149
    const v0, 0x7f0a0545

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Landroid/widget/ImageView;

    .line 157
    .line 158
    iput-object v0, p2, Ls2/d;->e:Landroid/widget/ImageView;

    .line 159
    .line 160
    const v0, 0x7f0a04c5

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 168
    .line 169
    iput-object p1, p2, Ls2/d;->f:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 170
    .line 171
    return-object p2

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
