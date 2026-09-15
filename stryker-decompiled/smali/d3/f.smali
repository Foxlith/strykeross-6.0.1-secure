.class public final synthetic Ld3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ld3/f;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ld3/f;->b:Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Ld3/f;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, p0, Ld3/f;->b:Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->i:Ld3/e;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    iget-boolean v5, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->j:Z

    .line 20
    .line 21
    if-eqz v5, :cond_3

    .line 22
    .line 23
    iput-boolean v3, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->j:Z

    .line 24
    .line 25
    iget-object v1, p1, Ld3/e;->a:Lk3/a;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v1}, Lk3/a;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    iput-object v0, p1, Ld3/e;->a:Lk3/a;

    .line 33
    .line 34
    :cond_1
    iget-object v1, p1, Ld3/e;->c:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iput v3, p1, Ld3/e;->o:I

    .line 40
    .line 41
    iput-boolean v3, p1, Ld3/e;->p:Z

    .line 42
    .line 43
    iput-boolean v3, p1, Ld3/e;->r:Z

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput v0, p1, Ld3/e;->s:F

    .line 47
    .line 48
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->d:Lcom/google/android/material/textview/MaterialTextView;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->k:Lcom/google/android/material/button/MaterialButton;

    .line 56
    .line 57
    if-eqz p1, :cond_a

    .line 58
    .line 59
    const/high16 v0, -0x60000000

    .line 60
    .line 61
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    :cond_3
    iget-object v2, p1, Ld3/e;->a:Lk3/a;

    .line 71
    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    :try_start_1
    const-string v2, "/dev/hidg1"

    .line 76
    .line 77
    invoke-static {v2}, Lk3/a;->i(Ljava/lang/String;)Lk3/a;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iput-object v2, p1, Ld3/e;->a:Lk3/a;

    .line 82
    .line 83
    iput-object v0, p1, Ld3/e;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .line 85
    :goto_0
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->i:Ld3/e;

    .line 86
    .line 87
    iget-object v0, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->b:Landroid/widget/ImageView;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iget-object v2, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->b:Landroid/widget/ImageView;

    .line 94
    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    if-lez v0, :cond_7

    .line 103
    .line 104
    if-gtz v2, :cond_5

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    iget v5, p1, Ld3/e;->h:I

    .line 108
    .line 109
    if-ne v0, v5, :cond_6

    .line 110
    .line 111
    iget v5, p1, Ld3/e;->i:I

    .line 112
    .line 113
    if-ne v2, v5, :cond_6

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    iput v0, p1, Ld3/e;->h:I

    .line 117
    .line 118
    iput v2, p1, Ld3/e;->i:I

    .line 119
    .line 120
    invoke-virtual {p1}, Ld3/e;->a()V

    .line 121
    .line 122
    .line 123
    :cond_7
    :goto_1
    iput-boolean v1, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->j:Z

    .line 124
    .line 125
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->d:Lcom/google/android/material/textview/MaterialTextView;

    .line 126
    .line 127
    if-eqz p1, :cond_8

    .line 128
    .line 129
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    :cond_8
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->k:Lcom/google/android/material/button/MaterialButton;

    .line 133
    .line 134
    if-eqz p1, :cond_a

    .line 135
    .line 136
    const v0, -0xea9a40

    .line 137
    .line 138
    .line 139
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :catch_1
    move-exception v2

    .line 148
    iput-object v0, p1, Ld3/e;->a:Lk3/a;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iput-object v0, p1, Ld3/e;->b:Ljava/lang/String;

    .line 155
    .line 156
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->i:Ld3/e;

    .line 157
    .line 158
    iget-object p1, p1, Ld3/e;->b:Ljava/lang/String;

    .line 159
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const v2, 0x7f13069b

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    if-eqz p1, :cond_9

    .line 176
    .line 177
    const-string v2, "\n"

    .line 178
    .line 179
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    goto :goto_2

    .line 184
    :cond_9
    const-string p1, ""

    .line 185
    .line 186
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {v4, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 198
    .line 199
    .line 200
    :cond_a
    :goto_3
    return-void

    .line 201
    :pswitch_0
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->g:Landroid/view/View;

    .line 202
    .line 203
    if-eqz p1, :cond_f

    .line 204
    .line 205
    iget-object v5, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->h:Ld3/d;

    .line 206
    .line 207
    if-nez v5, :cond_b

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-nez p1, :cond_c

    .line 215
    .line 216
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->g:Landroid/view/View;

    .line 217
    .line 218
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->h:Ld3/d;

    .line 222
    .line 223
    invoke-virtual {p1}, Ld3/d;->a()V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_c
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->h:Ld3/d;

    .line 228
    .line 229
    iget-object v2, p1, Ld3/d;->d:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v2, Lk3/a;

    .line 232
    .line 233
    if-eqz v2, :cond_d

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_d
    :try_start_2
    const-string v2, "/dev/hidg0"

    .line 237
    .line 238
    invoke-static {v2}, Lk3/a;->i(Ljava/lang/String;)Lk3/a;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    iput-object v2, p1, Ld3/d;->d:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 243
    .line 244
    :goto_4
    const p1, 0x7f0a06b0

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    if-eqz p1, :cond_e

    .line 252
    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-lez v0, :cond_e

    .line 258
    .line 259
    iget-object v0, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->g:Landroid/view/View;

    .line 260
    .line 261
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 266
    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    div-int/lit8 p1, p1, 0x2

    .line 272
    .line 273
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 274
    .line 275
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->g:Landroid/view/View;

    .line 276
    .line 277
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    .line 279
    .line 280
    :cond_e
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->g:Landroid/view/View;

    .line 281
    .line 282
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 283
    .line 284
    .line 285
    goto :goto_5

    .line 286
    :catch_2
    iput-object v0, p1, Ld3/d;->d:Ljava/lang/Object;

    .line 287
    .line 288
    const p1, 0x7f130699

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-static {v4, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 300
    .line 301
    .line 302
    :cond_f
    :goto_5
    return-void

    .line 303
    :pswitch_1
    sget p1, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->l:I

    .line 304
    .line 305
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
