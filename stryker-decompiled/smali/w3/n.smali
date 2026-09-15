.class public abstract Lw3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/app/Activity;Ll4/l;)V
    .locals 18

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    move-object/from16 v6, p0

    .line 4
    .line 5
    invoke-direct {v0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const v1, 0x7f0d00a2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    .line 29
    const/4 v3, -0x1

    .line 30
    const/4 v4, -0x2

    .line 31
    invoke-virtual {v1, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const v1, 0x7f0a04ae

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/google/android/material/chip/ChipGroup;

    .line 42
    .line 43
    const v3, 0x7f0a04b6

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 51
    .line 52
    const v4, 0x7f0a0675

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 60
    .line 61
    const v5, 0x7f0a02f0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Lcom/google/android/material/textfield/TextInputEditText;

    .line 69
    .line 70
    const v7, 0x7f0a04d5

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    check-cast v7, Lcom/google/android/material/textfield/TextInputEditText;

    .line 78
    .line 79
    const v8, 0x7f0a01ef

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    .line 87
    .line 88
    const v9, 0x7f0a0351

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    move-object v15, v9

    .line 96
    check-cast v15, Lcom/google/android/material/button/MaterialButton;

    .line 97
    .line 98
    const v9, 0x7f0a00f4

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    move-object v14, v9

    .line 106
    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 107
    .line 108
    const v9, 0x7f0a04eb

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    check-cast v9, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 116
    .line 117
    const v10, 0x7f0a03f2

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    check-cast v10, Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 125
    .line 126
    const v11, 0x7f0a04b5

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    check-cast v11, Landroid/widget/TextView;

    .line 134
    .line 135
    const v12, 0x7f0a020a

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    check-cast v12, Landroid/widget/TextView;

    .line 143
    .line 144
    const v13, 0x7f0a04a8

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    const-string v2, "windows apk powershell python linux php perl tomcat osx java bash asp aspx"

    .line 152
    .line 153
    const-string v6, " "

    .line 154
    .line 155
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v4, v2}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setSimpleItems([Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string v2, "windows"

    .line 163
    .line 164
    const/4 v6, 0x0

    .line 165
    invoke-virtual {v4, v2, v6}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 166
    .line 167
    .line 168
    move-object/from16 v2, p2

    .line 169
    .line 170
    iget-object v2, v2, Ll4/l;->c:Landroid/content/Context;

    .line 171
    .line 172
    const-string v6, "wifi"

    .line 173
    .line 174
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 179
    .line 180
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-static {v2}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    const-string v2, "4444"

    .line 196
    .line 197
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    const-string v2, "payload"

    .line 201
    .line 202
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    new-instance v2, Lp2/i;

    .line 206
    .line 207
    const/4 v6, 0x3

    .line 208
    invoke-direct {v2, v4, v3, v6}, Lp2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v2}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V

    .line 212
    .line 213
    .line 214
    const v2, 0x7f0a04b2

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Lcom/google/android/material/chip/Chip;

    .line 222
    .line 223
    const/4 v2, 0x1

    .line 224
    invoke-virtual {v1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 225
    .line 226
    .line 227
    new-array v6, v2, [Ll4/c;

    .line 228
    .line 229
    const/4 v1, 0x0

    .line 230
    const/4 v2, 0x0

    .line 231
    aput-object v1, v6, v2

    .line 232
    .line 233
    new-instance v3, Lw3/l;

    .line 234
    .line 235
    move-object v1, v3

    .line 236
    move-object v2, v4

    .line 237
    move-object v4, v3

    .line 238
    move-object v3, v5

    .line 239
    move-object v5, v4

    .line 240
    move-object v4, v7

    .line 241
    move-object v7, v5

    .line 242
    move-object v5, v8

    .line 243
    move-object v8, v6

    .line 244
    move-object/from16 v6, p0

    .line 245
    .line 246
    move-object/from16 v16, v0

    .line 247
    .line 248
    move-object v0, v7

    .line 249
    move-object v7, v10

    .line 250
    move-object v10, v8

    .line 251
    move-object v8, v9

    .line 252
    move-object v9, v13

    .line 253
    move-object/from16 p0, v10

    .line 254
    .line 255
    move-object v10, v12

    .line 256
    move-object v12, v15

    .line 257
    move-object/from16 v13, p0

    .line 258
    .line 259
    move-object/from16 v17, v14

    .line 260
    .line 261
    move-object/from16 v14, p1

    .line 262
    .line 263
    invoke-direct/range {v1 .. v14}, Lw3/l;-><init>(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/content/Context;Lcom/facebook/shimmer/ShimmerFrameLayout;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;[Ll4/c;Landroid/app/Activity;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .line 268
    .line 269
    new-instance v0, Lcom/google/android/material/snackbar/a;

    .line 270
    .line 271
    const/16 v1, 0x17

    .line 272
    .line 273
    move-object/from16 v3, p0

    .line 274
    .line 275
    move-object/from16 v2, v16

    .line 276
    .line 277
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 278
    .line 279
    .line 280
    move-object/from16 v9, v17

    .line 281
    .line 282
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 286
    .line 287
    .line 288
    return-void
.end method
