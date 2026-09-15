.class public Lcom/zalexdev/stryker/nuclei/NucleiReport;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic w:I


# instance fields
.field public a:I

.field public b:Lcom/zalexdev/stryker/custom/Site;

.field public c:Ll4/l;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public h:Lcom/google/android/material/button/MaterialButton;

.field public i:Landroidx/recyclerview/widget/RecyclerView;

.field public j:Landroid/view/View;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/view/View;

.field public n:Landroid/widget/ImageView;

.field public p:Landroid/widget/ProgressBar;

.field public q:Landroid/widget/EditText;

.field public r:Landroid/widget/ImageView;

.field public s:Lcom/google/android/material/chip/ChipGroup;

.field public t:Ljava/lang/String;

.field public u:I

.field public final v:Lf/d0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->a:I

    const-string v1, ""

    iput-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->t:Ljava/lang/String;

    iput v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->u:I

    new-instance v0, Lf/d0;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lf/d0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->v:Lf/d0;

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;Ljava/lang/String;II)V
    .locals 2

    .line 1
    const v0, 0x7f0a05a4

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    const v1, 0x7f0a05a3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p2, " "

    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    if-nez p3, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    sget-object p3, Lx/g;->a:Ljava/lang/Object;

    .line 47
    .line 48
    const p3, 0x7f060074

    .line 49
    .line 50
    .line 51
    invoke-static {p2, p3}, Lx/d;->a(Landroid/content/Context;I)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p2, p3}, Lx/d;->a(Landroid/content/Context;I)I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 71
    .line 72
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 84
    .line 85
    invoke-virtual {p1, p4, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->b:Lcom/zalexdev/stryker/custom/Site;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->b:Lcom/zalexdev/stryker/custom/Site;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Site;->getNucleis()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_a

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/zalexdev/stryker/custom/NucleiItem;

    .line 32
    .line 33
    iget v3, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->u:I

    .line 34
    .line 35
    const/4 v4, -0x1

    .line 36
    if-eq v3, v4, :cond_2

    .line 37
    .line 38
    iget v4, v2, Lcom/zalexdev/stryker/custom/NucleiItem;->severity:I

    .line 39
    .line 40
    if-eq v4, v3, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v3, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->t:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :cond_3
    iget-object v3, v2, Lcom/zalexdev/stryker/custom/NucleiItem;->title:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iget-object v4, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->t:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_4
    iget-object v3, v2, Lcom/zalexdev/stryker/custom/NucleiItem;->host:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v3, :cond_5

    .line 76
    .line 77
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iget-object v4, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->t:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    iget-object v3, v2, Lcom/zalexdev/stryker/custom/NucleiItem;->description:Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v3, :cond_6

    .line 95
    .line 96
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    iget-object v4, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->t:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_6

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    iget-object v3, v2, Lcom/zalexdev/stryker/custom/NucleiItem;->cve:Ljava/lang/String;

    .line 112
    .line 113
    if-eqz v3, :cond_7

    .line 114
    .line 115
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    iget-object v4, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->t:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_7

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_7
    iget-object v3, v2, Lcom/zalexdev/stryker/custom/NucleiItem;->results:Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v3, :cond_8

    .line 133
    .line 134
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 135
    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iget-object v4, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->t:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_8

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_8
    iget-object v3, v2, Lcom/zalexdev/stryker/custom/NucleiItem;->tags:Ljava/util/ArrayList;

    .line 150
    .line 151
    if-eqz v3, :cond_1

    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_1

    .line 162
    .line 163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    check-cast v4, Ljava/lang/String;

    .line 168
    .line 169
    if-eqz v4, :cond_9

    .line 170
    .line 171
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 172
    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    iget-object v5, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->t:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-eqz v4, :cond_9

    .line 184
    .line 185
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_a
    new-instance v1, Ld4/b;

    .line 191
    .line 192
    invoke-direct {v1, v0}, Ld4/b;-><init>(Ljava/util/ArrayList;)V

    .line 193
    .line 194
    .line 195
    iget-object v2, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 196
    .line 197
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->j:Landroid/view/View;

    .line 205
    .line 206
    const/16 v2, 0x8

    .line 207
    .line 208
    const/4 v3, 0x0

    .line 209
    if-eqz v0, :cond_b

    .line 210
    .line 211
    move v4, v3

    .line 212
    goto :goto_2

    .line 213
    :cond_b
    move v4, v2

    .line 214
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 215
    .line 216
    .line 217
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 218
    .line 219
    if-eqz v0, :cond_c

    .line 220
    .line 221
    move v4, v2

    .line 222
    goto :goto_3

    .line 223
    :cond_c
    move v4, v3

    .line 224
    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    if-eqz v0, :cond_10

    .line 228
    .line 229
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->b:Lcom/zalexdev/stryker/custom/Site;

    .line 230
    .line 231
    iget-object v0, v0, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    .line 232
    .line 233
    invoke-static {v0}, Landroid/support/v4/media/session/a;->d(Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->b:Lcom/zalexdev/stryker/custom/Site;

    .line 238
    .line 239
    iget-object v1, v1, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    .line 240
    .line 241
    invoke-static {v1}, Lt2/m;->b(Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->b:Lcom/zalexdev/stryker/custom/Site;

    .line 245
    .line 246
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Site;->getNucleis()Ljava/util/ArrayList;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    const v4, 0x7f0800b6

    .line 255
    .line 256
    .line 257
    if-eqz v1, :cond_f

    .line 258
    .line 259
    invoke-static {v0}, Lo/i;->c(I)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_e

    .line 264
    .line 265
    const/4 v1, 0x1

    .line 266
    if-eq v0, v1, :cond_e

    .line 267
    .line 268
    const/4 v1, 0x3

    .line 269
    if-eq v0, v1, :cond_d

    .line 270
    .line 271
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->n:Landroid/widget/ImageView;

    .line 272
    .line 273
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->p:Landroid/widget/ProgressBar;

    .line 277
    .line 278
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .line 280
    .line 281
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->m:Landroid/view/View;

    .line 282
    .line 283
    const v1, 0x7f0800b5

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 287
    .line 288
    .line 289
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->n:Landroid/widget/ImageView;

    .line 290
    .line 291
    const v1, 0x7f0800c9

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 295
    .line 296
    .line 297
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->n:Landroid/widget/ImageView;

    .line 298
    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    sget-object v2, Lx/g;->a:Ljava/lang/Object;

    .line 304
    .line 305
    const v2, 0x7f060073

    .line 306
    .line 307
    .line 308
    invoke-static {v1, v2}, Lx/d;->a(Landroid/content/Context;I)I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 313
    .line 314
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 315
    .line 316
    .line 317
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->k:Landroid/widget/TextView;

    .line 318
    .line 319
    const-string v1, "No findings"

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .line 323
    .line 324
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->l:Landroid/widget/TextView;

    .line 325
    .line 326
    const-string v1, "Either the target is clean or no template matched."

    .line 327
    .line 328
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_5

    .line 332
    .line 333
    :cond_d
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->n:Landroid/widget/ImageView;

    .line 334
    .line 335
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    .line 337
    .line 338
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->p:Landroid/widget/ProgressBar;

    .line 339
    .line 340
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 341
    .line 342
    .line 343
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->m:Landroid/view/View;

    .line 344
    .line 345
    const v1, 0x7f0800ba

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 349
    .line 350
    .line 351
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->n:Landroid/widget/ImageView;

    .line 352
    .line 353
    const v1, 0x7f0800d0

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 357
    .line 358
    .line 359
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->n:Landroid/widget/ImageView;

    .line 360
    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    sget-object v2, Lx/g;->a:Ljava/lang/Object;

    .line 366
    .line 367
    const v2, 0x7f060302

    .line 368
    .line 369
    .line 370
    invoke-static {v1, v2}, Lx/d;->a(Landroid/content/Context;I)I

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 375
    .line 376
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 377
    .line 378
    .line 379
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->k:Landroid/widget/TextView;

    .line 380
    .line 381
    const-string v1, "Scan failed"

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    .line 385
    .line 386
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->l:Landroid/widget/TextView;

    .line 387
    .line 388
    const-string v1, "Open the terminal log to see what nuclei said."

    .line 389
    .line 390
    goto :goto_4

    .line 391
    :cond_e
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->n:Landroid/widget/ImageView;

    .line 392
    .line 393
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    .line 395
    .line 396
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->p:Landroid/widget/ProgressBar;

    .line 397
    .line 398
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 399
    .line 400
    .line 401
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->m:Landroid/view/View;

    .line 402
    .line 403
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 404
    .line 405
    .line 406
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->k:Landroid/widget/TextView;

    .line 407
    .line 408
    const-string v1, "Scanning\u2026"

    .line 409
    .line 410
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    .line 412
    .line 413
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->l:Landroid/widget/TextView;

    .line 414
    .line 415
    const-string v1, "Findings will stream in as nuclei templates match \u2014 keep this view open."

    .line 416
    .line 417
    goto :goto_4

    .line 418
    :cond_f
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->n:Landroid/widget/ImageView;

    .line 419
    .line 420
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    .line 422
    .line 423
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->p:Landroid/widget/ProgressBar;

    .line 424
    .line 425
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 426
    .line 427
    .line 428
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->m:Landroid/view/View;

    .line 429
    .line 430
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 431
    .line 432
    .line 433
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->n:Landroid/widget/ImageView;

    .line 434
    .line 435
    const v1, 0x7f0801a9

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 439
    .line 440
    .line 441
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->n:Landroid/widget/ImageView;

    .line 442
    .line 443
    const v1, -0xc6b655

    .line 444
    .line 445
    .line 446
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 447
    .line 448
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 449
    .line 450
    .line 451
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->k:Landroid/widget/TextView;

    .line 452
    .line 453
    const-string v1, "No matches"

    .line 454
    .line 455
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    .line 457
    .line 458
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->l:Landroid/widget/TextView;

    .line 459
    .line 460
    const-string v1, "No findings match the current search/filter."

    .line 461
    .line 462
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    .line 464
    .line 465
    :cond_10
    :goto_5
    return-void
.end method

.method public final f()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->c:Ll4/l;

    .line 9
    .line 10
    invoke-virtual {v0}, Ll4/l;->I()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->a:I

    .line 15
    .line 16
    if-ltz v1, :cond_9

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-lt v1, v2, :cond_1

    .line 23
    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_1
    iget v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->a:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/zalexdev/stryker/custom/Site;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->b:Lcom/zalexdev/stryker/custom/Site;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->d:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->b:Lcom/zalexdev/stryker/custom/Site;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v0}, Landroid/support/v4/media/session/a;->d(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->b:Lcom/zalexdev/stryker/custom/Site;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1}, Lt2/m;->b(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->b:Lcom/zalexdev/stryker/custom/Site;

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/Site;->getNucleis()Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v3, " findings \u00b7 "

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v0}, Lo/i;->c(I)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const/4 v3, 0x3

    .line 93
    const/4 v4, 0x2

    .line 94
    const/4 v5, 0x1

    .line 95
    const/4 v6, 0x0

    .line 96
    if-eq v0, v5, :cond_4

    .line 97
    .line 98
    const/16 v1, 0x8

    .line 99
    .line 100
    if-eq v0, v4, :cond_3

    .line 101
    .line 102
    if-eq v0, v3, :cond_2

    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sget-object v1, Lx/g;->a:Ljava/lang/Object;

    .line 109
    .line 110
    const v1, 0x7f060074

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v1}, Lx/d;->a(Landroid/content/Context;I)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    const-string v1, "Queued"

    .line 118
    .line 119
    invoke-static {v2, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 124
    .line 125
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v2, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 129
    .line 130
    invoke-virtual {v2, v5}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 131
    .line 132
    .line 133
    const-string v2, "QUEUE"

    .line 134
    .line 135
    goto/16 :goto_2

    .line 136
    .line 137
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sget-object v7, Lx/g;->a:Ljava/lang/Object;

    .line 142
    .line 143
    const v7, 0x7f060302

    .line 144
    .line 145
    .line 146
    invoke-static {v0, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    const-string v7, "Failed"

    .line 151
    .line 152
    invoke-static {v2, v7}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    iget-object v7, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 157
    .line 158
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    const-string v1, "FAIL"

    .line 162
    .line 163
    :goto_0
    move-object v10, v2

    .line 164
    move-object v2, v1

    .line 165
    move-object v1, v10

    .line 166
    goto :goto_2

    .line 167
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    sget-object v7, Lx/g;->a:Ljava/lang/Object;

    .line 172
    .line 173
    const v7, 0x7f060073

    .line 174
    .line 175
    .line 176
    invoke-static {v0, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    const-string v7, "Finished"

    .line 181
    .line 182
    invoke-static {v2, v7}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    iget-object v7, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 187
    .line 188
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    const-string v1, "DONE"

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    sget-object v7, Lx/g;->a:Ljava/lang/Object;

    .line 199
    .line 200
    const v7, 0x7f060316

    .line 201
    .line 202
    .line 203
    invoke-static {v0, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v2, "Running \u00b7 "

    .line 216
    .line 217
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v2, "%"

    .line 224
    .line 225
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    iget-object v7, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 233
    .line 234
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    if-lez v1, :cond_5

    .line 238
    .line 239
    iget-object v7, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 240
    .line 241
    invoke-virtual {v7, v6}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 242
    .line 243
    .line 244
    iget-object v7, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 245
    .line 246
    invoke-virtual {v7, v1, v5}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setProgressCompat(IZ)V

    .line 247
    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_5
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 251
    .line 252
    invoke-virtual {v1, v5}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 253
    .line 254
    .line 255
    :goto_1
    const-string v1, "RUN"

    .line 256
    .line 257
    goto :goto_0

    .line 258
    :goto_2
    iget-object v7, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->e:Landroid/widget/TextView;

    .line 259
    .line 260
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->f:Landroid/widget/TextView;

    .line 264
    .line 265
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->f:Landroid/widget/TextView;

    .line 269
    .line 270
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    .line 272
    .line 273
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->f:Landroid/widget/TextView;

    .line 274
    .line 275
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    if-eqz v1, :cond_6

    .line 280
    .line 281
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->f:Landroid/widget/TextView;

    .line 282
    .line 283
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 292
    .line 293
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 294
    .line 295
    .line 296
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->f:Landroid/widget/TextView;

    .line 297
    .line 298
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    const/16 v1, 0x28

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 305
    .line 306
    .line 307
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->b:Lcom/zalexdev/stryker/custom/Site;

    .line 312
    .line 313
    iget-object v1, v1, Lcom/zalexdev/stryker/custom/Site;->vulnsCount:[I

    .line 314
    .line 315
    const/4 v2, 0x4

    .line 316
    if-eqz v1, :cond_7

    .line 317
    .line 318
    array-length v7, v1

    .line 319
    if-lt v7, v2, :cond_7

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_7
    filled-new-array {v6, v6, v6, v6}, [I

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    :goto_3
    const v7, 0x7f0a050c

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    array-length v8, v1

    .line 334
    if-le v8, v2, :cond_8

    .line 335
    .line 336
    aget v2, v1, v2

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_8
    move v2, v6

    .line 340
    :goto_4
    const v8, -0x48e3e4

    .line 341
    .line 342
    .line 343
    const-string v9, "C"

    .line 344
    .line 345
    invoke-virtual {p0, v7, v9, v2, v8}, Lcom/zalexdev/stryker/nuclei/NucleiReport;->d(Landroid/view/View;Ljava/lang/String;II)V

    .line 346
    .line 347
    .line 348
    const v2, 0x7f0a050d

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    aget v3, v1, v3

    .line 356
    .line 357
    const v7, -0x2cd0d1

    .line 358
    .line 359
    .line 360
    const-string v8, "H"

    .line 361
    .line 362
    invoke-virtual {p0, v2, v8, v3, v7}, Lcom/zalexdev/stryker/nuclei/NucleiReport;->d(Landroid/view/View;Ljava/lang/String;II)V

    .line 363
    .line 364
    .line 365
    const v2, 0x7f0a0510

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    aget v3, v1, v4

    .line 373
    .line 374
    const v4, -0x109400

    .line 375
    .line 376
    .line 377
    const-string v7, "M"

    .line 378
    .line 379
    invoke-virtual {p0, v2, v7, v3, v4}, Lcom/zalexdev/stryker/nuclei/NucleiReport;->d(Landroid/view/View;Ljava/lang/String;II)V

    .line 380
    .line 381
    .line 382
    const v2, 0x7f0a050f

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    aget v3, v1, v5

    .line 390
    .line 391
    const v4, -0x657db

    .line 392
    .line 393
    .line 394
    const-string v5, "L"

    .line 395
    .line 396
    invoke-virtual {p0, v2, v5, v3, v4}, Lcom/zalexdev/stryker/nuclei/NucleiReport;->d(Landroid/view/View;Ljava/lang/String;II)V

    .line 397
    .line 398
    .line 399
    const v2, 0x7f0a050e

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    aget v1, v1, v6

    .line 407
    .line 408
    const v2, -0xea9a40

    .line 409
    .line 410
    .line 411
    const-string v3, "I"

    .line 412
    .line 413
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/zalexdev/stryker/nuclei/NucleiReport;->d(Landroid/view/View;Ljava/lang/String;II)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {p0}, Lcom/zalexdev/stryker/nuclei/NucleiReport;->e()V

    .line 417
    .line 418
    .line 419
    return-void

    .line 420
    :cond_9
    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/a0;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v0}, Landroidx/fragment/app/u0;->I()V

    .line 429
    .line 430
    .line 431
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0066

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->v:Lf/d0;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.zalexdev.stryker.nuclei.UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->v:Lf/d0;

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0}, Lc3/a;->t(Landroid/content/Context;Lf/d0;Landroid/content/IntentFilter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0}, Lcom/zalexdev/stryker/nuclei/NucleiReport;->f()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "nr_search"

    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Ll4/l;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->c:Ll4/l;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "siteIndex"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->a:I

    :cond_0
    const v0, 0x7f0a0515

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0513

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0512

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0509

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const v0, 0x7f0a0514

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->h:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0a0508

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->i:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a04fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->j:Landroid/view/View;

    const v0, 0x7f0a0500

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->k:Landroid/widget/TextView;

    const v0, 0x7f0a04ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->l:Landroid/widget/TextView;

    const v0, 0x7f0a04fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->m:Landroid/view/View;

    const v0, 0x7f0a04fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->n:Landroid/widget/ImageView;

    const v0, 0x7f0a04fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->p:Landroid/widget/ProgressBar;

    const v0, 0x7f0a04fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    new-instance v1, Ld4/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ld4/k;-><init>(Lcom/zalexdev/stryker/nuclei/NucleiReport;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0511

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Ld4/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ld4/k;-><init>(Lcom/zalexdev/stryker/nuclei/NucleiReport;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->h:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Ld4/k;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Ld4/k;-><init>(Lcom/zalexdev/stryker/nuclei/NucleiReport;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a050a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->q:Landroid/widget/EditText;

    const v0, 0x7f0a050b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->r:Landroid/widget/ImageView;

    const v0, 0x7f0a0507

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/ChipGroup;

    iput-object p1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->s:Lcom/google/android/material/chip/ChipGroup;

    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->q:Landroid/widget/EditText;

    new-instance v0, Ls2/k;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Ls2/k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->r:Landroid/widget/ImageView;

    new-instance v0, Ld4/k;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ld4/k;-><init>(Lcom/zalexdev/stryker/nuclei/NucleiReport;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->s:Lcom/google/android/material/chip/ChipGroup;

    new-instance v0, Lv/f;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lv/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->i:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    new-instance p1, Ld4/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0}, Ld4/b;-><init>(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    if-eqz p2, :cond_1

    const-string p1, "nr_search"

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiReport;->q:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/zalexdev/stryker/nuclei/NucleiReport;->f()V

    return-void
.end method
