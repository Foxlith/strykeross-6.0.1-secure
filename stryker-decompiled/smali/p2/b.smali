.class public final synthetic Lp2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/arsenal/AddExploitSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/arsenal/AddExploitSheet;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lp2/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lp2/b;->b:Lcom/zalexdev/stryker/arsenal/AddExploitSheet;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lp2/b;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lp2/b;->b:Lcom/zalexdev/stryker/arsenal/AddExploitSheet;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->d:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->g:Lcom/google/android/material/textfield/TextInputEditText;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->g(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->f:Lcom/google/android/material/textfield/TextInputLayout;

    .line 32
    .line 33
    const v1, 0x7f130058

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->f:Lcom/google/android/material/textfield/TextInputLayout;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->i:Lcom/google/android/material/textfield/TextInputEditText;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->g(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    new-instance v3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 63
    .line 64
    iget-object v4, v0, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->b:Landroid/content/Context;

    .line 65
    .line 66
    invoke-direct {v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    const v4, 0x7f130052

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const v4, 0x7f130051

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    new-instance v4, Lcom/stryker/terminal/ui/customize/b;

    .line 84
    .line 85
    const/4 v5, 0x3

    .line 86
    invoke-direct {v4, v0, p1, v1, v5}, Lcom/stryker/terminal/ui/customize/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    const p1, 0x104000a

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p1, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/high16 v0, 0x1040000

    .line 97
    .line 98
    invoke-virtual {p1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 107
    .line 108
    invoke-static {v2}, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->g(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v0, p1, v2, v1}, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    :goto_0
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->e:Lcom/google/android/material/textview/MaterialTextView;

    .line 117
    .line 118
    const v1, 0x7f13004f

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    return-void

    .line 129
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->j:I

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_1
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->a:Ll4/l;

    .line 136
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->a:Ll4/l;

    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v2, "Stryker/exploits"

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p1, v1}, Ll4/l;->E(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_4

    .line 172
    .line 173
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->a:Ll4/l;

    .line 174
    .line 175
    const v1, 0x7f130050

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {p1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->a:Ll4/l;

    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v2, "Stryker/exploits/"

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    new-array v2, v2, [Ljava/lang/String;

    .line 217
    .line 218
    const/4 v3, 0x0

    .line 219
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-ge v3, v4, :cond_5

    .line 224
    .line 225
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    check-cast v4, Ljava/lang/String;

    .line 230
    .line 231
    const-string v5, ""

    .line 232
    .line 233
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    aput-object v4, v2, v3

    .line 238
    .line 239
    add-int/lit8 v3, v3, 0x1

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_5
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 243
    .line 244
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->b:Landroid/content/Context;

    .line 245
    .line 246
    invoke-direct {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 247
    .line 248
    .line 249
    const v1, 0x7f130053

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    new-instance v1, Lcom/stryker/terminal/ui/customize/a;

    .line 257
    .line 258
    const/4 v3, 0x6

    .line 259
    invoke-direct {v1, v0, v2, v3}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 267
    .line 268
    .line 269
    :goto_3
    return-void

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
