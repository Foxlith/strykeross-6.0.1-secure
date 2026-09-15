.class public Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic i:I


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ll4/l;

.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/TextView;

.field public f:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field public final g:Ljava/util/ArrayList;

.field public h:Lp2/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0107

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->reload()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->a:Landroid/content/Context;

    new-instance v0, Ll4/l;

    invoke-direct {v0, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->b:Ll4/l;

    const p2, 0x7f0a0275

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->c:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a026e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->d:Landroid/view/View;

    const p2, 0x7f0a026d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->e:Landroid/widget/TextView;

    const p2, 0x7f0a026c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iput-object p1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->f:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-object p1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p2, 0x40

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    new-instance p1, Lp2/t;

    iget-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->g:Ljava/util/ArrayList;

    new-instance v1, Lp2/o;

    invoke-direct {v1, p0}, Lp2/o;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;)V

    invoke-direct {p1, p2, v0, v1}, Lp2/t;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lp2/o;)V

    iput-object p1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->h:Lp2/t;

    iget-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->f:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    new-instance p2, Lcom/nambimobile/widgets/efab/a;

    const/16 v0, 0xa

    invoke-direct {p2, p0, v0}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->reload()V

    return-void
.end method

.method public final reload()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->b:Ll4/l;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->g:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->b:Ll4/l;

    .line 12
    .line 13
    invoke-virtual {v1}, Ll4/l;->A()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->h:Lp2/t;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->e:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->d:Landroid/view/View;

    .line 43
    .line 44
    const/16 v2, 0x8

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    move v4, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v4, v2

    .line 52
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v2, v3

    .line 61
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    instance-of v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    check-cast v0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->d()V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method
