.class public final synthetic Lt2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/dashboard/Dashboard;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lt2/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lt2/a;->b:Lcom/zalexdev/stryker/dashboard/Dashboard;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    const-string p1, "arsenal_start_tab"

    .line 2
    .line 3
    iget v0, p0, Lt2/a;->a:I

    .line 4
    .line 5
    const v1, 0x7f0a034e

    .line 6
    .line 7
    .line 8
    const v2, 0x7f0a008e

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const v4, 0x7f0a0166

    .line 13
    .line 14
    .line 15
    iget-object v5, p0, Lt2/a;->b:Lcom/zalexdev/stryker/dashboard/Dashboard;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    sget p1, Lcom/zalexdev/stryker/dashboard/Dashboard;->H:I

    .line 21
    .line 22
    invoke-virtual {v5}, Lcom/zalexdev/stryker/dashboard/Dashboard;->f()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 27
    .line 28
    sget v0, Lcom/zalexdev/stryker/engine/RootlessService;->a:I

    .line 29
    .line 30
    new-instance v0, Landroid/content/Intent;

    .line 31
    .line 32
    const-class v1, Lcom/zalexdev/stryker/engine/RootlessService;

    .line 33
    .line 34
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 38
    .line 39
    .line 40
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->s:Lcom/zalexdev/stryker/utils/VmRingView;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    const/high16 v0, -0x40800000    # -1.0f

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/zalexdev/stryker/utils/VmRingView;->setProgress(F)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->s:Lcom/zalexdev/stryker/utils/VmRingView;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Lcom/zalexdev/stryker/utils/VmRingView;->setState(I)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->f:Landroid/widget/TextView;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    const-string v0, "Stopping\u2026"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    .line 65
    .line 66
    new-instance v0, Lt2/c;

    .line 67
    .line 68
    const/16 v1, 0x8

    .line 69
    .line 70
    invoke-direct {v0, v5, v1}, Lt2/c;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 71
    .line 72
    .line 73
    const-string v1, "vm-stop"

    .line 74
    .line 75
    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_1
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/zalexdev/stryker/engine/RootlessService;->b(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->y:Lu2/t;

    .line 88
    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    invoke-virtual {p1}, Lu2/t;->d()V

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-virtual {v5}, Lcom/zalexdev/stryker/dashboard/Dashboard;->g()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_2
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->t:Lnet/cachapa/expandablelayout/ExpandableLayout;

    .line 99
    .line 100
    invoke-virtual {p1}, Lnet/cachapa/expandablelayout/ExpandableLayout;->toggle()V

    .line 101
    .line 102
    .line 103
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->i:Landroid/widget/TextView;

    .line 104
    .line 105
    iget-object v0, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->t:Lnet/cachapa/expandablelayout/ExpandableLayout;

    .line 106
    .line 107
    invoke-virtual {v0}, Lnet/cachapa/expandablelayout/ExpandableLayout;->isExpanded()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    const-string v0, "\u25be"

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    const-string v0, "\u25b8"

    .line 117
    .line 118
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_3
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->d:Landroidx/fragment/app/x0;

    .line 123
    .line 124
    new-instance v0, Lcom/zalexdev/stryker/dashboard/NewsFragment;

    .line 125
    .line 126
    invoke-direct {v0}, Lcom/zalexdev/stryker/dashboard/NewsFragment;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    const-string p1, "news"

    .line 133
    .line 134
    invoke-static {v0, p1, v4}, Landroidx/fragment/app/x0;->g(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_4
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {p1}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-nez p1, :cond_4

    .line 148
    .line 149
    :goto_1
    invoke-virtual {v5}, Lcom/zalexdev/stryker/dashboard/Dashboard;->e()V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 154
    .line 155
    iget-object p1, p1, Ll4/l;->c:Landroid/content/Context;

    .line 156
    .line 157
    invoke-static {p1}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lu2/h;->z()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    const/4 v0, 0x3

    .line 166
    if-ne p1, v0, :cond_5

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_5
    new-instance p1, Ljava/lang/Thread;

    .line 170
    .line 171
    new-instance v0, Lt2/c;

    .line 172
    .line 173
    const/4 v1, 0x5

    .line 174
    invoke-direct {v0, v5, v1}, Lt2/c;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 175
    .line 176
    .line 177
    const-string v1, "terminal-vm-check"

    .line 178
    .line 179
    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 183
    .line 184
    .line 185
    :goto_2
    return-void

    .line 186
    :pswitch_5
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->d:Landroidx/fragment/app/x0;

    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    const p1, 0x7f0a0220

    .line 192
    .line 193
    .line 194
    invoke-static {p1}, Landroidx/fragment/app/x0;->e(I)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :pswitch_6
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->d:Landroidx/fragment/app/x0;

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    const p1, 0x7f0a03ca

    .line 204
    .line 205
    .line 206
    invoke-static {p1}, Landroidx/fragment/app/x0;->e(I)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :pswitch_7
    iget-object v0, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->d:Landroidx/fragment/app/x0;

    .line 211
    .line 212
    new-instance v1, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;

    .line 213
    .line 214
    invoke-direct {v1}, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;-><init>()V

    .line 215
    .line 216
    .line 217
    new-instance v4, Landroid/os/Bundle;

    .line 218
    .line 219
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v5, "db"

    .line 223
    .line 224
    invoke-virtual {v4, p1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-static {v1, v3, v2}, Landroidx/fragment/app/x0;->g(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :pswitch_8
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->d:Landroidx/fragment/app/x0;

    .line 238
    .line 239
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    const p1, 0x7f0a0477

    .line 243
    .line 244
    .line 245
    invoke-static {p1}, Landroidx/fragment/app/x0;->e(I)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :pswitch_9
    iget-object v0, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->d:Landroidx/fragment/app/x0;

    .line 250
    .line 251
    new-instance v1, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;

    .line 252
    .line 253
    invoke-direct {v1}, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;-><init>()V

    .line 254
    .line 255
    .line 256
    new-instance v4, Landroid/os/Bundle;

    .line 257
    .line 258
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 259
    .line 260
    .line 261
    const-string v5, "hub"

    .line 262
    .line 263
    invoke-virtual {v4, p1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    invoke-static {v1, v3, v2}, Landroidx/fragment/app/x0;->g(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :pswitch_a
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->d:Landroidx/fragment/app/x0;

    .line 277
    .line 278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    const p1, 0x7f0a025c

    .line 282
    .line 283
    .line 284
    invoke-static {p1}, Landroidx/fragment/app/x0;->e(I)V

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :pswitch_b
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->d:Landroidx/fragment/app/x0;

    .line 289
    .line 290
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    invoke-static {v1}, Landroidx/fragment/app/x0;->e(I)V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :pswitch_c
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->d:Landroidx/fragment/app/x0;

    .line 298
    .line 299
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    invoke-static {v1}, Landroidx/fragment/app/x0;->e(I)V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :pswitch_d
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->d:Landroidx/fragment/app/x0;

    .line 307
    .line 308
    new-instance v0, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;

    .line 309
    .line 310
    invoke-direct {v0}, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    const-string p1, "wifi_history"

    .line 317
    .line 318
    invoke-static {v0, p1, v4}, Landroidx/fragment/app/x0;->g(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :pswitch_e
    iget-object p1, v5, Lcom/zalexdev/stryker/dashboard/Dashboard;->d:Landroidx/fragment/app/x0;

    .line 323
    .line 324
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    const p1, 0x7f0a0716

    .line 328
    .line 329
    .line 330
    invoke-static {p1}, Landroidx/fragment/app/x0;->e(I)V

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    nop

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
