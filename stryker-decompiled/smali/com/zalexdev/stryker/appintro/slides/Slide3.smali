.class public Lcom/zalexdev/stryker/appintro/slides/Slide3;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic z:I


# instance fields
.field public a:Landroidx/fragment/app/a0;

.field public b:Landroid/content/Context;

.field public c:Ll4/l;

.field public d:Landroidx/viewpager2/widget/ViewPager2;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/ProgressBar;

.field public i:Landroid/widget/LinearLayout;

.field public j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/LinearLayout;

.field public n:Landroid/view/View;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/view/View;

.field public r:Landroidx/recyclerview/widget/RecyclerView;

.field public s:Ln2/c;

.field public t:Lcom/google/android/material/button/MaterialButton;

.field public final u:Ljava/util/EnumMap;

.field public v:Lv/z;

.field public w:Landroid/app/NotificationManager;

.field public x:J

.field public volatile y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Ln2/a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->u:Ljava/util/EnumMap;

    return-void
.end method

.method public static f(J)Ljava/lang/String;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-string p0, "? MB"

    return-object p0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-double p0, p0

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v1

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f MB"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(JJ)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    const-string p0, "?/s"

    return-object p0

    :cond_0
    long-to-double p0, p0

    long-to-double p2, p2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, v0

    div-double/2addr p0, p2

    const-wide/high16 p2, 0x4130000000000000L    # 1048576.0

    cmpg-double p2, p0, p2

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    if-gez p2, :cond_1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.0f KB/s"

    invoke-static {p2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    div-double/2addr p0, v0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f MB/s"

    invoke-static {p2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(Lo2/h;Lo2/g;)V
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
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

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
    iget-object v0, p1, Lo2/h;->c:Landroid/widget/ProgressBar;

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p1, Lo2/h;->b:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v0, p1, Lo2/h;->a:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

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
    iget-object v4, p1, Lo2/h;->c:Landroid/widget/ProgressBar;

    .line 57
    .line 58
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p1, Lo2/h;->b:Landroid/widget/ImageView;

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
    iget-object v2, p1, Lo2/h;->a:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

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
    iget-object v0, p1, Lo2/h;->c:Landroid/widget/ProgressBar;

    .line 95
    .line 96
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p1, Lo2/h;->b:Landroid/widget/ImageView;

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
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

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
    iget-object v4, p1, Lo2/h;->c:Landroid/widget/ProgressBar;

    .line 128
    .line 129
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    iget-object v2, p1, Lo2/h;->b:Landroid/widget/ImageView;

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :goto_2
    iget-object v0, p1, Lo2/h;->a:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p1, Lo2/h;->d:Landroid/widget/FrameLayout;

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
    .locals 7

    .line 1
    sget-object v4, Lo2/i;->c:Lo2/i;

    .line 2
    .line 3
    const-string v2, "Stryker chroot"

    .line 4
    .line 5
    new-instance v6, Lj2/b;

    .line 6
    .line 7
    const/4 v5, 0x3

    .line 8
    move-object v0, v6

    .line 9
    move-object v1, p0

    .line 10
    move-object v3, p1

    .line 11
    invoke-direct/range {v0 .. v5}, Lj2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v6}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Ln2/e;->e:Ln2/e;

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lo2/c;

    .line 23
    .line 24
    const/4 v0, 0x6

    .line 25
    invoke-direct {p1, p0, v0}, Lo2/c;-><init>(Lcom/zalexdev/stryker/appintro/slides/Slide3;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final h(Ln2/e;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/emoji2/text/m;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i(Ln2/a;Lo2/g;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/emoji2/text/m;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->a:Landroidx/fragment/app/a0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->a:Landroidx/fragment/app/a0;

    new-instance v1, Lf/n0;

    const/16 v2, 0x11

    invoke-direct {v1, p0, p1, v2}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .line 1
    const p3, 0x7f0d00c5

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->a:Landroidx/fragment/app/a0;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

    .line 20
    .line 21
    new-instance v1, Ll4/l;

    .line 22
    .line 23
    invoke-direct {v1, p3}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    .line 27
    .line 28
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v1, 0x1a

    .line 31
    .line 32
    if-lt p3, v1, :cond_0

    .line 33
    .line 34
    invoke-static {}, Lc3/a;->o()V

    .line 35
    .line 36
    .line 37
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    const v1, 0x7f1304c4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    iget-object v2, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {p3, v1}, Lf4/b;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    iget-object v1, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

    .line 65
    .line 66
    const-class v2, Landroid/app/NotificationManager;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Landroid/app/NotificationManager;

    .line 73
    .line 74
    invoke-static {v1, p3}, Lc3/a;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

    .line 78
    .line 79
    const-string v1, "notification"

    .line 80
    .line 81
    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    check-cast p3, Landroid/app/NotificationManager;

    .line 86
    .line 87
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->w:Landroid/app/NotificationManager;

    .line 88
    .line 89
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->a:Landroidx/fragment/app/a0;

    .line 90
    .line 91
    const v1, 0x7f0a06a4

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    check-cast p3, Landroidx/viewpager2/widget/ViewPager2;

    .line 99
    .line 100
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 101
    .line 102
    const p3, 0x7f0a05ed

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    check-cast p3, Landroid/widget/TextView;

    .line 110
    .line 111
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->e:Landroid/widget/TextView;

    .line 112
    .line 113
    const p3, 0x7f0a05ec

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    check-cast p3, Landroid/widget/TextView;

    .line 121
    .line 122
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->f:Landroid/widget/TextView;

    .line 123
    .line 124
    const p3, 0x7f0a05e9

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    check-cast p3, Landroid/widget/ImageView;

    .line 132
    .line 133
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->g:Landroid/widget/ImageView;

    .line 134
    .line 135
    const p3, 0x7f0a05eb

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    check-cast p3, Landroid/widget/ProgressBar;

    .line 143
    .line 144
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h:Landroid/widget/ProgressBar;

    .line 145
    .line 146
    const p3, 0x7f0a01af

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    check-cast p3, Landroid/widget/LinearLayout;

    .line 154
    .line 155
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i:Landroid/widget/LinearLayout;

    .line 156
    .line 157
    const p3, 0x7f0a05bb

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    check-cast p3, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 165
    .line 166
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 167
    .line 168
    const p3, 0x7f0a01b0

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    check-cast p3, Landroid/widget/TextView;

    .line 176
    .line 177
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->k:Landroid/widget/TextView;

    .line 178
    .line 179
    const p3, 0x7f0a05de

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    check-cast p3, Landroid/widget/TextView;

    .line 187
    .line 188
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->l:Landroid/widget/TextView;

    .line 189
    .line 190
    const p3, 0x7f0a05dd

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    check-cast p3, Landroid/widget/LinearLayout;

    .line 198
    .line 199
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->m:Landroid/widget/LinearLayout;

    .line 200
    .line 201
    const p3, 0x7f0a05dc

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object p3

    .line 208
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->n:Landroid/view/View;

    .line 209
    .line 210
    const p3, 0x7f0a037b

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object p3

    .line 217
    check-cast p3, Landroid/widget/TextView;

    .line 218
    .line 219
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->p:Landroid/widget/TextView;

    .line 220
    .line 221
    const p3, 0x7f0a0379

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object p3

    .line 228
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->q:Landroid/view/View;

    .line 229
    .line 230
    const p3, 0x7f0a037c

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 238
    .line 239
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 240
    .line 241
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 242
    .line 243
    invoke-direct {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 247
    .line 248
    .line 249
    new-instance p3, Ln2/c;

    .line 250
    .line 251
    iget-object v1, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

    .line 252
    .line 253
    invoke-direct {p3, v1}, Ln2/c;-><init>(Landroid/content/Context;)V

    .line 254
    .line 255
    .line 256
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->s:Ln2/c;

    .line 257
    .line 258
    iget-object v1, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 259
    .line 260
    invoke-virtual {v1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 261
    .line 262
    .line 263
    const p3, 0x7f0a0384

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object p3

    .line 270
    check-cast p3, Lcom/google/android/material/button/MaterialButton;

    .line 271
    .line 272
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->t:Lcom/google/android/material/button/MaterialButton;

    .line 273
    .line 274
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->m:Landroid/widget/LinearLayout;

    .line 275
    .line 276
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 277
    .line 278
    .line 279
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->u:Ljava/util/EnumMap;

    .line 280
    .line 281
    invoke-virtual {p3}, Ljava/util/EnumMap;->clear()V

    .line 282
    .line 283
    .line 284
    invoke-static {}, Ln2/a;->values()[Ln2/a;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    array-length v2, v1

    .line 289
    move v3, v0

    .line 290
    :goto_0
    if-ge v3, v2, :cond_1

    .line 291
    .line 292
    aget-object v4, v1, v3

    .line 293
    .line 294
    const v5, 0x7f0d0074

    .line 295
    .line 296
    .line 297
    iget-object v6, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->m:Landroid/widget/LinearLayout;

    .line 298
    .line 299
    invoke-virtual {p1, v5, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    const v6, 0x7f0a05db

    .line 304
    .line 305
    .line 306
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    check-cast v6, Landroid/widget/TextView;

    .line 311
    .line 312
    const v7, 0x7f0a05d8

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    check-cast v7, Landroid/widget/ImageView;

    .line 320
    .line 321
    const v8, 0x7f0a05da

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    check-cast v8, Landroid/widget/ProgressBar;

    .line 329
    .line 330
    const v9, 0x7f0a05d9

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 334
    .line 335
    .line 336
    move-result-object v9

    .line 337
    check-cast v9, Landroid/widget/FrameLayout;

    .line 338
    .line 339
    iget-object v10, v4, Ln2/a;->a:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    .line 343
    .line 344
    new-instance v10, Lo2/h;

    .line 345
    .line 346
    invoke-direct {v10, v6, v7, v8, v9}, Lo2/h;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V

    .line 347
    .line 348
    .line 349
    sget-object v6, Lo2/g;->a:Lo2/g;

    .line 350
    .line 351
    invoke-virtual {p0, v10, v6}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->d(Lo2/h;Lo2/g;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p3, v4, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    iget-object v4, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->m:Landroid/widget/LinearLayout;

    .line 358
    .line 359
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 360
    .line 361
    .line 362
    add-int/lit8 v3, v3, 0x1

    .line 363
    .line 364
    goto :goto_0

    .line 365
    :cond_1
    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->t:Lcom/google/android/material/button/MaterialButton;

    .line 366
    .line 367
    new-instance p3, Lcom/nambimobile/widgets/efab/a;

    .line 368
    .line 369
    const/4 v0, 0x6

    .line 370
    invoke-direct {p3, p0, v0}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    .line 375
    .line 376
    return-object p2
.end method
