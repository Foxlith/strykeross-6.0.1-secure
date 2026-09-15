.class public final synthetic Lr3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/localnetwork/LocalMain;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/app/Dialog;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lr3/i;->a:I

    iput-object p1, p0, Lr3/i;->b:Ljava/lang/Object;

    iput-object p2, p0, Lr3/i;->c:Landroid/view/View;

    iput-object p3, p0, Lr3/i;->d:Landroid/view/View;

    iput-object p4, p0, Lr3/i;->e:Landroid/view/View;

    iput-object p5, p0, Lr3/i;->f:Ljava/lang/Object;

    iput-object p6, p0, Lr3/i;->g:Landroid/view/KeyEvent$Callback;

    return-void
.end method

.method public synthetic constructor <init>([ZLandroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Lcom/zalexdev/stryker/custom/Device;Landroid/view/View;Lcom/google/android/material/button/MaterialButton;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lr3/i;->a:I

    iput-object p1, p0, Lr3/i;->b:Ljava/lang/Object;

    iput-object p2, p0, Lr3/i;->c:Landroid/view/View;

    iput-object p3, p0, Lr3/i;->d:Landroid/view/View;

    iput-object p4, p0, Lr3/i;->f:Ljava/lang/Object;

    iput-object p5, p0, Lr3/i;->e:Landroid/view/View;

    iput-object p6, p0, Lr3/i;->g:Landroid/view/KeyEvent$Callback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    .line 1
    iget p1, p0, Lr3/i;->a:I

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lr3/i;->g:Landroid/view/KeyEvent$Callback;

    .line 7
    .line 8
    iget-object v3, p0, Lr3/i;->f:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v4, p0, Lr3/i;->e:Landroid/view/View;

    .line 11
    .line 12
    iget-object v5, p0, Lr3/i;->d:Landroid/view/View;

    .line 13
    .line 14
    iget-object v6, p0, Lr3/i;->c:Landroid/view/View;

    .line 15
    .line 16
    iget-object v7, p0, Lr3/i;->b:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v8, 0x1

    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast v7, Lcom/zalexdev/stryker/localnetwork/LocalMain;

    .line 23
    .line 24
    check-cast v6, Lcom/google/android/material/textfield/TextInputEditText;

    .line 25
    .line 26
    check-cast v5, Lcom/google/android/material/textfield/TextInputEditText;

    .line 27
    .line 28
    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 29
    .line 30
    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 31
    .line 32
    check-cast v2, Landroid/app/Dialog;

    .line 33
    .line 34
    sget p1, Lcom/zalexdev/stryker/localnetwork/LocalMain;->A:I

    .line 35
    .line 36
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v9, ""

    .line 44
    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    move-object p1, v9

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v6}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_0
    invoke-virtual {v5}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    if-nez v6, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v5}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    :goto_1
    if-nez p1, :cond_2

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_2
    const-string v5, "\\."

    .line 84
    .line 85
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    array-length v10, v6

    .line 90
    const/4 v11, 0x4

    .line 91
    if-eq v10, v11, :cond_3

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    array-length v10, v6

    .line 95
    move v11, v1

    .line 96
    :goto_2
    if-ge v11, v10, :cond_6

    .line 97
    .line 98
    aget-object v12, v6, v11

    .line 99
    .line 100
    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    if-ltz v12, :cond_5

    .line 105
    .line 106
    const/16 v13, 0xff

    .line 107
    .line 108
    if-le v12, v13, :cond_4

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :catch_0
    :cond_5
    :goto_3
    const p1, 0x7f13034e

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v4, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_7

    .line 125
    .line 126
    :cond_6
    const v4, 0x7f13034d

    .line 127
    .line 128
    .line 129
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    if-lt v6, v8, :cond_a

    .line 134
    .line 135
    const/16 v8, 0x20

    .line 136
    .line 137
    if-le v6, v8, :cond_7

    .line 138
    .line 139
    goto/16 :goto_6

    .line 140
    .line 141
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    array-length v4, p1

    .line 151
    const-wide/16 v8, 0x0

    .line 152
    .line 153
    move-wide v10, v8

    .line 154
    :goto_4
    if-ge v1, v4, :cond_8

    .line 155
    .line 156
    aget-object v5, p1, v1

    .line 157
    .line 158
    shl-long/2addr v10, v0

    .line 159
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    int-to-long v12, v5

    .line 164
    or-long/2addr v10, v12

    .line 165
    add-int/lit8 v1, v1, 0x1

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_8
    if-nez v6, :cond_9

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_9
    rsub-int/lit8 p1, v6, 0x20

    .line 172
    .line 173
    const-wide v4, 0xffffffffL

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    shl-long v8, v4, p1

    .line 179
    .line 180
    and-long/2addr v8, v4

    .line 181
    :goto_5
    and-long v4, v10, v8

    .line 182
    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const/16 v1, 0x18

    .line 189
    .line 190
    shr-long v8, v4, v1

    .line 191
    .line 192
    const-wide/16 v10, 0xff

    .line 193
    .line 194
    and-long/2addr v8, v10

    .line 195
    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v1, "."

    .line 199
    .line 200
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const/16 v8, 0x10

    .line 204
    .line 205
    shr-long v8, v4, v8

    .line 206
    .line 207
    and-long/2addr v8, v10

    .line 208
    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    shr-long v8, v4, v0

    .line 215
    .line 216
    and-long/2addr v8, v10

    .line 217
    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    and-long v0, v4, v10

    .line 224
    .line 225
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string p1, "/"

    .line 236
    .line 237
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    iget-object v0, v7, Lcom/zalexdev/stryker/localnetwork/LocalMain;->a:Ll4/l;

    .line 248
    .line 249
    const-string v1, "local_scan_target"

    .line 250
    .line 251
    invoke-virtual {v0, v1, p1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v7}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->j()V

    .line 258
    .line 259
    .line 260
    goto :goto_7

    .line 261
    :catch_1
    :cond_a
    :goto_6
    invoke-virtual {v7, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {v3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    :goto_7
    return-void

    .line 269
    :pswitch_0
    check-cast v7, [Z

    .line 270
    .line 271
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 272
    .line 273
    check-cast v3, Lcom/zalexdev/stryker/custom/Device;

    .line 274
    .line 275
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 276
    .line 277
    aget-boolean p1, v7, v1

    .line 278
    .line 279
    xor-int/2addr p1, v8

    .line 280
    aput-boolean p1, v7, v1

    .line 281
    .line 282
    if-nez p1, :cond_c

    .line 283
    .line 284
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/Device;->getPorts()Ljava/util/ArrayList;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    if-eqz p1, :cond_b

    .line 299
    .line 300
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 304
    .line 305
    .line 306
    :cond_b
    const p1, 0x7f130344

    .line 307
    .line 308
    .line 309
    :goto_8
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 310
    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_c
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 320
    .line 321
    .line 322
    const p1, 0x7f130343

    .line 323
    .line 324
    .line 325
    goto :goto_8

    .line 326
    :goto_9
    return-void

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
