.class public final synthetic Ls2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/coremanger/CoreManager;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/coremanger/CoreManager;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Ls2/i;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ls2/i;->b:Lcom/zalexdev/stryker/coremanger/CoreManager;

    .line 7
    .line 8
    iput-object p2, p0, Ls2/i;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Ls2/i;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ls2/i;->c:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Ls2/i;->b:Lcom/zalexdev/stryker/coremanger/CoreManager;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, v3, Lcom/zalexdev/stryker/coremanger/CoreManager;->b:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object v0, v3, Lcom/zalexdev/stryker/coremanger/CoreManager;->a:Ll4/l;

    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v5, "pip3 install --break-system-packages "

    .line 26
    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v0, v4}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v4, "Successfully installed"

    .line 42
    .line 43
    invoke-static {v0, v4}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    new-instance v4, Ls2/j;

    .line 48
    .line 49
    invoke-direct {v4, v3, v0, v1, v2}, Ls2/j;-><init>(Lcom/zalexdev/stryker/coremanger/CoreManager;ZLjava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Lcom/zalexdev/stryker/coremanger/CoreManager;->j(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_1
    iget-boolean v0, v3, Lcom/zalexdev/stryker/coremanger/CoreManager;->x:Z

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    iget-object v0, v3, Lcom/zalexdev/stryker/coremanger/CoreManager;->a:Ll4/l;

    .line 62
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Li5/a;->J()Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    const-string v7, "; "

    .line 73
    .line 74
    invoke-static {v7, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v6, "; apt-get -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold -o APT::Sandbox::User=root -o Acquire::Retries=3 update"

    .line 82
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v0, v5}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    iput-boolean v4, v3, Lcom/zalexdev/stryker/coremanger/CoreManager;->x:Z

    .line 94
    .line 95
    :cond_0
    iget-object v0, v3, Lcom/zalexdev/stryker/coremanger/CoreManager;->a:Ll4/l;

    .line 96
    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v6, "apt-cache search --names-only "

    .line 100
    .line 101
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Li5/a;->V0(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v6, " 2>/dev/null | head -n 400"

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v0, v5}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-instance v5, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-eqz v6, :cond_9

    .line 138
    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    check-cast v6, Ljava/lang/String;

    .line 144
    .line 145
    if-nez v6, :cond_2

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_3

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_3
    const-string v7, " - "

    .line 160
    .line 161
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-lez v7, :cond_4

    .line 166
    .line 167
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    if-nez v7, :cond_1

    .line 180
    .line 181
    const-string v7, " "

    .line 182
    .line 183
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    if-eqz v7, :cond_5

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_5
    new-instance v7, Lcom/zalexdev/stryker/custom/Package;

    .line 191
    .line 192
    invoke-direct {v7}, Lcom/zalexdev/stryker/custom/Package;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7, v6}, Lcom/zalexdev/stryker/custom/Package;->setName(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const-string v8, ""

    .line 199
    .line 200
    invoke-virtual {v7, v8}, Lcom/zalexdev/stryker/custom/Package;->setVersion(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v7, v2}, Lcom/zalexdev/stryker/custom/Package;->setIsPythonPackage(Z)V

    .line 204
    .line 205
    .line 206
    iget-object v8, v3, Lcom/zalexdev/stryker/coremanger/CoreManager;->d:Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    if-eqz v9, :cond_7

    .line 217
    .line 218
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    check-cast v9, Lcom/zalexdev/stryker/custom/Package;

    .line 223
    .line 224
    invoke-virtual {v9}, Lcom/zalexdev/stryker/custom/Package;->getName()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    if-eqz v10, :cond_6

    .line 233
    .line 234
    invoke-virtual {v7, v4}, Lcom/zalexdev/stryker/custom/Package;->setInstalled(Z)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v9}, Lcom/zalexdev/stryker/custom/Package;->getVersion()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-virtual {v7, v8}, Lcom/zalexdev/stryker/custom/Package;->setVersion(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :cond_7
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    if-eqz v6, :cond_8

    .line 249
    .line 250
    invoke-virtual {v5, v2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_8
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_9
    new-instance v0, Lf/n0;

    .line 259
    .line 260
    const/16 v1, 0x18

    .line 261
    .line 262
    invoke-direct {v0, v3, v5, v1}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3, v0}, Lcom/zalexdev/stryker/coremanger/CoreManager;->j(Ljava/lang/Runnable;)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
