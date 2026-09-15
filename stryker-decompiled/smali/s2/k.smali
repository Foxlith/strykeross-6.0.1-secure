.class public final Ls2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Ls2/k;->a:I

    iput-object p1, p0, Ls2/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ls2/k;->a:I

    iput-object p1, p0, Ls2/k;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 10

    .line 1
    iget v0, p0, Ls2/k;->a:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, ""

    .line 7
    .line 8
    iget-object v4, p0, Ls2/k;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v4, Lcom/zalexdev/stryker/nuclei/NucleiReport;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :goto_0
    iput-object v3, v4, Lcom/zalexdev/stryker/nuclei/NucleiReport;->t:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p1, v4, Lcom/zalexdev/stryker/nuclei/NucleiReport;->r:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v1, v2

    .line 44
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/zalexdev/stryker/nuclei/NucleiReport;->e()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_0
    check-cast v4, Lcom/zalexdev/stryker/nuclei/NucleiMain;

    .line 52
    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :goto_2
    iput-object v3, v4, Lcom/zalexdev/stryker/nuclei/NucleiMain;->l:Ljava/lang/String;

    .line 71
    .line 72
    iget-object p1, v4, Lcom/zalexdev/stryker/nuclei/NucleiMain;->i:Landroid/widget/ImageView;

    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    move v1, v2

    .line 82
    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Lcom/zalexdev/stryker/nuclei/NucleiMain;->d()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_1
    check-cast v4, Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 90
    .line 91
    iget-object v0, v4, Lcom/zalexdev/stryker/metasploit/Metasploit;->c:Ll4/l;

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    const-string v1, "msf_last_search"

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v0, v1, v2}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    iget-object v0, v4, Lcom/zalexdev/stryker/metasploit/Metasploit;->e:Lx3/b;

    .line 105
    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-nez p1, :cond_5

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    :goto_4
    iput-object v3, v0, Lx3/b;->e:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0}, Lx3/b;->a()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Lcom/zalexdev/stryker/metasploit/Metasploit;->g()V

    .line 129
    .line 130
    .line 131
    :cond_6
    return-void

    .line 132
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast v4, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 137
    .line 138
    iget-object v0, v4, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    .line 139
    .line 140
    const-string v1, "macchanger_mac_input"

    .line 141
    .line 142
    invoke-virtual {v0, v1, p1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    const/4 v1, 0x0

    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    iget-object p1, v4, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->n:Lcom/google/android/material/textfield/TextInputLayout;

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_7
    iget-object v0, v4, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->n:Lcom/google/android/material/textfield/TextInputLayout;

    .line 159
    .line 160
    sget-object v2, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 161
    .line 162
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_8

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_8
    const p1, 0x7f130391

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    :goto_5
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    :goto_6
    return-void

    .line 184
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast v4, Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 189
    .line 190
    iget-object v0, v4, Lcom/zalexdev/stryker/logger/LoggerFragment;->l:Landroid/view/View;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_9

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_9
    move v1, v2

    .line 200
    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    iget-object v0, v4, Lcom/zalexdev/stryker/logger/LoggerFragment;->B:Ljava/lang/Runnable;

    .line 204
    .line 205
    iget-object v1, v4, Lcom/zalexdev/stryker/logger/LoggerFragment;->q:Landroid/os/Handler;

    .line 206
    .line 207
    if-eqz v0, :cond_a

    .line 208
    .line 209
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    .line 211
    .line 212
    :cond_a
    new-instance v0, Lw2/h;

    .line 213
    .line 214
    const/16 v2, 0x17

    .line 215
    .line 216
    invoke-direct {v0, p0, p1, v2}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 217
    .line 218
    .line 219
    iput-object v0, v4, Lcom/zalexdev/stryker/logger/LoggerFragment;->B:Ljava/lang/Runnable;

    .line 220
    .line 221
    const-wide/16 v2, 0x12c

    .line 222
    .line 223
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :pswitch_4
    check-cast v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 228
    .line 229
    iget-object v0, v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    .line 230
    .line 231
    const/4 v1, -0x1

    .line 232
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->setErrorLine(I)V

    .line 233
    .line 234
    .line 235
    iget-object v0, v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->k:Lcom/google/android/material/textview/MaterialTextView;

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    if-nez v0, :cond_b

    .line 239
    .line 240
    goto :goto_a

    .line 241
    :cond_b
    iget-object v0, v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    .line 242
    .line 243
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    move v6, v1

    .line 248
    move v5, v2

    .line 249
    move v7, v5

    .line 250
    :goto_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    if-ge v5, v8, :cond_d

    .line 255
    .line 256
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 257
    .line 258
    .line 259
    move-result v8

    .line 260
    const/16 v9, 0xa

    .line 261
    .line 262
    if-ne v8, v9, :cond_c

    .line 263
    .line 264
    add-int/lit8 v6, v6, 0x1

    .line 265
    .line 266
    if-ge v5, v0, :cond_c

    .line 267
    .line 268
    add-int/lit8 v7, v5, 0x1

    .line 269
    .line 270
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 271
    .line 272
    goto :goto_8

    .line 273
    :cond_d
    if-gez v0, :cond_e

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_e
    move v2, v0

    .line 277
    :goto_9
    sub-int/2addr v2, v7

    .line 278
    add-int/2addr v2, v1

    .line 279
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    iget-object v2, v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->k:Lcom/google/android/material/textview/MaterialTextView;

    .line 284
    .line 285
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    filled-new-array {v5, v0}, [Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    const v5, 0x7f1302ca

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .line 306
    .line 307
    :goto_a
    if-nez p1, :cond_f

    .line 308
    .line 309
    goto :goto_b

    .line 310
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    :goto_b
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->A:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    xor-int/2addr p1, v1

    .line 321
    iput-boolean p1, v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->G:Z

    .line 322
    .line 323
    :pswitch_5
    return-void

    .line 324
    :pswitch_6
    check-cast v4, Lcom/zalexdev/stryker/coremanger/CoreManager;

    .line 325
    .line 326
    iget-object v0, v4, Lcom/zalexdev/stryker/coremanger/CoreManager;->a:Ll4/l;

    .line 327
    .line 328
    if-nez p1, :cond_10

    .line 329
    .line 330
    goto :goto_c

    .line 331
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    :goto_c
    const-string p1, "cm_search"

    .line 336
    .line 337
    invoke-virtual {v0, p1, v3}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p2, p0, Ls2/k;->a:I

    .line 2
    .line 3
    iget-object p3, p0, Ls2/k;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const-string p4, ""

    .line 6
    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_0
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p4

    .line 18
    :goto_0
    new-instance p1, Ll4/l;

    .line 19
    .line 20
    check-cast p3, Lcom/zalexdev/stryker/hid/ui/HidFragment;

    .line 21
    .line 22
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p1, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    const-string p2, "hid_files_filter"

    .line 30
    .line 31
    invoke-virtual {p1, p2, p4}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget p1, Lcom/zalexdev/stryker/hid/ui/HidFragment;->l:I

    .line 35
    .line 36
    invoke-virtual {p3, p4}, Lcom/zalexdev/stryker/hid/ui/HidFragment;->d(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    if-nez p1, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p4

    .line 47
    :goto_1
    check-cast p3, Lcom/zalexdev/stryker/coremanger/CoreManager;

    .line 48
    .line 49
    iget-object p1, p3, Lcom/zalexdev/stryker/coremanger/CoreManager;->n:Landroid/os/Handler;

    .line 50
    .line 51
    iget-object p2, p3, Lcom/zalexdev/stryker/coremanger/CoreManager;->p:Ljava/lang/Runnable;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Lf/n0;

    .line 57
    .line 58
    const/16 p2, 0x19

    .line 59
    .line 60
    invoke-direct {p1, p0, p4, p2}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p3, Lcom/zalexdev/stryker/coremanger/CoreManager;->p:Ljava/lang/Runnable;

    .line 64
    .line 65
    iget-object p2, p3, Lcom/zalexdev/stryker/coremanger/CoreManager;->n:Landroid/os/Handler;

    .line 66
    .line 67
    const-wide/16 p3, 0xfa

    .line 68
    .line 69
    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
