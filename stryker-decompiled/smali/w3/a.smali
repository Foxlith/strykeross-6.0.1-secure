.class public final synthetic Lw3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lw3/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lw3/a;->b:Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lw3/a;->a:I

    .line 2
    .line 3
    const/16 v1, 0x82

    .line 4
    .line 5
    iget-object v2, p0, Lw3/a;->b:Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->f:Lz3/d;

    .line 11
    .line 12
    const-string v1, "exploit"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lz3/d;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->w:Landroid/widget/ScrollView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->f:Lz3/d;

    .line 25
    .line 26
    const-string v1, "check"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lz3/d;->e(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    sget v0, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->A:I

    .line 33
    .line 34
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->c:Landroid/content/Context;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    const v2, 0x7f1303dc

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void

    .line 54
    :pswitch_3
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->k:Landroid/widget/ScrollView;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_4
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_1
    iget-object v1, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->f:Lz3/d;

    .line 71
    .line 72
    iget-object v1, v1, Lz3/d;->f:Lz3/g;

    .line 73
    .line 74
    invoke-virtual {v1}, Lz3/g;->e()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    iget-object v1, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->f:Lz3/d;

    .line 81
    .line 82
    iget-boolean v1, v1, Lz3/d;->j:Z

    .line 83
    .line 84
    if-nez v1, :cond_3

    .line 85
    .line 86
    :cond_2
    iget-object v1, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->f:Lz3/d;

    .line 87
    .line 88
    iget-object v1, v1, Lz3/d;->f:Lz3/g;

    .line 89
    .line 90
    invoke-virtual {v1}, Lz3/g;->a()Z

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    const-wide/32 v5, 0x2bf20

    .line 98
    .line 99
    .line 100
    add-long/2addr v3, v5

    .line 101
    :goto_0
    iget-object v1, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->f:Lz3/d;

    .line 102
    .line 103
    iget-boolean v1, v1, Lz3/d;->j:Z

    .line 104
    .line 105
    if-nez v1, :cond_5

    .line 106
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v5

    .line 111
    cmp-long v1, v5, v3

    .line 112
    .line 113
    if-gez v1, :cond_5

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_4

    .line 120
    .line 121
    goto/16 :goto_2

    .line 122
    .line 123
    :cond_4
    const-wide/16 v5, 0x1f4

    .line 124
    .line 125
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    goto/16 :goto_2

    .line 145
    .line 146
    :cond_6
    iget-object v1, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->f:Lz3/d;

    .line 147
    .line 148
    iget-boolean v1, v1, Lz3/d;->j:Z

    .line 149
    .line 150
    if-nez v1, :cond_7

    .line 151
    .line 152
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->b:Landroidx/fragment/app/a0;

    .line 153
    .line 154
    if-eqz v0, :cond_c

    .line 155
    .line 156
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_c

    .line 161
    .line 162
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->b:Landroidx/fragment/app/a0;

    .line 163
    .line 164
    new-instance v1, Lw3/a;

    .line 165
    .line 166
    const/4 v3, 0x2

    .line 167
    invoke-direct {v1, v2, v3}, Lw3/a;-><init>(Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_8

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_8
    iget-object v1, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->f:Lz3/d;

    .line 182
    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v4, "use "

    .line 186
    .line 187
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v4, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->d:Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 191
    .line 192
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/MsfExploit;->getUrl()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v1, v3}, Lz3/d;->e(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/MsfExploit;->getArguments()Ljava/util/ArrayList;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-eqz v3, :cond_a

    .line 219
    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, Lcom/zalexdev/stryker/custom/Argument;

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    if-eqz v4, :cond_9

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_9
    iget-object v4, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->f:Lz3/d;

    .line 234
    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string v6, "set "

    .line 238
    .line 239
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/Argument;->getName()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v6, " "

    .line 250
    .line 251
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/Argument;->getValue()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v4, v3}, Lz3/d;->e(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-eqz v0, :cond_b

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_b
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->f:Lz3/d;

    .line 277
    .line 278
    const-string v1, "run -j"

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Lz3/d;->e(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :cond_c
    :goto_2
    return-void

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
