.class public Lcom/zalexdev/stryker/nuclei/NucleiMain;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Ld4/q;


# static fields
.field public static final synthetic p:I


# instance fields
.field public a:Ll4/l;

.field public b:Lt2/m;

.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/ImageView;

.field public j:Lcom/google/android/material/chip/ChipGroup;

.field public k:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field public l:Ljava/lang/String;

.field public m:I

.field public final n:Lf/d0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->l:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->m:I

    new-instance v0, Lf/d0;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lf/d0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->n:Lf/d0;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->a:Ll4/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll4/l;->I()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    sub-int/2addr v3, v4

    .line 23
    :goto_0
    if-ltz v3, :cond_6

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/zalexdev/stryker/custom/Site;

    .line 30
    .line 31
    iget v6, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->m:I

    .line 32
    .line 33
    invoke-static {v6}, Lo/i;->c(I)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eq v6, v4, :cond_2

    .line 38
    .line 39
    const/4 v7, 0x2

    .line 40
    if-eq v6, v7, :cond_1

    .line 41
    .line 42
    const/4 v7, 0x3

    .line 43
    if-eq v6, v7, :cond_0

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_0
    const-string v6, "Failed"

    .line 47
    .line 48
    :goto_1
    iget-object v7, v5, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    const-string v6, "Finished"

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :goto_2
    if-nez v6, :cond_3

    .line 59
    .line 60
    goto :goto_5

    .line 61
    :cond_2
    iget-object v6, v5, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    .line 62
    .line 63
    const-string v7, "Running"

    .line 64
    .line 65
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_3

    .line 70
    .line 71
    const-string v6, "Scheduled"

    .line 72
    .line 73
    iget-object v7, v5, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_5

    .line 80
    .line 81
    :cond_3
    :goto_3
    iget-object v6, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->l:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_4

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_4
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    if-eqz v6, :cond_5

    .line 95
    .line 96
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 101
    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    iget-object v7, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->l:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_5

    .line 113
    .line 114
    :goto_4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    :cond_5
    :goto_5
    add-int/lit8 v3, v3, -0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_6
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->b:Lt2/m;

    .line 128
    .line 129
    iput-object v1, v0, Lt2/m;->e:Ljava/lang/Object;

    .line 130
    .line 131
    iget-object v3, v0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 134
    .line 135
    .line 136
    iget-object v3, v0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->d:Landroid/view/View;

    .line 149
    .line 150
    const/16 v2, 0x8

    .line 151
    .line 152
    const/4 v3, 0x0

    .line 153
    if-eqz v0, :cond_7

    .line 154
    .line 155
    move v4, v3

    .line 156
    goto :goto_6

    .line 157
    :cond_7
    move v4, v2

    .line 158
    :goto_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 162
    .line 163
    if-eqz v0, :cond_8

    .line 164
    .line 165
    goto :goto_7

    .line 166
    :cond_8
    move v2, v3

    .line 167
    :goto_7
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public final e(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroidx/fragment/app/a;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/u0;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/zalexdev/stryker/nuclei/NucleiReport;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/zalexdev/stryker/nuclei/NucleiReport;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "siteIndex"

    .line 28
    .line 29
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    const p1, 0x7f0a0205

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v1, v0, v2, p1}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroidx/fragment/app/e1;->c(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    invoke-virtual {v1, p1}, Landroidx/fragment/app/a;->h(Z)I

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final f(ILcom/zalexdev/stryker/custom/Site;)V
    .locals 2

    .line 1
    const-string v0, "Scheduled"

    iput-object v0, p2, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p2, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    iget-object v0, p2, Lcom/zalexdev/stryker/custom/Site;->nucleis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    iput-object v0, p2, Lcom/zalexdev/stryker/custom/Site;->vulnsCount:[I

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->a:Ll4/l;

    invoke-virtual {v0, p1, p2}, Ll4/l;->b(ILcom/zalexdev/stryker/custom/Site;)V

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zalexdev/stryker/nuclei/NucleiScanService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "id"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lq1/a;->j(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    invoke-virtual {p0}, Lcom/zalexdev/stryker/nuclei/NucleiMain;->g()V

    return-void
.end method

.method public final g()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->a:Ll4/l;

    invoke-virtual {v0}, Ll4/l;->I()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zalexdev/stryker/custom/Site;

    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Site;->getNucleis()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Site;->getNucleis()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    add-int/2addr v3, v6

    const-string v6, "Running"

    iget-object v5, v5, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->e:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->f:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->g:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/nuclei/NucleiMain;->d()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0065

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->n:Lf/d0;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.zalexdev.stryker.nuclei.UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->n:Lf/d0;

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0}, Lc3/a;->t(Landroid/content/Context;Lf/d0;Landroid/content/IntentFilter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0}, Lcom/zalexdev/stryker/nuclei/NucleiMain;->g()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance p2, Ll4/l;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p2, v0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->a:Ll4/l;

    .line 11
    .line 12
    const p2, 0x7f0a048e

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    const p2, 0x7f0a046f

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->d:Landroid/view/View;

    .line 31
    .line 32
    const p2, 0x7f0a0488

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Landroid/widget/TextView;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->e:Landroid/widget/TextView;

    .line 42
    .line 43
    const p2, 0x7f0a0486

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->f:Landroid/widget/TextView;

    .line 53
    .line 54
    const p2, 0x7f0a0487

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Landroid/widget/TextView;

    .line 62
    .line 63
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->g:Landroid/widget/TextView;

    .line 64
    .line 65
    const p2, 0x7f0a047b

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    check-cast p2, Landroid/widget/EditText;

    .line 73
    .line 74
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->h:Landroid/widget/EditText;

    .line 75
    .line 76
    const p2, 0x7f0a047c

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Landroid/widget/ImageView;

    .line 84
    .line 85
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->i:Landroid/widget/ImageView;

    .line 86
    .line 87
    const p2, 0x7f0a0475

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Lcom/google/android/material/chip/ChipGroup;

    .line 95
    .line 96
    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->j:Lcom/google/android/material/chip/ChipGroup;

    .line 97
    .line 98
    const p2, 0x7f0a0470

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 106
    .line 107
    iput-object p1, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->k:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 108
    .line 109
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    .line 111
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    invoke-direct {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 120
    .line 121
    .line 122
    new-instance p1, Lt2/m;

    .line 123
    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-direct {p1, p2, p0}, Lt2/m;-><init>(Landroid/content/Context;Ld4/q;)V

    .line 129
    .line 130
    .line 131
    iput-object p1, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->b:Lt2/m;

    .line 132
    .line 133
    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    .line 135
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->h:Landroid/widget/EditText;

    .line 139
    .line 140
    new-instance p2, Ls2/k;

    .line 141
    .line 142
    const/4 v0, 0x6

    .line 143
    invoke-direct {p2, p0, v0}, Ls2/k;-><init>(Ljava/lang/Object;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->i:Landroid/widget/ImageView;

    .line 150
    .line 151
    new-instance p2, Ld4/h;

    .line 152
    .line 153
    const/4 v0, 0x0

    .line 154
    invoke-direct {p2, p0, v0}, Ld4/h;-><init>(Lcom/zalexdev/stryker/nuclei/NucleiMain;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->j:Lcom/google/android/material/chip/ChipGroup;

    .line 161
    .line 162
    new-instance p2, Lv/f;

    .line 163
    .line 164
    const/16 v1, 0x10

    .line 165
    .line 166
    invoke-direct {p2, p0, v1}, Lv/f;-><init>(Ljava/lang/Object;I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->k:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 173
    .line 174
    new-instance p2, Ld4/h;

    .line 175
    .line 176
    const/4 v1, 0x1

    .line 177
    invoke-direct {p2, p0, v1}, Ld4/h;-><init>(Lcom/zalexdev/stryker/nuclei/NucleiMain;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    new-instance p1, Ljava/lang/Thread;

    .line 184
    .line 185
    new-instance p2, Ld4/i;

    .line 186
    .line 187
    invoke-direct {p2, p0, v0}, Ld4/i;-><init>(Lcom/zalexdev/stryker/nuclei/NucleiMain;I)V

    .line 188
    .line 189
    .line 190
    const-string v0, "nuclei-sweep"

    .line 191
    .line 192
    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/zalexdev/stryker/nuclei/NucleiMain;->g()V

    .line 199
    .line 200
    .line 201
    return-void
.end method
