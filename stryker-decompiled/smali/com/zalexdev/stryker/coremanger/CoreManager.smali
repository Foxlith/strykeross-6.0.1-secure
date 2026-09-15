.class public Lcom/zalexdev/stryker/coremanger/CoreManager;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic D:I


# instance fields
.field public A:Z

.field public final B:[Lr0/b;

.field public final C:Lf/d0;

.field public a:Ll4/l;

.field public b:Landroid/content/Context;

.field public c:Landroidx/fragment/app/a0;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public f:Landroidx/recyclerview/widget/RecyclerView;

.field public g:Ls2/e;

.field public h:Lcom/google/android/material/textfield/TextInputLayout;

.field public i:Lcom/google/android/material/textfield/TextInputEditText;

.field public j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public k:Lcom/google/android/material/chip/Chip;

.field public l:Lcom/google/android/material/chip/Chip;

.field public m:Lcom/google/android/material/chip/Chip;

.field public final n:Landroid/os/Handler;

.field public p:Ljava/lang/Runnable;

.field public q:Lcom/google/android/material/card/MaterialCardView;

.field public r:Lcom/google/android/material/card/MaterialCardView;

.field public s:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Z

.field public x:Z

.field public y:Landroid/widget/LinearLayout;

.field public final z:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->n:Landroid/os/Handler;

    .line 33
    .line 34
    new-instance v0, Ls2/f;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->p:Ljava/lang/Runnable;

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->w:Z

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->x:Z

    .line 46
    .line 47
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->z:Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    iput-boolean v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->A:Z

    .line 55
    .line 56
    new-instance v0, Lr0/b;

    .line 57
    .line 58
    const-string v1, "metasploit"

    .line 59
    .line 60
    const v2, 0x7f1303ec

    .line 61
    .line 62
    .line 63
    const v3, 0x7f0801b4

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1, v2, v3}, Lr0/b;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lr0/b;

    .line 70
    .line 71
    const v2, 0x7f0801de

    .line 72
    .line 73
    .line 74
    const-string v4, "nuclei"

    .line 75
    .line 76
    const v5, 0x7f1304f6

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v4, v5, v2}, Lr0/b;-><init>(Ljava/lang/String;II)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lr0/b;

    .line 83
    .line 84
    const-string v4, "hydra"

    .line 85
    .line 86
    const v5, 0x7f1302ab

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, v4, v5, v3}, Lr0/b;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    new-instance v3, Lr0/b;

    .line 93
    .line 94
    const v4, 0x7f0801a9

    .line 95
    .line 96
    .line 97
    const-string v5, "searchsploit"

    .line 98
    .line 99
    const v6, 0x7f130158

    .line 100
    .line 101
    .line 102
    invoke-direct {v3, v5, v6, v4}, Lr0/b;-><init>(Ljava/lang/String;II)V

    .line 103
    .line 104
    .line 105
    filled-new-array {v0, v1, v2, v3}, [Lr0/b;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->B:[Lr0/b;

    .line 110
    .line 111
    new-instance v0, Lf/d0;

    .line 112
    .line 113
    const/4 v1, 0x3

    .line 114
    invoke-direct {v0, p0, v1}, Lf/d0;-><init>(Ljava/lang/Object;I)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->C:Lf/d0;

    .line 118
    .line 119
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ls2/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ls2/h;-><init>(Lcom/zalexdev/stryker/coremanger/CoreManager;I)V

    const-string v2, "tools-refresh"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->h:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->k:Lcom/google/android/material/chip/Chip;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->l:Lcom/google/android/material/chip/Chip;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->u:Landroid/widget/TextView;

    .line 28
    .line 29
    const v2, 0x7f130152

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/lang/Thread;

    .line 36
    .line 37
    new-instance v2, Ls2/h;

    .line 38
    .line 39
    invoke-direct {v2, p0, v1}, Ls2/h;-><init>(Lcom/zalexdev/stryker/coremanger/CoreManager;I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->d:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->e:Ljava/util/ArrayList;

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->m:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zalexdev/stryker/custom/Package;

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/Package;->isInstalled()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/zalexdev/stryker/coremanger/CoreManager;->g(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final g(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->v:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->r:Lcom/google/android/material/card/MaterialCardView;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->q:Lcom/google/android/material/card/MaterialCardView;

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->r:Lcom/google/android/material/card/MaterialCardView;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->q:Lcom/google/android/material/card/MaterialCardView;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->g:Ls2/e;

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    new-instance v0, Ls2/e;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->b:Landroid/content/Context;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->c:Landroidx/fragment/app/a0;

    .line 53
    .line 54
    new-instance v3, Ls2/h;

    .line 55
    .line 56
    const/4 v4, 0x2

    .line 57
    invoke-direct {v3, p0, v4}, Ls2/h;-><init>(Lcom/zalexdev/stryker/coremanger/CoreManager;I)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v1, v2, p1, v3}, Ls2/e;-><init>(Landroid/content/Context;Landroidx/fragment/app/a0;Ljava/util/ArrayList;Ls2/h;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->g:Ls2/e;

    .line 64
    .line 65
    iget-object p1, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    const/16 v0, 0x18

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->g:Ls2/e;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iput-object p1, v0, Ls2/e;->e:Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    return-void
.end method

.method public final h(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->w:Z

    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->a:Ll4/l;

    if-eqz p1, :cond_0

    const-string v1, "apk"

    goto :goto_0

    :cond_0
    const-string v1, "pip"

    :goto_0
    const-string v2, "cm_source"

    invoke-virtual {v0, v2, v1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->k:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->l:Lcom/google/android/material/chip/Chip;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->t:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const v1, 0x7f13014f

    goto :goto_1

    :cond_1
    const v1, 0x7f130150

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->h:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz p1, :cond_2

    const v1, 0x7f13014a

    goto :goto_2

    :cond_2
    const v1, 0x7f13014b

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->h:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->b:Landroid/content/Context;

    if-eqz p1, :cond_3

    const p1, 0x7f0801a9

    goto :goto_3

    :cond_3
    const p1, 0x7f0800ca

    :goto_3
    invoke-static {v1, p1}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/coremanger/CoreManager;->e()V

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->c:Landroidx/fragment/app/a0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ls2/i;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Ls2/i;-><init>(Lcom/zalexdev/stryker/coremanger/CoreManager;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->c:Landroidx/fragment/app/a0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->c:Landroidx/fragment/app/a0;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v0

    iput-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->c:Landroidx/fragment/app/a0;

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0031

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->g:Ls2/e;

    iget-boolean v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->A:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->C:Lf/d0;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->A:Z

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    .line 1
    new-instance p2, Ll4/l;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p2, v0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->a:Ll4/l;

    .line 9
    .line 10
    const p2, 0x7f0a049c

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 22
    .line 23
    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    const/16 v0, 0xff

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 34
    .line 35
    .line 36
    const p2, 0x7f0a057c

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->h:Lcom/google/android/material/textfield/TextInputLayout;

    .line 46
    .line 47
    const p2, 0x7f0a0574

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    .line 55
    .line 56
    iput-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->i:Lcom/google/android/material/textfield/TextInputEditText;

    .line 57
    .line 58
    const p2, 0x7f0a04ed

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 66
    .line 67
    iput-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 68
    .line 69
    const p2, 0x7f0a008c

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Lcom/google/android/material/chip/Chip;

    .line 77
    .line 78
    iput-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->k:Lcom/google/android/material/chip/Chip;

    .line 79
    .line 80
    const p2, 0x7f0a04bd

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Lcom/google/android/material/chip/Chip;

    .line 88
    .line 89
    iput-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->l:Lcom/google/android/material/chip/Chip;

    .line 90
    .line 91
    const p2, 0x7f0a012c

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Lcom/google/android/material/chip/Chip;

    .line 99
    .line 100
    iput-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->m:Lcom/google/android/material/chip/Chip;

    .line 101
    .line 102
    const p2, 0x7f0a012b

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    .line 110
    .line 111
    iput-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->q:Lcom/google/android/material/card/MaterialCardView;

    .line 112
    .line 113
    const p2, 0x7f0a012d

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    .line 121
    .line 122
    iput-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->r:Lcom/google/android/material/card/MaterialCardView;

    .line 123
    .line 124
    const p2, 0x7f0a012e

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 132
    .line 133
    iput-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->s:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 134
    .line 135
    const p2, 0x7f0a0131

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    check-cast p2, Landroid/widget/TextView;

    .line 143
    .line 144
    iput-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->t:Landroid/widget/TextView;

    .line 145
    .line 146
    const p2, 0x7f0a0130

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    check-cast p2, Landroid/widget/TextView;

    .line 154
    .line 155
    iput-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->u:Landroid/widget/TextView;

    .line 156
    .line 157
    const p2, 0x7f0a012a

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    check-cast p2, Landroid/widget/TextView;

    .line 165
    .line 166
    iput-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->v:Landroid/widget/TextView;

    .line 167
    .line 168
    iget-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->s:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 169
    .line 170
    new-instance v0, Lv/f;

    .line 171
    .line 172
    const/16 v1, 0x8

    .line 173
    .line 174
    invoke-direct {v0, p0, v1}, Lv/f;-><init>(Ljava/lang/Object;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Lg1/j;)V

    .line 178
    .line 179
    .line 180
    iget-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->k:Lcom/google/android/material/chip/Chip;

    .line 181
    .line 182
    new-instance v0, Ls2/g;

    .line 183
    .line 184
    const/4 v2, 0x0

    .line 185
    invoke-direct {v0, p0, v2}, Ls2/g;-><init>(Lcom/zalexdev/stryker/coremanger/CoreManager;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    iget-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->l:Lcom/google/android/material/chip/Chip;

    .line 192
    .line 193
    new-instance v0, Ls2/g;

    .line 194
    .line 195
    const/4 v3, 0x1

    .line 196
    invoke-direct {v0, p0, v3}, Ls2/g;-><init>(Lcom/zalexdev/stryker/coremanger/CoreManager;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    iget-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->m:Lcom/google/android/material/chip/Chip;

    .line 203
    .line 204
    new-instance v0, Lcom/google/android/material/chip/a;

    .line 205
    .line 206
    const/4 v4, 0x2

    .line 207
    invoke-direct {v0, p0, v4}, Lcom/google/android/material/chip/a;-><init>(Ljava/lang/Object;I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, v0}, Lcom/google/android/material/chip/Chip;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 211
    .line 212
    .line 213
    iget-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->i:Lcom/google/android/material/textfield/TextInputEditText;

    .line 214
    .line 215
    new-instance v0, Ls2/k;

    .line 216
    .line 217
    invoke-direct {v0, p0, v2}, Ls2/k;-><init>(Ljava/lang/Object;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 221
    .line 222
    .line 223
    iget-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->h:Lcom/google/android/material/textfield/TextInputLayout;

    .line 224
    .line 225
    new-instance v0, Ls2/g;

    .line 226
    .line 227
    invoke-direct {v0, p0, v4}, Ls2/g;-><init>(Lcom/zalexdev/stryker/coremanger/CoreManager;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    const p2, 0x7f0a0133

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    check-cast p1, Landroid/widget/LinearLayout;

    .line 241
    .line 242
    iput-object p1, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->y:Landroid/widget/LinearLayout;

    .line 243
    .line 244
    iget-object p1, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->b:Landroid/content/Context;

    .line 245
    .line 246
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    iget-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->y:Landroid/widget/LinearLayout;

    .line 251
    .line 252
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 253
    .line 254
    .line 255
    iget-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->z:Ljava/util/LinkedHashMap;

    .line 256
    .line 257
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->clear()V

    .line 258
    .line 259
    .line 260
    move v0, v2

    .line 261
    :goto_0
    iget-object v4, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->B:[Lr0/b;

    .line 262
    .line 263
    array-length v5, v4

    .line 264
    if-ge v0, v5, :cond_1

    .line 265
    .line 266
    aget-object v5, v4, v0

    .line 267
    .line 268
    const v6, 0x7f0d0109

    .line 269
    .line 270
    .line 271
    iget-object v7, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->y:Landroid/widget/LinearLayout;

    .line 272
    .line 273
    invoke-virtual {p1, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    const v7, 0x7f0a0661

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    check-cast v7, Landroid/widget/ImageView;

    .line 285
    .line 286
    iget v8, v5, Lr0/b;->b:I

    .line 287
    .line 288
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    .line 290
    .line 291
    const v7, 0x7f0a0662

    .line 292
    .line 293
    .line 294
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    check-cast v7, Landroid/widget/TextView;

    .line 299
    .line 300
    iget v8, v5, Lr0/b;->a:I

    .line 301
    .line 302
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 303
    .line 304
    .line 305
    const v7, 0x7f0a0664

    .line 306
    .line 307
    .line 308
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    check-cast v7, Landroid/widget/TextView;

    .line 313
    .line 314
    const v8, 0x7f0a0663

    .line 315
    .line 316
    .line 317
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    check-cast v8, Landroid/widget/ProgressBar;

    .line 322
    .line 323
    const v9, 0x7f0a065f

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    .line 331
    .line 332
    array-length v4, v4

    .line 333
    sub-int/2addr v4, v3

    .line 334
    if-ne v0, v4, :cond_0

    .line 335
    .line 336
    const v4, 0x7f0a0660

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .line 345
    .line 346
    :cond_0
    new-instance v4, Lcom/google/android/material/snackbar/a;

    .line 347
    .line 348
    const/16 v10, 0xe

    .line 349
    .line 350
    invoke-direct {v4, p0, v5, v10}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v9, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    .line 355
    .line 356
    iget-object v4, v5, Lr0/b;->c:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v4, Ljava/lang/String;

    .line 359
    .line 360
    new-instance v5, Ls2/l;

    .line 361
    .line 362
    invoke-direct {v5, v7, v8, v9}, Ls2/l;-><init>(Landroid/widget/TextView;Landroid/widget/ProgressBar;Lcom/google/android/material/button/MaterialButton;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    iget-object v4, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->y:Landroid/widget/LinearLayout;

    .line 369
    .line 370
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 371
    .line 372
    .line 373
    add-int/lit8 v0, v0, 0x1

    .line 374
    .line 375
    goto :goto_0

    .line 376
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    .line 377
    .line 378
    const-string p2, "com.zalexdev.stryker.install.UPDATED"

    .line 379
    .line 380
    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 384
    .line 385
    .line 386
    move-result-object p2

    .line 387
    iget-object v0, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->C:Lf/d0;

    .line 388
    .line 389
    invoke-static {p2, v0, p1}, Lx/g;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 390
    .line 391
    .line 392
    iput-boolean v3, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->A:Z

    .line 393
    .line 394
    invoke-virtual {p0}, Lcom/zalexdev/stryker/coremanger/CoreManager;->d()V

    .line 395
    .line 396
    .line 397
    iget-object p1, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->a:Ll4/l;

    .line 398
    .line 399
    const-string p2, "cm_search"

    .line 400
    .line 401
    invoke-virtual {p1, p2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    if-eqz p1, :cond_2

    .line 406
    .line 407
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 408
    .line 409
    .line 410
    move-result p2

    .line 411
    if-nez p2, :cond_2

    .line 412
    .line 413
    iget-object p2, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->i:Lcom/google/android/material/textfield/TextInputEditText;

    .line 414
    .line 415
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    .line 417
    .line 418
    :cond_2
    iget-object p1, p0, Lcom/zalexdev/stryker/coremanger/CoreManager;->a:Ll4/l;

    .line 419
    .line 420
    const-string p2, "cm_source"

    .line 421
    .line 422
    invoke-virtual {p1, p2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object p1

    .line 426
    const-string p2, "pip"

    .line 427
    .line 428
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result p1

    .line 432
    xor-int/2addr p1, v3

    .line 433
    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/coremanger/CoreManager;->h(Z)V

    .line 434
    .line 435
    .line 436
    return-void
.end method
