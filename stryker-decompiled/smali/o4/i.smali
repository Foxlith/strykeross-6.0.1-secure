.class public final synthetic Lo4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lo4/u;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Landroid/widget/ImageView;

.field public final synthetic g:Landroid/widget/ProgressBar;

.field public final synthetic h:Landroid/widget/TextView;

.field public final synthetic i:Landroid/content/Context;

.field public final synthetic j:Landroid/view/View;

.field public final synthetic k:Landroid/widget/TextView;

.field public final synthetic l:Lcom/zalexdev/stryker/custom/WiFINetwork;

.field public final synthetic m:Landroid/widget/TextView;

.field public final synthetic n:Landroid/app/Dialog;

.field public final synthetic p:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lo4/u;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;Landroid/app/Dialog;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo4/i;->a:I

    iput-object p1, p0, Lo4/i;->b:Lo4/u;

    iput-object p2, p0, Lo4/i;->p:Ljava/io/Serializable;

    iput-object p3, p0, Lo4/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lo4/i;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lo4/i;->e:Landroid/widget/TextView;

    iput-object p6, p0, Lo4/i;->f:Landroid/widget/ImageView;

    iput-object p7, p0, Lo4/i;->g:Landroid/widget/ProgressBar;

    iput-object p8, p0, Lo4/i;->h:Landroid/widget/TextView;

    iput-object p9, p0, Lo4/i;->i:Landroid/content/Context;

    iput-object p10, p0, Lo4/i;->j:Landroid/view/View;

    iput-object p11, p0, Lo4/i;->k:Landroid/widget/TextView;

    iput-object p12, p0, Lo4/i;->l:Lcom/zalexdev/stryker/custom/WiFINetwork;

    iput-object p13, p0, Lo4/i;->m:Landroid/widget/TextView;

    iput-object p14, p0, Lo4/i;->n:Landroid/app/Dialog;

    return-void
.end method

.method public synthetic constructor <init>(Lo4/u;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;Landroid/app/Dialog;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lo4/i;->a:I

    iput-object p1, p0, Lo4/i;->b:Lo4/u;

    iput-object p2, p0, Lo4/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lo4/i;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Lo4/i;->p:Ljava/io/Serializable;

    iput-object p5, p0, Lo4/i;->e:Landroid/widget/TextView;

    iput-object p6, p0, Lo4/i;->f:Landroid/widget/ImageView;

    iput-object p7, p0, Lo4/i;->g:Landroid/widget/ProgressBar;

    iput-object p8, p0, Lo4/i;->h:Landroid/widget/TextView;

    iput-object p9, p0, Lo4/i;->i:Landroid/content/Context;

    iput-object p10, p0, Lo4/i;->j:Landroid/view/View;

    iput-object p11, p0, Lo4/i;->k:Landroid/widget/TextView;

    iput-object p12, p0, Lo4/i;->l:Lcom/zalexdev/stryker/custom/WiFINetwork;

    iput-object p13, p0, Lo4/i;->m:Landroid/widget/TextView;

    iput-object p14, p0, Lo4/i;->n:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lo4/i;->a:I

    .line 4
    .line 5
    iget-object v4, v0, Lo4/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    iget-object v15, v0, Lo4/i;->b:Lo4/u;

    .line 8
    .line 9
    iget-object v2, v0, Lo4/i;->p:Ljava/io/Serializable;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v8, v2

    .line 15
    check-cast v8, Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v9, v0, Lo4/i;->e:Landroid/widget/TextView;

    .line 18
    .line 19
    iget-object v12, v0, Lo4/i;->f:Landroid/widget/ImageView;

    .line 20
    .line 21
    iget-object v13, v0, Lo4/i;->g:Landroid/widget/ProgressBar;

    .line 22
    .line 23
    iget-object v14, v0, Lo4/i;->h:Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object v11, v0, Lo4/i;->i:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v1, v0, Lo4/i;->j:Landroid/view/View;

    .line 28
    .line 29
    iget-object v2, v0, Lo4/i;->k:Landroid/widget/TextView;

    .line 30
    .line 31
    iget-object v3, v0, Lo4/i;->l:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 32
    .line 33
    iget-object v10, v0, Lo4/i;->m:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    :goto_0
    move-object v14, v0

    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_0
    iget-object v4, v0, Lo4/i;->d:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-lez v5, :cond_2

    .line 54
    .line 55
    const-string v5, "[0-9]{8}"

    .line 56
    .line 57
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_2

    .line 70
    .line 71
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_1

    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_3

    .line 100
    .line 101
    const-string v1, "Pin generation failed \u2014 no pins produced for this BSSID.\n"

    .line 102
    .line 103
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    const/high16 v1, 0x3f800000    # 1.0f

    .line 107
    .line 108
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v2, v15, Lo4/u;->d:Ll4/l;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {v12, v1}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 118
    .line 119
    .line 120
    const/4 v1, 0x0

    .line 121
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v13, v1}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 126
    .line 127
    .line 128
    const v1, 0x104000a

    .line 129
    .line 130
    .line 131
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    filled-new-array {v4}, [I

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    const/4 v7, 0x1

    .line 148
    add-int/2addr v5, v7

    .line 149
    new-array v6, v5, [Ljava/lang/String;

    .line 150
    .line 151
    move v5, v7

    .line 152
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v16

    .line 156
    move-object/from16 v17, v10

    .line 157
    .line 158
    add-int/lit8 v10, v16, 0x1

    .line 159
    .line 160
    if-ge v5, v10, :cond_4

    .line 161
    .line 162
    add-int/lit8 v10, v5, -0x1

    .line 163
    .line 164
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    check-cast v10, Ljava/lang/String;

    .line 169
    .line 170
    aput-object v10, v6, v5

    .line 171
    .line 172
    add-int/lit8 v5, v5, 0x1

    .line 173
    .line 174
    move-object/from16 v10, v17

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_4
    const-string v5, "Test all"

    .line 178
    .line 179
    const/4 v10, 0x0

    .line 180
    aput-object v5, v6, v10

    .line 181
    .line 182
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 183
    .line 184
    invoke-direct {v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 185
    .line 186
    .line 187
    new-instance v10, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 188
    .line 189
    invoke-direct {v10, v11}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 190
    .line 191
    .line 192
    const-string v7, "Select pin"

    .line 193
    .line 194
    invoke-virtual {v10, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    new-instance v7, Lo4/b;

    .line 199
    .line 200
    move-object/from16 v19, v5

    .line 201
    .line 202
    move-object v5, v7

    .line 203
    move-object v0, v6

    .line 204
    move-object v6, v15

    .line 205
    move-object/from16 v20, v7

    .line 206
    .line 207
    const/4 v15, 0x1

    .line 208
    move-object/from16 v7, v19

    .line 209
    .line 210
    move-object/from16 v21, v10

    .line 211
    .line 212
    move-object/from16 v18, v17

    .line 213
    .line 214
    move-object v10, v4

    .line 215
    move v4, v15

    .line 216
    move-object v15, v1

    .line 217
    move-object/from16 v16, v2

    .line 218
    .line 219
    move-object/from16 v17, v3

    .line 220
    .line 221
    invoke-direct/range {v5 .. v18}, Lo4/b;-><init>(Lo4/u;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/ArrayList;Landroid/widget/TextView;[ILandroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;)V

    .line 222
    .line 223
    .line 224
    move-object/from16 v2, v20

    .line 225
    .line 226
    move-object/from16 v1, v21

    .line 227
    .line 228
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    new-instance v1, Lo4/g;

    .line 233
    .line 234
    move-object/from16 v14, p0

    .line 235
    .line 236
    iget-object v2, v14, Lo4/i;->n:Landroid/app/Dialog;

    .line 237
    .line 238
    move-object/from16 v3, v19

    .line 239
    .line 240
    invoke-direct {v1, v3, v2, v4}, Lo4/g;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/app/Dialog;I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    .line 248
    .line 249
    .line 250
    :goto_3
    return-void

    .line 251
    :pswitch_0
    move-object v14, v0

    .line 252
    check-cast v2, Ljava/lang/String;

    .line 253
    .line 254
    iget-object v6, v14, Lo4/i;->d:Ljava/util/ArrayList;

    .line 255
    .line 256
    iget-object v7, v14, Lo4/i;->e:Landroid/widget/TextView;

    .line 257
    .line 258
    iget-object v8, v14, Lo4/i;->f:Landroid/widget/ImageView;

    .line 259
    .line 260
    iget-object v9, v14, Lo4/i;->g:Landroid/widget/ProgressBar;

    .line 261
    .line 262
    iget-object v10, v14, Lo4/i;->h:Landroid/widget/TextView;

    .line 263
    .line 264
    iget-object v11, v14, Lo4/i;->i:Landroid/content/Context;

    .line 265
    .line 266
    iget-object v12, v14, Lo4/i;->j:Landroid/view/View;

    .line 267
    .line 268
    iget-object v13, v14, Lo4/i;->k:Landroid/widget/TextView;

    .line 269
    .line 270
    iget-object v0, v14, Lo4/i;->l:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 271
    .line 272
    iget-object v1, v14, Lo4/i;->m:Landroid/widget/TextView;

    .line 273
    .line 274
    iget-object v5, v14, Lo4/i;->n:Landroid/app/Dialog;

    .line 275
    .line 276
    iget-object v3, v15, Lo4/u;->d:Ll4/l;

    .line 277
    .line 278
    invoke-virtual {v3, v2}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 279
    .line 280
    .line 281
    move-result-object v16

    .line 282
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eqz v2, :cond_5

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_5
    new-instance v3, Lo4/i;

    .line 290
    .line 291
    move-object v2, v3

    .line 292
    move-object/from16 v22, v3

    .line 293
    .line 294
    move-object v3, v15

    .line 295
    move-object/from16 v17, v5

    .line 296
    .line 297
    move-object/from16 v5, v16

    .line 298
    .line 299
    move-object v14, v0

    .line 300
    move-object v0, v15

    .line 301
    move-object v15, v1

    .line 302
    move-object/from16 v16, v17

    .line 303
    .line 304
    invoke-direct/range {v2 .. v16}, Lo4/i;-><init>(Lo4/u;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;Landroid/app/Dialog;)V

    .line 305
    .line 306
    .line 307
    iget-object v0, v0, Lo4/u;->c:Landroid/app/Activity;

    .line 308
    .line 309
    move-object/from16 v1, v22

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 312
    .line 313
    .line 314
    :goto_4
    return-void

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
