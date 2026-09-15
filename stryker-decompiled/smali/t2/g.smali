.class public final synthetic Lt2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/dashboard/Dashboard;IILjava/lang/StringBuilder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lt2/g;->a:I

    iput-object p1, p0, Lt2/g;->d:Ljava/lang/Object;

    iput p2, p0, Lt2/g;->b:I

    iput p3, p0, Lt2/g;->c:I

    iput-object p4, p0, Lt2/g;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lt2/g;->a:I

    iput-object p1, p0, Lt2/g;->d:Ljava/lang/Object;

    iput-object p2, p0, Lt2/g;->e:Ljava/lang/Object;

    iput p3, p0, Lt2/g;->b:I

    iput p4, p0, Lt2/g;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lt2/g;->a:I

    .line 2
    .line 3
    iget v1, p0, Lt2/g;->c:I

    .line 4
    .line 5
    iget v2, p0, Lt2/g;->b:I

    .line 6
    .line 7
    iget-object v3, p0, Lt2/g;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lt2/g;->d:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v4, Le0/j;

    .line 15
    .line 16
    check-cast v3, Lg3/q;

    .line 17
    .line 18
    iget-object v0, v4, Le0/j;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 21
    .line 22
    iget-object v4, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->w:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 23
    .line 24
    invoke-virtual {v4, v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgress(I)V

    .line 25
    .line 26
    .line 27
    iget v2, v3, Lg3/q;->a:I

    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    filled-new-array {v2, v1, v3}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const v2, 0x7f130246

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_0
    check-cast v4, Lf/q0;

    .line 61
    .line 62
    check-cast v3, Landroid/graphics/Bitmap;

    .line 63
    .line 64
    iget-object v0, v4, Lf/q0;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    .line 67
    .line 68
    iget-boolean v5, v0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->f:Z

    .line 69
    .line 70
    if-nez v5, :cond_5

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, v4, Lf/q0;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    .line 82
    .line 83
    iget-object v5, v0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->e:Landroid/graphics/Bitmap;

    .line 84
    .line 85
    iput-object v3, v0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->e:Landroid/graphics/Bitmap;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->b:Landroid/widget/ImageView;

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    .line 91
    .line 92
    if-eqz v5, :cond_1

    .line 93
    .line 94
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_1

    .line 99
    .line 100
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    .line 102
    .line 103
    :cond_1
    iget-object v0, v4, Lf/q0;->b:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    .line 106
    .line 107
    iget-object v0, v0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->c:Lcom/google/android/material/textview/MaterialTextView;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_2

    .line 114
    .line 115
    iget-object v0, v4, Lf/q0;->b:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->c:Lcom/google/android/material/textview/MaterialTextView;

    .line 120
    .line 121
    const/16 v3, 0x8

    .line 122
    .line 123
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    :cond_2
    iget-object v0, v4, Lf/q0;->b:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->i:Ld3/e;

    .line 131
    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    if-lez v2, :cond_6

    .line 135
    .line 136
    if-gtz v1, :cond_3

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    iget v3, v0, Ld3/e;->f:I

    .line 140
    .line 141
    if-ne v2, v3, :cond_4

    .line 142
    .line 143
    iget v3, v0, Ld3/e;->g:I

    .line 144
    .line 145
    if-ne v1, v3, :cond_4

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_4
    iput v2, v0, Ld3/e;->f:I

    .line 149
    .line 150
    iput v1, v0, Ld3/e;->g:I

    .line 151
    .line 152
    invoke-virtual {v0}, Ld3/e;->a()V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_5
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 157
    .line 158
    .line 159
    :cond_6
    :goto_1
    return-void

    .line 160
    :pswitch_1
    check-cast v4, Lcom/zalexdev/stryker/dashboard/Dashboard;

    .line 161
    .line 162
    check-cast v3, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    iget-object v0, v4, Lcom/zalexdev/stryker/dashboard/Dashboard;->h:Landroid/widget/TextView;

    .line 165
    .line 166
    if-eqz v0, :cond_b

    .line 167
    .line 168
    iget-object v0, v4, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 169
    .line 170
    if-nez v0, :cond_7

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_7
    const v5, 0x7f130704

    .line 174
    .line 175
    .line 176
    if-nez v2, :cond_8

    .line 177
    .line 178
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    goto :goto_2

    .line 183
    :cond_8
    const-string v0, " \u00b7 "

    .line 184
    .line 185
    if-lez v1, :cond_9

    .line 186
    .line 187
    new-instance v6, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v1, "/"

    .line 196
    .line 197
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v0, v4, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 207
    .line 208
    const v1, 0x7f130702

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    goto :goto_2

    .line 223
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget-object v0, v4, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 235
    .line 236
    const v2, 0x7f130703

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    :goto_2
    iget-object v1, v4, Lcom/zalexdev/stryker/dashboard/Dashboard;->h:Landroid/widget/TextView;

    .line 251
    .line 252
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, v4, Lcom/zalexdev/stryker/dashboard/Dashboard;->C:Landroid/widget/TextView;

    .line 256
    .line 257
    if-eqz v0, :cond_b

    .line 258
    .line 259
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_a

    .line 264
    .line 265
    iget-object v1, v4, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 266
    .line 267
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    goto :goto_3

    .line 272
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    :cond_b
    :goto_4
    return-void

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
