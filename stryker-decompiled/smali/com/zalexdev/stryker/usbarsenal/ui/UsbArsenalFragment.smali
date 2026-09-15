.class public Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lk4/b;


# static fields
.field public static final synthetic j:I


# instance fields
.field public a:Ll4/l;

.field public b:Lg3/b;

.field public c:Lv1/c;

.field public d:Ln2/c;

.field public e:Lcom/google/android/material/textview/MaterialTextView;

.field public f:Lcom/google/android/material/textview/MaterialTextView;

.field public g:Lcom/google/android/material/textview/MaterialTextView;

.field public h:Lk4/f;

.field public i:Landroidx/activity/result/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Le3/b;Lf3/c;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p1, Le3/b;->a:Z

    .line 9
    .line 10
    const v1, -0x39d7d8

    .line 11
    .line 12
    .line 13
    const v2, 0x7f0800ac

    .line 14
    .line 15
    .line 16
    iget-object v3, p1, Le3/b;->d:Ljava/lang/String;

    .line 17
    .line 18
    iget-boolean p1, p1, Le3/b;->c:Z

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    iget-boolean v0, p2, Lf3/c;->b:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->e:Lcom/google/android/material/textview/MaterialTextView;

    .line 31
    .line 32
    iget-object v1, p2, Lf3/c;->c:Ljava/lang/String;

    .line 33
    .line 34
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const v2, 0x7f1300b5

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 49
    .line 50
    const-string v1, "BOUND"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 56
    .line 57
    const v1, 0x7f0800ad

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/m1;->setBackgroundResource(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 64
    .line 65
    const v1, -0xd182ce

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->e:Lcom/google/android/material/textview/MaterialTextView;

    .line 73
    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    const v4, 0x7f1300b6

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 83
    .line 84
    const-string v4, "DETACH"

    .line 85
    .line 86
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/m1;->setBackgroundResource(I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const v1, 0x7f1300b7

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 104
    .line 105
    const-string v1, "IDLE"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 111
    .line 112
    const v1, 0x7f0800ae

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/m1;->setBackgroundResource(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 119
    .line 120
    const v1, -0x109400

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->e:Lcom/google/android/material/textview/MaterialTextView;

    .line 125
    .line 126
    const v4, 0x7f13009c

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 133
    .line 134
    const-string v4, "BLOCK"

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v1, "udc="

    .line 140
    .line 141
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    if-nez v3, :cond_4

    .line 145
    .line 146
    const-string v3, "\u2014"

    .line 147
    .line 148
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, " \u00b7 configfs="

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, "\u2717"

    .line 157
    .line 158
    const-string v2, "\u2713"

    .line 159
    .line 160
    if-eqz p1, :cond_5

    .line 161
    .line 162
    move-object p1, v2

    .line 163
    goto :goto_3

    .line 164
    :cond_5
    move-object p1, v1

    .line 165
    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string p1, " \u00b7 stryker_gadget="

    .line 169
    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-boolean p1, p2, Lf3/c;->a:Z

    .line 174
    .line 175
    if-eqz p1, :cond_6

    .line 176
    .line 177
    move-object v1, v2

    .line 178
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object p1, p2, Lf3/c;->d:Ljava/util/Set;

    .line 182
    .line 183
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_8

    .line 188
    .line 189
    const-string v1, "\nfunctions="

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_8

    .line 203
    .line 204
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    check-cast v1, Lf3/a;

    .line 209
    .line 210
    iget-object v1, v1, Lf3/a;->a:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_7

    .line 220
    .line 221
    const/16 v1, 0x2c

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_8
    iget-object p1, p2, Lf3/c;->e:Ljava/lang/String;

    .line 228
    .line 229
    if-eqz p1, :cond_9

    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    if-nez p2, :cond_9

    .line 236
    .line 237
    const-string p2, "\nmass_storage="

    .line 238
    .line 239
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    :cond_9
    iget-object p1, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->g:Lcom/google/android/material/textview/MaterialTextView;

    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Ld/c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ld/c;-><init>(I)V

    new-instance v0, Lk4/h;

    invoke-direct {v0, p0}, Lk4/h;-><init>(Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;)V

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Ld/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p1

    iput-object p1, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->i:Landroidx/activity/result/c;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0068

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ll4/l;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p2, v0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->a:Ll4/l;

    .line 14
    .line 15
    new-instance p2, Lg3/b;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p2, v0}, Lg3/b;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->b:Lg3/b;

    .line 25
    .line 26
    new-instance p2, Lv1/c;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p2, v0}, Lv1/c;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->c:Lv1/c;

    .line 36
    .line 37
    const p2, 0x7f0a0094

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->e:Lcom/google/android/material/textview/MaterialTextView;

    .line 47
    .line 48
    const p2, 0x7f0a0093

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 58
    .line 59
    const p2, 0x7f0a0092

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 67
    .line 68
    iput-object p2, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->g:Lcom/google/android/material/textview/MaterialTextView;

    .line 69
    .line 70
    const p2, 0x7f0a0090

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Ln2/c;

    .line 91
    .line 92
    invoke-direct {v0, p0}, Ln2/c;-><init>(Lk4/b;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->d:Ln2/c;

    .line 96
    .line 97
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 98
    .line 99
    .line 100
    const p2, 0x7f0a0091

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    new-instance v0, Lk4/g;

    .line 108
    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-direct {v0, p0, v1}, Lk4/g;-><init>(Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    const p2, 0x7f0a008f

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    new-instance p2, Lk4/g;

    .line 124
    .line 125
    const/4 v0, 0x1

    .line 126
    invoke-direct {p2, p0, v0}, Lk4/g;-><init>(Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 133
    .line 134
    const-string p2, "PROBING"

    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 140
    .line 141
    const p2, 0x7f0800ae

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/m1;->setBackgroundResource(I)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 148
    .line 149
    const p2, -0x109400

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    .line 154
    .line 155
    new-instance p1, Ljava/lang/Thread;

    .line 156
    .line 157
    new-instance p2, Lk4/i;

    .line 158
    .line 159
    invoke-direct {p2, p0, v0}, Lk4/i;-><init>(Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;I)V

    .line 160
    .line 161
    .line 162
    const-string v0, "arsenal-probe"

    .line 163
    .line 164
    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->d:Ln2/c;

    .line 171
    .line 172
    iget-object p2, p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->b:Lg3/b;

    .line 173
    .line 174
    invoke-virtual {p2}, Lg3/b;->f()Ljava/util/ArrayList;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p1, p2}, Ln2/c;->c(Ljava/util/ArrayList;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method
