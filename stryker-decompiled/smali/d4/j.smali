.class public final synthetic Ld4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/nuclei/NucleiMain;

.field public final synthetic b:I

.field public final synthetic c:Lcom/zalexdev/stryker/custom/Site;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/nuclei/NucleiMain;ILcom/zalexdev/stryker/custom/Site;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4/j;->a:Lcom/zalexdev/stryker/nuclei/NucleiMain;

    iput p2, p0, Ld4/j;->b:I

    iput-object p3, p0, Ld4/j;->c:Lcom/zalexdev/stryker/custom/Site;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    .line 1
    sget v0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->p:I

    .line 2
    .line 3
    iget-object v0, p0, Ld4/j;->a:Lcom/zalexdev/stryker/nuclei/NucleiMain;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v1, 0x1

    .line 13
    iget v2, p0, Ld4/j;->b:I

    .line 14
    .line 15
    iget-object v3, p0, Ld4/j;->c:Lcom/zalexdev/stryker/custom/Site;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    packed-switch p1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move v1, v4

    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :pswitch_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/a0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroidx/fragment/app/a;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/u0;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;

    .line 41
    .line 42
    invoke-direct {p1}, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v3, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v5, "siteIndex"

    .line 51
    .line 52
    invoke-virtual {v3, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    const v3, 0x7f0a0205

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1, v2, v3}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroidx/fragment/app/e1;->c(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v4}, Landroidx/fragment/app/a;->h(Z)I

    .line 69
    .line 70
    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :pswitch_1
    iget-object p1, v0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->a:Ll4/l;

    .line 74
    .line 75
    const-string v3, "sites"

    .line 76
    .line 77
    invoke-virtual {p1, v3}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v4, v3}, Ll4/l;->d0(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/zalexdev/stryker/nuclei/NucleiMain;->g()V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    :pswitch_2
    invoke-virtual {v0, v2, v3}, Lcom/zalexdev/stryker/nuclei/NucleiMain;->f(ILcom/zalexdev/stryker/custom/Site;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :pswitch_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string v2, "clipboard"

    .line 102
    .line 103
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroid/content/ClipboardManager;

    .line 108
    .line 109
    const-string v2, "Nuclei target"

    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {p1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string v0, "URL copied"

    .line 127
    .line 128
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_2

    .line 136
    .line 137
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    .line 138
    .line 139
    const-string v2, "android.intent.action.SEND"

    .line 140
    .line 141
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v2, "text/plain"

    .line 145
    .line 146
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v4, "Nuclei report: "

    .line 152
    .line 153
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    const-string v4, "android.intent.extra.SUBJECT"

    .line 168
    .line 169
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v4, "Target: "

    .line 175
    .line 176
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v4, "\nStatus: "

    .line 187
    .line 188
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-object v4, v3, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v4, "\nFindings: "

    .line 197
    .line 198
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/Site;->getNucleis()Ljava/util/ArrayList;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v4, "\n\n"

    .line 213
    .line 214
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/Site;->getNucleis()Ljava/util/ArrayList;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-eqz v4, :cond_4

    .line 230
    .line 231
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    check-cast v4, Lcom/zalexdev/stryker/custom/NucleiItem;

    .line 236
    .line 237
    const-string v5, "\u2022 ["

    .line 238
    .line 239
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget v5, v4, Lcom/zalexdev/stryker/custom/NucleiItem;->severity:I

    .line 243
    .line 244
    if-eq v5, v1, :cond_3

    .line 245
    .line 246
    const/4 v6, 0x2

    .line 247
    if-eq v5, v6, :cond_2

    .line 248
    .line 249
    const/4 v6, 0x3

    .line 250
    if-eq v5, v6, :cond_1

    .line 251
    .line 252
    const/4 v6, 0x4

    .line 253
    if-eq v5, v6, :cond_0

    .line 254
    .line 255
    const-string v5, "INFO"

    .line 256
    .line 257
    goto :goto_1

    .line 258
    :cond_0
    const-string v5, "CRIT"

    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_1
    const-string v5, "HIGH"

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_2
    const-string v5, "MED"

    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_3
    const-string v5, "LOW"

    .line 268
    .line 269
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v5, "] "

    .line 273
    .line 274
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    iget-object v5, v4, Lcom/zalexdev/stryker/custom/NucleiItem;->title:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v5, " \u2014 "

    .line 283
    .line 284
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget-object v4, v4, Lcom/zalexdev/stryker/custom/NucleiItem;->host:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const/16 v4, 0xa

    .line 293
    .line 294
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    goto :goto_0

    .line 298
    :cond_4
    const-string v3, "android.intent.extra.TEXT"

    .line 299
    .line 300
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    .line 306
    .line 307
    const-string v2, "Share report"

    .line 308
    .line 309
    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 314
    .line 315
    .line 316
    goto :goto_2

    .line 317
    :pswitch_5
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/nuclei/NucleiMain;->e(I)V

    .line 318
    .line 319
    .line 320
    :goto_2
    return v1

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
