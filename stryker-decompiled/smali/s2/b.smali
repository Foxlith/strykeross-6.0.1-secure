.class public final synthetic Ls2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ls2/e;

.field public final synthetic c:Lcom/zalexdev/stryker/custom/Package;

.field public final synthetic d:Ls2/d;


# direct methods
.method public synthetic constructor <init>(ILs2/d;Ls2/e;Lcom/zalexdev/stryker/custom/Package;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ls2/b;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Ls2/b;->b:Ls2/e;

    .line 7
    .line 8
    iput-object p4, p0, Ls2/b;->c:Lcom/zalexdev/stryker/custom/Package;

    .line 9
    .line 10
    iput-object p2, p0, Ls2/b;->d:Ls2/d;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Ls2/b;->a:I

    .line 2
    .line 3
    const-string v1, "; "

    .line 4
    .line 5
    iget-object v6, p0, Ls2/b;->c:Lcom/zalexdev/stryker/custom/Package;

    .line 6
    .line 7
    iget-object v3, p0, Ls2/b;->b:Ls2/e;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v4, p0, Ls2/b;->d:Ls2/d;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v6}, Lcom/zalexdev/stryker/custom/Package;->isPythonPackage()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, v3, Ls2/e;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ll4/l;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "pip install --break-system-packages "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6}, Lcom/zalexdev/stryker/custom/Package;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "Successfully installed"

    .line 50
    .line 51
    invoke-static {v0, v1}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    :goto_0
    move v5, v0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    iget-object v0, v3, Ls2/e;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Ll4/l;

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Li5/a;->J()Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-static {v1, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, "; apt-get -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold -o APT::Sandbox::User=root -o Acquire::Retries=3 update; "

    .line 78
    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Lcom/zalexdev/stryker/custom/Package;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1}, Li5/a;->V0(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v1}, Li5/a;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    iget-object v0, v3, Ls2/e;->d:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v0, Ll4/l;

    .line 107
    .line 108
    invoke-virtual {v6}, Lcom/zalexdev/stryker/custom/Package;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ll4/l;->P(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    goto :goto_0

    .line 117
    :goto_1
    iget-object v0, v3, Ls2/e;->b:Landroid/app/Activity;

    .line 118
    .line 119
    new-instance v1, Ls2/c;

    .line 120
    .line 121
    const/4 v7, 0x0

    .line 122
    move-object v2, v1

    .line 123
    invoke-direct/range {v2 .. v7}, Ls2/c;-><init>(Ls2/e;Ls2/d;ZLcom/zalexdev/stryker/custom/Package;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :pswitch_0
    iget-object v4, p0, Ls2/b;->d:Ls2/d;

    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Lcom/zalexdev/stryker/custom/Package;->isPythonPackage()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_1

    .line 140
    .line 141
    iget-object v0, v3, Ls2/e;->d:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, Ll4/l;

    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v2, "pip uninstall "

    .line 148
    .line 149
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6}, Lcom/zalexdev/stryker/custom/Package;->getName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v2, " -y"

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const-string v1, "Successfully uninstalled"

    .line 173
    .line 174
    invoke-static {v0, v1}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    :goto_2
    move v5, v0

    .line 179
    goto :goto_3

    .line 180
    :cond_1
    iget-object v0, v3, Ls2/e;->d:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, Ll4/l;

    .line 183
    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-static {}, Li5/a;->J()Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-static {v1, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6}, Lcom/zalexdev/stryker/custom/Package;->getName()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v1}, Li5/a;->V0(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v7, "apt-get -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold -o APT::Sandbox::User=root -o Acquire::Retries=3 purge -y "

    .line 214
    .line 215
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v1, "; apt-get -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold -o APT::Sandbox::User=root -o Acquire::Retries=3 autoremove -y"

    .line 222
    .line 223
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 238
    .line 239
    .line 240
    iget-object v0, v3, Ls2/e;->d:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v0, Ll4/l;

    .line 243
    .line 244
    invoke-virtual {v6}, Lcom/zalexdev/stryker/custom/Package;->getName()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Ll4/l;->P(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    xor-int/lit8 v0, v0, 0x1

    .line 253
    .line 254
    goto :goto_2

    .line 255
    :goto_3
    iget-object v0, v3, Ls2/e;->b:Landroid/app/Activity;

    .line 256
    .line 257
    new-instance v1, Ls2/c;

    .line 258
    .line 259
    const/4 v7, 0x1

    .line 260
    move-object v2, v1

    .line 261
    invoke-direct/range {v2 .. v7}, Ls2/c;-><init>(Ls2/e;Ls2/d;ZLcom/zalexdev/stryker/custom/Package;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    nop

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
