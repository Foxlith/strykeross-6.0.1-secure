.class public Lcom/zalexdev/stryker/cameradar/CameradarInstall;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic t:I


# instance fields
.field public a:Landroidx/fragment/app/a0;

.field public b:Landroid/content/Context;

.field public c:Ll4/l;

.field public d:Landroidx/fragment/app/u0;

.field public e:Lcom/google/android/material/button/MaterialButton;

.field public f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public g:Landroid/widget/ProgressBar;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Lcom/google/android/material/card/MaterialCardView;

.field public l:Landroid/widget/LinearLayout;

.field public m:Landroid/widget/TextView;

.field public n:Landroidx/recyclerview/widget/RecyclerView;

.field public p:Ln2/c;

.field public final q:Ljava/util/EnumMap;

.field public r:Z

.field public final s:Lf/d0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lr2/a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->q:Ljava/util/EnumMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->r:Z

    new-instance v0, Lf/d0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lf/d0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->s:Lf/d0;

    return-void
.end method


# virtual methods
.method public final d(Lq2/d;Lq2/c;)V
    .locals 8

    .line 1
    iput-object p2, p1, Lq2/d;->e:Lq2/c;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/16 v3, 0x8

    .line 11
    .line 12
    iget-object v4, p1, Lq2/d;->c:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    iget-object v5, p1, Lq2/d;->a:Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object v6, p1, Lq2/d;->b:Landroid/widget/ImageView;

    .line 17
    .line 18
    if-eq p2, v0, :cond_2

    .line 19
    .line 20
    const/4 v7, 0x2

    .line 21
    if-eq p2, v7, :cond_1

    .line 22
    .line 23
    const/4 v7, 0x3

    .line 24
    if-eq p2, v7, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->b:Landroid/content/Context;

    .line 27
    .line 28
    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    .line 29
    .line 30
    const v0, 0x7f060074

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v5, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_0
    iget-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->b:Landroid/content/Context;

    .line 48
    .line 49
    sget-object v7, Lx/g;->a:Ljava/lang/Object;

    .line 50
    .line 51
    const v7, 0x7f060302

    .line 52
    .line 53
    .line 54
    invoke-static {p2, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    const v2, 0x7f0800d0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    .line 69
    .line 70
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 71
    .line 72
    invoke-virtual {v6, p2, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v5, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    iget-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->b:Landroid/content/Context;

    .line 80
    .line 81
    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    .line 82
    .line 83
    const v0, 0x7f060073

    .line 84
    .line 85
    .line 86
    invoke-static {p2, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    const v0, 0x7f0800c9

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    .line 101
    .line 102
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 103
    .line 104
    invoke-virtual {v6, p2, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    iget-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->b:Landroid/content/Context;

    .line 109
    .line 110
    sget-object v7, Lx/g;->a:Ljava/lang/Object;

    .line 111
    .line 112
    const v7, 0x7f060316

    .line 113
    .line 114
    .line 115
    invoke-static {p2, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :goto_2
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p1, Lq2/d;->d:Landroid/widget/FrameLayout;

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 146
    .line 147
    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const/16 p2, 0x3c

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    .line 158
    .line 159
    :cond_3
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "\u00d7"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x9

    .line 11
    .line 12
    if-eqz v1, :cond_a

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "Refreshing package index"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sget-object v1, Lr2/a;->b:Lr2/a;

    .line 31
    .line 32
    sget-object v3, Lq2/c;->b:Lq2/c;

    .line 33
    .line 34
    if-nez v0, :cond_6

    .line 35
    .line 36
    const-string v0, "Installing dependencies"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    const-string v0, "Resolving latest cameradar release"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sget-object v4, Lr2/a;->c:Lr2/a;

    .line 52
    .line 53
    sget-object v5, Lq2/c;->c:Lq2/c;

    .line 54
    .line 55
    if-nez v0, :cond_8

    .line 56
    .line 57
    const-string v0, "Downloading"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_8

    .line 64
    .line 65
    const-string v0, "Target "

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_2
    const-string v0, "Unpacking binary"

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    sget-object v1, Lr2/a;->d:Lr2/a;

    .line 81
    .line 82
    if-nez v0, :cond_7

    .line 83
    .line 84
    const-string v0, "Checking dictionaries"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_3
    const-string v0, "Verify cameradar"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    invoke-virtual {p0, v1, v5}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->f(Lr2/a;Lq2/c;)V

    .line 102
    .line 103
    .line 104
    sget-object v0, Lr2/a;->e:Lr2/a;

    .line 105
    .line 106
    invoke-virtual {p0, v0, v3}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->f(Lr2/a;Lq2/c;)V

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->l(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_4
    const-string v0, "Could not resolve a release URL"

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    sget-object v3, Lq2/c;->d:Lq2/c;

    .line 120
    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    :goto_1
    invoke-virtual {p0, v4, v3}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->f(Lr2/a;Lq2/c;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    const-string v0, "No binary inside the archive"

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_6

    .line 134
    .line 135
    const-string v0, "cameradar is still missing"

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_9

    .line 142
    .line 143
    :cond_6
    :goto_2
    invoke-virtual {p0, v1, v3}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->f(Lr2/a;Lq2/c;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_7
    :goto_3
    invoke-virtual {p0, v4, v5}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->f(Lr2/a;Lq2/c;)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_8
    :goto_4
    invoke-virtual {p0, v1, v5}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->f(Lr2/a;Lq2/c;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_9
    :goto_5
    sget-object v0, Ln2/e;->b:Ln2/e;

    .line 156
    .line 157
    new-instance v1, Landroidx/emoji2/text/m;

    .line 158
    .line 159
    invoke-direct {v1, p0, v0, p1, v2}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v1}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->h(Ljava/lang/Runnable;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_a
    invoke-static {p1}, Ln2/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-nez v0, :cond_b

    .line 175
    .line 176
    invoke-static {p1}, Ln2/d;->a(Ljava/lang/String;)Ln2/e;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    new-instance v1, Landroidx/emoji2/text/m;

    .line 181
    .line 182
    invoke-direct {v1, p0, v0, p1, v2}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v1}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->h(Ljava/lang/Runnable;)V

    .line 186
    .line 187
    .line 188
    :cond_b
    return-void
.end method

.method public final f(Lr2/a;Lq2/c;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/emoji2/text/m;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "done"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->c:Ll4/l;

    .line 14
    .line 15
    const-string v0, "cameradar"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v3}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lr2/a;->e:Lr2/a;

    .line 21
    .line 22
    sget-object v0, Lq2/c;->c:Lq2/c;

    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->f(Lr2/a;Lq2/c;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->g:Landroid/widget/ProgressBar;

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->h:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->h:Landroid/widget/ImageView;

    .line 38
    .line 39
    const v0, 0x7f0800c9

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->h:Landroid/widget/ImageView;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->b:Landroid/content/Context;

    .line 48
    .line 49
    sget-object v3, Lx/g;->a:Ljava/lang/Object;

    .line 50
    .line 51
    const v3, 0x7f060073

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v3}, Lx/d;->a(Landroid/content/Context;I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 59
    .line 60
    invoke-virtual {p1, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->i:Landroid/widget/TextView;

    .line 69
    .line 70
    const v0, 0x7f1300f0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 77
    .line 78
    const v0, 0x7f1300e3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 85
    .line 86
    const v0, 0x7f0801b4

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 93
    .line 94
    new-instance v0, Lq2/a;

    .line 95
    .line 96
    const/4 v2, 0x2

    .line 97
    invoke-direct {v0, p0, v2}, Lq2/a;-><init>(Lcom/zalexdev/stryker/cameradar/CameradarInstall;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    const-string v0, "failed"

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->g:Landroid/widget/ProgressBar;

    .line 118
    .line 119
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->h:Landroid/widget/ImageView;

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->h:Landroid/widget/ImageView;

    .line 128
    .line 129
    const v0, 0x7f0800d0

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->h:Landroid/widget/ImageView;

    .line 136
    .line 137
    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->b:Landroid/content/Context;

    .line 138
    .line 139
    sget-object v4, Lx/g;->a:Ljava/lang/Object;

    .line 140
    .line 141
    const v4, 0x7f060302

    .line 142
    .line 143
    .line 144
    invoke-static {v0, v4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 149
    .line 150
    invoke-virtual {p1, v0, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->i:Landroid/widget/TextView;

    .line 159
    .line 160
    const v0, 0x7f1300f1

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 167
    .line 168
    const v0, 0x7f1300e4

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 175
    .line 176
    const v0, 0x7f080199

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 183
    .line 184
    new-instance v0, Lq2/a;

    .line 185
    .line 186
    invoke-direct {v0, p0, v3}, Lq2/a;-><init>(Lcom/zalexdev/stryker/cameradar/CameradarInstall;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 193
    .line 194
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_1
    const-string v0, "running"

    .line 199
    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_2

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->j()V

    .line 207
    .line 208
    .line 209
    :cond_2
    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->a:Landroidx/fragment/app/a0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->a:Landroidx/fragment/app/a0;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 4

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
    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->d:Landroidx/fragment/app/u0;

    .line 9
    .line 10
    invoke-static {v0, v0}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/zalexdev/stryker/localnetwork/LocalMain;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/zalexdev/stryker/localnetwork/LocalMain;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const v3, 0x7f0a0205

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->h(Z)I

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->e:Lcom/google/android/material/button/MaterialButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->j:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->k:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->i:Landroid/widget/TextView;

    const v1, 0x7f1300f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->j()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq2/b;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lq2/b;-><init>(Lcom/zalexdev/stryker/cameradar/CameradarInstall;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->h(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->p:Ln2/c;

    .line 14
    .line 15
    invoke-virtual {v0}, Ln2/c;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->b:Landroid/content/Context;

    .line 19
    .line 20
    const-string v1, "cameradar"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/zalexdev/stryker/install/InstallService;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lf/n0;

    const/16 v1, 0x17

    invoke-direct {v0, p0, p1, v1}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d005a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    iget-boolean v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->r:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->s:Lf/d0;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->r:Z

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iput-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->a:Landroidx/fragment/app/a0;

    .line 12
    .line 13
    new-instance p2, Ll4/l;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {p2, v0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->c:Ll4/l;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/u0;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->d:Landroidx/fragment/app/u0;

    .line 27
    .line 28
    const p2, 0x7f0a00e6

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 38
    .line 39
    const p2, 0x7f0a00ed

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 49
    .line 50
    const p2, 0x7f0a00ee

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Landroid/widget/ProgressBar;

    .line 58
    .line 59
    iput-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->g:Landroid/widget/ProgressBar;

    .line 60
    .line 61
    const p2, 0x7f0a00ec

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/widget/ImageView;

    .line 69
    .line 70
    iput-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->h:Landroid/widget/ImageView;

    .line 71
    .line 72
    const p2, 0x7f0a00ef

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Landroid/widget/TextView;

    .line 80
    .line 81
    iput-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->i:Landroid/widget/TextView;

    .line 82
    .line 83
    const p2, 0x7f0a00eb

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Landroid/widget/TextView;

    .line 91
    .line 92
    iput-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->j:Landroid/widget/TextView;

    .line 93
    .line 94
    const p2, 0x7f0a00e9

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    .line 102
    .line 103
    iput-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->k:Lcom/google/android/material/card/MaterialCardView;

    .line 104
    .line 105
    const p2, 0x7f0a00ea

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Landroid/widget/LinearLayout;

    .line 113
    .line 114
    iput-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->l:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    const p2, 0x7f0a00e7

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    check-cast p2, Landroid/widget/TextView;

    .line 124
    .line 125
    iput-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->m:Landroid/widget/TextView;

    .line 126
    .line 127
    const p2, 0x7f0a00e8

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 135
    .line 136
    iput-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 137
    .line 138
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 139
    .line 140
    invoke-direct {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Ln2/c;

    .line 147
    .line 148
    iget-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->b:Landroid/content/Context;

    .line 149
    .line 150
    invoke-direct {p1, p2}, Ln2/c;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    iput-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->p:Ln2/c;

    .line 154
    .line 155
    iget-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 156
    .line 157
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->b:Landroid/content/Context;

    .line 161
    .line 162
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iget-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->l:Landroid/widget/LinearLayout;

    .line 167
    .line 168
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 169
    .line 170
    .line 171
    iget-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->q:Ljava/util/EnumMap;

    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/util/EnumMap;->clear()V

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lr2/a;->values()[Lr2/a;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    array-length v1, v0

    .line 181
    const/4 v2, 0x0

    .line 182
    move v3, v2

    .line 183
    :goto_0
    if-ge v3, v1, :cond_0

    .line 184
    .line 185
    aget-object v4, v0, v3

    .line 186
    .line 187
    const v5, 0x7f0d0074

    .line 188
    .line 189
    .line 190
    iget-object v6, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->l:Landroid/widget/LinearLayout;

    .line 191
    .line 192
    invoke-virtual {p1, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    const v6, 0x7f0a05db

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    check-cast v6, Landroid/widget/TextView;

    .line 204
    .line 205
    const v7, 0x7f0a05d8

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    check-cast v7, Landroid/widget/ImageView;

    .line 213
    .line 214
    const v8, 0x7f0a05da

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    check-cast v8, Landroid/widget/ProgressBar;

    .line 222
    .line 223
    const v9, 0x7f0a05d9

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    check-cast v9, Landroid/widget/FrameLayout;

    .line 231
    .line 232
    iget v10, v4, Lr2/a;->a:I

    .line 233
    .line 234
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 235
    .line 236
    .line 237
    new-instance v10, Lq2/d;

    .line 238
    .line 239
    invoke-direct {v10, v6, v7, v8, v9}, Lq2/d;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V

    .line 240
    .line 241
    .line 242
    sget-object v6, Lq2/c;->a:Lq2/c;

    .line 243
    .line 244
    invoke-virtual {p0, v10, v6}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->d(Lq2/d;Lq2/c;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2, v4, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    iget-object v4, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->l:Landroid/widget/LinearLayout;

    .line 251
    .line 252
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 253
    .line 254
    .line 255
    add-int/lit8 v3, v3, 0x1

    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 259
    .line 260
    new-instance p2, Lq2/a;

    .line 261
    .line 262
    invoke-direct {p2, p0, v2}, Lq2/a;-><init>(Lcom/zalexdev/stryker/cameradar/CameradarInstall;I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    .line 267
    .line 268
    new-instance p1, Landroid/content/IntentFilter;

    .line 269
    .line 270
    const-string p2, "com.zalexdev.stryker.install.UPDATED"

    .line 271
    .line 272
    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->s:Lf/d0;

    .line 280
    .line 281
    invoke-static {p2, v0, p1}, Lx/g;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 282
    .line 283
    .line 284
    const/4 p1, 0x1

    .line 285
    iput-boolean p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->r:Z

    .line 286
    .line 287
    iget-object p2, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->b:Landroid/content/Context;

    .line 288
    .line 289
    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->c:Ll4/l;

    .line 290
    .line 291
    const-string v1, "cameradar"

    .line 292
    .line 293
    invoke-static {p2, v0, v1}, Lcom/zalexdev/stryker/install/InstallService;->h(Landroid/content/Context;Ll4/l;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    const-string v0, "running"

    .line 298
    .line 299
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-nez v0, :cond_2

    .line 304
    .line 305
    const-string v0, "failed"

    .line 306
    .line 307
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_1

    .line 312
    .line 313
    goto :goto_1

    .line 314
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    .line 315
    .line 316
    new-instance p2, Lq2/b;

    .line 317
    .line 318
    invoke-direct {p2, p0, v2}, Lq2/b;-><init>(Lcom/zalexdev/stryker/cameradar/CameradarInstall;I)V

    .line 319
    .line 320
    .line 321
    const-string v0, "cameradar-install-check"

    .line 322
    .line 323
    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 327
    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->p:Ln2/c;

    .line 331
    .line 332
    invoke-virtual {v0}, Ln2/c;->clear()V

    .line 333
    .line 334
    .line 335
    new-instance v0, Lq2/b;

    .line 336
    .line 337
    invoke-direct {v0, p0, p1}, Lq2/b;-><init>(Lcom/zalexdev/stryker/cameradar/CameradarInstall;I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->h(Ljava/lang/Runnable;)V

    .line 341
    .line 342
    .line 343
    iget-object p1, p0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->b:Landroid/content/Context;

    .line 344
    .line 345
    invoke-static {p1, v1}, Lcom/zalexdev/stryker/install/InstallService;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_3

    .line 358
    .line 359
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    check-cast v0, Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->e(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    goto :goto_2

    .line 369
    :cond_3
    invoke-virtual {p0, p2}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->g(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    :goto_3
    return-void
.end method
