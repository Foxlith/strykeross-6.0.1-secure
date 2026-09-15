.class public Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;
.super Lf/q;
.source "SourceFile"


# static fields
.field public static final synthetic l:I


# instance fields
.field public a:Ld3/b;

.field public b:Landroid/widget/ImageView;

.field public c:Lcom/google/android/material/textview/MaterialTextView;

.field public d:Lcom/google/android/material/textview/MaterialTextView;

.field public e:Landroid/graphics/Bitmap;

.field public f:Z

.field public g:Landroid/view/View;

.field public h:Ld3/d;

.field public i:Ld3/e;

.field public j:Z

.field public k:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0023

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lf/q;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x6

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-static {p1, v0}, Lg/a;->z(Landroid/view/Window;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v3, 0x1e

    .line 29
    .line 30
    if-lt v2, v3, :cond_0

    .line 31
    .line 32
    new-instance v1, Landroidx/core/view/w2;

    .line 33
    .line 34
    invoke-static {p1}, Landroidx/core/view/z1;->l(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v1, v2}, Landroidx/core/view/w2;-><init>(Landroid/view/WindowInsetsController;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, v1, Landroidx/core/view/w2;->f:Landroid/view/Window;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const/16 v3, 0x1a

    .line 45
    .line 46
    if-lt v2, v3, :cond_1

    .line 47
    .line 48
    new-instance v2, Landroidx/core/view/u2;

    .line 49
    .line 50
    invoke-direct {v2, p1, v1}, Landroidx/core/view/s2;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    move-object v1, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    new-instance v2, Landroidx/core/view/t2;

    .line 56
    .line 57
    invoke-direct {v2, p1, v1}, Landroidx/core/view/s2;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :goto_1
    invoke-virtual {v1}, Ld/d;->s()V

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x7

    .line 65
    invoke-virtual {v1, p1}, Ld/d;->i(I)V

    .line 66
    .line 67
    .line 68
    const p1, 0x7f0a06ab

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/widget/ImageView;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->b:Landroid/widget/ImageView;

    .line 78
    .line 79
    const p1, 0x7f0a06b1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 87
    .line 88
    iput-object p1, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->c:Lcom/google/android/material/textview/MaterialTextView;

    .line 89
    .line 90
    const p1, 0x7f0a06af

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 98
    .line 99
    iput-object p1, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->d:Lcom/google/android/material/textview/MaterialTextView;

    .line 100
    .line 101
    const p1, 0x7f0a06ad

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->g:Landroid/view/View;

    .line 109
    .line 110
    const p1, 0x7f0a06aa

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 118
    .line 119
    const v1, 0x7f0a06ac

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v1}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 127
    .line 128
    const v2, 0x7f0a06ae

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v2}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 136
    .line 137
    iput-object v2, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->k:Lcom/google/android/material/button/MaterialButton;

    .line 138
    .line 139
    new-instance v2, Ld3/f;

    .line 140
    .line 141
    invoke-direct {v2, p0, v0}, Ld3/f;-><init>(Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->g:Landroid/view/View;

    .line 148
    .line 149
    instance-of v2, p1, Landroid/view/ViewGroup;

    .line 150
    .line 151
    if-eqz v2, :cond_2

    .line 152
    .line 153
    new-instance v2, Ld3/d;

    .line 154
    .line 155
    check-cast p1, Landroid/view/ViewGroup;

    .line 156
    .line 157
    invoke-direct {v2, p1}, Ld3/d;-><init>(Landroid/view/ViewGroup;)V

    .line 158
    .line 159
    .line 160
    iput-object v2, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->h:Ld3/d;

    .line 161
    .line 162
    :cond_2
    new-instance p1, Ld3/f;

    .line 163
    .line 164
    const/4 v2, 0x1

    .line 165
    invoke-direct {p1, p0, v2}, Ld3/f;-><init>(Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    new-instance p1, Ld3/e;

    .line 172
    .line 173
    invoke-direct {p1}, Ld3/e;-><init>()V

    .line 174
    .line 175
    .line 176
    iput-object p1, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->i:Ld3/e;

    .line 177
    .line 178
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->k:Lcom/google/android/material/button/MaterialButton;

    .line 179
    .line 180
    new-instance v1, Ld3/f;

    .line 181
    .line 182
    const/4 v2, 0x2

    .line 183
    invoke-direct {v1, p0, v2}, Ld3/f;-><init>(Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->b:Landroid/widget/ImageView;

    .line 190
    .line 191
    new-instance v1, Ld3/g;

    .line 192
    .line 193
    invoke-direct {v1, p0}, Ld3/g;-><init>(Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->b:Landroid/widget/ImageView;

    .line 200
    .line 201
    new-instance v1, Ld3/h;

    .line 202
    .line 203
    invoke-direct {v1, p0}, Ld3/h;-><init>(Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    .line 208
    .line 209
    new-instance p1, Ll4/l;

    .line 210
    .line 211
    invoke-direct {p1, p0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p1, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 215
    .line 216
    const-string v1, "acm_reap_settle_ms"

    .line 217
    .line 218
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    int-to-long v0, p1

    .line 223
    const-wide/16 v2, 0x0

    .line 224
    .line 225
    cmp-long p1, v0, v2

    .line 226
    .line 227
    if-lez p1, :cond_5

    .line 228
    .line 229
    if-gez p1, :cond_3

    .line 230
    .line 231
    move-wide v0, v2

    .line 232
    :cond_3
    const-wide/16 v2, 0x7d0

    .line 233
    .line 234
    cmp-long p1, v0, v2

    .line 235
    .line 236
    if-lez p1, :cond_4

    .line 237
    .line 238
    move-wide v0, v2

    .line 239
    :cond_4
    sput-wide v0, Ld3/b;->e:J

    .line 240
    .line 241
    :cond_5
    :try_start_0
    new-instance p1, Lf/q0;

    .line 242
    .line 243
    const/16 v0, 0x1c

    .line 244
    .line 245
    invoke-direct {p1, p0, v0}, Lf/q0;-><init>(Ljava/lang/Object;I)V

    .line 246
    .line 247
    .line 248
    invoke-static {p1}, Ld3/b;->i(Lf/q0;)Ld3/b;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    iput-object p1, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->a:Ld3/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .line 254
    goto :goto_2

    .line 255
    :catch_0
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->c:Lcom/google/android/material/textview/MaterialTextView;

    .line 256
    .line 257
    const v0, 0x7f130597

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    .line 266
    .line 267
    :goto_2
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lf/q;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->f:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->a:Ld3/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0}, Ld3/b;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    iput-object v1, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->a:Ld3/b;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->h:Ld3/d;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ld3/d;->a()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->h:Ld3/d;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->i:Ld3/e;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-object v2, v0, Ld3/e;->a:Lk3/a;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    :try_start_1
    invoke-virtual {v2}, Lk3/a;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    .line 36
    .line 37
    :catch_1
    iput-object v1, v0, Ld3/e;->a:Lk3/a;

    .line 38
    .line 39
    :cond_2
    iget-object v2, v0, Ld3/e;->c:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    iput v2, v0, Ld3/e;->o:I

    .line 46
    .line 47
    iput-boolean v2, v0, Ld3/e;->p:Z

    .line 48
    .line 49
    iput-boolean v2, v0, Ld3/e;->r:Z

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    iput v2, v0, Ld3/e;->s:F

    .line 53
    .line 54
    iput-object v1, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->i:Ld3/e;

    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->e:Landroid/graphics/Bitmap;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->e:Landroid/graphics/Bitmap;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->e:Landroid/graphics/Bitmap;

    .line 72
    .line 73
    :cond_4
    const/4 v0, -0x1

    .line 74
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
