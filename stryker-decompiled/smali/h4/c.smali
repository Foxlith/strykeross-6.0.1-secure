.class public final synthetic Lh4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lh4/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lh4/c;->b:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lh4/c;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lh4/c;->b:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p1, v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->a:Landroidx/fragment/app/a0;

    .line 10
    .line 11
    instance-of v0, p1, Lcom/zalexdev/stryker/MainActivity;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    check-cast v0, Lcom/zalexdev/stryker/MainActivity;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/zalexdev/stryker/MainActivity;->f:Lz3/d;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance p1, Ljava/lang/Thread;

    .line 23
    .line 24
    new-instance v2, Lz3/a;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-direct {v2, v0, v3}, Lz3/a;-><init>(Lz3/d;I)V

    .line 28
    .line 29
    .line 30
    const-string v0, "msf-stop"

    .line 31
    .line 32
    invoke-direct {p1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 36
    .line 37
    .line 38
    iget-object p1, v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 39
    .line 40
    iget-object v0, v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->a:Landroidx/fragment/app/a0;

    .line 41
    .line 42
    const v2, 0x7f1305e7

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1, v0, v1}, Ll4/l;->q0(Landroid/app/Activity;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 54
    .line 55
    const v2, 0x7f1305e4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, p1, v1}, Ll4/l;->q0(Landroid/app/Activity;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object p1, v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->b:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const v2, 0x7f0d0042

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 80
    .line 81
    iget-object v2, v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->b:Landroid/content/Context;

    .line 82
    .line 83
    invoke-direct {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Lf/n;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const/4 v3, 0x0

    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 106
    .line 107
    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    .line 112
    .line 113
    :cond_1
    const v2, 0x7f0a0189

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    new-instance v4, Lh4/d;

    .line 121
    .line 122
    invoke-direct {v4, v0, v3}, Lh4/d;-><init>(Lf/n;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    const v2, 0x7f0a018a

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    new-instance v3, Lcom/google/android/material/snackbar/a;

    .line 136
    .line 137
    const/16 v4, 0x1b

    .line 138
    .line 139
    invoke-direct {v3, v1, v0, v4}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    new-instance v2, Lh4/e;

    .line 146
    .line 147
    invoke-direct {v2, v1, p1}, Lh4/e;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;Landroid/view/View;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :pswitch_1
    sget p1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d:I

    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 163
    .line 164
    iget-object v2, v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->b:Landroid/content/Context;

    .line 165
    .line 166
    invoke-direct {p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 167
    .line 168
    .line 169
    const v2, 0x7f1305f6

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    const v2, 0x7f1305f5

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    new-instance v2, Lcom/stryker/terminal/a;

    .line 184
    .line 185
    const/4 v3, 0x3

    .line 186
    invoke-direct {v2, v1, v3}, Lcom/stryker/terminal/a;-><init>(Ljava/lang/Object;I)V

    .line 187
    .line 188
    .line 189
    const v1, 0x7f1305fa

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    const/high16 v1, 0x1040000

    .line 197
    .line 198
    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :pswitch_2
    sget p1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d:I

    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    new-instance p1, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 212
    .line 213
    invoke-direct {p1}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v0, "vm"

    .line 217
    .line 218
    invoke-virtual {v1, p1, v0}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :pswitch_3
    sget p1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d:I

    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    new-instance p1, Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 228
    .line 229
    invoke-direct {p1}, Lcom/zalexdev/stryker/logger/LoggerFragment;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string v0, "logs"

    .line 233
    .line 234
    invoke-virtual {v1, p1, v0}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :pswitch_4
    sget p1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d:I

    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    new-instance p1, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;

    .line 244
    .line 245
    invoke-direct {p1}, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v0, "cmd"

    .line 249
    .line 250
    invoke-virtual {v1, p1, v0}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :pswitch_5
    sget p1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d:I

    .line 255
    .line 256
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    new-instance p1, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;

    .line 260
    .line 261
    invoke-direct {p1}, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v0, "wifi"

    .line 265
    .line 266
    invoke-virtual {v1, p1, v0}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
