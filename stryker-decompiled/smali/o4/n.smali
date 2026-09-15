.class public final Lo4/n;
.super Ll4/h;
.source "SourceFile"


# instance fields
.field public final synthetic e:Landroid/widget/ImageView;

.field public final synthetic f:Landroid/widget/ProgressBar;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:Lcom/zalexdev/stryker/custom/WiFINetwork;

.field public final synthetic k:Landroid/widget/TextView;

.field public final synthetic l:Lcom/zalexdev/stryker/custom/WiFINetwork;

.field public final synthetic m:Landroid/widget/TextView;

.field public final synthetic n:Lo4/u;


# direct methods
.method public constructor <init>(Lo4/u;Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/n;->n:Lo4/u;

    iput-object p4, p0, Lo4/n;->e:Landroid/widget/ImageView;

    iput-object p5, p0, Lo4/n;->f:Landroid/widget/ProgressBar;

    iput-object p6, p0, Lo4/n;->g:Landroid/widget/TextView;

    iput-object p7, p0, Lo4/n;->h:Landroid/view/View;

    iput-object p8, p0, Lo4/n;->i:Landroid/widget/TextView;

    iput-object p9, p0, Lo4/n;->j:Lcom/zalexdev/stryker/custom/WiFINetwork;

    iput-object p10, p0, Lo4/n;->k:Landroid/widget/TextView;

    iput-object p11, p0, Lo4/n;->l:Lcom/zalexdev/stryker/custom/WiFINetwork;

    iput-object p12, p0, Lo4/n;->m:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, Ll4/h;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/FileReader;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Ll4/h;->c:Ll4/l;

    .line 11
    .line 12
    invoke-virtual {v3}, Ll4/l;->H()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, "/wordlists/"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lo4/n;->n:Lo4/u;

    .line 25
    .line 26
    iget-object v3, v3, Lo4/u;->l:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    .line 40
    .line 41
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget-boolean v2, p0, Ll4/h;->d:Z

    .line 48
    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .line 55
    const v3, 0x7f130681

    .line 56
    .line 57
    .line 58
    const/16 v4, 0x1a

    .line 59
    .line 60
    if-lt v2, v4, :cond_1

    .line 61
    .line 62
    iget-object v2, p0, Lo4/n;->n:Lo4/u;

    .line 63
    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v6, p0, Ll4/h;->b:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const/4 v6, 0x0

    .line 90
    invoke-virtual {v2, v6, v5}, Lo4/u;->c(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception v1

    .line 95
    goto/16 :goto_4

    .line 96
    .line 97
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    iget-object v5, p0, Ll4/h;->b:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {p0, v2}, Ll4/h;->e(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Ll4/h;->c:Ll4/l;

    .line 126
    .line 127
    iget-object v3, p0, Lo4/n;->l:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v2, v3, v1}, Ll4/l;->k(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    const-wide/16 v5, 0x1770

    .line 138
    .line 139
    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :catch_0
    move-exception v3

    .line 144
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    .line 146
    .line 147
    :goto_2
    iget-object v3, p0, Lo4/n;->n:Lo4/u;

    .line 148
    .line 149
    iget-object v5, p0, Lo4/n;->l:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 150
    .line 151
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v3, v5}, Lo4/u;->b(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_2

    .line 160
    .line 161
    iget-object v2, p0, Lo4/n;->j:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 162
    .line 163
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 164
    .line 165
    invoke-virtual {v2, v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setOK(Ljava/lang/Boolean;)V

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lo4/n;->j:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 169
    .line 170
    invoke-virtual {v2, v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setPsk(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v2, p0, Lo4/n;->j:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 174
    .line 175
    iget-object v3, p0, Lo4/n;->l:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 176
    .line 177
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v2, v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setSsid(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 185
    .line 186
    if-lt v2, v4, :cond_3

    .line 187
    .line 188
    iget-object v2, p0, Lo4/n;->n:Lo4/u;

    .line 189
    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    iget-object v4, p0, Ll4/h;->b:Landroid/content/Context;

    .line 196
    .line 197
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    const v5, 0x7f130628

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    const/4 v3, 0x1

    .line 219
    invoke-virtual {v2, v3, v1}, Lo4/u;->c(ILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_2
    iget-object v1, p0, Ll4/h;->c:Ll4/l;

    .line 224
    .line 225
    iget-object v1, v1, Ll4/l;->c:Landroid/content/Context;

    .line 226
    .line 227
    const-string v3, "wifi"

    .line 228
    .line 229
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_3
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 241
    .line 242
    .line 243
    goto :goto_7

    .line 244
    :catch_1
    move-exception v0

    .line 245
    goto :goto_6

    .line 246
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 247
    .line 248
    .line 249
    goto :goto_5

    .line 250
    :catchall_1
    move-exception v0

    .line 251
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    :goto_5
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 255
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 256
    .line 257
    .line 258
    :goto_7
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lo4/n;->m:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lo4/n;->n:Lo4/u;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lo4/u;->f(Landroid/widget/TextView;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()V
    .locals 8

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Ll4/h;->c:Ll4/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lo4/n;->e:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lo4/n;->f:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    iget-object v0, p0, Lo4/n;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lo4/n;->h:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lo4/n;->i:Landroid/widget/TextView;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lo4/n;->j:Lcom/zalexdev/stryker/custom/WiFINetwork;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getOK()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ll4/h;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f130511

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lo4/n;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lo4/n;->k:Landroid/widget/TextView;

    iget-object v5, p0, Lo4/n;->l:Lcom/zalexdev/stryker/custom/WiFINetwork;

    iget-object v6, p0, Lo4/n;->j:Lcom/zalexdev/stryker/custom/WiFINetwork;

    new-instance v1, Lcom/stryker/terminal/ui/other/a;

    const/16 v7, 0x9

    move-object v2, v1

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/stryker/terminal/ui/other/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const-string v1, "Password not found"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
