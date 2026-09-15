.class public Lcom/zalexdev/stryker/nuclei/InstallNuclei;
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

    const-class v1, Le4/a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->q:Ljava/util/EnumMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->r:Z

    new-instance v0, Lf/d0;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lf/d0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->s:Lf/d0;

    return-void
.end method


# virtual methods
.method public final d(Ld4/g;Ld4/f;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/16 v3, 0x8

    .line 9
    .line 10
    if-eq p2, v0, :cond_2

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    if-eq p2, v4, :cond_1

    .line 14
    .line 15
    const/4 v4, 0x3

    .line 16
    if-eq p2, v4, :cond_0

    .line 17
    .line 18
    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->b:Landroid/content/Context;

    .line 19
    .line 20
    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    .line 21
    .line 22
    const v0, 0x7f060074

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    iget-object v0, p1, Ld4/g;->c:Landroid/widget/ProgressBar;

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p1, Ld4/g;->b:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v0, p1, Ld4/g;->a:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->b:Landroid/content/Context;

    .line 46
    .line 47
    sget-object v4, Lx/g;->a:Ljava/lang/Object;

    .line 48
    .line 49
    const v4, 0x7f060302

    .line 50
    .line 51
    .line 52
    invoke-static {p2, v4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    iget-object v4, p1, Ld4/g;->c:Landroid/widget/ProgressBar;

    .line 57
    .line 58
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p1, Ld4/g;->b:Landroid/widget/ImageView;

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    const v2, 0x7f0800d0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    .line 71
    .line 72
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 73
    .line 74
    invoke-virtual {v3, p2, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    iget-object v2, p1, Ld4/g;->a:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->b:Landroid/content/Context;

    .line 84
    .line 85
    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    .line 86
    .line 87
    const v0, 0x7f060073

    .line 88
    .line 89
    .line 90
    invoke-static {p2, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    iget-object v0, p1, Ld4/g;->c:Landroid/widget/ProgressBar;

    .line 95
    .line 96
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p1, Ld4/g;->b:Landroid/widget/ImageView;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    const v3, 0x7f0800c9

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    .line 109
    .line 110
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 111
    .line 112
    invoke-virtual {v0, p2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->b:Landroid/content/Context;

    .line 117
    .line 118
    sget-object v4, Lx/g;->a:Ljava/lang/Object;

    .line 119
    .line 120
    const v4, 0x7f060316

    .line 121
    .line 122
    .line 123
    invoke-static {p2, v4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    iget-object v4, p1, Ld4/g;->c:Landroid/widget/ProgressBar;

    .line 128
    .line 129
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    iget-object v2, p1, Ld4/g;->b:Landroid/widget/ImageView;

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :goto_2
    iget-object v0, p1, Ld4/g;->a:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p1, Ld4/g;->d:Landroid/widget/FrameLayout;

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_3

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 160
    .line 161
    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    const/16 p2, 0x3c

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 171
    .line 172
    .line 173
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
    const/16 v2, 0x8

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
    const-string v0, "Installing download tools"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sget-object v1, Le4/a;->b:Le4/a;

    .line 31
    .line 32
    sget-object v3, Ld4/f;->b:Ld4/f;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->f(Le4/a;Ld4/f;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_1
    const-string v0, "Detecting architecture"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sget-object v4, Le4/a;->c:Le4/a;

    .line 48
    .line 49
    sget-object v5, Ld4/f;->c:Ld4/f;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    :goto_1
    invoke-virtual {p0, v1, v5}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->f(Le4/a;Ld4/f;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v4, v3}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->f(Le4/a;Ld4/f;)V

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_2
    const-string v0, "Resolving latest nuclei release"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    sget-object v1, Le4/a;->d:Le4/a;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    :goto_2
    invoke-virtual {p0, v4, v5}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->f(Le4/a;Ld4/f;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const-string v0, "Downloading "

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    sget-object v4, Le4/a;->e:Le4/a;

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    const-string v0, "Unpacking binary"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    sget-object v1, Le4/a;->f:Le4/a;

    .line 92
    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    const-string v0, "Fetching template library"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    sget-object v4, Le4/a;->g:Le4/a;

    .line 103
    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    const-string v0, "Template library ready"

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    invoke-virtual {p0, v4, v5}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->f(Le4/a;Ld4/f;)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_7
    const-string v0, "Template download failed"

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    sget-object v0, Ld4/f;->d:Ld4/f;

    .line 128
    .line 129
    invoke-virtual {p0, v4, v0}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->f(Le4/a;Ld4/f;)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_8
    const-string v0, "Verify nuclei"

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_9

    .line 140
    .line 141
    invoke-virtual {p0, v1, v5}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->f(Le4/a;Ld4/f;)V

    .line 142
    .line 143
    .line 144
    sget-object v0, Le4/a;->h:Le4/a;

    .line 145
    .line 146
    invoke-virtual {p0, v0, v3}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->f(Le4/a;Ld4/f;)V

    .line 147
    .line 148
    .line 149
    :cond_9
    :goto_3
    new-instance v0, Ld4/d;

    .line 150
    .line 151
    const/4 v1, 0x0

    .line 152
    invoke-direct {v0, p0, p1, v1}, Ld4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->h(Ljava/lang/Runnable;)V

    .line 156
    .line 157
    .line 158
    sget-object v0, Ln2/e;->b:Ln2/e;

    .line 159
    .line 160
    new-instance v1, Lv3/g;

    .line 161
    .line 162
    invoke-direct {v1, p0, v0, p1, v2}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v1}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->h(Ljava/lang/Runnable;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_a
    invoke-static {p1}, Ln2/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_b

    .line 178
    .line 179
    return-void

    .line 180
    :cond_b
    invoke-static {p1}, Ln2/d;->a(Ljava/lang/String;)Ln2/e;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    new-instance v1, Lv3/g;

    .line 185
    .line 186
    invoke-direct {v1, p0, v0, p1, v2}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v1}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->h(Ljava/lang/Runnable;)V

    .line 190
    .line 191
    .line 192
    return-void
.end method

.method public final f(Le4/a;Ld4/f;)V
    .locals 2

    .line 1
    new-instance v0, Lv3/g;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p1, p2, v1}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->h(Ljava/lang/Runnable;)V

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
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->c:Ll4/l;

    .line 14
    .line 15
    const-string v0, "nuclei"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v3}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Le4/a;->h:Le4/a;

    .line 21
    .line 22
    sget-object v0, Ld4/f;->c:Ld4/f;

    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->f(Le4/a;Ld4/f;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->g:Landroid/widget/ProgressBar;

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->h:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->h:Landroid/widget/ImageView;

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
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->h:Landroid/widget/ImageView;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->b:Landroid/content/Context;

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
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->i:Landroid/widget/TextView;

    .line 69
    .line 70
    const v0, 0x7f1304f7

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->e:Lcom/google/android/material/button/MaterialButton;

    .line 77
    .line 78
    const v0, 0x7f1304cd

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->e:Lcom/google/android/material/button/MaterialButton;

    .line 85
    .line 86
    const v0, 0x7f0801de

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->e:Lcom/google/android/material/button/MaterialButton;

    .line 93
    .line 94
    new-instance v0, Ld4/c;

    .line 95
    .line 96
    invoke-direct {v0, p0, v1}, Ld4/c;-><init>(Lcom/zalexdev/stryker/nuclei/InstallNuclei;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->e:Lcom/google/android/material/button/MaterialButton;

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    const-string v0, "failed"

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_1

    .line 115
    .line 116
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->g:Landroid/widget/ProgressBar;

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->h:Landroid/widget/ImageView;

    .line 122
    .line 123
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->h:Landroid/widget/ImageView;

    .line 127
    .line 128
    const v0, 0x7f0800d0

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->h:Landroid/widget/ImageView;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->b:Landroid/content/Context;

    .line 137
    .line 138
    sget-object v4, Lx/g;->a:Ljava/lang/Object;

    .line 139
    .line 140
    const v4, 0x7f060302

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 148
    .line 149
    invoke-virtual {p1, v0, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 153
    .line 154
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->i:Landroid/widget/TextView;

    .line 158
    .line 159
    const v0, 0x7f1304f8

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->e:Lcom/google/android/material/button/MaterialButton;

    .line 166
    .line 167
    const v0, 0x7f1304ce

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->e:Lcom/google/android/material/button/MaterialButton;

    .line 174
    .line 175
    const v0, 0x7f080199

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->e:Lcom/google/android/material/button/MaterialButton;

    .line 182
    .line 183
    new-instance v0, Ld4/c;

    .line 184
    .line 185
    invoke-direct {v0, p0, v3}, Ld4/c;-><init>(Lcom/zalexdev/stryker/nuclei/InstallNuclei;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->e:Lcom/google/android/material/button/MaterialButton;

    .line 192
    .line 193
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_1
    const-string v0, "running"

    .line 198
    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_2

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->j()V

    .line 206
    .line 207
    .line 208
    :cond_2
    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->a:Landroidx/fragment/app/a0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->a:Landroidx/fragment/app/a0;

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
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->d:Landroidx/fragment/app/u0;

    .line 9
    .line 10
    invoke-static {v0, v0}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/zalexdev/stryker/nuclei/NucleiMain;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/zalexdev/stryker/nuclei/NucleiMain;-><init>()V

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
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->e:Lcom/google/android/material/button/MaterialButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->j:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->k:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->i:Landroid/widget/TextView;

    const v1, 0x7f1304fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->j()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ld4/e;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Ld4/e;-><init>(Lcom/zalexdev/stryker/nuclei/InstallNuclei;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->h(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->p:Ln2/c;

    .line 14
    .line 15
    invoke-virtual {v0}, Ln2/c;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->b:Landroid/content/Context;

    .line 19
    .line 20
    const-string v1, "nuclei"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/zalexdev/stryker/install/InstallService;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0064

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    iget-boolean v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->r:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->s:Lf/d0;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->r:Z

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
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->a:Landroidx/fragment/app/a0;

    .line 12
    .line 13
    new-instance p2, Ll4/l;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {p2, v0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->c:Ll4/l;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/u0;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->d:Landroidx/fragment/app/u0;

    .line 27
    .line 28
    const p2, 0x7f0a0476

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
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->e:Lcom/google/android/material/button/MaterialButton;

    .line 38
    .line 39
    const p2, 0x7f0a048a

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
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 49
    .line 50
    const p2, 0x7f0a048b

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
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->g:Landroid/widget/ProgressBar;

    .line 60
    .line 61
    const p2, 0x7f0a0489

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
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->h:Landroid/widget/ImageView;

    .line 71
    .line 72
    const p2, 0x7f0a048d

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
    const p2, 0x7f0a048c

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    check-cast p2, Landroid/widget/TextView;

    .line 89
    .line 90
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->i:Landroid/widget/TextView;

    .line 91
    .line 92
    const p2, 0x7f0a0484

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Landroid/widget/TextView;

    .line 100
    .line 101
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->j:Landroid/widget/TextView;

    .line 102
    .line 103
    const p2, 0x7f0a0482

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    .line 111
    .line 112
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->k:Lcom/google/android/material/card/MaterialCardView;

    .line 113
    .line 114
    const p2, 0x7f0a0483

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Landroid/widget/LinearLayout;

    .line 122
    .line 123
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->l:Landroid/widget/LinearLayout;

    .line 124
    .line 125
    const p2, 0x7f0a0479

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    check-cast p2, Landroid/widget/TextView;

    .line 133
    .line 134
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->m:Landroid/widget/TextView;

    .line 135
    .line 136
    const p2, 0x7f0a047a

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    .line 145
    iput-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    .line 147
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 148
    .line 149
    invoke-direct {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 153
    .line 154
    .line 155
    new-instance p1, Ln2/c;

    .line 156
    .line 157
    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->b:Landroid/content/Context;

    .line 158
    .line 159
    invoke-direct {p1, p2}, Ln2/c;-><init>(Landroid/content/Context;)V

    .line 160
    .line 161
    .line 162
    iput-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->p:Ln2/c;

    .line 163
    .line 164
    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    .line 166
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->b:Landroid/content/Context;

    .line 170
    .line 171
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->l:Landroid/widget/LinearLayout;

    .line 176
    .line 177
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 178
    .line 179
    .line 180
    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->q:Ljava/util/EnumMap;

    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/util/EnumMap;->clear()V

    .line 183
    .line 184
    .line 185
    invoke-static {}, Le4/a;->values()[Le4/a;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    array-length v1, v0

    .line 190
    const/4 v2, 0x0

    .line 191
    move v3, v2

    .line 192
    :goto_0
    if-ge v3, v1, :cond_0

    .line 193
    .line 194
    aget-object v4, v0, v3

    .line 195
    .line 196
    const v5, 0x7f0d0074

    .line 197
    .line 198
    .line 199
    iget-object v6, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->l:Landroid/widget/LinearLayout;

    .line 200
    .line 201
    invoke-virtual {p1, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    const v6, 0x7f0a05db

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    check-cast v6, Landroid/widget/TextView;

    .line 213
    .line 214
    const v7, 0x7f0a05d8

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    check-cast v7, Landroid/widget/ImageView;

    .line 222
    .line 223
    const v8, 0x7f0a05da

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    check-cast v8, Landroid/widget/ProgressBar;

    .line 231
    .line 232
    const v9, 0x7f0a05d9

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    check-cast v9, Landroid/widget/FrameLayout;

    .line 240
    .line 241
    iget v10, v4, Le4/a;->a:I

    .line 242
    .line 243
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 244
    .line 245
    .line 246
    new-instance v10, Ld4/g;

    .line 247
    .line 248
    invoke-direct {v10, v6, v7, v8, v9}, Ld4/g;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V

    .line 249
    .line 250
    .line 251
    sget-object v6, Ld4/f;->a:Ld4/f;

    .line 252
    .line 253
    invoke-virtual {p0, v10, v6}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->d(Ld4/g;Ld4/f;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2, v4, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    iget-object v4, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->l:Landroid/widget/LinearLayout;

    .line 260
    .line 261
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    .line 263
    .line 264
    add-int/lit8 v3, v3, 0x1

    .line 265
    .line 266
    goto :goto_0

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->e:Lcom/google/android/material/button/MaterialButton;

    .line 268
    .line 269
    new-instance p2, Ld4/c;

    .line 270
    .line 271
    const/4 v0, 0x2

    .line 272
    invoke-direct {p2, p0, v0}, Ld4/c;-><init>(Lcom/zalexdev/stryker/nuclei/InstallNuclei;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    .line 277
    .line 278
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->c:Ll4/l;

    .line 279
    .line 280
    const-string p2, "nuclei"

    .line 281
    .line 282
    invoke-virtual {p1, p2}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_1

    .line 287
    .line 288
    invoke-virtual {p0}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->i()V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    .line 293
    .line 294
    const-string v0, "com.zalexdev.stryker.install.UPDATED"

    .line 295
    .line 296
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->s:Lf/d0;

    .line 304
    .line 305
    invoke-static {v0, v1, p1}, Lx/g;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 306
    .line 307
    .line 308
    const/4 p1, 0x1

    .line 309
    iput-boolean p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->r:Z

    .line 310
    .line 311
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->b:Landroid/content/Context;

    .line 312
    .line 313
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->c:Ll4/l;

    .line 314
    .line 315
    invoke-static {v0, v1, p2}, Lcom/zalexdev/stryker/install/InstallService;->h(Landroid/content/Context;Ll4/l;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    const-string v1, "running"

    .line 320
    .line 321
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-nez v1, :cond_3

    .line 326
    .line 327
    const-string v1, "failed"

    .line 328
    .line 329
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_2

    .line 334
    .line 335
    goto :goto_1

    .line 336
    :cond_2
    new-instance p1, Ljava/lang/Thread;

    .line 337
    .line 338
    new-instance p2, Ld4/e;

    .line 339
    .line 340
    invoke-direct {p2, p0, v2}, Ld4/e;-><init>(Lcom/zalexdev/stryker/nuclei/InstallNuclei;I)V

    .line 341
    .line 342
    .line 343
    const-string v0, "nuclei-install-check"

    .line 344
    .line 345
    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 349
    .line 350
    .line 351
    goto :goto_3

    .line 352
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->p:Ln2/c;

    .line 353
    .line 354
    invoke-virtual {v1}, Ln2/c;->clear()V

    .line 355
    .line 356
    .line 357
    new-instance v1, Ld4/e;

    .line 358
    .line 359
    invoke-direct {v1, p0, p1}, Ld4/e;-><init>(Lcom/zalexdev/stryker/nuclei/InstallNuclei;I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0, v1}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->h(Ljava/lang/Runnable;)V

    .line 363
    .line 364
    .line 365
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->b:Landroid/content/Context;

    .line 366
    .line 367
    invoke-static {p1, p2}, Lcom/zalexdev/stryker/install/InstallService;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 376
    .line 377
    .line 378
    move-result p2

    .line 379
    if-eqz p2, :cond_4

    .line 380
    .line 381
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object p2

    .line 385
    check-cast p2, Ljava/lang/String;

    .line 386
    .line 387
    invoke-virtual {p0, p2}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->e(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    goto :goto_2

    .line 391
    :cond_4
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->g(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    :goto_3
    return-void
.end method
