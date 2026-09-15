.class public Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;
.super Landroidx/appcompat/widget/c0;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Rect;

.field public final i:I

.field public final j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 1
    const v0, 0x101006e

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/c0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->a:Landroid/graphics/Paint;

    .line 13
    .line 14
    new-instance p2, Landroid/graphics/Paint;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->b:Landroid/graphics/Paint;

    .line 21
    .line 22
    new-instance v1, Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->c:Landroid/graphics/Paint;

    .line 28
    .line 29
    new-instance v2, Landroid/graphics/Paint;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->d:Landroid/graphics/Paint;

    .line 35
    .line 36
    new-instance v3, Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v3, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->e:Landroid/graphics/Paint;

    .line 42
    .line 43
    new-instance v4, Landroid/graphics/Paint;

    .line 44
    .line 45
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v4, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->f:Landroid/graphics/Paint;

    .line 49
    .line 50
    new-instance v5, Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v5, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->g:Landroid/graphics/Paint;

    .line 56
    .line 57
    new-instance v6, Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v6, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->h:Landroid/graphics/Rect;

    .line 63
    .line 64
    const/4 v6, -0x1

    .line 65
    iput v6, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->k:I

    .line 66
    .line 67
    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 68
    .line 69
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    .line 71
    .line 72
    const v7, 0x800033

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 76
    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    invoke-virtual {p0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    const/high16 v8, 0xa0000

    .line 87
    .line 88
    or-int/2addr v7, v8

    .line 89
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 90
    .line 91
    .line 92
    const/4 v7, 0x0

    .line 93
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 108
    .line 109
    const v8, -0xb0906

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    .line 114
    .line 115
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 116
    .line 117
    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    .line 119
    .line 120
    const p1, -0x1c1812

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    .line 125
    .line 126
    const/high16 p1, 0x3f800000    # 1.0f

    .line 127
    .line 128
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    .line 130
    .line 131
    const p1, -0x6b5c48

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const/4 p2, 0x2

    .line 149
    const/high16 v9, 0x41300000    # 11.0f

    .line 150
    .line 151
    invoke-static {p2, v9, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 156
    .line 157
    .line 158
    sget-object p1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 159
    .line 160
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 161
    .line 162
    .line 163
    const p2, -0xea9a40

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    .line 168
    .line 169
    invoke-static {v6, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 184
    .line 185
    .line 186
    const p1, 0x141565c0

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 193
    .line 194
    .line 195
    const p1, 0x1fc62828

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 202
    .line 203
    .line 204
    const p1, -0x39d7d8

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    iput p1, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->l:I

    .line 218
    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    iput p1, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->m:I

    .line 224
    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    const/high16 p2, 0x42280000    # 42.0f

    .line 230
    .line 231
    mul-float/2addr p2, v7

    .line 232
    float-to-int p2, p2

    .line 233
    iput p2, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->i:I

    .line 234
    .line 235
    const/high16 v0, 0x41000000    # 8.0f

    .line 236
    .line 237
    mul-float/2addr v0, v7

    .line 238
    float-to-int v0, v0

    .line 239
    iput v0, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->j:I

    .line 240
    .line 241
    const/high16 v0, 0x41200000    # 10.0f

    .line 242
    .line 243
    mul-float/2addr v7, v0

    .line 244
    float-to-int v0, v7

    .line 245
    add-int/2addr p2, v0

    .line 246
    iget v0, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->l:I

    .line 247
    .line 248
    iget v1, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->m:I

    .line 249
    .line 250
    invoke-super {p0, p2, v0, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 251
    .line 252
    .line 253
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v1

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    add-int/2addr v0, p1

    add-int p1, v2, v0

    div-int/lit8 p1, p1, 0x2

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, v4, p1}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getErrorLine()I
    .locals 1

    iget v0, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->k:I

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    if-nez v8, :cond_0

    .line 10
    .line 11
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 16
    .line 17
    .line 18
    move-result v9

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v10

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v11

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    int-to-float v12, v9

    .line 33
    iget v3, v0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->i:I

    .line 34
    .line 35
    int-to-float v4, v3

    .line 36
    add-int v13, v9, v1

    .line 37
    .line 38
    int-to-float v14, v13

    .line 39
    iget-object v6, v0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->a:Landroid/graphics/Paint;

    .line 40
    .line 41
    move-object/from16 v1, p1

    .line 42
    .line 43
    move v3, v12

    .line 44
    move v5, v14

    .line 45
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 46
    .line 47
    .line 48
    iget v1, v0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->i:I

    .line 49
    .line 50
    int-to-float v2, v1

    .line 51
    const/high16 v3, 0x3f000000    # 0.5f

    .line 52
    .line 53
    add-float/2addr v2, v3

    .line 54
    int-to-float v1, v1

    .line 55
    add-float v4, v1, v3

    .line 56
    .line 57
    iget-object v6, v0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->b:Landroid/graphics/Paint;

    .line 58
    .line 59
    move-object/from16 v1, p1

    .line 60
    .line 61
    move v3, v12

    .line 62
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    sub-int/2addr v9, v10

    .line 67
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    sub-int/2addr v13, v10

    .line 72
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-gez v1, :cond_1

    .line 89
    .line 90
    const/4 v1, -0x1

    .line 91
    :goto_0
    move v13, v1

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->length()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    goto :goto_0

    .line 106
    :goto_1
    move v1, v9

    .line 107
    :goto_2
    if-gt v1, v12, :cond_4

    .line 108
    .line 109
    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineTop(I)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    add-int/2addr v2, v10

    .line 114
    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    add-int/2addr v3, v10

    .line 119
    add-int/lit8 v14, v1, 0x1

    .line 120
    .line 121
    iget v4, v0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->k:I

    .line 122
    .line 123
    iget-object v5, v0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->h:Landroid/graphics/Rect;

    .line 124
    .line 125
    if-ne v14, v4, :cond_2

    .line 126
    .line 127
    iget v1, v0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->i:I

    .line 128
    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    invoke-virtual {v5, v1, v2, v11, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->f:Landroid/graphics/Paint;

    .line 135
    .line 136
    invoke-virtual {v7, v5, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 137
    .line 138
    .line 139
    iget v1, v0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->i:I

    .line 140
    .line 141
    add-int/lit8 v4, v1, 0x1

    .line 142
    .line 143
    int-to-float v4, v4

    .line 144
    int-to-float v5, v2

    .line 145
    add-int/lit8 v1, v1, 0x4

    .line 146
    .line 147
    int-to-float v6, v1

    .line 148
    int-to-float v15, v3

    .line 149
    iget-object v3, v0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->g:Landroid/graphics/Paint;

    .line 150
    .line 151
    move-object/from16 v1, p1

    .line 152
    .line 153
    move v2, v4

    .line 154
    move-object/from16 v16, v3

    .line 155
    .line 156
    move v3, v5

    .line 157
    move v4, v6

    .line 158
    move v5, v15

    .line 159
    move-object/from16 v6, v16

    .line 160
    .line 161
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_2
    if-ne v1, v13, :cond_3

    .line 166
    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_3

    .line 172
    .line 173
    iget v1, v0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->i:I

    .line 174
    .line 175
    add-int/lit8 v1, v1, 0x1

    .line 176
    .line 177
    invoke-virtual {v5, v1, v2, v11, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->e:Landroid/graphics/Paint;

    .line 181
    .line 182
    invoke-virtual {v7, v5, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 183
    .line 184
    .line 185
    :cond_3
    :goto_3
    move v1, v14

    .line 186
    goto :goto_2

    .line 187
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 188
    .line 189
    .line 190
    iget-object v1, v0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->c:Landroid/graphics/Paint;

    .line 191
    .line 192
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    iget v3, v0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->i:I

    .line 197
    .line 198
    iget v4, v0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->j:I

    .line 199
    .line 200
    sub-int/2addr v3, v4

    .line 201
    int-to-float v3, v3

    .line 202
    :goto_4
    if-gt v9, v12, :cond_6

    .line 203
    .line 204
    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineTop(I)I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    add-int/2addr v4, v10

    .line 209
    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineBottom(I)I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    add-int/2addr v5, v10

    .line 214
    add-int/2addr v5, v4

    .line 215
    int-to-float v4, v5

    .line 216
    const/high16 v5, 0x40000000    # 2.0f

    .line 217
    .line 218
    div-float/2addr v4, v5

    .line 219
    iget v6, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 220
    .line 221
    iget v11, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 222
    .line 223
    add-float/2addr v6, v11

    .line 224
    div-float/2addr v6, v5

    .line 225
    sub-float/2addr v4, v6

    .line 226
    if-ne v9, v13, :cond_5

    .line 227
    .line 228
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    if-eqz v5, :cond_5

    .line 233
    .line 234
    iget-object v5, v0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->d:Landroid/graphics/Paint;

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_5
    move-object v5, v1

    .line 238
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 239
    .line 240
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-virtual {v7, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_6
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p2

    invoke-virtual {p0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const-string p2, "  "

    invoke-interface {v0, v1, p1, p2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onSelectionChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setErrorLine(I)V
    .locals 1

    iget v0, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->k:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->k:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 2

    iput p2, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->l:I

    iput p3, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->m:I

    iget p1, p0, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->i:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr p1, v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
