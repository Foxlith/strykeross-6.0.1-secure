.class public final synthetic Lv3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lv3/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lv3/d;->b:Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 7
    .line 8
    iput-object p2, p0, Lv3/d;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lv3/d;->a:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    iget-object v2, p0, Lv3/d;->c:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, p0, Lv3/d;->b:Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    const-wide/16 v7, 0x2710

    .line 23
    .line 24
    add-long/2addr v5, v7

    .line 25
    :goto_0
    iget-object v0, v4, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v7

    .line 37
    cmp-long v0, v7, v5

    .line 38
    .line 39
    if-gez v0, :cond_5

    .line 40
    .line 41
    iget-object v0, v4, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->b:Landroid/content/Context;

    .line 42
    .line 43
    const-string v7, "connectivity"

    .line 44
    .line 45
    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 50
    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    if-nez v7, :cond_1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {v4, v2}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iget-object v2, v4, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->u:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const/4 v3, 0x0

    .line 89
    :goto_1
    invoke-virtual {v4}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->l()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_3

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_3
    iget-object v0, v4, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->a:Landroidx/fragment/app/a0;

    .line 97
    .line 98
    new-instance v2, Lj2/g;

    .line 99
    .line 100
    invoke-direct {v2, v4, v3, v1}, Lj2/g;-><init>(Ljava/lang/Object;ZI)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    :goto_2
    const-wide/16 v7, 0xfa

    .line 108
    .line 109
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    invoke-virtual {v4}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->l()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_6

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_6
    iget-object v0, v4, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->a:Landroidx/fragment/app/a0;

    .line 129
    .line 130
    new-instance v1, Lv3/b;

    .line 131
    .line 132
    const/4 v2, 0x2

    .line 133
    invoke-direct {v1, v4, v2}, Lv3/b;-><init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 137
    .line 138
    .line 139
    :goto_3
    return-void

    .line 140
    :pswitch_0
    sget-object v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 141
    .line 142
    invoke-virtual {v4, v2}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v5, v4, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    .line 147
    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v7, "macchanger -s "

    .line 151
    .line 152
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v5, v2}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    if-eqz v5, :cond_9

    .line 175
    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    check-cast v5, Ljava/lang/String;

    .line 181
    .line 182
    const-string v6, "Permanent MAC: (([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2})"

    .line 183
    .line 184
    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-eqz v6, :cond_8

    .line 197
    .line 198
    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    goto :goto_4

    .line 203
    :cond_8
    const-string v5, ""

    .line 204
    .line 205
    :goto_4
    if-eqz v5, :cond_7

    .line 206
    .line 207
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-nez v6, :cond_7

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_9
    const/4 v5, 0x0

    .line 215
    :goto_5
    invoke-virtual {v4}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->l()Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_a

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_a
    iget-object v1, v4, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->a:Landroidx/fragment/app/a0;

    .line 223
    .line 224
    new-instance v2, Lv3/c;

    .line 225
    .line 226
    invoke-direct {v2, v4, v0, v5, v3}, Lv3/c;-><init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 230
    .line 231
    .line 232
    :goto_6
    return-void

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
