.class public final Lo4/l;
.super Ll4/c;
.source "SourceFile"


# instance fields
.field public final synthetic A:Landroid/widget/TextView;

.field public final synthetic B:Lo4/u;

.field public final synthetic s:Landroid/widget/TextView;

.field public final synthetic t:Landroid/view/View;

.field public final synthetic u:Landroid/widget/TextView;

.field public final synthetic v:Landroid/widget/ImageView;

.field public final synthetic w:Landroid/widget/ProgressBar;

.field public final synthetic x:Lcom/zalexdev/stryker/custom/WiFINetwork;

.field public final synthetic y:Landroid/widget/TextView;

.field public final synthetic z:[I


# direct methods
.method public constructor <init>(Lo4/u;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;[ILandroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/l;->B:Lo4/u;

    iput-object p5, p0, Lo4/l;->s:Landroid/widget/TextView;

    iput-object p6, p0, Lo4/l;->t:Landroid/view/View;

    iput-object p7, p0, Lo4/l;->u:Landroid/widget/TextView;

    iput-object p8, p0, Lo4/l;->v:Landroid/widget/ImageView;

    iput-object p9, p0, Lo4/l;->w:Landroid/widget/ProgressBar;

    iput-object p10, p0, Lo4/l;->x:Lcom/zalexdev/stryker/custom/WiFINetwork;

    iput-object p11, p0, Lo4/l;->y:Landroid/widget/TextView;

    iput-object p12, p0, Lo4/l;->z:[I

    iput-object p13, p0, Lo4/l;->A:Landroid/widget/TextView;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p4, p1}, Ll4/c;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lo4/l;->B:Lo4/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo4/u;->e()V

    .line 4
    .line 5
    .line 6
    new-instance v5, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 7
    .line 8
    invoke-direct {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "[+] WPS pin:"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const-string v4, "\'"

    .line 32
    .line 33
    const-string v6, ""

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const-string v3, "[+] WPS pin: "

    .line 38
    .line 39
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v5, v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setPin(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v5, v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setOK(Ljava/lang/Boolean;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    const-string v3, "[+] WPS PIN:"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    const-string v3, "[+] WPS PIN: "

    .line 64
    .line 65
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v5, v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setPin(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v5, v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setOK(Ljava/lang/Boolean;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    const-string v3, "[+] WPA PSK:"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    const-string v3, "[+] WPA PSK: "

    .line 90
    .line 91
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v5, v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setPsk(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {v5, v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setOK(Ljava/lang/Boolean;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    iget-object v1, p0, Lo4/l;->s:Landroid/widget/TextView;

    .line 111
    .line 112
    const v2, 0x104000a

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lo4/l;->t:Landroid/view/View;

    .line 119
    .line 120
    const/16 v2, 0x8

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lo4/l;->u:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    const/high16 v2, 0x3f800000    # 1.0f

    .line 131
    .line 132
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iget-object v3, p0, Ll4/c;->d:Ll4/l;

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    iget-object v4, p0, Lo4/l;->v:Landroid/widget/ImageView;

    .line 142
    .line 143
    invoke-static {v4, v2}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 144
    .line 145
    .line 146
    const/4 v2, 0x0

    .line 147
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iget-object v4, p0, Lo4/l;->w:Landroid/widget/ProgressBar;

    .line 152
    .line 153
    invoke-static {v4, v2}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getOK()Ljava/lang/Boolean;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    iget-object v4, p0, Ll4/c;->b:Landroid/content/Context;

    .line 165
    .line 166
    if-eqz v2, :cond_5

    .line 167
    .line 168
    invoke-virtual {v3}, Ll4/l;->S()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    iget-object v2, p0, Lo4/l;->x:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 173
    .line 174
    if-eqz p1, :cond_4

    .line 175
    .line 176
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPin()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    iget-object v8, v2, Lcom/zalexdev/stryker/custom/WiFINetwork;->ssid:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v3, p1, v6, v7, v8}, Ll4/l;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_4
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iget-object v2, v2, Lcom/zalexdev/stryker/custom/WiFINetwork;->ssid:Ljava/lang/String;

    .line 198
    .line 199
    sget-object v3, Ly2/a;->d:Ly2/a;

    .line 200
    .line 201
    const/4 v6, 0x1

    .line 202
    invoke-static {v4, p1, v2, v3, v6}, Lw2/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ly2/a;Z)V

    .line 203
    .line 204
    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    const v3, 0x7f130511

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v2, " "

    .line 225
    .line 226
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v3, "\n"

    .line 237
    .line 238
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    const v4, 0x7f130539

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPin()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .line 271
    .line 272
    iget-object p1, p0, Lo4/l;->y:Landroid/widget/TextView;

    .line 273
    .line 274
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lo4/l;->y:Landroid/widget/TextView;

    .line 278
    .line 279
    iget-object v4, p0, Lo4/l;->x:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 280
    .line 281
    new-instance v0, Lcom/stryker/terminal/ui/other/a;

    .line 282
    .line 283
    const/16 v6, 0x8

    .line 284
    .line 285
    move-object v1, v0

    .line 286
    move-object v2, p0

    .line 287
    move-object v3, p1

    .line 288
    invoke-direct/range {v1 .. v6}, Lcom/stryker/terminal/ui/other/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_5
    const-string v0, "Unable to up interface"

    .line 296
    .line 297
    invoke-static {p1, v0}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-nez v0, :cond_7

    .line 302
    .line 303
    const-string v0, "No such device"

    .line 304
    .line 305
    invoke-static {p1, v0}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-eqz p1, :cond_6

    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_6
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    const v0, 0x7f1304c2

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_7
    :goto_2
    const-string p1, "Please change interface before attacking"

    .line 328
    .line 329
    goto :goto_1

    .line 330
    :goto_3
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "WPA PSK:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ll4/c;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const-string v0, "Associating with AP\u2026"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    iget-object v2, p0, Lo4/l;->z:[I

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    aget v0, v2, v1

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    aput v0, v2, v1

    .line 28
    .line 29
    :cond_1
    aget v0, v2, v1

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    if-le v0, v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Ll4/c;->a()V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Ll4/c;->d:Ll4/l;

    .line 38
    .line 39
    const-string v1, "hide"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    const-string v0, "((\\w{2}:){5}\\w{2})"

    .line 48
    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "XX:XX:XX:XX:XX:XX"

    .line 68
    .line 69
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :cond_3
    const-string v0, "\n"

    .line 74
    .line 75
    invoke-static {p1, v0}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object v0, p0, Lo4/l;->A:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lo4/l;->B:Lo4/u;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lo4/u;->f(Landroid/widget/TextView;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
