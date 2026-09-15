.class public final synthetic Lm4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/vnc/VNCFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lm4/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lm4/b;->b:Lcom/zalexdev/stryker/vnc/VNCFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget p1, p0, Lm4/b;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v9, p0, Lm4/b;->b:Lcom/zalexdev/stryker/vnc/VNCFragment;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget p1, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 11
    .line 12
    invoke-virtual {v9}, Lcom/zalexdev/stryker/vnc/VNCFragment;->g()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/16 v0, 0x1a

    .line 17
    .line 18
    const-class v1, Lcom/zalexdev/stryker/vnc/VNCService;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    new-instance p1, Landroid/content/Intent;

    .line 23
    .line 24
    iget-object v2, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 25
    .line 26
    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "com.zalexdev.stryker.vnc.action.STOP"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    iget-object v1, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 35
    .line 36
    sget-object v2, Lx/g;->a:Ljava/lang/Object;

    .line 37
    .line 38
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    .line 40
    if-lt v2, v0, :cond_0

    .line 41
    .line 42
    invoke-static {v1, p1}, Lx/e;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->x:Landroid/widget/AutoCompleteTextView;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v2, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->z:Lcom/google/android/material/textfield/TextInputEditText;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    new-instance v3, Landroid/content/Intent;

    .line 71
    .line 72
    iget-object v4, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 73
    .line 74
    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .line 76
    .line 77
    const-string v1, "com.zalexdev.stryker.vnc.extra.resolution"

    .line 78
    .line 79
    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    const-string p1, "com.zalexdev.stryker.vnc.extra.port"

    .line 83
    .line 84
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    const-string p1, "com.zalexdev.stryker.vnc.action.START"

    .line 88
    .line 89
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    iget-object p1, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 93
    .line 94
    sget-object v1, Lx/g;->a:Ljava/lang/Object;

    .line 95
    .line 96
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    .line 98
    if-lt v1, v0, :cond_2

    .line 99
    .line 100
    invoke-static {p1, v3}, Lx/e;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 105
    .line 106
    .line 107
    :goto_0
    return-void

    .line 108
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 109
    .line 110
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 114
    .line 115
    iget-object v0, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 116
    .line 117
    invoke-direct {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    const-string v0, "VNC installer"

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object v0, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    const-string v0, "This will install XFCE + x11vnc inside the VM. ~600 MB download."

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    const-string v0, "This will install XFCE + x11vnc into the chroot. ~600 MB download."

    .line 141
    .line 142
    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    new-instance v0, Lm4/c;

    .line 147
    .line 148
    invoke-direct {v0, v9, v1}, Lm4/c;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 149
    .line 150
    .line 151
    const v1, 0x104000a

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :pswitch_1
    iget-boolean p1, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->u:Z

    .line 163
    .line 164
    xor-int/2addr p1, v0

    .line 165
    iput-boolean p1, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->u:Z

    .line 166
    .line 167
    invoke-virtual {v9}, Lcom/zalexdev/stryker/vnc/VNCFragment;->i()V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_2
    iget-object p1, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 172
    .line 173
    const-string v0, "vnc_passwd"

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    const-string v0, "VNC password"

    .line 180
    .line 181
    invoke-virtual {v9, v0, p1}, Lcom/zalexdev/stryker/vnc/VNCFragment;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_3
    iget-object p1, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->n:Landroid/widget/TextView;

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    const-string v0, "VNC port"

    .line 196
    .line 197
    invoke-virtual {v9, v0, p1}, Lcom/zalexdev/stryker/vnc/VNCFragment;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :pswitch_4
    iget-object p1, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->m:Landroid/widget/TextView;

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    const-string v0, "VNC host"

    .line 212
    .line 213
    invoke-virtual {v9, v0, p1}, Lcom/zalexdev/stryker/vnc/VNCFragment;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :pswitch_5
    sget p1, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 218
    .line 219
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 223
    .line 224
    iget-object v1, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 225
    .line 226
    invoke-direct {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    const-string v1, "Uninstall VNC?"

    .line 230
    .line 231
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    const-string v1, "Removes XFCE + x11vnc from the chroot. Disk space is freed; you can reinstall later."

    .line 236
    .line 237
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    new-instance v1, Lcom/stryker/terminal/setup/a;

    .line 242
    .line 243
    const/16 v2, 0x9

    .line 244
    .line 245
    invoke-direct {v1, v2}, Lcom/stryker/terminal/setup/a;-><init>(I)V

    .line 246
    .line 247
    .line 248
    const/high16 v2, 0x1040000

    .line 249
    .line 250
    invoke-virtual {p1, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    new-instance v1, Lm4/c;

    .line 255
    .line 256
    invoke-direct {v1, v9, v0}, Lm4/c;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 257
    .line 258
    .line 259
    const-string v0, "Uninstall"

    .line 260
    .line 261
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :pswitch_6
    iget-object p1, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->E:Lcom/google/android/material/button/MaterialButton;

    .line 270
    .line 271
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 272
    .line 273
    .line 274
    iget-object p1, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->A:Lcom/google/android/material/textfield/TextInputLayout;

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    if-eqz p1, :cond_4

    .line 281
    .line 282
    iget-object p1, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->A:Lcom/google/android/material/textfield/TextInputLayout;

    .line 283
    .line 284
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    :goto_2
    move-object v7, p1

    .line 297
    goto :goto_3

    .line 298
    :cond_4
    const-string p1, ""

    .line 299
    .line 300
    goto :goto_2

    .line 301
    :goto_3
    new-instance p1, Lv3/f;

    .line 302
    .line 303
    iget-object v4, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 304
    .line 305
    const-string v0, "x11vnc -storepasswd "

    .line 306
    .line 307
    const-string v1, " /root/.vnc/passwd"

    .line 308
    .line 309
    invoke-static {v0, v7, v1}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    const/4 v6, 0x1

    .line 314
    const/4 v8, 0x3

    .line 315
    move-object v2, p1

    .line 316
    move-object v3, v9

    .line 317
    invoke-direct/range {v2 .. v8}, Lv3/f;-><init>(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/Object;I)V

    .line 318
    .line 319
    .line 320
    iput-object p1, v9, Lcom/zalexdev/stryker/vnc/VNCFragment;->H:Lv3/f;

    .line 321
    .line 322
    return-void

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
