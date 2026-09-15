.class public Lcom/zalexdev/stryker/settings/SettingsHomeFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public a:Landroidx/fragment/app/a0;

.field public b:Landroid/content/Context;

.field public c:Ll4/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static d(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/LinearLayout;)V
    .locals 2

    .line 1
    new-instance v0, Li2/b;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Li2/b;-><init>(Lcom/google/android/material/switchmaterial/SwitchMaterial;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/zalexdev/stryker/settings/SettingsNew;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/zalexdev/stryker/settings/SettingsNew;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/u0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, v0}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/16 v1, 0x1003

    .line 21
    .line 22
    iput v1, v0, Landroidx/fragment/app/e1;->f:I

    .line 23
    .line 24
    const v1, 0x7f0a0596

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Landroidx/fragment/app/e1;->c(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->h(Z)I

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/u0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v1, Landroidx/fragment/app/a;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/u0;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p2}, Landroidx/fragment/app/e1;->c(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    const v0, 0x7f0a0205

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1, p2, v0}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroidx/fragment/app/a;->h(Z)I

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public final f(Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x8

    .line 4
    .line 5
    if-eq p4, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p4, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p4, v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    const p1, 0x7f0800bf

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->b:Landroid/content/Context;

    .line 28
    .line 29
    sget-object p4, Lx/g;->a:Ljava/lang/Object;

    .line 30
    .line 31
    const p4, 0x7f060302

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->b:Landroid/content/Context;

    .line 42
    .line 43
    :goto_0
    invoke-static {p1, p4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    const p1, 0x7f0800c9

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->b:Landroid/content/Context;

    .line 64
    .line 65
    sget-object p4, Lx/g;->a:Ljava/lang/Object;

    .line 66
    .line 67
    const p4, 0x7f060073

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const/high16 p2, 0x3f800000    # 1.0f

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    .line 99
    .line 100
    invoke-direct {p2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-wide/16 v0, 0x140

    .line 108
    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->b:Landroid/content/Context;

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->b:Landroid/content/Context;

    .line 126
    .line 127
    sget-object p2, Lx/g;->a:Ljava/lang/Object;

    .line 128
    .line 129
    const p2, 0x7f0602f2

    .line 130
    .line 131
    .line 132
    invoke-static {p1, p2}, Lx/d;->a(Landroid/content/Context;I)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    goto :goto_1

    .line 137
    :goto_2
    return-void
.end method

.method public final g(Landroid/view/View;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f88f5c3    # 1.07f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2d0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lh4/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lh4/h;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->a:Landroidx/fragment/app/a0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->a:Landroidx/fragment/app/a0;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object p3

    iput-object p3, p0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->a:Landroidx/fragment/app/a0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->b:Landroid/content/Context;

    new-instance v0, Ll4/l;

    invoke-direct {v0, p3}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    const p3, 0x7f0d00f7

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const v2, 0x7f0a054f

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 13
    .line 14
    const v3, 0x7f0a024e

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 22
    .line 23
    const v4, 0x7f0a00a7

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 31
    .line 32
    const v5, 0x7f0a00a9

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 40
    .line 41
    const v6, 0x7f0a00ac

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 49
    .line 50
    const v7, 0x7f0a04c0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 58
    .line 59
    const v8, 0x7f0a04bf

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Landroid/widget/LinearLayout;

    .line 67
    .line 68
    const v9, 0x7f0a00a8

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    check-cast v9, Landroid/widget/LinearLayout;

    .line 76
    .line 77
    const v10, 0x7f0a0550

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    check-cast v10, Landroid/widget/LinearLayout;

    .line 85
    .line 86
    const v11, 0x7f0a00a6

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    check-cast v11, Landroid/widget/LinearLayout;

    .line 94
    .line 95
    const v12, 0x7f0a00ad

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    check-cast v12, Landroid/widget/LinearLayout;

    .line 103
    .line 104
    const v13, 0x7f0a024f

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    check-cast v13, Landroid/widget/LinearLayout;

    .line 112
    .line 113
    const v14, 0x7f0a020f

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    check-cast v14, Landroid/widget/LinearLayout;

    .line 121
    .line 122
    const v15, 0x7f0a0211

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    check-cast v15, Landroid/widget/LinearLayout;

    .line 130
    .line 131
    move-object/from16 p2, v15

    .line 132
    .line 133
    const v15, 0x7f0a0210

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v15

    .line 140
    check-cast v15, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 141
    .line 142
    move-object/from16 v16, v14

    .line 143
    .line 144
    const v14, 0x7f0a0212

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    check-cast v14, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 152
    .line 153
    move-object/from16 v17, v14

    .line 154
    .line 155
    const v14, 0x7f0a067a

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v14

    .line 162
    check-cast v14, Landroid/widget/LinearLayout;

    .line 163
    .line 164
    move-object/from16 v18, v14

    .line 165
    .line 166
    const v14, 0x7f0a018d

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    check-cast v14, Landroid/widget/LinearLayout;

    .line 174
    .line 175
    move-object/from16 v19, v14

    .line 176
    .line 177
    const v14, 0x7f0a0183

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    check-cast v14, Landroid/widget/LinearLayout;

    .line 185
    .line 186
    move-object/from16 v20, v14

    .line 187
    .line 188
    const v14, 0x7f0a03b8

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v14

    .line 195
    check-cast v14, Landroid/widget/LinearLayout;

    .line 196
    .line 197
    move-object/from16 v21, v14

    .line 198
    .line 199
    const v14, 0x7f0a0108

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v14

    .line 206
    check-cast v14, Landroid/widget/LinearLayout;

    .line 207
    .line 208
    move-object/from16 v22, v14

    .line 209
    .line 210
    const v14, 0x7f0a0106

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v14

    .line 217
    check-cast v14, Landroid/widget/LinearLayout;

    .line 218
    .line 219
    move-object/from16 v23, v14

    .line 220
    .line 221
    const v14, 0x7f0a03b9

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v14

    .line 228
    check-cast v14, Landroid/widget/TextView;

    .line 229
    .line 230
    iget-object v1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 231
    .line 232
    invoke-virtual {v1}, Ll4/l;->S()Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 237
    .line 238
    .line 239
    iget-object v1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 240
    .line 241
    move-object/from16 v24, v15

    .line 242
    .line 243
    const-string v15, "autoBanner"

    .line 244
    .line 245
    iget-object v1, v1, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 246
    .line 247
    move-object/from16 v25, v13

    .line 248
    .line 249
    const/4 v13, 0x1

    .line 250
    invoke-interface {v1, v15, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 255
    .line 256
    .line 257
    iget-object v1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 258
    .line 259
    invoke-virtual {v1}, Ll4/l;->R()Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 264
    .line 265
    .line 266
    iget-object v1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 267
    .line 268
    const-string v15, "hide"

    .line 269
    .line 270
    invoke-virtual {v1, v15}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 275
    .line 276
    .line 277
    iget-object v1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 278
    .line 279
    const-string v15, "wifi"

    .line 280
    .line 281
    invoke-virtual {v1, v15}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 286
    .line 287
    .line 288
    iget-object v1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 289
    .line 290
    const-string v15, "autoScan"

    .line 291
    .line 292
    invoke-virtual {v1, v15}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 297
    .line 298
    .line 299
    iget-object v1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 300
    .line 301
    iget-object v1, v1, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 302
    .line 303
    const-string v15, "max_par"

    .line 304
    .line 305
    const/4 v13, 0x0

    .line 306
    invoke-interface {v1, v15, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    const/4 v15, 0x1

    .line 311
    if-ge v1, v15, :cond_0

    .line 312
    .line 313
    const/4 v1, 0x3

    .line 314
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .line 320
    .line 321
    new-instance v1, Lh4/b;

    .line 322
    .line 323
    invoke-direct {v1, v0, v13}, Lh4/b;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 327
    .line 328
    .line 329
    new-instance v1, Lh4/b;

    .line 330
    .line 331
    invoke-direct {v1, v0, v15}, Lh4/b;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 335
    .line 336
    .line 337
    new-instance v1, Lh4/b;

    .line 338
    .line 339
    const/4 v15, 0x2

    .line 340
    invoke-direct {v1, v0, v15}, Lh4/b;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v7, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 344
    .line 345
    .line 346
    new-instance v1, Lh4/b;

    .line 347
    .line 348
    const/4 v15, 0x3

    .line 349
    invoke-direct {v1, v0, v15}, Lh4/b;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 353
    .line 354
    .line 355
    new-instance v1, Lh4/b;

    .line 356
    .line 357
    const/4 v15, 0x4

    .line 358
    invoke-direct {v1, v0, v15}, Lh4/b;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v5, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 362
    .line 363
    .line 364
    new-instance v1, Lh4/b;

    .line 365
    .line 366
    const/4 v15, 0x5

    .line 367
    invoke-direct {v1, v0, v15}, Lh4/b;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 371
    .line 372
    .line 373
    invoke-static {v5, v9}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/LinearLayout;)V

    .line 374
    .line 375
    .line 376
    invoke-static {v2, v10}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/LinearLayout;)V

    .line 377
    .line 378
    .line 379
    invoke-static {v7, v8}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/LinearLayout;)V

    .line 380
    .line 381
    .line 382
    invoke-static {v4, v11}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/LinearLayout;)V

    .line 383
    .line 384
    .line 385
    invoke-static {v6, v12}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/LinearLayout;)V

    .line 386
    .line 387
    .line 388
    move-object/from16 v1, v25

    .line 389
    .line 390
    invoke-static {v3, v1}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/LinearLayout;)V

    .line 391
    .line 392
    .line 393
    iget-object v1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 394
    .line 395
    const-string v2, "geomac_bg_scan"

    .line 396
    .line 397
    invoke-virtual {v1, v2}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    move-object/from16 v2, v24

    .line 402
    .line 403
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 404
    .line 405
    .line 406
    iget-object v1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 407
    .line 408
    const-string v3, "geomac_satellite"

    .line 409
    .line 410
    invoke-virtual {v1, v3}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    move-object/from16 v3, v17

    .line 415
    .line 416
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 417
    .line 418
    .line 419
    new-instance v1, Lh4/b;

    .line 420
    .line 421
    const/4 v4, 0x6

    .line 422
    invoke-direct {v1, v0, v4}, Lh4/b;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 426
    .line 427
    .line 428
    new-instance v1, Lh4/b;

    .line 429
    .line 430
    const/4 v5, 0x7

    .line 431
    invoke-direct {v1, v0, v5}, Lh4/b;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 435
    .line 436
    .line 437
    move-object/from16 v1, v16

    .line 438
    .line 439
    invoke-static {v2, v1}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/LinearLayout;)V

    .line 440
    .line 441
    .line 442
    move-object/from16 v1, p2

    .line 443
    .line 444
    invoke-static {v3, v1}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/LinearLayout;)V

    .line 445
    .line 446
    .line 447
    const v1, 0x7f0a03d7

    .line 448
    .line 449
    .line 450
    move-object/from16 v2, p1

    .line 451
    .line 452
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    check-cast v1, Landroid/widget/LinearLayout;

    .line 457
    .line 458
    const v3, 0x7f0a03fb

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    check-cast v3, Landroid/widget/LinearLayout;

    .line 466
    .line 467
    const v5, 0x7f0a03d8

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    check-cast v5, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 475
    .line 476
    iget-object v6, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 477
    .line 478
    const-string v7, "msf"

    .line 479
    .line 480
    invoke-virtual {v6, v7}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 481
    .line 482
    .line 483
    move-result v6

    .line 484
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 485
    .line 486
    .line 487
    new-instance v6, Lh4/b;

    .line 488
    .line 489
    const/16 v7, 0x8

    .line 490
    .line 491
    invoke-direct {v6, v0, v7}, Lh4/b;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 495
    .line 496
    .line 497
    invoke-static {v5, v1}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/LinearLayout;)V

    .line 498
    .line 499
    .line 500
    new-instance v1, Lh4/c;

    .line 501
    .line 502
    invoke-direct {v1, v0, v4}, Lh4/c;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    .line 507
    .line 508
    new-instance v1, Lcom/google/android/material/snackbar/a;

    .line 509
    .line 510
    const/16 v3, 0x1a

    .line 511
    .line 512
    invoke-direct {v1, v0, v14, v3}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 513
    .line 514
    .line 515
    move-object/from16 v14, v21

    .line 516
    .line 517
    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    .line 519
    .line 520
    new-instance v1, Lh4/c;

    .line 521
    .line 522
    invoke-direct {v1, v0, v13}, Lh4/c;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 523
    .line 524
    .line 525
    move-object/from16 v14, v22

    .line 526
    .line 527
    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    .line 529
    .line 530
    new-instance v1, Lh4/c;

    .line 531
    .line 532
    const/4 v3, 0x1

    .line 533
    invoke-direct {v1, v0, v3}, Lh4/c;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 534
    .line 535
    .line 536
    move-object/from16 v14, v23

    .line 537
    .line 538
    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    .line 540
    .line 541
    new-instance v1, Lh4/c;

    .line 542
    .line 543
    const/4 v3, 0x2

    .line 544
    invoke-direct {v1, v0, v3}, Lh4/c;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 545
    .line 546
    .line 547
    move-object/from16 v14, v20

    .line 548
    .line 549
    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    .line 551
    .line 552
    const v1, 0x7f0a01cd

    .line 553
    .line 554
    .line 555
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    check-cast v1, Landroid/widget/LinearLayout;

    .line 560
    .line 561
    const v3, 0x7f0a06e5

    .line 562
    .line 563
    .line 564
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    check-cast v2, Landroid/widget/LinearLayout;

    .line 569
    .line 570
    iget-object v3, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 571
    .line 572
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    invoke-static {v3}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 576
    .line 577
    .line 578
    move-result v3

    .line 579
    if-eqz v3, :cond_1

    .line 580
    .line 581
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 582
    .line 583
    .line 584
    new-instance v1, Lh4/c;

    .line 585
    .line 586
    const/4 v3, 0x3

    .line 587
    invoke-direct {v1, v0, v3}, Lh4/c;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    .line 592
    .line 593
    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 595
    .line 596
    .line 597
    :goto_0
    iget-object v1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 598
    .line 599
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    .line 601
    .line 602
    invoke-static {v1}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    move-object/from16 v14, v18

    .line 607
    .line 608
    if-eqz v1, :cond_2

    .line 609
    .line 610
    invoke-virtual {v14, v7}, Landroid/view/View;->setVisibility(I)V

    .line 611
    .line 612
    .line 613
    move-object/from16 v1, v19

    .line 614
    .line 615
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 616
    .line 617
    .line 618
    goto :goto_1

    .line 619
    :cond_2
    move-object/from16 v1, v19

    .line 620
    .line 621
    new-instance v2, Lh4/c;

    .line 622
    .line 623
    const/4 v3, 0x4

    .line 624
    invoke-direct {v2, v0, v3}, Lh4/c;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v14, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    .line 629
    .line 630
    new-instance v2, Lh4/c;

    .line 631
    .line 632
    invoke-direct {v2, v0, v15}, Lh4/c;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    .line 637
    .line 638
    :goto_1
    return-void
.end method
