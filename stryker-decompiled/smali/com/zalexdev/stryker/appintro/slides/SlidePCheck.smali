.class public Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public a:Landroidx/fragment/app/a0;

.field public b:Landroid/content/Context;

.field public c:Ll4/l;

.field public d:Landroidx/viewpager2/widget/ViewPager2;

.field public e:Lcom/google/android/material/card/MaterialCardView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Lcom/google/android/material/button/MaterialButton;

.field public i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Z

.field public v:Z

.field public final w:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->u:Z

    iput-boolean v0, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->v:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final d(Z)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->v:Z

    .line 3
    .line 4
    const v1, 0x7f08009b

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->h:Lcom/google/android/material/button/MaterialButton;

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->h:Lcom/google/android/material/button/MaterialButton;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->b:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v2, 0x7f13047e

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->h:Lcom/google/android/material/button/MaterialButton;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    array-length v3, p1

    .line 45
    move v4, v0

    .line 46
    :goto_0
    if-ge v4, v3, :cond_3

    .line 47
    .line 48
    aget-object v5, p1, v4

    .line 49
    .line 50
    const-string v6, "arm64-v8a"

    .line 51
    .line 52
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->v:Z

    .line 59
    .line 60
    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->h:Lcom/google/android/material/button/MaterialButton;

    .line 61
    .line 62
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->h:Lcom/google/android/material/button/MaterialButton;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->b:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const v2, 0x7f130533

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->h:Lcom/google/android/material/button/MaterialButton;

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->h:Lcom/google/android/material/button/MaterialButton;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->h:Lcom/google/android/material/button/MaterialButton;

    .line 98
    .line 99
    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->b:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const v1, 0x7f130532

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    :goto_2
    return-void
.end method

.method public final e(ZLandroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    move-object p4, p5

    .line 5
    :goto_0
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const-string p2, "OK"

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    const-string p2, "FAIL"

    .line 14
    .line 15
    :goto_1
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->b:Landroid/content/Context;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const p1, 0x7f060073

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    const p1, 0x7f060302

    .line 27
    .line 28
    .line 29
    :goto_2
    sget-object p4, Lx/g;->a:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {p2, p1}, Lx/d;->a(Landroid/content/Context;I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 53
    .line 54
    invoke-virtual {p2, p1, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/16 p2, 0x28

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method public final f(ZZZZZJ)V
    .locals 13

    .line 1
    move-object v6, p0

    .line 2
    move-wide/from16 v7, p6

    .line 3
    .line 4
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 5
    .line 6
    const/4 v9, 0x1

    .line 7
    const/4 v10, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :cond_0
    move v11, v10

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    array-length v1, v0

    .line 13
    move v2, v10

    .line 14
    :goto_0
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    aget-object v3, v0, v2

    .line 17
    .line 18
    const-string v4, "arm64-v8a"

    .line 19
    .line 20
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    move v11, v9

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v2, v6, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->j:Landroid/widget/TextView;

    .line 32
    .line 33
    iget-object v3, v6, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->k:Landroid/widget/TextView;

    .line 34
    .line 35
    const-string v4, "Superuser shell available"

    .line 36
    .line 37
    const-string v5, "su not detected \u2014 install Magisk or another root manager"

    .line 38
    .line 39
    move-object v0, p0

    .line 40
    move v1, p1

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->e(ZLandroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, v6, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->l:Landroid/widget/TextView;

    .line 45
    .line 46
    iget-object v3, v6, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->m:Landroid/widget/TextView;

    .line 47
    .line 48
    const-string v4, "Qualcomm + con_mode interface detected"

    .line 49
    .line 50
    const-string v5, "Monitor mode unlikely \u2014 capture/handshake tools may fail"

    .line 51
    .line 52
    move v1, p2

    .line 53
    invoke-virtual/range {v0 .. v5}, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->e(ZLandroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, v6, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->n:Landroid/widget/TextView;

    .line 57
    .line 58
    iget-object v3, v6, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->p:Landroid/widget/TextView;

    .line 59
    .line 60
    const-string v4, "USB host mode supported"

    .line 61
    .line 62
    const-string v5, "External adapters won\'t be usable on this device"

    .line 63
    .line 64
    move/from16 v1, p3

    .line 65
    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->e(ZLandroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    if-eqz p4, :cond_3

    .line 70
    .line 71
    if-eqz v11, :cond_3

    .line 72
    .line 73
    move v1, v9

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    move v1, v10

    .line 76
    :goto_2
    iget-object v2, v6, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->q:Landroid/widget/TextView;

    .line 77
    .line 78
    iget-object v3, v6, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->r:Landroid/widget/TextView;

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 86
    .line 87
    const-string v5, " \u00b7 arm64-v8a \u2014 no known quirks"

    .line 88
    .line 89
    invoke-static {v0, v4, v5}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    const-string v9, "an unknown CPU"

    .line 94
    .line 95
    if-eqz v11, :cond_4

    .line 96
    .line 97
    const-string v0, "Samsung stock ROM detected \u2014 wifi/local scan may misbehave"

    .line 98
    .line 99
    :goto_3
    move-object v12, v0

    .line 100
    goto :goto_6

    .line 101
    :cond_4
    const-string v0, " \u00b7 "

    .line 102
    .line 103
    invoke-static {v4, v0}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 108
    .line 109
    if-eqz v4, :cond_6

    .line 110
    .line 111
    array-length v12, v4

    .line 112
    if-nez v12, :cond_5

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_5
    aget-object v4, v4, v10

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_6
    :goto_4
    move-object v4, v9

    .line 119
    :goto_5
    const-string v12, " \u2014 Stryker is arm64-v8a only and will not run here"

    .line 120
    .line 121
    invoke-static {v0, v4, v12}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    goto :goto_3

    .line 126
    :goto_6
    move-object v0, p0

    .line 127
    move-object v4, v5

    .line 128
    move-object v5, v12

    .line 129
    invoke-virtual/range {v0 .. v5}, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->e(ZLandroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v2, v6, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->s:Landroid/widget/TextView;

    .line 133
    .line 134
    iget-object v3, v6, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->t:Landroid/widget/TextView;

    .line 135
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v1, " GB free on /data"

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v1, "Only "

    .line 156
    .line 157
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, " GB free \u2014 Debian chroot install needs ~4 GB"

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    move-object v0, p0

    .line 173
    move/from16 v1, p5

    .line 174
    .line 175
    invoke-virtual/range {v0 .. v5}, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->e(ZLandroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    if-nez v11, :cond_9

    .line 179
    .line 180
    iget-object v0, v6, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->g:Landroid/widget/TextView;

    .line 181
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v2, "This device reports "

    .line 185
    .line 186
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 190
    .line 191
    if-eqz v2, :cond_8

    .line 192
    .line 193
    array-length v3, v2

    .line 194
    if-nez v3, :cond_7

    .line 195
    .line 196
    goto :goto_7

    .line 197
    :cond_7
    aget-object v9, v2, v10

    .line 198
    .line 199
    :cond_8
    :goto_7
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v2, ". Stryker ships arm64-v8a binaries only \u2014 the chroot toolset cannot be installed here."

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    :cond_9
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .line 1
    const p3, 0x7f0d00c8

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->a:Landroidx/fragment/app/a0;

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->b:Landroid/content/Context;

    .line 23
    .line 24
    new-instance p3, Ll4/l;

    .line 25
    .line 26
    invoke-direct {p3, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->a:Landroidx/fragment/app/a0;

    .line 32
    .line 33
    const p3, 0x7f0a06a4

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Landroidx/viewpager2/widget/ViewPager2;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 43
    .line 44
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    new-instance p2, Lo2/k;

    .line 56
    .line 57
    invoke-direct {p2, p0, v0}, Lo2/k;-><init>(Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_1
    const p2, 0x7f0a010e

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    .line 72
    .line 73
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->e:Lcom/google/android/material/card/MaterialCardView;

    .line 74
    .line 75
    const p2, 0x7f0a00f9

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Landroid/widget/TextView;

    .line 83
    .line 84
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->f:Landroid/widget/TextView;

    .line 85
    .line 86
    const p2, 0x7f0a01ad

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    check-cast p2, Landroid/widget/TextView;

    .line 94
    .line 95
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->g:Landroid/widget/TextView;

    .line 96
    .line 97
    const p2, 0x7f0a0384

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 105
    .line 106
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->h:Lcom/google/android/material/button/MaterialButton;

    .line 107
    .line 108
    const p2, 0x7f0a04ea

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 116
    .line 117
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 118
    .line 119
    const p2, 0x7f0a02f6

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    check-cast p2, Landroid/widget/TextView;

    .line 127
    .line 128
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->j:Landroid/widget/TextView;

    .line 129
    .line 130
    const p2, 0x7f0a02f5

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    check-cast p2, Landroid/widget/TextView;

    .line 138
    .line 139
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->k:Landroid/widget/TextView;

    .line 140
    .line 141
    const p2, 0x7f0a02f4

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Landroid/widget/TextView;

    .line 149
    .line 150
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->l:Landroid/widget/TextView;

    .line 151
    .line 152
    const p2, 0x7f0a02f3

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Landroid/widget/TextView;

    .line 160
    .line 161
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->m:Landroid/widget/TextView;

    .line 162
    .line 163
    const p2, 0x7f0a02fa

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    check-cast p2, Landroid/widget/TextView;

    .line 171
    .line 172
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->n:Landroid/widget/TextView;

    .line 173
    .line 174
    const p2, 0x7f0a02f9

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    check-cast p2, Landroid/widget/TextView;

    .line 182
    .line 183
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->p:Landroid/widget/TextView;

    .line 184
    .line 185
    const p2, 0x7f0a02f2

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    check-cast p2, Landroid/widget/TextView;

    .line 193
    .line 194
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->q:Landroid/widget/TextView;

    .line 195
    .line 196
    const p2, 0x7f0a02f1

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    check-cast p2, Landroid/widget/TextView;

    .line 204
    .line 205
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->r:Landroid/widget/TextView;

    .line 206
    .line 207
    const p2, 0x7f0a02f8

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    check-cast p2, Landroid/widget/TextView;

    .line 215
    .line 216
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->s:Landroid/widget/TextView;

    .line 217
    .line 218
    const p2, 0x7f0a02f7

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    check-cast p2, Landroid/widget/TextView;

    .line 226
    .line 227
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->t:Landroid/widget/TextView;

    .line 228
    .line 229
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->h:Lcom/google/android/material/button/MaterialButton;

    .line 230
    .line 231
    new-instance p3, Lcom/nambimobile/widgets/efab/a;

    .line 232
    .line 233
    const/16 v1, 0x8

    .line 234
    .line 235
    invoke-direct {p3, p0, v1}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .line 240
    .line 241
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 242
    .line 243
    const-string p3, "pcheck_checked"

    .line 244
    .line 245
    invoke-virtual {p2, p3}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result p2

    .line 249
    if-eqz p2, :cond_3

    .line 250
    .line 251
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 252
    .line 253
    const-string p3, "pcheck_root"

    .line 254
    .line 255
    invoke-virtual {p2, p3}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result p2

    .line 259
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 260
    .line 261
    const-string v2, "pcheck_monitor"

    .line 262
    .line 263
    invoke-virtual {p3, v2}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 268
    .line 269
    const-string v2, "pcheck_usb"

    .line 270
    .line 271
    invoke-virtual {p3, v2}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 276
    .line 277
    const-string v2, "pcheck_manufacture"

    .line 278
    .line 279
    invoke-virtual {p3, v2}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    :try_start_0
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 284
    .line 285
    const-string v2, "pcheck_free_gb"

    .line 286
    .line 287
    invoke-virtual {p3, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p3

    .line 291
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 292
    .line 293
    .line 294
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    move-wide v8, v2

    .line 296
    goto :goto_1

    .line 297
    :catch_0
    const-wide/16 v2, 0x0

    .line 298
    .line 299
    goto :goto_0

    .line 300
    :goto_1
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 301
    .line 302
    const-string v2, "pcheck_space"

    .line 303
    .line 304
    invoke-virtual {p3, v2}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 305
    .line 306
    .line 307
    move-result p3

    .line 308
    const/4 v10, 0x1

    .line 309
    if-eqz p3, :cond_2

    .line 310
    .line 311
    const-wide/16 v2, 0x4

    .line 312
    .line 313
    cmp-long p3, v8, v2

    .line 314
    .line 315
    if-ltz p3, :cond_2

    .line 316
    .line 317
    move v7, v10

    .line 318
    goto :goto_2

    .line 319
    :cond_2
    move v7, v0

    .line 320
    :goto_2
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 321
    .line 322
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    .line 324
    .line 325
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->e:Lcom/google/android/material/card/MaterialCardView;

    .line 326
    .line 327
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 328
    .line 329
    .line 330
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->f:Landroid/widget/TextView;

    .line 331
    .line 332
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->g:Landroid/widget/TextView;

    .line 336
    .line 337
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 338
    .line 339
    .line 340
    move-object v2, p0

    .line 341
    move v3, p2

    .line 342
    invoke-virtual/range {v2 .. v9}, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->f(ZZZZZJ)V

    .line 343
    .line 344
    .line 345
    iput-boolean v10, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->u:Z

    .line 346
    .line 347
    invoke-virtual {p0, p2}, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->d(Z)V

    .line 348
    .line 349
    .line 350
    :cond_3
    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method
