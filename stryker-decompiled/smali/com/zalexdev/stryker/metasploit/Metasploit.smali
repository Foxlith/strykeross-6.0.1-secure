.class public Lcom/zalexdev/stryker/metasploit/Metasploit;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic C:I


# instance fields
.field public A:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public B:Lw3/c;

.field public a:Landroidx/fragment/app/a0;

.field public b:Landroid/content/Context;

.field public c:Ll4/l;

.field public d:Lz3/d;

.field public e:Lx3/b;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public n:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public p:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public q:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public r:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public s:Lcom/google/android/material/textfield/TextInputEditText;

.field public t:Landroidx/recyclerview/widget/RecyclerView;

.field public u:Lcom/google/android/material/card/MaterialCardView;

.field public v:Lcom/google/android/material/card/MaterialCardView;

.field public w:Lcom/google/android/material/chip/ChipGroup;

.field public x:Landroid/view/View;

.field public y:Landroid/view/View;

.field public z:Lcom/facebook/shimmer/ShimmerFrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->d:Lz3/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lz3/d;->b:Lu3/g;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    const-string v4, "MetasploitUtils: Getting exploits"

    .line 15
    .line 16
    invoke-virtual {v2, v3, v4}, Lu3/g;->e(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "show exploits"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lz3/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x3

    .line 35
    const/4 v6, 0x5

    .line 36
    const-string v7, "/"

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-eqz v8, :cond_0

    .line 51
    .line 52
    const-string v8, "\\s+"

    .line 53
    .line 54
    const-string v9, " "

    .line 55
    .line 56
    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    array-length v8, v2

    .line 69
    if-le v8, v6, :cond_0

    .line 70
    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    :goto_1
    array-length v10, v2

    .line 77
    if-ge v6, v10, :cond_1

    .line 78
    .line 79
    aget-object v10, v2, v6

    .line 80
    .line 81
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    add-int/lit8 v6, v6, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    new-instance v6, Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 91
    .line 92
    aget-object v9, v2, v4

    .line 93
    .line 94
    invoke-virtual {v9, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    aget-object v10, v2, v4

    .line 99
    .line 100
    invoke-virtual {v10, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    array-length v7, v7

    .line 105
    sub-int/2addr v7, v4

    .line 106
    aget-object v7, v9, v7

    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    aget-object v9, v2, v3

    .line 117
    .line 118
    invoke-direct {v6, v7, v8, v9}, Lcom/zalexdev/stryker/custom/MsfExploit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    aget-object v4, v2, v4

    .line 122
    .line 123
    invoke-virtual {v6, v4}, Lcom/zalexdev/stryker/custom/MsfExploit;->setUrl(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    aget-object v2, v2, v5

    .line 127
    .line 128
    invoke-virtual {v6, v2}, Lcom/zalexdev/stryker/custom/MsfExploit;->setRank(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->d:Lz3/d;

    .line 136
    .line 137
    iget-object v2, v0, Lz3/d;->b:Lu3/g;

    .line 138
    .line 139
    const-string v8, "MetasploitUtils: Getting auxiliary"

    .line 140
    .line 141
    invoke-virtual {v2, v3, v8}, Lu3/g;->e(ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance v2, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v8, "show auxiliary"

    .line 150
    .line 151
    invoke-virtual {v0, v8}, Lz3/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    const/4 v9, 0x4

    .line 164
    if-eqz v8, :cond_5

    .line 165
    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    check-cast v8, Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    if-lez v10, :cond_3

    .line 181
    .line 182
    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    if-eqz v10, :cond_3

    .line 187
    .line 188
    const/4 v10, 0x0

    .line 189
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    .line 190
    .line 191
    .line 192
    move-result v10

    .line 193
    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    if-eqz v10, :cond_3

    .line 198
    .line 199
    const-string v10, "\\s{2,}"

    .line 200
    .line 201
    const-string v11, ";"

    .line 202
    .line 203
    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    array-length v10, v8

    .line 216
    const/4 v11, 0x6

    .line 217
    if-ne v10, v11, :cond_4

    .line 218
    .line 219
    new-instance v9, Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 220
    .line 221
    aget-object v10, v8, v4

    .line 222
    .line 223
    invoke-virtual {v10, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    aget-object v11, v8, v4

    .line 228
    .line 229
    invoke-virtual {v11, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v11

    .line 233
    array-length v11, v11

    .line 234
    sub-int/2addr v11, v4

    .line 235
    aget-object v10, v10, v11

    .line 236
    .line 237
    aget-object v11, v8, v6

    .line 238
    .line 239
    aget-object v12, v8, v3

    .line 240
    .line 241
    invoke-direct {v9, v10, v11, v12}, Lcom/zalexdev/stryker/custom/MsfExploit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    aget-object v10, v8, v4

    .line 245
    .line 246
    invoke-virtual {v9, v10}, Lcom/zalexdev/stryker/custom/MsfExploit;->setUrl(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    aget-object v8, v8, v5

    .line 250
    .line 251
    invoke-virtual {v9, v8}, Lcom/zalexdev/stryker/custom/MsfExploit;->setRank(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_4
    array-length v10, v8

    .line 259
    if-ne v10, v6, :cond_3

    .line 260
    .line 261
    new-instance v10, Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 262
    .line 263
    aget-object v11, v8, v4

    .line 264
    .line 265
    invoke-virtual {v11, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    aget-object v12, v8, v4

    .line 270
    .line 271
    invoke-virtual {v12, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v12

    .line 275
    array-length v12, v12

    .line 276
    sub-int/2addr v12, v4

    .line 277
    aget-object v11, v11, v12

    .line 278
    .line 279
    aget-object v9, v8, v9

    .line 280
    .line 281
    const-string v12, "None"

    .line 282
    .line 283
    invoke-direct {v10, v11, v9, v12}, Lcom/zalexdev/stryker/custom/MsfExploit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    aget-object v9, v8, v4

    .line 287
    .line 288
    invoke-virtual {v10, v9}, Lcom/zalexdev/stryker/custom/MsfExploit;->setUrl(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    aget-object v8, v8, v3

    .line 292
    .line 293
    invoke-virtual {v10, v8}, Lcom/zalexdev/stryker/custom/MsfExploit;->setRank(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    goto/16 :goto_2

    .line 300
    .line 301
    :cond_5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 302
    .line 303
    .line 304
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-nez v0, :cond_7

    .line 311
    .line 312
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->a:Landroidx/fragment/app/a0;

    .line 313
    .line 314
    if-eqz v0, :cond_7

    .line 315
    .line 316
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-nez v0, :cond_6

    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_6
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->a:Landroidx/fragment/app/a0;

    .line 324
    .line 325
    new-instance v3, Lv3/g;

    .line 326
    .line 327
    invoke-direct {v3, p0, v1, v2, v9}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 331
    .line 332
    .line 333
    :cond_7
    :goto_3
    return-void
.end method

.method public final e(Lz3/f;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->i:Landroid/widget/TextView;

    const v0, 0x7f130421

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->i:Landroid/widget/TextView;

    const-string v0, "#E53935"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->g:Landroid/widget/TextView;

    const v0, 0x7f130425

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->h:Landroid/widget/TextView;

    if-nez p2, :cond_0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->r:Lcom/facebook/shimmer/ShimmerFrameLayout;

    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->hideShimmer()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->i:Landroid/widget/TextView;

    const p2, 0x7f130422

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->i:Landroid/widget/TextView;

    const-string p2, "#388E3C"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->g:Landroid/widget/TextView;

    const p2, 0x7f130426

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->h:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->d:Lz3/d;

    iget-object p2, p2, Lz3/d;->d:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f130434

    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->r:Lcom/facebook/shimmer/ShimmerFrameLayout;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->i:Landroid/widget/TextView;

    const p2, 0x7f130420

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->i:Landroid/widget/TextView;

    const-string p2, "#AB47BC"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->g:Landroid/widget/TextView;

    const p2, 0x7f130424

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->h:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->r:Lcom/facebook/shimmer/ShimmerFrameLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->showShimmer(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final f(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->n:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->showShimmer(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->p:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->showShimmer(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->q:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->showShimmer(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->n:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->hideShimmer()V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->p:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->hideShimmer()V

    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->q:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->hideShimmer()V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->e:Lx3/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lx3/b;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v0, v1

    .line 18
    :goto_0
    iget-object v2, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->u:Lcom/google/android/material/card/MaterialCardView;

    .line 19
    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    move v4, v3

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    move v4, v1

    .line 27
    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->v:Lcom/google/android/material/card/MaterialCardView;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_3
    move v1, v3

    .line 36
    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0061

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->d:Lz3/d;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->B:Lw3/c;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lz3/d;->k:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->a:Landroidx/fragment/app/a0;

    .line 12
    .line 13
    new-instance p2, Ll4/l;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {p2, v0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->c:Ll4/l;

    .line 21
    .line 22
    iget-object p2, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->a:Landroidx/fragment/app/a0;

    .line 23
    .line 24
    check-cast p2, Lcom/zalexdev/stryker/MainActivity;

    .line 25
    .line 26
    const v0, 0x7f0a03fc

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->g:Landroid/widget/TextView;

    .line 36
    .line 37
    const v0, 0x7f0a03e2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/TextView;

    .line 45
    .line 46
    const v0, 0x7f0a03e3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->h:Landroid/widget/TextView;

    .line 56
    .line 57
    const v0, 0x7f0a03f5

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->i:Landroid/widget/TextView;

    .line 67
    .line 68
    const v0, 0x7f0a03dc

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->j:Landroid/widget/TextView;

    .line 78
    .line 79
    const v0, 0x7f0a0562

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/TextView;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->k:Landroid/widget/TextView;

    .line 89
    .line 90
    const v0, 0x7f0a03f1

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/widget/TextView;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->l:Landroid/widget/TextView;

    .line 100
    .line 101
    const v0, 0x7f0a03d9

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 111
    .line 112
    const v0, 0x7f0a05ac

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 120
    .line 121
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->n:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 122
    .line 123
    const v0, 0x7f0a05ab

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 131
    .line 132
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->p:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 133
    .line 134
    const v0, 0x7f0a05ad

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 142
    .line 143
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->q:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 144
    .line 145
    const v0, 0x7f0a03ed

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 153
    .line 154
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->r:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 155
    .line 156
    const v0, 0x7f0a0231

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 164
    .line 165
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->s:Lcom/google/android/material/textfield/TextInputEditText;

    .line 166
    .line 167
    const v0, 0x7f0a01e0

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 175
    .line 176
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 177
    .line 178
    const v0, 0x7f0a03ec

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 186
    .line 187
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->u:Lcom/google/android/material/card/MaterialCardView;

    .line 188
    .line 189
    const v0, 0x7f0a03db

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 197
    .line 198
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->v:Lcom/google/android/material/card/MaterialCardView;

    .line 199
    .line 200
    const v0, 0x7f0a03e0

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    .line 208
    .line 209
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->w:Lcom/google/android/material/chip/ChipGroup;

    .line 210
    .line 211
    const v0, 0x7f0a03d6

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->x:Landroid/view/View;

    .line 219
    .line 220
    const v0, 0x7f0a03d5

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->y:Landroid/view/View;

    .line 228
    .line 229
    const v0, 0x7f0a03e1

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Landroid/widget/ImageView;

    .line 237
    .line 238
    const v0, 0x7f0a03ef

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 246
    .line 247
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->A:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 248
    .line 249
    const v0, 0x7f0a03f4

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    check-cast p1, Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 257
    .line 258
    iput-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->z:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 259
    .line 260
    const/4 v0, 0x1

    .line 261
    invoke-virtual {p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->showShimmer(Z)V

    .line 262
    .line 263
    .line 264
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 265
    .line 266
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 267
    .line 268
    invoke-direct {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 275
    .line 276
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 280
    .line 281
    const/16 v1, 0x10

    .line 282
    .line 283
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 284
    .line 285
    .line 286
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 287
    .line 288
    const/4 v1, 0x0

    .line 289
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/r0;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/metasploit/Metasploit;->f(Z)V

    .line 293
    .line 294
    .line 295
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->c:Ll4/l;

    .line 296
    .line 297
    const-string v0, "msf"

    .line 298
    .line 299
    invoke-virtual {p1, v0}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    if-nez p1, :cond_0

    .line 304
    .line 305
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/u0;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-static {p1, p1}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    new-instance p2, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;

    .line 314
    .line 315
    invoke-direct {p2}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;-><init>()V

    .line 316
    .line 317
    .line 318
    const v0, 0x7f0a0205

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1, p2, v1, v0}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 322
    .line 323
    .line 324
    const/4 p2, 0x0

    .line 325
    invoke-virtual {p1, p2}, Landroidx/fragment/app/a;->h(Z)I

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_0
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/Metasploit;->A:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 330
    .line 331
    new-instance v0, Lw3/i;

    .line 332
    .line 333
    invoke-direct {v0, p0}, Lw3/i;-><init>(Lcom/zalexdev/stryker/metasploit/Metasploit;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Lg1/j;)V

    .line 337
    .line 338
    .line 339
    new-instance p1, Ljava/lang/Thread;

    .line 340
    .line 341
    new-instance v0, Lw2/h;

    .line 342
    .line 343
    const/16 v1, 0x1c

    .line 344
    .line 345
    invoke-direct {v0, p0, p2, v1}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 346
    .line 347
    .line 348
    const-string p2, "msf-hub-bootstrap"

    .line 349
    .line 350
    invoke-direct {p1, v0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 354
    .line 355
    .line 356
    return-void
.end method
