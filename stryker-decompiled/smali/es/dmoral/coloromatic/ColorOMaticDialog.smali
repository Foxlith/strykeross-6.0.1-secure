.class public Les/dmoral/coloromatic/ColorOMaticDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# instance fields
.field public a:Lv/f;

.field public b:Ls4/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static e(ILq4/c;Lp4/b;Z)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_initial_color"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "arg_color_mode_id"

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "arg_indicator_mode"

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "arg_show_color_indicator"

    invoke-virtual {v0, p0, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "arg_indicator_mode"

    .line 6
    .line 7
    const-string v3, "arg_color_mode_id"

    .line 8
    .line 9
    const-string v4, "arg_show_color_indicator"

    .line 10
    .line 11
    const-string v5, "arg_initial_color"

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ls4/d;

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v6, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v5, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    invoke-static {}, Lq4/c;->values()[Lq4/c;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v5, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    aget-object v9, v4, v3

    .line 46
    .line 47
    invoke-static {}, Lp4/b;->values()[Lp4/b;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    aget-object v10, v3, v2

    .line 60
    .line 61
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    move-object v6, v1

    .line 66
    invoke-direct/range {v6 .. v11}, Ls4/d;-><init>(IZLq4/c;Lp4/b;Landroidx/fragment/app/a0;)V

    .line 67
    .line 68
    .line 69
    iput-object v1, v0, Les/dmoral/coloromatic/ColorOMaticDialog;->b:Ls4/d;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance v6, Ls4/d;

    .line 73
    .line 74
    const v7, -0x777778

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v5, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v14

    .line 85
    invoke-static {}, Lq4/c;->values()[Lq4/c;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    aget-object v15, v4, v3

    .line 94
    .line 95
    invoke-static {}, Lp4/b;->values()[Lp4/b;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    aget-object v16, v3, v1

    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 106
    .line 107
    .line 108
    move-result-object v17

    .line 109
    move-object v12, v6

    .line 110
    invoke-direct/range {v12 .. v17}, Ls4/d;-><init>(IZLq4/c;Lp4/b;Landroidx/fragment/app/a0;)V

    .line 111
    .line 112
    .line 113
    iput-object v6, v0, Les/dmoral/coloromatic/ColorOMaticDialog;->b:Ls4/d;

    .line 114
    .line 115
    :goto_0
    iget-object v1, v0, Les/dmoral/coloromatic/ColorOMaticDialog;->b:Ls4/d;

    .line 116
    .line 117
    new-instance v2, Lg3/b;

    .line 118
    .line 119
    const/4 v3, 0x7

    .line 120
    invoke-direct {v2, v0, v3}, Lg3/b;-><init>(Ljava/lang/Object;I)V

    .line 121
    .line 122
    .line 123
    const v3, 0x7f0a00e2

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Landroid/widget/LinearLayout;

    .line 131
    .line 132
    const v4, 0x7f0a04db

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Landroid/widget/TextView;

    .line 140
    .line 141
    const v5, 0x7f0a041f

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    check-cast v5, Landroid/widget/TextView;

    .line 149
    .line 150
    const/4 v6, 0x0

    .line 151
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    new-instance v7, Landroid/util/TypedValue;

    .line 159
    .line 160
    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    const v8, 0x1010435

    .line 168
    .line 169
    .line 170
    const/4 v9, 0x1

    .line 171
    invoke-virtual {v3, v8, v7, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 172
    .line 173
    .line 174
    iget v3, v7, Landroid/util/TypedValue;->data:I

    .line 175
    .line 176
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    new-instance v7, Landroid/util/TypedValue;

    .line 184
    .line 185
    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v3, v8, v7, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 193
    .line 194
    .line 195
    iget v3, v7, Landroid/util/TypedValue;->data:I

    .line 196
    .line 197
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    .line 199
    .line 200
    new-instance v3, Ls4/c;

    .line 201
    .line 202
    invoke-direct {v3, v1, v2, v6}, Ls4/c;-><init>(Ls4/d;Lg3/b;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    .line 207
    .line 208
    new-instance v3, Ls4/c;

    .line 209
    .line 210
    invoke-direct {v3, v1, v2, v9}, Ls4/c;-><init>(Ls4/d;Lg3/b;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    new-instance v1, Lf/m;

    .line 217
    .line 218
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    invoke-direct {v1, v2, v3}, Lf/m;-><init>(Landroid/content/Context;I)V

    .line 227
    .line 228
    .line 229
    iget-object v2, v0, Les/dmoral/coloromatic/ColorOMaticDialog;->b:Ls4/d;

    .line 230
    .line 231
    invoke-virtual {v1, v2}, Lf/m;->setView(Landroid/view/View;)Lf/m;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Lf/m;->create()Lf/n;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    new-instance v2, Lp4/a;

    .line 239
    .line 240
    invoke-direct {v2, v0, v1}, Lp4/a;-><init>(Les/dmoral/coloromatic/ColorOMaticDialog;Lf/n;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 244
    .line 245
    .line 246
    return-object v1
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Les/dmoral/coloromatic/ColorOMaticDialog;->a:Lv/f;

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Les/dmoral/coloromatic/ColorOMaticDialog;->b:Ls4/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls4/d;->getCurrentColor()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Les/dmoral/coloromatic/ColorOMaticDialog;->b:Ls4/d;

    .line 8
    .line 9
    invoke-virtual {v1}, Ls4/d;->getColorMode()Lq4/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Les/dmoral/coloromatic/ColorOMaticDialog;->b:Ls4/d;

    .line 14
    .line 15
    invoke-virtual {v2}, Ls4/d;->getIndicatorMode()Lp4/b;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Les/dmoral/coloromatic/ColorOMaticDialog;->b:Ls4/d;

    .line 20
    .line 21
    iget-boolean v3, v3, Ls4/d;->d:Z

    .line 22
    .line 23
    invoke-static {v0, v1, v2, v3}, Les/dmoral/coloromatic/ColorOMaticDialog;->e(ILq4/c;Lp4/b;Z)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
