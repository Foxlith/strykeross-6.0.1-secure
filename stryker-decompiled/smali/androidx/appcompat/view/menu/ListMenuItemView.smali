.class public Landroidx/appcompat/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/d0;
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# instance fields
.field public a:Landroidx/appcompat/view/menu/q;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/RadioButton;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/CheckBox;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/LinearLayout;

.field public final j:Landroid/graphics/drawable/Drawable;

.field public final k:I

.field public final l:Landroid/content/Context;

.field public m:Z

.field public final n:Landroid/graphics/drawable/Drawable;

.field public final p:Z

.field public q:Landroid/view/LayoutInflater;

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Le/a;->s:[I

    .line 9
    .line 10
    const v2, 0x7f040304

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p2, v1, v2}, Landroidx/appcompat/widget/h4;->e(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/h4;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v0, 0x5

    .line 18
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/h4;->b(I)Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->j:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    iget-object v0, p2, Landroidx/appcompat/widget/h4;->b:Landroid/content/res/TypedArray;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, -0x1

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iput v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->k:I

    .line 33
    .line 34
    const/4 v1, 0x7

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    .line 41
    .line 42
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->l:Landroid/content/Context;

    .line 43
    .line 44
    const/16 v0, 0x8

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/h4;->b(I)Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->n:Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const v0, 0x1010129

    .line 57
    .line 58
    .line 59
    filled-new-array {v0}, [I

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const v1, 0x7f040199

    .line 64
    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Z

    .line 76
    .line 77
    invoke-virtual {p2}, Landroidx/appcompat/widget/h4;->f()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->q:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->q:Landroid/view/LayoutInflater;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->q:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private setSubMenuArrowVisible(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method

.method public getItemData()Landroidx/appcompat/view/menu/q;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/q;

    return-object v0
.end method

.method public final initialize(Landroidx/appcompat/view/menu/q;I)V
    .locals 9

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->isVisible()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    move p2, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p2, v0

    .line 15
    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p1, Landroidx/appcompat/view/menu/q;->e:Ljava/lang/CharSequence;

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->isCheckable()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p1, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 31
    .line 32
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/o;->isShortcutsVisible()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    const/4 v2, 0x1

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    iget-object p2, p1, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/o;->isQwertyMode()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    iget-char p2, p1, Landroidx/appcompat/view/menu/q;->j:C

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-char p2, p1, Landroidx/appcompat/view/menu/q;->h:C

    .line 51
    .line 52
    :goto_1
    if-eqz p2, :cond_2

    .line 53
    .line 54
    move p2, v2

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move p2, v1

    .line 57
    :goto_2
    iget-object v3, p1, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 58
    .line 59
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/o;->isQwertyMode()Z

    .line 60
    .line 61
    .line 62
    if-eqz p2, :cond_4

    .line 63
    .line 64
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/q;

    .line 65
    .line 66
    iget-object v3, p2, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 67
    .line 68
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/o;->isShortcutsVisible()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    iget-object v3, p2, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 75
    .line 76
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/o;->isQwertyMode()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    iget-char p2, p2, Landroidx/appcompat/view/menu/q;->j:C

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    iget-char p2, p2, Landroidx/appcompat/view/menu/q;->h:C

    .line 86
    .line 87
    :goto_3
    if-eqz p2, :cond_4

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_4
    move v1, v0

    .line 91
    :goto_4
    if-nez v1, :cond_c

    .line 92
    .line 93
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    .line 94
    .line 95
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/q;

    .line 96
    .line 97
    iget-object v4, v3, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 98
    .line 99
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/o;->isQwertyMode()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_5

    .line 104
    .line 105
    iget-char v4, v3, Landroidx/appcompat/view/menu/q;->j:C

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_5
    iget-char v4, v3, Landroidx/appcompat/view/menu/q;->h:C

    .line 109
    .line 110
    :goto_5
    if-nez v4, :cond_6

    .line 111
    .line 112
    const-string v0, ""

    .line 113
    .line 114
    goto/16 :goto_9

    .line 115
    .line 116
    :cond_6
    iget-object v5, v3, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 117
    .line 118
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/o;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/o;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-eqz v8, :cond_7

    .line 144
    .line 145
    const v8, 0x7f130011

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    :cond_7
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/o;->isQwertyMode()Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-eqz v5, :cond_8

    .line 160
    .line 161
    iget v3, v3, Landroidx/appcompat/view/menu/q;->k:I

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_8
    iget v3, v3, Landroidx/appcompat/view/menu/q;->i:I

    .line 165
    .line 166
    :goto_6
    const v5, 0x7f13000d

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    const/high16 v8, 0x10000

    .line 174
    .line 175
    invoke-static {v3, v8, v5, v7}, Landroidx/appcompat/view/menu/q;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 176
    .line 177
    .line 178
    const v5, 0x7f130009

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    const/16 v8, 0x1000

    .line 186
    .line 187
    invoke-static {v3, v8, v5, v7}, Landroidx/appcompat/view/menu/q;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 188
    .line 189
    .line 190
    const v5, 0x7f130008

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    const/4 v8, 0x2

    .line 198
    invoke-static {v3, v8, v5, v7}, Landroidx/appcompat/view/menu/q;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 199
    .line 200
    .line 201
    const v5, 0x7f13000e

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-static {v3, v2, v5, v7}, Landroidx/appcompat/view/menu/q;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 209
    .line 210
    .line 211
    const v2, 0x7f130010

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    const/4 v5, 0x4

    .line 219
    invoke-static {v3, v5, v2, v7}, Landroidx/appcompat/view/menu/q;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 220
    .line 221
    .line 222
    const v2, 0x7f13000c

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-static {v3, v0, v2, v7}, Landroidx/appcompat/view/menu/q;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 230
    .line 231
    .line 232
    if-eq v4, v0, :cond_b

    .line 233
    .line 234
    const/16 v0, 0xa

    .line 235
    .line 236
    if-eq v4, v0, :cond_a

    .line 237
    .line 238
    const/16 v0, 0x20

    .line 239
    .line 240
    if-eq v4, v0, :cond_9

    .line 241
    .line 242
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_9
    const v0, 0x7f13000f

    .line 247
    .line 248
    .line 249
    :goto_7
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    goto :goto_8

    .line 257
    :cond_a
    const v0, 0x7f13000b

    .line 258
    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_b
    const v0, 0x7f13000a

    .line 262
    .line 263
    .line 264
    goto :goto_7

    .line 265
    :goto_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    :goto_9
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .line 271
    .line 272
    :cond_c
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    .line 273
    .line 274
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    if-eq p2, v1, :cond_d

    .line 279
    .line 280
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    .line 281
    .line 282
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    .line 284
    .line 285
    :cond_d
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->isEnabled()Z

    .line 293
    .line 294
    .line 295
    move-result p2

    .line 296
    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->hasSubMenu()Z

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    invoke-direct {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setSubMenuArrowVisible(Z)V

    .line 304
    .line 305
    .line 306
    iget-object p1, p1, Landroidx/appcompat/view/menu/q;->q:Ljava/lang/CharSequence;

    .line 307
    .line 308
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 309
    .line 310
    .line 311
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->j:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/view/k0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0a0657

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    iget v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->k:I

    .line 24
    .line 25
    if-eq v2, v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->l:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const v0, 0x7f0a05ae

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/TextView;

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    .line 42
    .line 43
    const v0, 0x7f0a05fe

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/ImageView;

    .line 51
    .line 52
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/ImageView;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->n:Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    const v0, 0x7f0a023f

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/ImageView;

    .line 69
    .line 70
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;

    .line 71
    .line 72
    const v0, 0x7f0a0149

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/widget/LinearLayout;

    .line 80
    .line 81
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/q;

    .line 13
    .line 14
    iget v0, v0, Landroidx/appcompat/view/menu/q;->x:I

    .line 15
    .line 16
    and-int/lit8 v0, v0, 0x4

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const v3, 0x7f0d0011

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/RadioButton;

    .line 38
    .line 39
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 40
    .line 41
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 53
    .line 54
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 58
    .line 59
    if-nez v0, :cond_5

    .line 60
    .line 61
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const v3, 0x7f0d000e

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/CheckBox;

    .line 73
    .line 74
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 75
    .line 76
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/LinearLayout;

    .line 77
    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 85
    .line 86
    .line 87
    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 88
    .line 89
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 90
    .line 91
    :goto_2
    const/16 v3, 0x8

    .line 92
    .line 93
    if-eqz p1, :cond_7

    .line 94
    .line 95
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/q;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->isChecked()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    :cond_6
    if-eqz v1, :cond_9

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eq p1, v3, :cond_9

    .line 120
    .line 121
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

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
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 133
    .line 134
    if-eqz p1, :cond_9

    .line 135
    .line 136
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    :cond_9
    :goto_3
    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    iget v0, v0, Landroidx/appcompat/view/menu/q;->x:I

    .line 4
    .line 5
    and-int/lit8 v0, v0, 0x4

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v3, 0x7f0d0011

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/RadioButton;

    .line 27
    .line 28
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 45
    .line 46
    if-nez v0, :cond_4

    .line 47
    .line 48
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const v3, 0x7f0d000e

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/CheckBox;

    .line 60
    .line 61
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 62
    .line 63
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 75
    .line 76
    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->r:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o;->getOptionalIconsVisible()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->r:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 20
    :goto_1
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 28
    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    iget-boolean v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    if-nez v2, :cond_5

    .line 39
    .line 40
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const v3, 0x7f0d000f

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 54
    .line 55
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    if-eqz v3, :cond_4

    .line 58
    .line 59
    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 64
    .line 65
    .line 66
    :cond_5
    :goto_2
    if-nez p1, :cond_7

    .line 67
    .line 68
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    .line 69
    .line 70
    if-eqz v2, :cond_6

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 74
    .line 75
    const/16 v0, 0x8

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_7
    :goto_3
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 82
    .line 83
    if-eqz v0, :cond_8

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_8
    const/4 p1, 0x0

    .line 87
    :goto_4
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_9

    .line 97
    .line 98
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :cond_9
    :goto_5
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
