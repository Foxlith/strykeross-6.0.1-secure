.class public final Ln2/c;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ln2/c;->a:I

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln2/c;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Ln2/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk4/b;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ln2/c;->a:I

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln2/c;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Ln2/c;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->setHasStableIds(Z)V

    return-void
.end method

.method public constructor <init>(Ll3/i;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ln2/c;->a:I

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln2/c;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Ln2/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "Receiving objects"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "recv"

    return-object p0

    :cond_1
    const-string v1, "Resolving deltas"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "delta"

    return-object p0

    :cond_2
    const-string v1, "Counting objects"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "count"

    return-object p0

    :cond_3
    const-string v1, "Compressing objects"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "compress"

    return-object p0

    :cond_4
    const-string v1, "Updating files"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "updating"

    return-object p0

    :cond_5
    const-string v1, "Unpacking objects"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "unpack"

    return-object p0

    :cond_6
    return-object v0
.end method


# virtual methods
.method public final a(Ln2/f;)V
    .locals 6

    .line 1
    iget-object v0, p1, Ln2/f;->b:Ljava/lang/String;

    invoke-static {v0}, Ln2/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ln2/c;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln2/f;

    iget-object v4, v3, Ln2/f;->a:Ln2/e;

    iget-object v5, p1, Ln2/f;->a:Ln2/e;

    if-ne v4, v5, :cond_0

    iget-object v3, v3, Ln2/f;->b:Ljava/lang/String;

    invoke-static {v3}, Ln2/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->notifyItemInserted(I)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x258

    if-le p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/c;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Ln2/c;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-lez v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/k0;->notifyItemRangeRemoved(II)V

    :cond_0
    return-void
.end method

.method public final getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/c;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Ln2/c;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :pswitch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    iget v0, p0, Ln2/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/k0;->getItemId(I)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Ln2/c;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lf3/b;

    .line 18
    .line 19
    iget-wide v0, p1, Lf3/b;->a:J

    .line 20
    .line 21
    return-wide v0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 12

    .line 1
    iget-object v0, p0, Ln2/c;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Ln2/c;->a:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x4

    .line 7
    const-string v4, ""

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x0

    .line 11
    const-string v7, " \u00b7 "

    .line 12
    .line 13
    const/4 v8, 0x1

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p1, Lk4/c;

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lf3/b;

    .line 24
    .line 25
    iget-object v0, p1, Lk4/c;->a:Lcom/google/android/material/textview/MaterialTextView;

    .line 26
    .line 27
    iget-object v1, p2, Lf3/b;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    iget v0, p2, Lf3/b;->c:I

    .line 33
    .line 34
    invoke-static {v0}, Landroid/support/v4/media/session/a;->E(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p1, Lk4/c;->b:Lcom/google/android/material/textview/MaterialTextView;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v1, p2, Lf3/b;->d:Ljava/util/Set;

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lf3/a;

    .line 65
    .line 66
    iget-object v2, v2, Lf3/a;->a:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_0

    .line 76
    .line 77
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    const-string v0, "no functions"

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :goto_1
    iget-object v1, p1, Lk4/c;->c:Lcom/google/android/material/textview/MaterialTextView;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p2, Lf3/b;->e:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v1, p2, Lf3/b;->f:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v2, p2, Lf3/b;->g:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v3, p2, Lf3/b;->h:Ljava/lang/String;

    .line 106
    .line 107
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "%s:%s \u2014 %s / %s"

    .line 112
    .line 113
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v1, p1, Lk4/c;->d:Lcom/google/android/material/textview/MaterialTextView;

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    new-instance v0, Lk4/a;

    .line 123
    .line 124
    invoke-direct {v0, p0, p2, v6}, Lk4/a;-><init>(Ln2/c;Lf3/b;I)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p1, Lk4/c;->e:Landroid/view/View;

    .line 128
    .line 129
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Lk4/a;

    .line 133
    .line 134
    invoke-direct {v0, p0, p2, v8}, Lk4/a;-><init>(Ln2/c;Lf3/b;I)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p1, Lk4/c;->f:Landroid/view/View;

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    new-instance v0, Lk4/a;

    .line 143
    .line 144
    invoke-direct {v0, p0, p2, v5}, Lk4/a;-><init>(Ln2/c;Lf3/b;I)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p1, Lk4/c;->g:Landroid/view/View;

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_0
    check-cast p1, Ll3/j;

    .line 154
    .line 155
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Lj3/a;

    .line 160
    .line 161
    iget-object v0, p1, Ll3/j;->a:Lcom/google/android/material/textview/MaterialTextView;

    .line 162
    .line 163
    iget-object v1, p2, Lj3/a;->b:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    iget v0, p2, Lj3/a;->d:I

    .line 169
    .line 170
    if-ne v0, v8, :cond_3

    .line 171
    .line 172
    move v0, v8

    .line 173
    goto :goto_2

    .line 174
    :cond_3
    move v0, v6

    .line 175
    :goto_2
    if-eqz v0, :cond_4

    .line 176
    .line 177
    const-string v1, "SAMPLE"

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_4
    const-string v1, "SAVED"

    .line 181
    .line 182
    :goto_3
    iget-object v5, p1, Ll3/j;->c:Lcom/google/android/material/textview/MaterialTextView;

    .line 183
    .line 184
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    const/16 v1, 0xa

    .line 188
    .line 189
    iget-object v5, p2, Lj3/a;->c:Ljava/lang/String;

    .line 190
    .line 191
    if-eqz v5, :cond_7

    .line 192
    .line 193
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    if-eqz v9, :cond_5

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_5
    move v9, v6

    .line 201
    move v10, v8

    .line 202
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    if-ge v9, v11, :cond_8

    .line 207
    .line 208
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    if-ne v11, v1, :cond_6

    .line 213
    .line 214
    add-int/lit8 v10, v10, 0x1

    .line 215
    .line 216
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_7
    :goto_5
    move v10, v6

    .line 220
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    if-eqz v0, :cond_9

    .line 226
    .line 227
    const-string v0, "sample"

    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_9
    const-string v0, "saved"

    .line 231
    .line 232
    :goto_6
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v0, " lines"

    .line 242
    .line 243
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iget-object v7, p1, Ll3/j;->b:Lcom/google/android/material/textview/MaterialTextView;

    .line 251
    .line 252
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    if-nez v5, :cond_a

    .line 256
    .line 257
    goto :goto_9

    .line 258
    :cond_a
    const-string v0, "\\R"

    .line 259
    .line 260
    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    move v4, v6

    .line 270
    :goto_7
    array-length v5, v0

    .line 271
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    if-ge v4, v5, :cond_d

    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    if-lez v5, :cond_b

    .line 282
    .line 283
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    :cond_b
    aget-object v5, v0, v4

    .line 287
    .line 288
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    const/16 v7, 0x40

    .line 293
    .line 294
    if-le v5, v7, :cond_c

    .line 295
    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    aget-object v9, v0, v4

    .line 302
    .line 303
    invoke-virtual {v9, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v7, "\u2026"

    .line 311
    .line 312
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    goto :goto_8

    .line 320
    :cond_c
    aget-object v5, v0, v4

    .line 321
    .line 322
    :goto_8
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    add-int/lit8 v4, v4, 0x1

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    :goto_9
    iget-object v0, p1, Ll3/j;->d:Lcom/google/android/material/textview/MaterialTextView;

    .line 333
    .line 334
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    .line 336
    .line 337
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 338
    .line 339
    new-instance v1, Ll3/h;

    .line 340
    .line 341
    invoke-direct {v1, p0, p2, v6}, Ll3/h;-><init>(Ln2/c;Lj3/a;I)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    .line 346
    .line 347
    iget-object p1, p1, Ll3/j;->e:Landroid/view/View;

    .line 348
    .line 349
    if-eqz p1, :cond_e

    .line 350
    .line 351
    new-instance v0, Ll3/h;

    .line 352
    .line 353
    invoke-direct {v0, p0, p2, v8}, Ll3/h;-><init>(Ln2/c;Lj3/a;I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    .line 358
    .line 359
    :cond_e
    return-void

    .line 360
    :pswitch_1
    check-cast p1, Ln2/b;

    .line 361
    .line 362
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object p2

    .line 366
    check-cast p2, Ln2/f;

    .line 367
    .line 368
    iget-object v0, p2, Ln2/f;->a:Ln2/e;

    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    const v1, 0x7f060302

    .line 375
    .line 376
    .line 377
    const/4 v6, 0x5

    .line 378
    if-eq v0, v8, :cond_13

    .line 379
    .line 380
    if-eq v0, v5, :cond_12

    .line 381
    .line 382
    if-eq v0, v2, :cond_11

    .line 383
    .line 384
    if-eq v0, v3, :cond_10

    .line 385
    .line 386
    if-eq v0, v6, :cond_f

    .line 387
    .line 388
    const v0, 0x7f060074

    .line 389
    .line 390
    .line 391
    goto :goto_a

    .line 392
    :cond_f
    const v0, 0x7f060316

    .line 393
    .line 394
    .line 395
    goto :goto_a

    .line 396
    :cond_10
    move v0, v1

    .line 397
    goto :goto_a

    .line 398
    :cond_11
    const v0, 0x7f060339

    .line 399
    .line 400
    .line 401
    goto :goto_a

    .line 402
    :cond_12
    const v0, 0x7f060073

    .line 403
    .line 404
    .line 405
    goto :goto_a

    .line 406
    :cond_13
    const v0, 0x7f060317

    .line 407
    .line 408
    .line 409
    :goto_a
    iget-object v7, p0, Ln2/c;->c:Ljava/lang/Object;

    .line 410
    .line 411
    check-cast v7, Landroid/content/Context;

    .line 412
    .line 413
    sget-object v9, Lx/g;->a:Ljava/lang/Object;

    .line 414
    .line 415
    invoke-static {v7, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    iget-object v9, p2, Ln2/f;->a:Ln2/e;

    .line 420
    .line 421
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 422
    .line 423
    .line 424
    move-result v10

    .line 425
    if-eq v10, v8, :cond_18

    .line 426
    .line 427
    if-eq v10, v5, :cond_17

    .line 428
    .line 429
    if-eq v10, v2, :cond_16

    .line 430
    .line 431
    if-eq v10, v3, :cond_15

    .line 432
    .line 433
    if-eq v10, v6, :cond_14

    .line 434
    .line 435
    const-string v2, "..."

    .line 436
    .line 437
    goto :goto_b

    .line 438
    :cond_14
    const-string v2, "CMD"

    .line 439
    .line 440
    goto :goto_b

    .line 441
    :cond_15
    const-string v2, "ERR"

    .line 442
    .line 443
    goto :goto_b

    .line 444
    :cond_16
    const-string v2, "WRN"

    .line 445
    .line 446
    goto :goto_b

    .line 447
    :cond_17
    const-string v2, "OK"

    .line 448
    .line 449
    goto :goto_b

    .line 450
    :cond_18
    const-string v2, ">>>"

    .line 451
    .line 452
    :goto_b
    iget-object v3, p1, Ln2/b;->a:Landroid/widget/TextView;

    .line 453
    .line 454
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    .line 456
    .line 457
    iget-object v2, p1, Ln2/b;->a:Landroid/widget/TextView;

    .line 458
    .line 459
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    instance-of v3, v3, Landroid/graphics/drawable/GradientDrawable;

    .line 467
    .line 468
    if-eqz v3, :cond_19

    .line 469
    .line 470
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 479
    .line 480
    const v5, 0xffffff

    .line 481
    .line 482
    .line 483
    and-int/2addr v0, v5

    .line 484
    const/high16 v5, 0x33000000

    .line 485
    .line 486
    or-int/2addr v0, v5

    .line 487
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 491
    .line 492
    .line 493
    goto :goto_c

    .line 494
    :cond_19
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 499
    .line 500
    invoke-virtual {v3, v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    const/16 v2, 0x3c

    .line 508
    .line 509
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 510
    .line 511
    .line 512
    :goto_c
    iget-object p2, p2, Ln2/f;->b:Ljava/lang/String;

    .line 513
    .line 514
    if-nez p2, :cond_1a

    .line 515
    .line 516
    goto :goto_d

    .line 517
    :cond_1a
    const-string v0, "[STRYKER]"

    .line 518
    .line 519
    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object p2

    .line 523
    const-string v0, "[STRYKER:warn]"

    .line 524
    .line 525
    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object p2

    .line 529
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    :goto_d
    iget-object p1, p1, Ln2/b;->b:Landroid/widget/TextView;

    .line 534
    .line 535
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    .line 537
    .line 538
    sget-object p2, Ln2/e;->e:Ln2/e;

    .line 539
    .line 540
    if-ne v9, p2, :cond_1b

    .line 541
    .line 542
    invoke-static {v7, v1}, Lx/d;->a(Landroid/content/Context;I)I

    .line 543
    .line 544
    .line 545
    move-result p2

    .line 546
    goto :goto_e

    .line 547
    :cond_1b
    const p2, 0x7f0602f2

    .line 548
    .line 549
    .line 550
    invoke-static {v7, p2}, Lx/d;->a(Landroid/content/Context;I)I

    .line 551
    .line 552
    .line 553
    move-result p2

    .line 554
    :goto_e
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 555
    .line 556
    .line 557
    return-void

    .line 558
    nop

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 2

    .line 1
    iget p2, p0, Ln2/c;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p2, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const v1, 0x7f0d0077

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Lk4/c;

    .line 23
    .line 24
    invoke-direct {p2, p1}, Lk4/c;-><init>(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    return-object p2

    .line 28
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const v1, 0x7f0d007c

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance p2, Ll3/j;

    .line 44
    .line 45
    invoke-direct {p2, p1}, Ll3/j;-><init>(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    return-object p2

    .line 49
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const v1, 0x7f0d0073

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance p2, Ln2/b;

    .line 65
    .line 66
    invoke-direct {p2, p1}, Ln2/b;-><init>(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    return-object p2

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
