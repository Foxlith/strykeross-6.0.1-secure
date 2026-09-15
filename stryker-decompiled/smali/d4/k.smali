.class public final synthetic Ld4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/nuclei/NucleiReport;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/nuclei/NucleiReport;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ld4/k;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ld4/k;->b:Lcom/zalexdev/stryker/nuclei/NucleiReport;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Ld4/k;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Ld4/k;->b:Lcom/zalexdev/stryker/nuclei/NucleiReport;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->q:Landroid/widget/EditText;

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/nuclei/NucleiReport;->w:I

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/a0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v1, Landroidx/fragment/app/a;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/u0;)V

    .line 32
    .line 33
    .line 34
    iget p1, v0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->a:I

    .line 35
    .line 36
    new-instance v0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v2, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "siteIndex"

    .line 47
    .line 48
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    const p1, 0x7f0a0205

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v1, v0, v2, p1}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroidx/fragment/app/e1;->c(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    invoke-virtual {v1, p1}, Landroidx/fragment/app/a;->h(Z)I

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_1
    sget p1, Lcom/zalexdev/stryker/nuclei/NucleiReport;->w:I

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    new-instance p1, Landroid/content/Intent;

    .line 75
    .line 76
    const-string v1, "android.intent.action.SEND"

    .line 77
    .line 78
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v1, "text/plain"

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v2, "Nuclei report: "

    .line 89
    .line 90
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v2, v0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->b:Lcom/zalexdev/stryker/custom/Site;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v2, "android.intent.extra.SUBJECT"

    .line 107
    .line 108
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v2, "Target: "

    .line 114
    .line 115
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v2, v0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->b:Lcom/zalexdev/stryker/custom/Site;

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v2, "\nStatus: "

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v2, v0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->b:Lcom/zalexdev/stryker/custom/Site;

    .line 133
    .line 134
    iget-object v2, v2, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, "\nFindings: "

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v2, v0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->b:Lcom/zalexdev/stryker/custom/Site;

    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Site;->getNucleis()Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v2, "\n\n"

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-object v2, v0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->b:Lcom/zalexdev/stryker/custom/Site;

    .line 163
    .line 164
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Site;->getNucleis()Ljava/util/ArrayList;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_4

    .line 177
    .line 178
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    check-cast v3, Lcom/zalexdev/stryker/custom/NucleiItem;

    .line 183
    .line 184
    const-string v4, "\u2022 ["

    .line 185
    .line 186
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget v4, v3, Lcom/zalexdev/stryker/custom/NucleiItem;->severity:I

    .line 190
    .line 191
    sget v5, Lcom/zalexdev/stryker/nuclei/NucleiMain;->p:I

    .line 192
    .line 193
    const/4 v5, 0x1

    .line 194
    if-eq v4, v5, :cond_3

    .line 195
    .line 196
    const/4 v5, 0x2

    .line 197
    if-eq v4, v5, :cond_2

    .line 198
    .line 199
    const/4 v5, 0x3

    .line 200
    if-eq v4, v5, :cond_1

    .line 201
    .line 202
    const/4 v5, 0x4

    .line 203
    if-eq v4, v5, :cond_0

    .line 204
    .line 205
    const-string v4, "INFO"

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_0
    const-string v4, "CRIT"

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_1
    const-string v4, "HIGH"

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_2
    const-string v4, "MED"

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_3
    const-string v4, "LOW"

    .line 218
    .line 219
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v4, "] "

    .line 223
    .line 224
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    iget-object v4, v3, Lcom/zalexdev/stryker/custom/NucleiItem;->title:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v4, " \u2014 "

    .line 233
    .line 234
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    iget-object v3, v3, Lcom/zalexdev/stryker/custom/NucleiItem;->host:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const/16 v3, 0xa

    .line 243
    .line 244
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    goto :goto_0

    .line 248
    :cond_4
    const-string v2, "android.intent.extra.TEXT"

    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    .line 256
    .line 257
    const-string v1, "Share report"

    .line 258
    .line 259
    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :pswitch_2
    sget p1, Lcom/zalexdev/stryker/nuclei/NucleiReport;->w:I

    .line 268
    .line 269
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/a0;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p1}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p1}, Landroidx/fragment/app/u0;->I()V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
