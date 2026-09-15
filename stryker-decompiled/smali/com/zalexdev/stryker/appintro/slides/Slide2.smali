.class public Lcom/zalexdev/stryker/appintro/slides/Slide2;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic s:I


# instance fields
.field public a:Landroidx/fragment/app/a0;

.field public b:Landroid/content/Context;

.field public c:Ll4/l;

.field public d:Landroidx/viewpager2/widget/ViewPager2;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/widget/ProgressBar;

.field public m:Landroid/widget/ProgressBar;

.field public n:Landroid/widget/ProgressBar;

.field public p:Lcom/google/android/material/button/MaterialButton;

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->q:Z

    iput-boolean v0, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->r:Z

    return-void
.end method

.method public static f(Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    const p1, 0x7f0800c9

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->b:Landroid/content/Context;

    .line 19
    .line 20
    sget-object p4, Lx/g;->a:Ljava/lang/Object;

    .line 21
    .line 22
    const p4, 0x7f060073

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 30
    .line 31
    invoke-virtual {p2, p1, p4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const p1, 0x7f080197

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->b:Landroid/content/Context;

    .line 45
    .line 46
    sget-object p4, Lx/g;->a:Ljava/lang/Object;

    .line 47
    .line 48
    const p4, 0x7f060074

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 56
    .line 57
    invoke-virtual {p2, p1, p4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 11

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/16 v3, 0x1e

    .line 6
    .line 7
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 8
    .line 9
    if-lt v0, v3, :cond_2

    .line 10
    .line 11
    invoke-static {}, Landroidx/core/view/v2;->q()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->b:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    move v0, v2

    .line 29
    :goto_1
    move v7, v0

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->b:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->b:Landroid/content/Context;

    .line 41
    .line 42
    const-string v3, "power"

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/os/PowerManager;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    const-string v3, "com.zalexdev.stryker"

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    move v0, v2

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    move v0, v1

    .line 63
    :goto_3
    move v8, v0

    .line 64
    goto :goto_4

    .line 65
    :catchall_0
    move v8, v1

    .line 66
    :goto_4
    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iget-object v3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->l:Landroid/widget/ProgressBar;

    .line 76
    .line 77
    iget-object v4, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->i:Landroid/widget/ImageView;

    .line 78
    .line 79
    iget-object v5, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->f:Landroid/widget/TextView;

    .line 80
    .line 81
    if-nez v0, :cond_5

    .line 82
    .line 83
    iget-boolean v6, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->q:Z

    .line 84
    .line 85
    if-eqz v6, :cond_4

    .line 86
    .line 87
    iget-boolean v6, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->r:Z

    .line 88
    .line 89
    if-eqz v6, :cond_4

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_4
    move v6, v1

    .line 93
    goto :goto_6

    .line 94
    :cond_5
    :goto_5
    move v6, v2

    .line 95
    :goto_6
    if-eqz v0, :cond_6

    .line 96
    .line 97
    const-string v0, "Not required \u2014 rootless VM engine"

    .line 98
    .line 99
    :goto_7
    move-object v9, v0

    .line 100
    goto :goto_8

    .line 101
    :cond_6
    const-string v0, "Granted \u2014 superuser ready"

    .line 102
    .line 103
    goto :goto_7

    .line 104
    :goto_8
    const-string v10, "Required to mount the chroot and run privileged tools"

    .line 105
    .line 106
    move-object v0, p0

    .line 107
    move-object v1, v3

    .line 108
    move-object v2, v4

    .line 109
    move-object v3, v5

    .line 110
    move v4, v6

    .line 111
    move-object v5, v9

    .line 112
    move-object v6, v10

    .line 113
    invoke-virtual/range {v0 .. v6}, Lcom/zalexdev/stryker/appintro/slides/Slide2;->d(Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->m:Landroid/widget/ProgressBar;

    .line 117
    .line 118
    iget-object v2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->j:Landroid/widget/ImageView;

    .line 119
    .line 120
    iget-object v3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->g:Landroid/widget/TextView;

    .line 121
    .line 122
    const-string v5, "Granted \u2014 can read/write storage"

    .line 123
    .line 124
    const-string v6, "Reads/writes wordlists, scans and captured handshakes"

    .line 125
    .line 126
    move v4, v7

    .line 127
    invoke-virtual/range {v0 .. v6}, Lcom/zalexdev/stryker/appintro/slides/Slide2;->d(Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->n:Landroid/widget/ProgressBar;

    .line 131
    .line 132
    iget-object v2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->k:Landroid/widget/ImageView;

    .line 133
    .line 134
    iget-object v3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->h:Landroid/widget/TextView;

    .line 135
    .line 136
    const-string v5, "Whitelisted \u2014 scans survive in background"

    .line 137
    .line 138
    const-string v6, "Keeps long scans alive in the background"

    .line 139
    .line 140
    move v4, v8

    .line 141
    invoke-virtual/range {v0 .. v6}, Lcom/zalexdev/stryker/appintro/slides/Slide2;->d(Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00c4

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->a:Landroidx/fragment/app/a0;

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->b:Landroid/content/Context;

    new-instance p3, Ll4/l;

    invoke-direct {p3, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->a:Landroidx/fragment/app/a0;

    const p3, 0x7f0a06a4

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->d:Landroidx/viewpager2/widget/ViewPager2;

    const p2, 0x7f0a05bd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->e:Landroid/widget/TextView;

    const p2, 0x7f0a0384

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->p:Lcom/google/android/material/button/MaterialButton;

    const p2, 0x7f0a0525

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->f:Landroid/widget/TextView;

    const p2, 0x7f0a05fa

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->g:Landroid/widget/TextView;

    const p2, 0x7f0a00b2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->h:Landroid/widget/TextView;

    const p2, 0x7f0a0524

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->i:Landroid/widget/ImageView;

    const p2, 0x7f0a05f9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->j:Landroid/widget/ImageView;

    const p2, 0x7f0a00b1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->k:Landroid/widget/ImageView;

    const p2, 0x7f0a0523

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->l:Landroid/widget/ProgressBar;

    const p2, 0x7f0a05f8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->m:Landroid/widget/ProgressBar;

    const p2, 0x7f0a00b0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/zalexdev/stryker/appintro/slides/Slide2;->e()V

    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->p:Lcom/google/android/material/button/MaterialButton;

    new-instance p3, Lcom/nambimobile/widgets/efab/a;

    const/4 v0, 0x5

    invoke-direct {p3, p0, v0}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zalexdev/stryker/appintro/slides/Slide2;->e()V

    :cond_0
    return-void
.end method
