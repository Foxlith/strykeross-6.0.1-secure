.class public final Lb3/g;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/regex/Pattern;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Landroid/content/Context;

.field public c:Landroid/app/Activity;

.field public d:Ll4/l;

.field public e:Ljava/lang/Runnable;

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "((\\w{2}:){5}\\w{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lb3/g;->g:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lb3/g;->d:Ll4/l;

    invoke-virtual {v2}, Ll4/l;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/captured"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "clipboard"

    iget-object v1, p0, Lb3/g;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    const-string v2, "psk"

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_1
    const p1, 0x7f13026e

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb3/g;->c(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/g;->c:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lw2/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 11

    .line 1
    check-cast p1, Lb3/f;

    .line 2
    .line 3
    iget-object v0, p0, Lb3/g;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v6, v0

    .line 10
    check-cast v6, Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/io/File;

    .line 13
    .line 14
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    iget-object v0, p1, Lb3/f;->e:Landroid/widget/ImageView;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p1, Lb3/f;->f:Landroid/widget/ImageView;

    .line 28
    .line 29
    const/16 v2, 0x8

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p1, Lb3/f;->d:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p1, Lb3/f;->b:Landroid/widget/TextView;

    .line 40
    .line 41
    const-string v4, ""

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object v5, p1, Lb3/f;->c:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    sget-object v2, Lb3/g;->g:Ljava/util/regex/Pattern;

    .line 61
    .line 62
    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_0

    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    move-object v8, v2

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    move-object v8, v6

    .line 79
    :goto_0
    iget-object v2, p0, Lb3/g;->d:Ll4/l;

    .line 80
    .line 81
    invoke-virtual {v2, v8}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-lez v4, :cond_1

    .line 92
    .line 93
    const/4 v4, 0x1

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move v4, v1

    .line 96
    :goto_1
    iget-object v5, p1, Lb3/f;->a:Landroid/widget/TextView;

    .line 97
    .line 98
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    if-eqz v4, :cond_2

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    const v1, 0x7f13027a

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    .line 111
    .line 112
    const-string v1, "#388E3C"

    .line 113
    .line 114
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    iget-object v4, p0, Lb3/g;->b:Landroid/content/Context;

    .line 127
    .line 128
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    const v5, 0x7f130512

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 160
    .line 161
    new-instance v1, Lcom/google/android/material/snackbar/a;

    .line 162
    .line 163
    const/16 v3, 0x10

    .line 164
    .line 165
    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_2
    const-string v0, "#9E9E9E"

    .line 173
    .line 174
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v6}, Lb3/g;->a(Ljava/lang/String;)Ljava/io/File;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_5

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 192
    .line 193
    .line 194
    move-result-wide v0

    .line 195
    const-wide/16 v4, 0x400

    .line 196
    .line 197
    cmp-long v2, v0, v4

    .line 198
    .line 199
    if-gez v2, :cond_3

    .line 200
    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v0, " B"

    .line 210
    .line 211
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    goto :goto_2

    .line 219
    :cond_3
    const-wide/32 v9, 0x100000

    .line 220
    .line 221
    .line 222
    cmp-long v2, v0, v9

    .line 223
    .line 224
    if-gez v2, :cond_4

    .line 225
    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    div-long/2addr v0, v4

    .line 232
    const-string v4, " KB"

    .line 233
    .line 234
    invoke-static {v2, v0, v1, v4}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    goto :goto_2

    .line 239
    :cond_4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 240
    .line 241
    long-to-double v0, v0

    .line 242
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 243
    .line 244
    div-double/2addr v0, v4

    .line 245
    div-double/2addr v0, v4

    .line 246
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    const-string v1, "%.1f MB"

    .line 255
    .line 256
    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    :cond_5
    :goto_3
    new-instance v9, Lcom/stryker/terminal/ui/other/a;

    .line 264
    .line 265
    const/4 v5, 0x2

    .line 266
    move-object v0, v9

    .line 267
    move-object v1, p0

    .line 268
    move-object v2, p1

    .line 269
    move-object v3, v6

    .line 270
    move-object v4, v8

    .line 271
    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/ui/other/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 272
    .line 273
    .line 274
    iget-object v0, p1, Lb3/f;->e:Landroid/widget/ImageView;

    .line 275
    .line 276
    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .line 278
    .line 279
    new-instance v0, Lb3/a;

    .line 280
    .line 281
    move-object v1, v0

    .line 282
    move v2, p2

    .line 283
    move-object v3, p0

    .line 284
    move-object v4, v6

    .line 285
    move-object v5, v7

    .line 286
    move-object v6, v8

    .line 287
    invoke-direct/range {v1 .. v6}, Lb3/a;-><init>(ILb3/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    iget-object p1, p1, Lb3/f;->g:Landroid/widget/ImageView;

    .line 291
    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    .line 294
    .line 295
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 2

    .line 1
    iget-object p2, p0, Lb3/g;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const v0, 0x7f0d006d

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Lb3/f;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7f0a0263

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object v0, p2, Lb3/f;->a:Landroid/widget/TextView;

    .line 30
    .line 31
    const v0, 0x7f0a0265

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, p2, Lb3/f;->b:Landroid/widget/TextView;

    .line 41
    .line 42
    const v0, 0x7f0a026b

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v0, p2, Lb3/f;->c:Landroid/widget/TextView;

    .line 52
    .line 53
    const v0, 0x7f0a0268

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object v0, p2, Lb3/f;->d:Landroid/widget/TextView;

    .line 63
    .line 64
    const v0, 0x7f0a0256

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/ImageView;

    .line 72
    .line 73
    iput-object v0, p2, Lb3/f;->e:Landroid/widget/ImageView;

    .line 74
    .line 75
    const v0, 0x7f0a0257

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroid/widget/ImageView;

    .line 83
    .line 84
    iput-object v0, p2, Lb3/f;->f:Landroid/widget/ImageView;

    .line 85
    .line 86
    const v0, 0x7f0a0264

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroid/widget/ImageView;

    .line 94
    .line 95
    iput-object v0, p2, Lb3/f;->g:Landroid/widget/ImageView;

    .line 96
    .line 97
    const v0, 0x7f0a0259

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Landroid/widget/ImageView;

    .line 105
    .line 106
    return-object p2
.end method
