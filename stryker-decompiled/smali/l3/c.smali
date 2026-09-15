.class public final synthetic Ll3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ll3/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ll3/c;->b:Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Ll3/c;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Ll3/c;->b:Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget p1, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->n()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->l()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    sget p1, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->g()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_2
    sget p1, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance p1, Landroid/content/Intent;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "stryker.hid.ide.request_arsenal"

    .line 39
    .line 40
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    const/4 v1, -0x1

    .line 44
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_3
    sget p1, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->m()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_4
    sget p1, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->q(Z)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_5
    iget-boolean p1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->D:Z

    .line 64
    .line 65
    if-nez p1, :cond_0

    .line 66
    .line 67
    iget p1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->B:I

    .line 68
    .line 69
    if-lez p1, :cond_0

    .line 70
    .line 71
    iget-object v1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->a(I)V

    .line 74
    .line 75
    .line 76
    iget-object p1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->e:Lm3/c;

    .line 83
    .line 84
    invoke-virtual {p1}, Lm3/c;->a()V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void

    .line 88
    :pswitch_6
    iget-object p1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->q:Lcom/google/android/material/card/MaterialCardView;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    move v1, v2

    .line 98
    :goto_1
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->q(Z)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_7
    sget p1, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->k()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :pswitch_8
    iget-object p1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->b:Lh3/c;

    .line 109
    .line 110
    iget-object v0, p1, Lh3/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lg3/c;

    .line 117
    .line 118
    if-eqz v0, :cond_2

    .line 119
    .line 120
    iget-object v0, v0, Lg3/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 123
    .line 124
    .line 125
    :cond_2
    iget-object p1, p1, Lh3/c;->c:Ljava/lang/Thread;

    .line 126
    .line 127
    if-eqz p1, :cond_3

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 130
    .line 131
    .line 132
    :cond_3
    return-void

    .line 133
    :pswitch_9
    sget p1, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->i()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_4

    .line 148
    .line 149
    iget-object p1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->a:Ll4/l;

    .line 150
    .line 151
    const-string v0, "Editor is empty"

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_3

    .line 157
    .line 158
    :cond_4
    iget-object v3, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->e:Lm3/c;

    .line 159
    .line 160
    invoke-virtual {v3}, Lm3/c;->a()V

    .line 161
    .line 162
    .line 163
    iget-boolean v3, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->D:Z

    .line 164
    .line 165
    if-nez v3, :cond_7

    .line 166
    .line 167
    iget-object p1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->a:Ll4/l;

    .line 168
    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v3, "Fix syntax errors first \u2014 see line "

    .line 172
    .line 173
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget v3, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->B:I

    .line 177
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {p1, v2}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget p1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->B:I

    .line 189
    .line 190
    if-lez p1, :cond_5

    .line 191
    .line 192
    iget-object v2, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    .line 193
    .line 194
    invoke-virtual {v2, p1}, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->a(I)V

    .line 195
    .line 196
    .line 197
    :cond_5
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r(Z)V

    .line 198
    .line 199
    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v1, "\u26d4 Cannot run: line "

    .line 203
    .line 204
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget v1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->B:I

    .line 208
    .line 209
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v1, " \u00b7 "

    .line 213
    .line 214
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget-object v1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->C:Ljava/lang/String;

    .line 218
    .line 219
    if-nez v1, :cond_6

    .line 220
    .line 221
    const-string v1, "syntax error"

    .line 222
    .line 223
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_7
    iget-boolean v3, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->E:Z

    .line 235
    .line 236
    if-nez v3, :cond_a

    .line 237
    .line 238
    iget-object v3, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->F:Le3/a;

    .line 239
    .line 240
    sget-object v4, Le3/a;->f:Le3/a;

    .line 241
    .line 242
    if-ne v3, v4, :cond_8

    .line 243
    .line 244
    const-string v3, "\u2699 HID node missing \u2014 applying HID-to-Go gadget profile..."

    .line 245
    .line 246
    invoke-virtual {v0, v3}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r(Z)V

    .line 250
    .line 251
    .line 252
    iget-object v1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r:Lcom/google/android/material/button/MaterialButton;

    .line 253
    .line 254
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 255
    .line 256
    .line 257
    iget-object v1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r:Lcom/google/android/material/button/MaterialButton;

    .line 258
    .line 259
    const v3, 0x3ee66666    # 0.45f

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 263
    .line 264
    .line 265
    new-instance v1, Ljava/lang/Thread;

    .line 266
    .line 267
    new-instance v3, Ll3/g;

    .line 268
    .line 269
    invoke-direct {v3, v0, p1, v2}, Ll3/g;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;Ljava/lang/String;I)V

    .line 270
    .line 271
    .line 272
    const-string p1, "ide-auto-apply"

    .line 273
    .line 274
    invoke-direct {v1, v3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_8
    if-nez v3, :cond_9

    .line 282
    .line 283
    const-string p1, "HID not ready"

    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    :goto_2
    iget-object v2, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->a:Ll4/l;

    .line 291
    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const-string v4, "HID not ready \u2014 see capabilities ("

    .line 295
    .line 296
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string p1, ")"

    .line 303
    .line 304
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-virtual {v2, p1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r(Z)V

    .line 315
    .line 316
    .line 317
    new-instance p1, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string v2, "\u26d4 Cannot run: "

    .line 320
    .line 321
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget-object v2, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->m:Lcom/google/android/material/textview/MaterialTextView;

    .line 325
    .line 326
    invoke-virtual {v2}, Landroidx/appcompat/widget/m1;->getText()Ljava/lang/CharSequence;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->q(Z)V

    .line 341
    .line 342
    .line 343
    goto :goto_3

    .line 344
    :cond_a
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->o(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    :goto_3
    return-void

    .line 348
    :pswitch_a
    iget-object p1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->l:Lcom/google/android/material/textview/MaterialTextView;

    .line 349
    .line 350
    const-string v0, ""

    .line 351
    .line 352
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    :pswitch_b
    sget p1, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 357
    .line 358
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r(Z)V

    .line 359
    .line 360
    .line 361
    return-void

    .line 362
    :pswitch_c
    iget-object p1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->p:Lcom/google/android/material/card/MaterialCardView;

    .line 363
    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 365
    .line 366
    .line 367
    move-result p1

    .line 368
    if-eqz p1, :cond_b

    .line 369
    .line 370
    goto :goto_4

    .line 371
    :cond_b
    move v1, v2

    .line 372
    :goto_4
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r(Z)V

    .line 373
    .line 374
    .line 375
    return-void

    .line 376
    nop

    .line 377
    :pswitch_data_0
    .packed-switch 0x0
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
