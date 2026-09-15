.class public final synthetic Lw3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/metasploit/Metasploit;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/metasploit/Metasploit;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lw3/j;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lw3/j;->b:Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lw3/j;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->C:I

    .line 9
    .line 10
    iget-object v0, p0, Lw3/j;->b:Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/zalexdev/stryker/metasploit/Metasploit;->d()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lw3/j;->b:Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->d:Lz3/d;

    .line 19
    .line 20
    iget-object v1, v1, Lz3/d;->e:Lz3/g;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v3, v1, Lz3/g;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lz3/g;->n()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lz3/g;->a()Z

    .line 32
    .line 33
    .line 34
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit v1

    .line 36
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->a:Landroidx/fragment/app/a0;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->a:Landroidx/fragment/app/a0;

    .line 47
    .line 48
    new-instance v3, Lj2/g;

    .line 49
    .line 50
    const/16 v4, 0xc

    .line 51
    .line 52
    invoke-direct {v3, v0, v2, v4}, Lj2/g;-><init>(Ljava/lang/Object;ZI)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    monitor-exit v1

    .line 61
    throw v0

    .line 62
    :pswitch_1
    sget v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->C:I

    .line 63
    .line 64
    iget-object v0, p0, Lw3/j;->b:Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/zalexdev/stryker/metasploit/Metasploit;->d()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_2
    iget-object v0, p0, Lw3/j;->b:Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 71
    .line 72
    sget v3, Lcom/zalexdev/stryker/metasploit/Metasploit;->C:I

    .line 73
    .line 74
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_1

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_1
    new-instance v3, Lw3/c;

    .line 83
    .line 84
    const/4 v4, 0x1

    .line 85
    invoke-direct {v3, v0, v4}, Lw3/c;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 86
    .line 87
    .line 88
    iput-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->B:Lw3/c;

    .line 89
    .line 90
    iget-object v5, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->d:Lz3/d;

    .line 91
    .line 92
    iget-object v5, v5, Lz3/d;->k:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-nez v6, :cond_2

    .line 99
    .line 100
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :cond_2
    iget-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->x:Landroid/view/View;

    .line 104
    .line 105
    new-instance v5, Lw3/k;

    .line 106
    .line 107
    invoke-direct {v5, v0, v2}, Lw3/k;-><init>(Lcom/zalexdev/stryker/metasploit/Metasploit;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    iget-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->y:Landroid/view/View;

    .line 114
    .line 115
    new-instance v5, Lw3/k;

    .line 116
    .line 117
    invoke-direct {v5, v0, v4}, Lw3/k;-><init>(Lcom/zalexdev/stryker/metasploit/Metasploit;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    iget-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->s:Lcom/google/android/material/textfield/TextInputEditText;

    .line 124
    .line 125
    new-instance v4, Ls2/k;

    .line 126
    .line 127
    const/4 v5, 0x5

    .line 128
    invoke-direct {v4, v0, v5}, Ls2/k;-><init>(Ljava/lang/Object;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    .line 133
    .line 134
    iget-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->w:Lcom/google/android/material/chip/ChipGroup;

    .line 135
    .line 136
    new-instance v4, Lw3/i;

    .line 137
    .line 138
    invoke-direct {v4, v0}, Lw3/i;-><init>(Lcom/zalexdev/stryker/metasploit/Metasploit;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v4}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V

    .line 142
    .line 143
    .line 144
    iget-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->c:Ll4/l;

    .line 145
    .line 146
    const-string v4, "msf_last_search"

    .line 147
    .line 148
    invoke-virtual {v3, v4}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    if-eqz v3, :cond_4

    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-nez v4, :cond_4

    .line 159
    .line 160
    iget-object v4, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->s:Lcom/google/android/material/textfield/TextInputEditText;

    .line 161
    .line 162
    invoke-virtual {v4}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    if-eqz v4, :cond_3

    .line 167
    .line 168
    iget-object v4, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->s:Lcom/google/android/material/textfield/TextInputEditText;

    .line 169
    .line 170
    invoke-virtual {v4}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-nez v4, :cond_4

    .line 179
    .line 180
    :cond_3
    iget-object v4, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->s:Lcom/google/android/material/textfield/TextInputEditText;

    .line 181
    .line 182
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    :cond_4
    iget-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->c:Ll4/l;

    .line 186
    .line 187
    iget-object v3, v3, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 188
    .line 189
    const-string v4, "msf_filter_chip"

    .line 190
    .line 191
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_5

    .line 196
    .line 197
    iget-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->w:Lcom/google/android/material/chip/ChipGroup;

    .line 198
    .line 199
    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipGroup;->getCheckedChipId()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-eq v3, v2, :cond_5

    .line 204
    .line 205
    iget-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->w:Lcom/google/android/material/chip/ChipGroup;

    .line 206
    .line 207
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    if-eqz v3, :cond_5

    .line 212
    .line 213
    iget-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->w:Lcom/google/android/material/chip/ChipGroup;

    .line 214
    .line 215
    invoke-virtual {v3, v2}, Lcom/google/android/material/chip/ChipGroup;->check(I)V

    .line 216
    .line 217
    .line 218
    :cond_5
    iget-object v2, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->d:Lz3/d;

    .line 219
    .line 220
    iget-object v2, v2, Lz3/d;->e:Lz3/g;

    .line 221
    .line 222
    iget-object v2, v2, Lz3/g;->i:Lz3/f;

    .line 223
    .line 224
    invoke-virtual {v0, v2, v1}, Lcom/zalexdev/stryker/metasploit/Metasploit;->e(Lz3/f;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :goto_0
    return-void

    .line 228
    :pswitch_3
    sget v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->C:I

    .line 229
    .line 230
    iget-object v0, p0, Lw3/j;->b:Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 231
    .line 232
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-nez v3, :cond_6

    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/u0;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-static {v0, v0}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    new-instance v3, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;

    .line 248
    .line 249
    invoke-direct {v3}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;-><init>()V

    .line 250
    .line 251
    .line 252
    const v4, 0x7f0a0205

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v3, v1, v4}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->h(Z)I

    .line 259
    .line 260
    .line 261
    :goto_1
    return-void

    .line 262
    nop

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
