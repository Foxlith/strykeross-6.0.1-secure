.class public Lcom/zalexdev/stryker/settings/VmSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic t:I


# instance fields
.field public a:Landroidx/fragment/app/a0;

.field public b:Landroid/content/Context;

.field public c:Ll4/l;

.field public d:Lu2/h;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field public p:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field public q:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field public r:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field public s:Lcom/google/android/material/switchmaterial/SwitchMaterial;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static d(Lf/n;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf/j0;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final e(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public final g(Ljava/lang/String;)Lf/n;
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->e(I)I

    move-result v2

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x1c

    invoke-virtual {p0, v4}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->e(I)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->e(I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x12

    invoke-virtual {p0, v4}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->e(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41700000    # 15.0f

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Lf/n;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-object p1
.end method

.method public final h()V
    .locals 8

    .line 1
    invoke-static {}, Li5/a;->A()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1}, Li5/a;->B(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->e:Landroid/widget/TextView;

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, " cores \u00b7 "

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, " MB RAM \u00b7 "

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v0}, Li5/a;->i0(Landroid/content/Context;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    invoke-static {v0, v1}, Li5/a;->e0(J)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, " free \u00b7 "

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Li5/a;->n0()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const-string v1, "TCG"

    .line 57
    .line 58
    const-string v4, "KVM"

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    move-object v0, v4

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move-object v0, v1

    .line 65
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 69
    .line 70
    invoke-static {v0}, Li5/a;->T0(Ll4/l;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    const-string v0, " \u00b7 SAFE PROFILE"

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    const-string v0, ""

    .line 80
    .line 81
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->f:Landroid/widget/TextView;

    .line 92
    .line 93
    const v2, 0x7f1306c9

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->g:Landroid/widget/TextView;

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v3, "Uses "

    .line 108
    .line 109
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v3}, Li5/a;->C(Landroid/content/Context;)J

    .line 115
    .line 116
    .line 117
    move-result-wide v5

    .line 118
    invoke-static {v5, v6}, Li5/a;->e0(J)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v3, " now \u00b7 grows into "

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v3, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 131
    .line 132
    invoke-static {v3}, Li5/a;->i0(Landroid/content/Context;)J

    .line 133
    .line 134
    .line 135
    move-result-wide v5

    .line 136
    invoke-static {v5, v6}, Li5/a;->e0(J)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v3, " free"

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->h:Landroid/widget/TextView;

    .line 156
    .line 157
    iget-object v2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 158
    .line 159
    invoke-static {v2}, Li5/a;->D(Ll4/l;)I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->i:Landroid/widget/TextView;

    .line 171
    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    iget-object v3, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 178
    .line 179
    iget-object v5, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 180
    .line 181
    invoke-static {v3, v5}, Li5/a;->E(Landroid/content/Context;Ll4/l;)I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v3, " MB"

    .line 189
    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->j:Landroid/widget/TextView;

    .line 201
    .line 202
    iget-object v2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 203
    .line 204
    invoke-static {v2}, Li5/a;->h(Ll4/l;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->k:Landroid/widget/TextView;

    .line 212
    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    iget-object v3, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 219
    .line 220
    invoke-static {v3}, Li5/a;->I0(Ll4/l;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v3, " \u00b7 "

    .line 228
    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget-object v3, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 233
    .line 234
    invoke-static {v3}, Li5/a;->I0(Ll4/l;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    const-string v5, "io_uring"

    .line 239
    .line 240
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    const/4 v5, 0x0

    .line 245
    const v6, 0x7f1306a1

    .line 246
    .line 247
    .line 248
    if-nez v3, :cond_2

    .line 249
    .line 250
    :goto_2
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    goto :goto_5

    .line 255
    :cond_2
    iget-object v3, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 256
    .line 257
    if-nez v3, :cond_3

    .line 258
    .line 259
    move v3, v5

    .line 260
    goto :goto_3

    .line 261
    :cond_3
    iget-object v3, v3, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 262
    .line 263
    const-string v7, "rootless_io_uring_ok"

    .line 264
    .line 265
    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    :goto_3
    if-lez v3, :cond_4

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_4
    if-gez v3, :cond_5

    .line 273
    .line 274
    const v3, 0x7f13069f

    .line 275
    .line 276
    .line 277
    :goto_4
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    goto :goto_5

    .line 282
    :cond_5
    const v3, 0x7f1306a0

    .line 283
    .line 284
    .line 285
    goto :goto_4

    .line 286
    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    .line 295
    .line 296
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->m:Landroid/widget/TextView;

    .line 297
    .line 298
    iget-object v2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 299
    .line 300
    invoke-static {v2}, Li5/a;->u0(Ll4/l;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .line 306
    .line 307
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->l:Landroid/widget/TextView;

    .line 308
    .line 309
    iget-object v2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 310
    .line 311
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 312
    .line 313
    const/4 v6, 0x3

    .line 314
    new-array v6, v6, [Ljava/lang/Object;

    .line 315
    .line 316
    invoke-static {}, Li5/a;->F0()I

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v7

    .line 324
    aput-object v7, v6, v5

    .line 325
    .line 326
    invoke-static {v2}, Li5/a;->G0(Landroid/content/Context;)I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    const/4 v5, 0x1

    .line 335
    aput-object v2, v6, v5

    .line 336
    .line 337
    invoke-static {}, Li5/a;->n0()Z

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-eqz v2, :cond_6

    .line 342
    .line 343
    move-object v1, v4

    .line 344
    :cond_6
    const/4 v2, 0x2

    .line 345
    aput-object v1, v6, v2

    .line 346
    .line 347
    const-string v1, "%d vCPU \u00b7 %d MB \u00b7 %s"

    .line 348
    .line 349
    invoke-static {v3, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    .line 355
    .line 356
    return-void
.end method

.method public final i(I[Ljava/lang/String;ILh4/n;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    if-gez p3, :cond_0

    move p3, v1

    :cond_0
    aput p3, v0, v1

    new-instance p3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    invoke-direct {p3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    aget p3, v0, v1

    new-instance v1, Lcom/stryker/terminal/a;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Lcom/stryker/terminal/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2, p3, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance p2, Lcom/stryker/terminal/ui/customize/a;

    const/16 p3, 0x11

    invoke-direct {p2, p4, v0, p3}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    return-void
.end method

.method public final j(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->a:Landroidx/fragment/app/a0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->a:Landroidx/fragment/app/a0;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iput-object p3, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->a:Landroidx/fragment/app/a0;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    iput-object p3, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Ll4/l;

    .line 14
    .line 15
    invoke-direct {v0, p3}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 19
    .line 20
    iget-object p3, v0, Ll4/l;->c:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p3}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    iput-object p3, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->d:Lu2/h;

    .line 27
    .line 28
    const p3, 0x7f0d00fb

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const p2, 0x7f0a06c6

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->e:Landroid/widget/TextView;

    .line 11
    .line 12
    const p2, 0x7f0a06c9

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->f:Landroid/widget/TextView;

    .line 22
    .line 23
    const p2, 0x7f0a06c8

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->g:Landroid/widget/TextView;

    .line 33
    .line 34
    const p2, 0x7f0a06c5

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->h:Landroid/widget/TextView;

    .line 44
    .line 45
    const p2, 0x7f0a06e1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->i:Landroid/widget/TextView;

    .line 55
    .line 56
    const p2, 0x7f0a06bc

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->j:Landroid/widget/TextView;

    .line 66
    .line 67
    const p2, 0x7f0a06b5

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->k:Landroid/widget/TextView;

    .line 77
    .line 78
    const p2, 0x7f0a06e3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    check-cast p2, Landroid/widget/TextView;

    .line 86
    .line 87
    iput-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->l:Landroid/widget/TextView;

    .line 88
    .line 89
    const p2, 0x7f0a06dc

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    check-cast p2, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->m:Landroid/widget/TextView;

    .line 99
    .line 100
    const p2, 0x7f0a06d6

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    check-cast p2, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 108
    .line 109
    iput-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->n:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 110
    .line 111
    const p2, 0x7f0a06d8

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 119
    .line 120
    iput-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->p:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 121
    .line 122
    const p2, 0x7f0a06da

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    check-cast p2, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 130
    .line 131
    iput-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->q:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 132
    .line 133
    const p2, 0x7f0a06cf

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    check-cast p2, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 141
    .line 142
    iput-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->r:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 143
    .line 144
    const p2, 0x7f0a06cd

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    check-cast p2, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 152
    .line 153
    iput-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->s:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 154
    .line 155
    const p2, 0x7f0a06c7

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    new-instance v0, Lh4/k;

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    invoke-direct {v0, p0, v1}, Lh4/k;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    const p2, 0x7f0a06c1

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    new-instance v0, Lh4/k;

    .line 179
    .line 180
    const/4 v2, 0x5

    .line 181
    invoke-direct {v0, p0, v2}, Lh4/k;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    const p2, 0x7f0a06dd

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    new-instance v0, Lh4/k;

    .line 195
    .line 196
    const/4 v2, 0x6

    .line 197
    invoke-direct {v0, p0, v2}, Lh4/k;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    const p2, 0x7f0a06e2

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    new-instance v0, Lh4/k;

    .line 211
    .line 212
    const/4 v2, 0x7

    .line 213
    invoke-direct {v0, p0, v2}, Lh4/k;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    const p2, 0x7f0a06b7

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    new-instance v0, Lh4/k;

    .line 227
    .line 228
    const/16 v2, 0x8

    .line 229
    .line 230
    invoke-direct {v0, p0, v2}, Lh4/k;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    .line 235
    .line 236
    const p2, 0x7f0a06bb

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    new-instance v0, Lh4/k;

    .line 244
    .line 245
    const/16 v2, 0x9

    .line 246
    .line 247
    invoke-direct {v0, p0, v2}, Lh4/k;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    .line 252
    .line 253
    const p2, 0x7f0a06b4

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    new-instance v0, Lh4/k;

    .line 261
    .line 262
    const/16 v2, 0xa

    .line 263
    .line 264
    invoke-direct {v0, p0, v2}, Lh4/k;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    .line 269
    .line 270
    const p2, 0x7f0a06db

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    new-instance v0, Lh4/k;

    .line 278
    .line 279
    const/16 v2, 0xb

    .line 280
    .line 281
    invoke-direct {v0, p0, v2}, Lh4/k;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    .line 286
    .line 287
    const p2, 0x7f0a06d5

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    new-instance v0, Lh4/k;

    .line 295
    .line 296
    const/16 v2, 0xc

    .line 297
    .line 298
    invoke-direct {v0, p0, v2}, Lh4/k;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    .line 303
    .line 304
    const p2, 0x7f0a06d7

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    new-instance v0, Lh4/k;

    .line 312
    .line 313
    const/16 v2, 0xd

    .line 314
    .line 315
    invoke-direct {v0, p0, v2}, Lh4/k;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    .line 320
    .line 321
    const p2, 0x7f0a06d9

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    new-instance v0, Lh4/k;

    .line 329
    .line 330
    const/4 v2, 0x1

    .line 331
    invoke-direct {v0, p0, v2}, Lh4/k;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    .line 336
    .line 337
    const p2, 0x7f0a06ce

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 341
    .line 342
    .line 343
    move-result-object p2

    .line 344
    new-instance v0, Lh4/k;

    .line 345
    .line 346
    const/4 v3, 0x2

    .line 347
    invoke-direct {v0, p0, v3}, Lh4/k;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    .line 352
    .line 353
    const p2, 0x7f0a06cc

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object p2

    .line 360
    new-instance v0, Lh4/k;

    .line 361
    .line 362
    const/4 v4, 0x3

    .line 363
    invoke-direct {v0, p0, v4}, Lh4/k;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    .line 368
    .line 369
    iget-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->n:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 370
    .line 371
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 372
    .line 373
    iget-object v5, v0, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 374
    .line 375
    if-eqz v5, :cond_0

    .line 376
    .line 377
    const-string v6, "rootless_mttcg"

    .line 378
    .line 379
    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    if-eqz v5, :cond_0

    .line 384
    .line 385
    invoke-virtual {v0, v6}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    goto :goto_0

    .line 390
    :cond_0
    move v0, v2

    .line 391
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 392
    .line 393
    .line 394
    iget-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->p:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 395
    .line 396
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 397
    .line 398
    const-string v5, "rootless_no_rng"

    .line 399
    .line 400
    invoke-virtual {v0, v5}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 405
    .line 406
    .line 407
    iget-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->q:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 408
    .line 409
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 410
    .line 411
    const-string v5, "rootless_no_share"

    .line 412
    .line 413
    invoke-virtual {v0, v5}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 418
    .line 419
    .line 420
    iget-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->r:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 421
    .line 422
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 423
    .line 424
    const-string v5, "rootless_no_iothread"

    .line 425
    .line 426
    invoke-virtual {v0, v5}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    xor-int/2addr v0, v2

    .line 431
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 432
    .line 433
    .line 434
    iget-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->s:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 435
    .line 436
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 437
    .line 438
    const-string v5, "rootless_no_fastboot"

    .line 439
    .line 440
    invoke-virtual {v0, v5}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    xor-int/2addr v0, v2

    .line 445
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 446
    .line 447
    .line 448
    iget-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->n:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 449
    .line 450
    new-instance v0, Lh4/l;

    .line 451
    .line 452
    invoke-direct {v0, p0, v1}, Lh4/l;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 456
    .line 457
    .line 458
    iget-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->p:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 459
    .line 460
    new-instance v0, Lh4/l;

    .line 461
    .line 462
    invoke-direct {v0, p0, v2}, Lh4/l;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 466
    .line 467
    .line 468
    iget-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->q:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 469
    .line 470
    new-instance v0, Lh4/l;

    .line 471
    .line 472
    invoke-direct {v0, p0, v3}, Lh4/l;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 476
    .line 477
    .line 478
    iget-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->r:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 479
    .line 480
    new-instance v0, Lh4/l;

    .line 481
    .line 482
    invoke-direct {v0, p0, v4}, Lh4/l;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 486
    .line 487
    .line 488
    iget-object p2, p0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->s:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 489
    .line 490
    new-instance v0, Lh4/l;

    .line 491
    .line 492
    const/4 v1, 0x4

    .line 493
    invoke-direct {v0, p0, v1}, Lh4/l;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 497
    .line 498
    .line 499
    const p2, 0x7f0a06b6

    .line 500
    .line 501
    .line 502
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    new-instance p2, Lh4/k;

    .line 507
    .line 508
    invoke-direct {p2, p0, v1}, Lh4/k;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {p0}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->h()V

    .line 515
    .line 516
    .line 517
    return-void
.end method
