.class public final synthetic Ld3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/h;->a:Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-object p1, p0, Ld3/h;->a:Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->j:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_e

    .line 7
    .line 8
    iget-object p1, p1, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->i:Ld3/e;

    .line 9
    .line 10
    if-eqz p1, :cond_e

    .line 11
    .line 12
    iget-object v0, p1, Ld3/e;->a:Lk3/a;

    .line 13
    .line 14
    if-eqz v0, :cond_e

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v2, p1, Ld3/e;->c:Landroid/os/Handler;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    iget-object v4, p1, Ld3/e;->t:Landroidx/activity/b;

    .line 24
    .line 25
    if-eqz v0, :cond_d

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    if-eq v0, v3, :cond_a

    .line 29
    .line 30
    const/4 v6, 0x2

    .line 31
    if-eq v0, v6, :cond_4

    .line 32
    .line 33
    const/4 v7, 0x3

    .line 34
    if-eq v0, v7, :cond_a

    .line 35
    .line 36
    const/4 v7, 0x5

    .line 37
    if-eq v0, v7, :cond_2

    .line 38
    .line 39
    const/4 p2, 0x6

    .line 40
    if-eq v0, p2, :cond_0

    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_0
    iget p2, p1, Ld3/e;->o:I

    .line 45
    .line 46
    sub-int/2addr p2, v3

    .line 47
    iput p2, p1, Ld3/e;->o:I

    .line 48
    .line 49
    if-ge p2, v6, :cond_1

    .line 50
    .line 51
    iput-boolean v1, p1, Ld3/e;->r:Z

    .line 52
    .line 53
    iput v5, p1, Ld3/e;->s:F

    .line 54
    .line 55
    :cond_1
    :goto_0
    move v1, v3

    .line 56
    goto/16 :goto_8

    .line 57
    .line 58
    :cond_2
    iget v0, p1, Ld3/e;->o:I

    .line 59
    .line 60
    add-int/2addr v0, v3

    .line 61
    iput v0, p1, Ld3/e;->o:I

    .line 62
    .line 63
    if-ne v0, v6, :cond_1

    .line 64
    .line 65
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    iput-boolean v3, p1, Ld3/e;->r:Z

    .line 69
    .line 70
    iput v5, p1, Ld3/e;->s:F

    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    :goto_1
    if-ge v1, v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    add-float/2addr v5, v2

    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    int-to-float p2, v0

    .line 87
    div-float/2addr v5, p2

    .line 88
    iput v5, p1, Ld3/e;->m:F

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    iget-boolean v0, p1, Ld3/e;->r:Z

    .line 92
    .line 93
    if-eqz v0, :cond_7

    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    move v2, v1

    .line 100
    move v4, v5

    .line 101
    :goto_2
    if-ge v2, v0, :cond_5

    .line 102
    .line 103
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    add-float/2addr v4, v6

    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    int-to-float p2, v0

    .line 112
    div-float/2addr v4, p2

    .line 113
    iget p2, p1, Ld3/e;->m:F

    .line 114
    .line 115
    sub-float/2addr p2, v4

    .line 116
    iput v4, p1, Ld3/e;->m:F

    .line 117
    .line 118
    iget v0, p1, Ld3/e;->s:F

    .line 119
    .line 120
    add-float/2addr v0, p2

    .line 121
    iput v0, p1, Ld3/e;->s:F

    .line 122
    .line 123
    :goto_3
    iget p2, p1, Ld3/e;->s:F

    .line 124
    .line 125
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    const/high16 v0, 0x41c00000    # 24.0f

    .line 130
    .line 131
    cmpl-float p2, p2, v0

    .line 132
    .line 133
    if-ltz p2, :cond_1

    .line 134
    .line 135
    iget p2, p1, Ld3/e;->s:F

    .line 136
    .line 137
    cmpl-float p2, p2, v5

    .line 138
    .line 139
    if-lez p2, :cond_6

    .line 140
    .line 141
    move p2, v3

    .line 142
    goto :goto_4

    .line 143
    :cond_6
    const/4 p2, -0x1

    .line 144
    :goto_4
    invoke-virtual {p1, v1, v1, v1, p2}, Ld3/e;->b(IIII)V

    .line 145
    .line 146
    .line 147
    iget v2, p1, Ld3/e;->s:F

    .line 148
    .line 149
    int-to-float p2, p2

    .line 150
    mul-float/2addr p2, v0

    .line 151
    sub-float/2addr v2, p2

    .line 152
    iput v2, p1, Ld3/e;->s:F

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    iget v0, p1, Ld3/e;->l:F

    .line 164
    .line 165
    sub-float v0, v6, v0

    .line 166
    .line 167
    iget v5, p1, Ld3/e;->d:F

    .line 168
    .line 169
    mul-float/2addr v0, v5

    .line 170
    iget v5, p1, Ld3/e;->m:F

    .line 171
    .line 172
    sub-float v5, p2, v5

    .line 173
    .line 174
    iget v7, p1, Ld3/e;->e:F

    .line 175
    .line 176
    mul-float/2addr v5, v7

    .line 177
    iput v6, p1, Ld3/e;->l:F

    .line 178
    .line 179
    iput p2, p1, Ld3/e;->m:F

    .line 180
    .line 181
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    :goto_5
    if-nez v0, :cond_9

    .line 190
    .line 191
    if-eqz v5, :cond_8

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_8
    iget v0, p1, Ld3/e;->j:F

    .line 195
    .line 196
    sub-float/2addr v6, v0

    .line 197
    float-to-double v0, v6

    .line 198
    iget v5, p1, Ld3/e;->k:F

    .line 199
    .line 200
    sub-float/2addr p2, v5

    .line 201
    float-to-double v5, p2

    .line 202
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    .line 203
    .line 204
    .line 205
    move-result-wide v0

    .line 206
    const-wide/high16 v5, 0x4028000000000000L    # 12.0

    .line 207
    .line 208
    cmpl-double p2, v0, v5

    .line 209
    .line 210
    if-lez p2, :cond_1

    .line 211
    .line 212
    iput-boolean v3, p1, Ld3/e;->p:Z

    .line 213
    .line 214
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_9
    :goto_6
    const/16 v7, 0x7f

    .line 220
    .line 221
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    .line 222
    .line 223
    .line 224
    move-result v8

    .line 225
    const/16 v9, -0x7f

    .line 226
    .line 227
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    invoke-virtual {p1, v1, v8, v7, v1}, Ld3/e;->b(IIII)V

    .line 240
    .line 241
    .line 242
    sub-int/2addr v0, v8

    .line 243
    sub-int/2addr v5, v7

    .line 244
    goto :goto_5

    .line 245
    :cond_a
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    .line 247
    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 249
    .line 250
    .line 251
    move-result-wide v6

    .line 252
    iget-wide v8, p1, Ld3/e;->n:J

    .line 253
    .line 254
    sub-long/2addr v6, v8

    .line 255
    iget-boolean p2, p1, Ld3/e;->p:Z

    .line 256
    .line 257
    if-nez p2, :cond_c

    .line 258
    .line 259
    iget-boolean p2, p1, Ld3/e;->q:Z

    .line 260
    .line 261
    if-nez p2, :cond_c

    .line 262
    .line 263
    iget-boolean p2, p1, Ld3/e;->r:Z

    .line 264
    .line 265
    if-nez p2, :cond_c

    .line 266
    .line 267
    const-wide/16 v8, 0xfa

    .line 268
    .line 269
    cmp-long p2, v6, v8

    .line 270
    .line 271
    if-gez p2, :cond_c

    .line 272
    .line 273
    if-ne v0, v3, :cond_c

    .line 274
    .line 275
    iget p2, p1, Ld3/e;->o:I

    .line 276
    .line 277
    if-lt p2, v3, :cond_b

    .line 278
    .line 279
    const/4 p2, 0x4

    .line 280
    goto :goto_7

    .line 281
    :cond_b
    move p2, v3

    .line 282
    :goto_7
    invoke-virtual {p1, p2, v1, v1, v1}, Ld3/e;->b(IIII)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, v1, v1, v1, v1}, Ld3/e;->b(IIII)V

    .line 286
    .line 287
    .line 288
    :cond_c
    iput v1, p1, Ld3/e;->o:I

    .line 289
    .line 290
    iput-boolean v1, p1, Ld3/e;->p:Z

    .line 291
    .line 292
    iput-boolean v1, p1, Ld3/e;->r:Z

    .line 293
    .line 294
    iput v5, p1, Ld3/e;->s:F

    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    iput v0, p1, Ld3/e;->l:F

    .line 303
    .line 304
    iput v0, p1, Ld3/e;->j:F

    .line 305
    .line 306
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 307
    .line 308
    .line 309
    move-result p2

    .line 310
    iput p2, p1, Ld3/e;->m:F

    .line 311
    .line 312
    iput p2, p1, Ld3/e;->k:F

    .line 313
    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 315
    .line 316
    .line 317
    move-result-wide v5

    .line 318
    iput-wide v5, p1, Ld3/e;->n:J

    .line 319
    .line 320
    iput v3, p1, Ld3/e;->o:I

    .line 321
    .line 322
    iput-boolean v1, p1, Ld3/e;->p:Z

    .line 323
    .line 324
    iput-boolean v1, p1, Ld3/e;->q:Z

    .line 325
    .line 326
    iput-boolean v1, p1, Ld3/e;->r:Z

    .line 327
    .line 328
    const-wide/16 p1, 0x1f4

    .line 329
    .line 330
    invoke-virtual {v2, v4, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 331
    .line 332
    .line 333
    goto/16 :goto_0

    .line 334
    .line 335
    :cond_e
    :goto_8
    return v1
.end method
