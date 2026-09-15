.class public final synthetic Lt2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/dashboard/Dashboard;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lu2/s;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/dashboard/Dashboard;IILu2/s;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/f;->a:Lcom/zalexdev/stryker/dashboard/Dashboard;

    iput p2, p0, Lt2/f;->b:I

    iput p3, p0, Lt2/f;->c:I

    iput-object p4, p0, Lt2/f;->d:Lu2/s;

    iput-boolean p5, p0, Lt2/f;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lt2/f;->a:Lcom/zalexdev/stryker/dashboard/Dashboard;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->s:Lcom/zalexdev/stryker/utils/VmRingView;

    .line 10
    .line 11
    const/high16 v3, -0x40800000    # -1.0f

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    const/4 v4, 0x3

    .line 18
    const/4 v5, 0x2

    .line 19
    iget v6, p0, Lt2/f;->b:I

    .line 20
    .line 21
    if-ne v6, v5, :cond_c

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    invoke-virtual {v1, v6}, Lcom/zalexdev/stryker/utils/VmRingView;->setState(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->s:Lcom/zalexdev/stryker/utils/VmRingView;

    .line 28
    .line 29
    iget v7, p0, Lt2/f;->c:I

    .line 30
    .line 31
    const/4 v8, 0x5

    .line 32
    const/4 v9, 0x4

    .line 33
    if-ltz v7, :cond_6

    .line 34
    .line 35
    if-eq v7, v6, :cond_5

    .line 36
    .line 37
    if-eq v7, v5, :cond_4

    .line 38
    .line 39
    if-eq v7, v4, :cond_3

    .line 40
    .line 41
    if-eq v7, v9, :cond_2

    .line 42
    .line 43
    if-eq v7, v8, :cond_1

    .line 44
    .line 45
    const v10, 0x3da3d70a    # 0.08f

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/high16 v10, 0x3f800000    # 1.0f

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const v10, 0x3f6147ae    # 0.88f

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const v10, 0x3f3851ec    # 0.72f

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    const/high16 v10, 0x3f000000    # 0.5f

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    const/high16 v10, 0x3e800000    # 0.25f

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    move v10, v3

    .line 67
    :goto_0
    invoke-virtual {v1, v10}, Lcom/zalexdev/stryker/utils/VmRingView;->setProgress(F)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->f:Landroid/widget/TextView;

    .line 71
    .line 72
    if-eqz v1, :cond_e

    .line 73
    .line 74
    if-ltz v7, :cond_e

    .line 75
    .line 76
    iget-object v10, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 77
    .line 78
    if-eqz v10, :cond_e

    .line 79
    .line 80
    if-eq v7, v6, :cond_b

    .line 81
    .line 82
    if-eq v7, v5, :cond_a

    .line 83
    .line 84
    if-eq v7, v4, :cond_9

    .line 85
    .line 86
    if-eq v7, v9, :cond_8

    .line 87
    .line 88
    if-eq v7, v8, :cond_7

    .line 89
    .line 90
    const v4, 0x7f1306c0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_7
    const v4, 0x7f1306bc

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_8
    const v4, 0x7f1306b9

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_9
    const v4, 0x7f1306bf

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_a
    const v4, 0x7f1306be

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_b
    const v4, 0x7f1306bb

    .line 111
    .line 112
    .line 113
    :goto_1
    invoke-virtual {v10, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_c
    invoke-virtual {v1, v3}, Lcom/zalexdev/stryker/utils/VmRingView;->setProgress(F)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->s:Lcom/zalexdev/stryker/utils/VmRingView;

    .line 125
    .line 126
    if-ne v6, v4, :cond_d

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_d
    move v5, v2

    .line 130
    :goto_2
    invoke-virtual {v1, v5}, Lcom/zalexdev/stryker/utils/VmRingView;->setState(I)V

    .line 131
    .line 132
    .line 133
    :cond_e
    :goto_3
    iget-object v1, p0, Lt2/f;->d:Lu2/s;

    .line 134
    .line 135
    if-eqz v1, :cond_1c

    .line 136
    .line 137
    iget-object v4, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 138
    .line 139
    if-nez v4, :cond_f

    .line 140
    .line 141
    goto/16 :goto_8

    .line 142
    .line 143
    :cond_f
    iget v4, v1, Lu2/s;->c:F

    .line 144
    .line 145
    const/4 v5, 0x0

    .line 146
    cmpl-float v6, v4, v5

    .line 147
    .line 148
    if-ltz v6, :cond_10

    .line 149
    .line 150
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 151
    .line 152
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    const-string v8, "%.0f%%"

    .line 161
    .line 162
    invoke-static {v7, v8, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    goto :goto_4

    .line 167
    :cond_10
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/dashboard/Dashboard;->j(Lu2/s;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    :goto_4
    iget v7, v1, Lu2/s;->d:I

    .line 172
    .line 173
    if-ltz v7, :cond_12

    .line 174
    .line 175
    const/16 v8, 0x400

    .line 176
    .line 177
    if-lt v7, v8, :cond_11

    .line 178
    .line 179
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 180
    .line 181
    int-to-float v9, v7

    .line 182
    const/high16 v10, 0x44800000    # 1024.0f

    .line 183
    .line 184
    div-float/2addr v9, v10

    .line 185
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    const-string v10, "%.1f GB"

    .line 194
    .line 195
    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    goto :goto_5

    .line 200
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v9, " MB"

    .line 209
    .line 210
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    goto :goto_5

    .line 218
    :cond_12
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/dashboard/Dashboard;->j(Lu2/s;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    :goto_5
    iget-object v9, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->n:Landroid/widget/TextView;

    .line 223
    .line 224
    if-eqz v9, :cond_13

    .line 225
    .line 226
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    .line 229
    :cond_13
    iget-object v9, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->p:Landroid/widget/TextView;

    .line 230
    .line 231
    if-eqz v9, :cond_14

    .line 232
    .line 233
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    :cond_14
    iget-object v9, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->A:Landroid/widget/TextView;

    .line 237
    .line 238
    if-eqz v9, :cond_17

    .line 239
    .line 240
    if-gez v6, :cond_15

    .line 241
    .line 242
    if-ltz v7, :cond_16

    .line 243
    .line 244
    :cond_15
    const-string v6, " \u00b7 "

    .line 245
    .line 246
    invoke-static {v4, v6, v8}, Landroid/support/v4/media/session/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    :cond_16
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    :cond_17
    iget-boolean v4, p0, Lt2/f;->e:Z

    .line 254
    .line 255
    if-nez v4, :cond_18

    .line 256
    .line 257
    goto :goto_8

    .line 258
    :cond_18
    iget-object v4, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->q:Lcom/zalexdev/stryker/utils/SparklineView;

    .line 259
    .line 260
    if-eqz v4, :cond_1b

    .line 261
    .line 262
    iget-object v4, v1, Lu2/s;->a:[F

    .line 263
    .line 264
    array-length v6, v4

    .line 265
    new-array v7, v6, [F

    .line 266
    .line 267
    :goto_6
    if-ge v2, v6, :cond_1a

    .line 268
    .line 269
    aget v8, v4, v2

    .line 270
    .line 271
    cmpg-float v9, v8, v5

    .line 272
    .line 273
    if-gez v9, :cond_19

    .line 274
    .line 275
    move v8, v3

    .line 276
    goto :goto_7

    .line 277
    :cond_19
    const/high16 v9, 0x42c80000    # 100.0f

    .line 278
    .line 279
    div-float/2addr v8, v9

    .line 280
    :goto_7
    aput v8, v7, v2

    .line 281
    .line 282
    add-int/lit8 v2, v2, 0x1

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_1a
    iget-object v2, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->q:Lcom/zalexdev/stryker/utils/SparklineView;

    .line 286
    .line 287
    invoke-virtual {v2, v7}, Lcom/zalexdev/stryker/utils/SparklineView;->setValues([F)V

    .line 288
    .line 289
    .line 290
    :cond_1b
    iget-object v0, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->r:Lcom/zalexdev/stryker/utils/SparklineView;

    .line 291
    .line 292
    if-eqz v0, :cond_1c

    .line 293
    .line 294
    iget-object v1, v1, Lu2/s;->b:[F

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/utils/SparklineView;->setValues([F)V

    .line 297
    .line 298
    .line 299
    :cond_1c
    :goto_8
    return-void
.end method
