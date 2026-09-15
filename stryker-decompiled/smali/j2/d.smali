.class public final synthetic Lj2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;ZLjava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lj2/d;->a:I

    iput-object p1, p0, Lj2/d;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lj2/d;->b:Z

    iput-object p3, p0, Lj2/d;->e:Ljava/lang/Object;

    iput-object p4, p0, Lj2/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lj2/d;->a:I

    iput-object p1, p0, Lj2/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Lj2/d;->d:Ljava/lang/Object;

    iput-object p3, p0, Lj2/d;->e:Ljava/lang/Object;

    iput-boolean p4, p0, Lj2/d;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zalexdev/stryker/MainActivity;ZLjava/lang/String;La4/e;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lj2/d;->a:I

    iput-object p1, p0, Lj2/d;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lj2/d;->b:Z

    iput-object p3, p0, Lj2/d;->d:Ljava/lang/Object;

    iput-object p4, p0, Lj2/d;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-boolean v5, p0, Lj2/d;->b:Z

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    iget v1, p0, Lj2/d;->a:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v6, p0, Lj2/d;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v7, p0, Lj2/d;->e:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v8, p0, Lj2/d;->c:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v8, Landroid/widget/TextView;

    .line 19
    .line 20
    check-cast v7, [I

    .line 21
    .line 22
    check-cast v6, Ljava/lang/String;

    .line 23
    .line 24
    sget v0, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    .line 25
    .line 26
    const-string v0, "Success: "

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    aget v0, v7, v4

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, "\nFile saved to: "

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    aget v0, v7, v4

    .line 57
    .line 58
    const-string v2, "\nBut the capture file could not be saved \u2014 check the log"

    .line 59
    .line 60
    invoke-static {v1, v0, v2}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_0
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_0
    check-cast v8, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

    .line 69
    .line 70
    check-cast v6, Le3/b;

    .line 71
    .line 72
    check-cast v7, Lf3/c;

    .line 73
    .line 74
    sget v0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->j:I

    .line 75
    .line 76
    invoke-virtual {v8, v6, v7}, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->d(Le3/b;Lf3/c;)V

    .line 77
    .line 78
    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    iget-object v0, v7, Lf3/c;->c:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    iget-object v1, v8, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->a:Ll4/l;

    .line 86
    .line 87
    const v2, 0x7f13005b

    .line 88
    .line 89
    .line 90
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v8, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    iget-object v0, v8, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->a:Ll4/l;

    .line 103
    .line 104
    const v1, 0x7f13005a

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :goto_1
    return-void

    .line 115
    :pswitch_1
    check-cast v8, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 116
    .line 117
    check-cast v7, Lf3/b;

    .line 118
    .line 119
    check-cast v6, Ljava/lang/String;

    .line 120
    .line 121
    sget v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 122
    .line 123
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    if-nez v5, :cond_2

    .line 129
    .line 130
    const-string v1, "\u26d4 Failed to apply \'"

    .line 131
    .line 132
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v7, Lf3/b;->b:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, "\' \u2014 check root + Arsenal"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v8, v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v3}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->q(Z)V

    .line 153
    .line 154
    .line 155
    iget-object v0, v8, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r:Lcom/google/android/material/button/MaterialButton;

    .line 156
    .line 157
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 158
    .line 159
    .line 160
    iget-object v0, v8, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r:Lcom/google/android/material/button/MaterialButton;

    .line 161
    .line 162
    const/high16 v1, 0x3f800000    # 1.0f

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_2
    const-string v1, "\u2713 Bound \'"

    .line 169
    .line 170
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v7, Lf3/b;->b:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v1, "\'. Re-probing..."

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v8, v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v8}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->m()V

    .line 191
    .line 192
    .line 193
    new-instance v0, Landroid/os/Handler;

    .line 194
    .line 195
    invoke-virtual {v8}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 200
    .line 201
    .line 202
    new-instance v1, Ll3/g;

    .line 203
    .line 204
    invoke-direct {v1, v8, v6, v3}, Ll3/g;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;Ljava/lang/String;I)V

    .line 205
    .line 206
    .line 207
    const-wide/16 v2, 0x5dc

    .line 208
    .line 209
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    .line 211
    .line 212
    :goto_2
    return-void

    .line 213
    :pswitch_2
    move-object v1, v8

    .line 214
    check-cast v1, Lcom/zalexdev/stryker/dashboard/Dashboard;

    .line 215
    .line 216
    check-cast v6, Lu2/h;

    .line 217
    .line 218
    check-cast v7, Lu2/t;

    .line 219
    .line 220
    sget v8, Lcom/zalexdev/stryker/dashboard/Dashboard;->H:I

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    const/4 v8, -0x1

    .line 226
    :try_start_0
    invoke-virtual {v6}, Lu2/h;->A()I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-ne v3, v0, :cond_3

    .line 231
    .line 232
    const/16 v0, 0x78

    .line 233
    .line 234
    invoke-virtual {v6, v0}, Lu2/h;->C(I)Ljava/util/ArrayList;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {v0}, Li5/a;->z(Ljava/util/ArrayList;)I

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    :cond_3
    if-eqz v5, :cond_4

    .line 243
    .line 244
    const/16 v0, 0xa0

    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_4
    const/16 v0, 0x8

    .line 248
    .line 249
    :goto_3
    invoke-virtual {v7, v0}, Lu2/t;->c(I)Lu2/s;

    .line 250
    .line 251
    .line 252
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    move-object v6, v0

    .line 254
    :goto_4
    move v2, v3

    .line 255
    move v3, v8

    .line 256
    goto :goto_5

    .line 257
    :catchall_0
    move-object v6, v2

    .line 258
    goto :goto_4

    .line 259
    :goto_5
    iget-object v7, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->a:Landroidx/fragment/app/a0;

    .line 260
    .line 261
    if-nez v7, :cond_5

    .line 262
    .line 263
    iget-object v0, v1, Lcom/zalexdev/stryker/dashboard/Dashboard;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 264
    .line 265
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 266
    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_5
    new-instance v8, Lt2/f;

    .line 270
    .line 271
    move-object v0, v8

    .line 272
    move-object v4, v6

    .line 273
    invoke-direct/range {v0 .. v5}, Lt2/f;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;IILu2/s;Z)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    .line 278
    .line 279
    :goto_6
    return-void

    .line 280
    :pswitch_3
    check-cast v8, Lcom/zalexdev/stryker/MainActivity;

    .line 281
    .line 282
    check-cast v6, Ljava/lang/String;

    .line 283
    .line 284
    check-cast v7, La4/e;

    .line 285
    .line 286
    iget-object v1, v8, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 287
    .line 288
    if-eqz v1, :cond_8

    .line 289
    .line 290
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-nez v1, :cond_6

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_6
    if-eqz v5, :cond_7

    .line 298
    .line 299
    invoke-virtual {v8, v3, v6, v2, v2}, Lcom/zalexdev/stryker/MainActivity;->m(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 300
    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_7
    new-instance v1, Lcom/google/android/material/snackbar/a;

    .line 304
    .line 305
    const/16 v2, 0x9

    .line 306
    .line 307
    invoke-direct {v1, v8, v7, v2}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 308
    .line 309
    .line 310
    const-string v2, "Couldn\'t attach \u2014 grant USB access, then retry"

    .line 311
    .line 312
    const-string v3, "Retry"

    .line 313
    .line 314
    invoke-virtual {v8, v0, v2, v3, v1}, Lcom/zalexdev/stryker/MainActivity;->m(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 315
    .line 316
    .line 317
    :cond_8
    :goto_7
    return-void

    .line 318
    nop

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
