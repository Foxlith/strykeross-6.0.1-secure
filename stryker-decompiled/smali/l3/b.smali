.class public final synthetic Ll3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/hid/ui/HidFragment;

.field public final synthetic c:Lj3/a;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/hid/ui/HidFragment;Lj3/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Ll3/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ll3/b;->b:Lcom/zalexdev/stryker/hid/ui/HidFragment;

    .line 7
    .line 8
    iput-object p2, p0, Ll3/b;->c:Lj3/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 1
    const/4 p1, 0x2

    .line 2
    iget v0, p0, Ll3/b;->a:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Ll3/b;->c:Lj3/a;

    .line 7
    .line 8
    iget-object v4, p0, Ll3/b;->b:Lcom/zalexdev/stryker/hid/ui/HidFragment;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object p2, v4, Lcom/zalexdev/stryker/hid/ui/HidFragment;->a:Lv1/e;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget v0, v3, Lj3/a;->d:I

    .line 19
    .line 20
    iget-object v3, v3, Lj3/a;->a:Ljava/lang/String;

    .line 21
    .line 22
    if-ne v0, p1, :cond_0

    .line 23
    .line 24
    new-instance p1, Ljava/io/File;

    .line 25
    .line 26
    invoke-virtual {p2, v2}, Lv1/e;->o(Z)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, ".ducky"

    .line 31
    .line 32
    invoke-static {v3, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2, v3}, Lv1/e;->c(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 48
    .line 49
    iget-object v0, p2, Lv1/e;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Ll4/l;

    .line 52
    .line 53
    const-string v2, "hid_payload_order"

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lv1/e;->h(Ljava/lang/String;)Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    iget-object p2, p2, Lv1/e;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p2, Ll4/l;

    .line 75
    .line 76
    invoke-static {p1}, Lv1/e;->e(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p2, v2, p1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    if-eqz v1, :cond_2

    .line 84
    .line 85
    new-instance p1, Ll4/l;

    .line 86
    .line 87
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-direct {p1, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    const p2, 0x7f13023a

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/zalexdev/stryker/hid/ui/HidFragment;->g()V

    .line 105
    .line 106
    .line 107
    :cond_2
    return-void

    .line 108
    :pswitch_0
    sget v0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->l:I

    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    const/4 v0, 0x0

    .line 114
    const/high16 v5, 0x1040000

    .line 115
    .line 116
    if-eqz p2, :cond_7

    .line 117
    .line 118
    if-eq p2, v1, :cond_5

    .line 119
    .line 120
    if-eq p2, p1, :cond_4

    .line 121
    .line 122
    const/4 p1, 0x3

    .line 123
    if-eq p2, p1, :cond_3

    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :cond_3
    invoke-virtual {v4, v3, v1}, Lcom/zalexdev/stryker/hid/ui/HidFragment;->e(Lj3/a;I)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_1

    .line 131
    .line 132
    :cond_4
    const/4 p1, -0x1

    .line 133
    invoke-virtual {v4, v3, p1}, Lcom/zalexdev/stryker/hid/ui/HidFragment;->e(Lj3/a;I)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_1

    .line 137
    .line 138
    :cond_5
    iget-object p1, v3, Lj3/a;->b:Ljava/lang/String;

    .line 139
    .line 140
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const p2, 0x7f130238

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget p2, v3, Lj3/a;->d:I

    .line 152
    .line 153
    if-ne p2, v1, :cond_6

    .line 154
    .line 155
    const-string p2, "\n\n"

    .line 156
    .line 157
    invoke-static {p1, p2}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const p2, 0x7f130239

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    :cond_6
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 176
    .line 177
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-direct {p2, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 182
    .line 183
    .line 184
    const v2, 0x7f130237

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {p2, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    new-instance p2, Ll3/b;

    .line 196
    .line 197
    invoke-direct {p2, v4, v3, v1}, Ll3/b;-><init>(Lcom/zalexdev/stryker/hid/ui/HidFragment;Lj3/a;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v2, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1, v5, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_7
    new-instance p1, Landroid/widget/EditText;

    .line 213
    .line 214
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 219
    .line 220
    .line 221
    iget-object p2, v3, Lj3/a;->a:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    new-instance p2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 227
    .line 228
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-direct {p2, v1}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;)V

    .line 233
    .line 234
    .line 235
    const v1, 0x7f13024a

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {p2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 246
    .line 247
    .line 248
    new-instance v1, Landroid/widget/LinearLayout;

    .line 249
    .line 250
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 266
    .line 267
    const/high16 v7, 0x41c00000    # 24.0f

    .line 268
    .line 269
    mul-float/2addr v6, v7

    .line 270
    float-to-int v6, v6

    .line 271
    div-int/lit8 v7, v6, 0x2

    .line 272
    .line 273
    invoke-virtual {v1, v6, v7, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 277
    .line 278
    .line 279
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 280
    .line 281
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-direct {p2, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 286
    .line 287
    .line 288
    const v2, 0x7f130241

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    invoke-virtual {p2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    new-instance v1, Lcom/stryker/terminal/ui/customize/b;

    .line 300
    .line 301
    const/4 v2, 0x4

    .line 302
    invoke-direct {v1, v4, p1, v3, v2}, Lcom/stryker/terminal/ui/customize/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 303
    .line 304
    .line 305
    const p1, 0x104000a

    .line 306
    .line 307
    .line 308
    invoke-virtual {p2, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-virtual {p1, v5, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 317
    .line 318
    .line 319
    :goto_1
    return-void

    .line 320
    nop

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
