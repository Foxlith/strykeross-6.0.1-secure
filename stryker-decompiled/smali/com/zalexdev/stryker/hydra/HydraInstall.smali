.class public Lcom/zalexdev/stryker/hydra/HydraInstall;
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

    const-class v1, Lo3/a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->q:Ljava/util/EnumMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->r:Z

    new-instance v0, Lf/d0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lf/d0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->s:Lf/d0;

    return-void
.end method


# virtual methods
.method public final d(Ln3/p;Ln3/o;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    iget-object v4, p1, Ln3/p;->c:Landroid/widget/ProgressBar;

    .line 14
    .line 15
    iget-object v5, p1, Ln3/p;->a:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object v6, p1, Ln3/p;->b:Landroid/widget/ImageView;

    .line 18
    .line 19
    if-eq p2, v0, :cond_2

    .line 20
    .line 21
    const/4 v7, 0x2

    .line 22
    if-eq p2, v7, :cond_1

    .line 23
    .line 24
    const/4 v7, 0x3

    .line 25
    if-eq p2, v7, :cond_0

    .line 26
    .line 27
    iget-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->b:Landroid/content/Context;

    .line 28
    .line 29
    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    .line 30
    .line 31
    const v0, 0x7f060074

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {v5, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_0
    iget-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->b:Landroid/content/Context;

    .line 49
    .line 50
    sget-object v7, Lx/g;->a:Ljava/lang/Object;

    .line 51
    .line 52
    const v7, 0x7f060302

    .line 53
    .line 54
    .line 55
    invoke-static {p2, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    const v2, 0x7f0800d0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    .line 70
    .line 71
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 72
    .line 73
    invoke-virtual {v6, p2, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-virtual {v5, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_1
    iget-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->b:Landroid/content/Context;

    .line 81
    .line 82
    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    .line 83
    .line 84
    const v0, 0x7f060073

    .line 85
    .line 86
    .line 87
    invoke-static {p2, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    const v0, 0x7f0800c9

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    .line 102
    .line 103
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 104
    .line 105
    invoke-virtual {v6, p2, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    iget-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->b:Landroid/content/Context;

    .line 110
    .line 111
    sget-object v7, Lx/g;->a:Ljava/lang/Object;

    .line 112
    .line 113
    const v7, 0x7f060316

    .line 114
    .line 115
    .line 116
    invoke-static {p2, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :goto_2
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p1, Ln3/p;->d:Landroid/widget/FrameLayout;

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_3

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 147
    .line 148
    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const/16 p2, 0x3c

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 158
    .line 159
    .line 160
    :cond_3
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 7

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
    const/16 v2, 0x16

    .line 11
    .line 12
    if-eqz v1, :cond_4

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
    sget-object v1, Lo3/a;->b:Lo3/a;

    .line 31
    .line 32
    sget-object v3, Ln3/o;->b:Ln3/o;

    .line 33
    .line 34
    const/16 v4, 0xd

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v1, v3}, Lcom/zalexdev/stryker/hydra/HydraInstall;->f(Lo3/a;Ln3/o;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lw2/h;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1, v4}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/hydra/HydraInstall;->h(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const-string v0, "Installing hydra"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sget-object v5, Lo3/a;->c:Lo3/a;

    .line 57
    .line 58
    sget-object v6, Ln3/o;->c:Ln3/o;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0, v1, v6}, Lcom/zalexdev/stryker/hydra/HydraInstall;->f(Lo3/a;Ln3/o;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v5, v3}, Lcom/zalexdev/stryker/hydra/HydraInstall;->f(Lo3/a;Ln3/o;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lw2/h;

    .line 69
    .line 70
    invoke-direct {v0, p0, p1, v4}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const-string v0, "Done installing"

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0, v5, v6}, Lcom/zalexdev/stryker/hydra/HydraInstall;->f(Lo3/a;Ln3/o;)V

    .line 83
    .line 84
    .line 85
    sget-object v0, Lo3/a;->d:Lo3/a;

    .line 86
    .line 87
    invoke-virtual {p0, v0, v3}, Lcom/zalexdev/stryker/hydra/HydraInstall;->f(Lo3/a;Ln3/o;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    :goto_1
    sget-object v0, Ln2/e;->b:Ln2/e;

    .line 91
    .line 92
    new-instance v1, Landroidx/emoji2/text/m;

    .line 93
    .line 94
    invoke-direct {v1, p0, v0, p1, v2}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v1}, Lcom/zalexdev/stryker/hydra/HydraInstall;->h(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    invoke-static {p1}, Ln2/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_5

    .line 110
    .line 111
    invoke-static {p1}, Ln2/d;->a(Ljava/lang/String;)Ln2/e;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v1, Landroidx/emoji2/text/m;

    .line 116
    .line 117
    invoke-direct {v1, p0, v0, p1, v2}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v1}, Lcom/zalexdev/stryker/hydra/HydraInstall;->h(Ljava/lang/Runnable;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    return-void
.end method

.method public final f(Lo3/a;Ln3/o;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/emoji2/text/m;

    const/16 v1, 0x17

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/hydra/HydraInstall;->h(Ljava/lang/Runnable;)V

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
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->c:Ll4/l;

    .line 14
    .line 15
    const-string v0, "hydra"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v3}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lo3/a;->d:Lo3/a;

    .line 21
    .line 22
    sget-object v0, Ln3/o;->c:Ln3/o;

    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/zalexdev/stryker/hydra/HydraInstall;->f(Lo3/a;Ln3/o;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->g:Landroid/widget/ProgressBar;

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->h:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->h:Landroid/widget/ImageView;

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
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->h:Landroid/widget/ImageView;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->b:Landroid/content/Context;

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
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->i:Landroid/widget/TextView;

    .line 69
    .line 70
    const v0, 0x7f1302ac

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 77
    .line 78
    const v0, 0x7f13028c

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->e:Lcom/google/android/material/button/MaterialButton;

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
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 93
    .line 94
    new-instance v0, Ln3/m;

    .line 95
    .line 96
    const/4 v2, 0x2

    .line 97
    invoke-direct {v0, p0, v2}, Ln3/m;-><init>(Lcom/zalexdev/stryker/hydra/HydraInstall;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->e:Lcom/google/android/material/button/MaterialButton;

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
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->g:Landroid/widget/ProgressBar;

    .line 118
    .line 119
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->h:Landroid/widget/ImageView;

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->h:Landroid/widget/ImageView;

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
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->h:Landroid/widget/ImageView;

    .line 136
    .line 137
    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->b:Landroid/content/Context;

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
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->i:Landroid/widget/TextView;

    .line 159
    .line 160
    const v0, 0x7f1302ad

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 167
    .line 168
    const v0, 0x7f13028d

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->e:Lcom/google/android/material/button/MaterialButton;

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
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 183
    .line 184
    new-instance v0, Ln3/m;

    .line 185
    .line 186
    invoke-direct {v0, p0, v3}, Ln3/m;-><init>(Lcom/zalexdev/stryker/hydra/HydraInstall;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->e:Lcom/google/android/material/button/MaterialButton;

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
    invoke-virtual {p0}, Lcom/zalexdev/stryker/hydra/HydraInstall;->j()V

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
    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->a:Landroidx/fragment/app/a0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->a:Landroidx/fragment/app/a0;

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
    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->d:Landroidx/fragment/app/u0;

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
    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->e:Lcom/google/android/material/button/MaterialButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->j:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->k:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->i:Landroid/widget/TextView;

    const v1, 0x7f1302af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/zalexdev/stryker/hydra/HydraInstall;->j()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ln3/n;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Ln3/n;-><init>(Lcom/zalexdev/stryker/hydra/HydraInstall;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/hydra/HydraInstall;->h(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->p:Ln2/c;

    .line 14
    .line 15
    invoke-virtual {v0}, Ln2/c;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->b:Landroid/content/Context;

    .line 19
    .line 20
    const-string v1, "hydra"

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

    const p3, 0x7f0d005e

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    iget-boolean v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->r:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->s:Lf/d0;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->r:Z

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
    iput-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->a:Landroidx/fragment/app/a0;

    .line 12
    .line 13
    new-instance p2, Ll4/l;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {p2, v0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->c:Ll4/l;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/u0;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->d:Landroidx/fragment/app/u0;

    .line 27
    .line 28
    const p2, 0x7f0a0292

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
    iput-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 38
    .line 39
    const p2, 0x7f0a02a5

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
    iput-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 49
    .line 50
    const p2, 0x7f0a02a6

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
    iput-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->g:Landroid/widget/ProgressBar;

    .line 60
    .line 61
    const p2, 0x7f0a02a4

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
    iput-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->h:Landroid/widget/ImageView;

    .line 71
    .line 72
    const p2, 0x7f0a02a8

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
    const p2, 0x7f0a02a7

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
    iput-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->i:Landroid/widget/TextView;

    .line 91
    .line 92
    const p2, 0x7f0a02a3

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
    iput-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->j:Landroid/widget/TextView;

    .line 102
    .line 103
    const p2, 0x7f0a02a1

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
    iput-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->k:Lcom/google/android/material/card/MaterialCardView;

    .line 113
    .line 114
    const p2, 0x7f0a02a2

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
    iput-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->l:Landroid/widget/LinearLayout;

    .line 124
    .line 125
    const p2, 0x7f0a0293

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
    iput-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->m:Landroid/widget/TextView;

    .line 135
    .line 136
    const p2, 0x7f0a0294

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
    iput-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->n:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->b:Landroid/content/Context;

    .line 158
    .line 159
    invoke-direct {p1, p2}, Ln2/c;-><init>(Landroid/content/Context;)V

    .line 160
    .line 161
    .line 162
    iput-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->p:Ln2/c;

    .line 163
    .line 164
    iget-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    .line 166
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->b:Landroid/content/Context;

    .line 170
    .line 171
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iget-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->l:Landroid/widget/LinearLayout;

    .line 176
    .line 177
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 178
    .line 179
    .line 180
    iget-object p2, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->q:Ljava/util/EnumMap;

    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/util/EnumMap;->clear()V

    .line 183
    .line 184
    .line 185
    invoke-static {}, Lo3/a;->values()[Lo3/a;

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
    iget-object v6, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->l:Landroid/widget/LinearLayout;

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
    iget v10, v4, Lo3/a;->a:I

    .line 242
    .line 243
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 244
    .line 245
    .line 246
    new-instance v10, Ln3/p;

    .line 247
    .line 248
    invoke-direct {v10, v6, v7, v8, v9}, Ln3/p;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V

    .line 249
    .line 250
    .line 251
    sget-object v6, Ln3/o;->a:Ln3/o;

    .line 252
    .line 253
    invoke-virtual {p0, v10, v6}, Lcom/zalexdev/stryker/hydra/HydraInstall;->d(Ln3/p;Ln3/o;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2, v4, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    iget-object v4, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->l:Landroid/widget/LinearLayout;

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
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 268
    .line 269
    new-instance p2, Ln3/m;

    .line 270
    .line 271
    invoke-direct {p2, p0, v2}, Ln3/m;-><init>(Lcom/zalexdev/stryker/hydra/HydraInstall;I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->c:Ll4/l;

    .line 278
    .line 279
    const-string p2, "hydra"

    .line 280
    .line 281
    invoke-virtual {p1, p2}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_1

    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/zalexdev/stryker/hydra/HydraInstall;->i()V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    .line 292
    .line 293
    const-string v0, "com.zalexdev.stryker.install.UPDATED"

    .line 294
    .line 295
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->s:Lf/d0;

    .line 303
    .line 304
    invoke-static {v0, v1, p1}, Lx/g;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 305
    .line 306
    .line 307
    const/4 p1, 0x1

    .line 308
    iput-boolean p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->r:Z

    .line 309
    .line 310
    iget-object v0, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->b:Landroid/content/Context;

    .line 311
    .line 312
    iget-object v1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->c:Ll4/l;

    .line 313
    .line 314
    invoke-static {v0, v1, p2}, Lcom/zalexdev/stryker/install/InstallService;->h(Landroid/content/Context;Ll4/l;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    const-string v1, "running"

    .line 319
    .line 320
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-nez v1, :cond_3

    .line 325
    .line 326
    const-string v1, "failed"

    .line 327
    .line 328
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-eqz v1, :cond_2

    .line 333
    .line 334
    goto :goto_1

    .line 335
    :cond_2
    new-instance p1, Ljava/lang/Thread;

    .line 336
    .line 337
    new-instance p2, Ln3/n;

    .line 338
    .line 339
    invoke-direct {p2, p0, v2}, Ln3/n;-><init>(Lcom/zalexdev/stryker/hydra/HydraInstall;I)V

    .line 340
    .line 341
    .line 342
    const-string v0, "hydra-install-check"

    .line 343
    .line 344
    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 348
    .line 349
    .line 350
    goto :goto_3

    .line 351
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->p:Ln2/c;

    .line 352
    .line 353
    invoke-virtual {v1}, Ln2/c;->clear()V

    .line 354
    .line 355
    .line 356
    new-instance v1, Ln3/n;

    .line 357
    .line 358
    invoke-direct {v1, p0, p1}, Ln3/n;-><init>(Lcom/zalexdev/stryker/hydra/HydraInstall;I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0, v1}, Lcom/zalexdev/stryker/hydra/HydraInstall;->h(Ljava/lang/Runnable;)V

    .line 362
    .line 363
    .line 364
    iget-object p1, p0, Lcom/zalexdev/stryker/hydra/HydraInstall;->b:Landroid/content/Context;

    .line 365
    .line 366
    invoke-static {p1, p2}, Lcom/zalexdev/stryker/install/InstallService;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 375
    .line 376
    .line 377
    move-result p2

    .line 378
    if-eqz p2, :cond_4

    .line 379
    .line 380
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    check-cast p2, Ljava/lang/String;

    .line 385
    .line 386
    invoke-virtual {p0, p2}, Lcom/zalexdev/stryker/hydra/HydraInstall;->e(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    goto :goto_2

    .line 390
    :cond_4
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/hydra/HydraInstall;->g(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    :goto_3
    return-void
.end method
