.class public final Ln3/i;
.super Ll4/c;
.source "SourceFile"


# instance fields
.field public final synthetic s:I

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p5, p0, Ln3/i;->s:I

    .line 2
    .line 3
    iput-object p1, p0, Ln3/i;->t:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Ll4/c;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    iget v0, p0, Ln3/i;->s:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Ln3/i;->t:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v4, Lcom/zalexdev/stryker/vnc/VNCFragment;

    .line 13
    .line 14
    sget p1, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, v4, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 24
    .line 25
    const-string v0, "which x11vnc"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "x11vnc"

    .line 32
    .line 33
    invoke-static {p1, v0}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Ll4/c;->d:Ll4/l;

    .line 40
    .line 41
    const-string v0, "vnc_installed_de"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ll4/l;->g0(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "VNC server uninstalled."

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/zalexdev/stryker/vnc/VNCFragment;->m()V

    .line 52
    .line 53
    .line 54
    iget-object p1, v4, Lcom/zalexdev/stryker/vnc/VNCFragment;->w:Lcom/google/android/material/textfield/TextInputLayout;

    .line 55
    .line 56
    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 57
    .line 58
    .line 59
    iget-object p1, v4, Lcom/zalexdev/stryker/vnc/VNCFragment;->y:Lcom/google/android/material/textfield/TextInputLayout;

    .line 60
    .line 61
    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 62
    .line 63
    .line 64
    iget-object p1, v4, Lcom/zalexdev/stryker/vnc/VNCFragment;->C:Lcom/google/android/material/button/MaterialButton;

    .line 65
    .line 66
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 67
    .line 68
    .line 69
    iget-object p1, v4, Lcom/zalexdev/stryker/vnc/VNCFragment;->D:Lcom/google/android/material/button/MaterialButton;

    .line 70
    .line 71
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    .line 73
    .line 74
    iget-object p1, v4, Lcom/zalexdev/stryker/vnc/VNCFragment;->E:Lcom/google/android/material/button/MaterialButton;

    .line 75
    .line 76
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 77
    .line 78
    .line 79
    iget-object p1, v4, Lcom/zalexdev/stryker/vnc/VNCFragment;->A:Lcom/google/android/material/textfield/TextInputLayout;

    .line 80
    .line 81
    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object p1, v4, Lcom/zalexdev/stryker/vnc/VNCFragment;->j:Landroid/widget/TextView;

    .line 85
    .line 86
    const/16 v0, 0x8

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, v4, Lcom/zalexdev/stryker/vnc/VNCFragment;->j:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, v4, Lcom/zalexdev/stryker/vnc/VNCFragment;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, v4, Lcom/zalexdev/stryker/vnc/VNCFragment;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 104
    .line 105
    .line 106
    :goto_0
    return-void

    .line 107
    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    .line 108
    .line 109
    new-instance v2, Lt3/c;

    .line 110
    .line 111
    invoke-direct {v2, p0, p1, v1}, Lt3/c;-><init>(Ln3/i;Ljava/util/ArrayList;I)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_1
    check-cast v4, Ln3/l;

    .line 122
    .line 123
    iget-object p1, v4, Ln3/l;->f:Ljava/io/FileWriter;

    .line 124
    .line 125
    if-nez p1, :cond_2

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    :catch_0
    const/4 p1, 0x0

    .line 132
    iput-object p1, v4, Ln3/l;->f:Ljava/io/FileWriter;

    .line 133
    .line 134
    :goto_1
    iget-object p1, v4, Ln3/l;->e:Ln3/k;

    .line 135
    .line 136
    sget-object v0, Ln3/k;->e:Ln3/k;

    .line 137
    .line 138
    if-ne p1, v0, :cond_3

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_3
    iget-object p1, v4, Ln3/l;->h:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_5

    .line 148
    .line 149
    sget-object v0, Ln3/k;->c:Ln3/k;

    .line 150
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v5, "Found "

    .line 154
    .line 155
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v5, " credential"

    .line 166
    .line 167
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-ne p1, v3, :cond_4

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_4
    const-string v2, "s"

    .line 178
    .line 179
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {v4, v0, p1}, Ln3/l;->f(Ln3/k;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_5
    sget-object p1, Ln3/k;->d:Ln3/k;

    .line 191
    .line 192
    const-string v0, "No credentials found"

    .line 193
    .line 194
    invoke-virtual {v4, p1, v0}, Ln3/l;->f(Ln3/k;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :goto_3
    return-void

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Ln3/i;->s:I

    .line 6
    .line 7
    iget-object v3, v0, Ln3/i;->t:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Lcom/zalexdev/stryker/vnc/VNCFragment;

    .line 13
    .line 14
    sget v2, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v2, v3, Lcom/zalexdev/stryker/vnc/VNCFragment;->j:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "Error"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const-string v2, "Uninstall failed"

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v3, v2, v1}, Lcom/zalexdev/stryker/vnc/VNCFragment;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string v2, "Failed"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    const-string v2, "Uninstall warning"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    :goto_1
    return-void

    .line 54
    :pswitch_0
    const-string v2, "[0-9]*\\.[0-9]+%"

    .line 55
    .line 56
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "Nmap done"

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    iget-object v1, v0, Ll4/c;->c:Ljava/lang/Process;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    new-instance v1, Lw2/h;

    .line 84
    .line 85
    const/16 v3, 0x13

    .line 86
    .line 87
    invoke-direct {v1, v0, v2, v3}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 88
    .line 89
    .line 90
    iget-object v2, v0, Ll4/c;->a:Landroid/app/Activity;

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    return-void

    .line 96
    :pswitch_1
    check-cast v3, Ln3/l;

    .line 97
    .line 98
    if-nez v1, :cond_5

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    goto/16 :goto_3

    .line 104
    .line 105
    :cond_5
    invoke-virtual {v3, v1}, Ln3/l;->a(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v2, v3, Ln3/l;->c:Ln3/f;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    const-string v4, "\n"

    .line 114
    .line 115
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    iget-object v5, v2, Ln3/f;->g:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    new-instance v4, Landroidx/activity/b;

    .line 125
    .line 126
    iget-object v5, v2, Ln3/f;->h:Lcom/zalexdev/stryker/utils/NoNestedScrollView;

    .line 127
    .line 128
    const/16 v6, 0x17

    .line 129
    .line 130
    invoke-direct {v4, v5, v6}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 134
    .line 135
    .line 136
    sget-object v4, Ln3/l;->i:Ljava/util/regex/Pattern;

    .line 137
    .line 138
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    iget-object v6, v2, Ln3/f;->f:Landroid/widget/TextView;

    .line 147
    .line 148
    iget-object v7, v2, Ln3/f;->k:Landroid/content/Context;

    .line 149
    .line 150
    const/4 v8, 0x0

    .line 151
    const/4 v9, 0x2

    .line 152
    const/4 v10, 0x1

    .line 153
    if-eqz v5, :cond_7

    .line 154
    .line 155
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v16

    .line 159
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    const/4 v5, 0x3

    .line 164
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    const/4 v9, 0x4

    .line 169
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    if-nez v10, :cond_6

    .line 174
    .line 175
    const-string v4, ""

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_6
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    :goto_2
    new-instance v9, Lf4/c;

    .line 187
    .line 188
    const-string v13, ""

    .line 189
    .line 190
    move-object v11, v9

    .line 191
    move-object v12, v1

    .line 192
    move-object v14, v5

    .line 193
    move-object v15, v4

    .line 194
    invoke-direct/range {v11 .. v16}, Lf4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    iget-object v3, v3, Ln3/l;->h:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 203
    .line 204
    filled-new-array {v1, v5, v4}, [Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    const-string v4, "%s  \u2192  %s : %s"

    .line 209
    .line 210
    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    iget-object v3, v2, Ln3/f;->i:Landroid/widget/TextView;

    .line 215
    .line 216
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v2, Ln3/f;->j:Lcom/google/android/material/card/MaterialCardView;

    .line 220
    .line 221
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .line 223
    .line 224
    const v1, 0x7f130291

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_7
    sget-object v3, Ln3/l;->j:Ljava/util/regex/Pattern;

    .line 236
    .line 237
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-eqz v3, :cond_8

    .line 246
    .line 247
    :try_start_0
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-lez v1, :cond_8

    .line 264
    .line 265
    iget-object v2, v2, Ln3/f;->c:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 266
    .line 267
    invoke-virtual {v2, v8}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v3, v10}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 274
    .line 275
    .line 276
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    const v2, 0x7f130293

    .line 289
    .line 290
    .line 291
    invoke-virtual {v7, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .line 297
    .line 298
    :catch_0
    :cond_8
    :goto_3
    return-void

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
