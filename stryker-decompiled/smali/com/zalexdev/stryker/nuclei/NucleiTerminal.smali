.class public Lcom/zalexdev/stryker/nuclei/NucleiTerminal;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic s:I


# instance fields
.field public a:I

.field public b:Lcom/zalexdev/stryker/custom/Site;

.field public c:Ll4/l;

.field public d:Ljava/io/File;

.field public e:J

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/ProgressBar;

.field public i:Landroidx/recyclerview/widget/RecyclerView;

.field public j:Landroid/view/View;

.field public k:Ld4/o;

.field public l:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public m:Z

.field public n:Ljava/lang/String;

.field public final p:Landroid/os/Handler;

.field public final q:Landroidx/activity/d;

.field public final r:Lf/d0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->m:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->n:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->p:Landroid/os/Handler;

    new-instance v0, Landroidx/activity/d;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->q:Landroidx/activity/d;

    new-instance v0, Lf/d0;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lf/d0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->r:Lf/d0;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->c:Ll4/l;

    invoke-virtual {v0}, Ll4/l;->I()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->a:I

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zalexdev/stryker/custom/Site;

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->b:Lcom/zalexdev/stryker/custom/Site;

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->b:Lcom/zalexdev/stryker/custom/Site;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "Running"

    iget-object v0, v0, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->b:Lcom/zalexdev/stryker/custom/Site;

    iget-object v0, v0, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    const-string v2, "Scheduled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->b:Lcom/zalexdev/stryker/custom/Site;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->b:Lcom/zalexdev/stryker/custom/Site;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  \u00b7  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->b:Lcom/zalexdev/stryker/custom/Site;

    iget-object v2, v2, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v2, "\u2014"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0067

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

    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->r:Lf/d0;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->q:Landroidx/activity/d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

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

    iget-object v3, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->r:Lf/d0;

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
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->q:Landroidx/activity/d;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    new-instance p2, Ll4/l;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->c:Ll4/l;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "siteIndex"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->a:I

    :cond_0
    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->c:Ll4/l;

    invoke-virtual {p2}, Ll4/l;->I()Ljava/util/ArrayList;

    move-result-object p2

    iget v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->a:I

    if-ltz v0, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->a:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zalexdev/stryker/custom/Site;

    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->b:Lcom/zalexdev/stryker/custom/Site;

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->a:I

    invoke-static {p2, v0}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->o(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->d:Ljava/io/File;

    const p2, 0x7f0a063d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->f:Landroid/widget/TextView;

    const p2, 0x7f0a063c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->g:Landroid/widget/TextView;

    const p2, 0x7f0a0639

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->h:Landroid/widget/ProgressBar;

    const p2, 0x7f0a063a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->i:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a0637

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->j:Landroid/view/View;

    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->f:Landroid/widget/TextView;

    const-string v0, "nuclei terminal"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->b:Lcom/zalexdev/stryker/custom/Site;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "site "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->c:Ll4/l;

    const-string v0, "nuclei_term_autoscroll"

    invoke-virtual {p2, v0}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->m:Z

    :cond_3
    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->c:Ll4/l;

    const-string v0, "nuclei_term_filter"

    invoke-virtual {p2, v0}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->n:Ljava/lang/String;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-direct {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->l:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->l:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    new-instance p2, Ld4/o;

    invoke-direct {p2}, Ld4/o;-><init>()V

    iput-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->k:Ld4/o;

    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->i:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/o;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/b1;)V

    const p2, 0x7f0a0635

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Ld4/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ld4/l;-><init>(Lcom/zalexdev/stryker/nuclei/NucleiTerminal;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0636

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Ld4/l;

    invoke-direct {v1, p0, v0}, Ld4/l;-><init>(Lcom/zalexdev/stryker/nuclei/NucleiTerminal;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a063b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Ld4/l;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Ld4/l;-><init>(Lcom/zalexdev/stryker/nuclei/NucleiTerminal;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->readNewLines()V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->d()V

    return-void
.end method

.method public final readNewLines()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->d:Ljava/io/File;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_f

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_a

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->d:Ljava/io/File;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    iget-wide v5, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->e:J

    .line 23
    .line 24
    cmp-long v0, v3, v5

    .line 25
    .line 26
    const-wide/16 v5, 0x0

    .line 27
    .line 28
    if-gez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->k:Ld4/o;

    .line 31
    .line 32
    iget-object v7, v0, Ld4/o;->a:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v8}, Landroidx/recyclerview/widget/k0;->notifyItemRangeRemoved(II)V

    .line 42
    .line 43
    .line 44
    iput-wide v5, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->e:J

    .line 45
    .line 46
    :cond_1
    iget-wide v7, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->e:J

    .line 47
    .line 48
    cmp-long v0, v3, v7

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    .line 59
    .line 60
    new-instance v8, Ljava/io/FileReader;

    .line 61
    .line 62
    iget-object v9, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->d:Ljava/io/File;

    .line 63
    .line 64
    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    move-wide v8, v5

    .line 71
    :goto_0
    :try_start_1
    iget-wide v10, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->e:J

    .line 72
    .line 73
    cmp-long v12, v8, v10

    .line 74
    .line 75
    if-gez v12, :cond_4

    .line 76
    .line 77
    sub-long/2addr v10, v8

    .line 78
    invoke-virtual {v7, v10, v11}, Ljava/io/BufferedReader;->skip(J)J

    .line 79
    .line 80
    .line 81
    move-result-wide v10

    .line 82
    cmp-long v12, v10, v5

    .line 83
    .line 84
    if-gtz v12, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    add-long/2addr v8, v10

    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v3

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-eqz v5, :cond_8

    .line 96
    .line 97
    invoke-static {v5}, Ld4/m;->a(Ljava/lang/String;)Ld4/m;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    iget-object v6, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->n:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz v6, :cond_7

    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_5

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    iget-object v6, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->n:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    iget-object v8, v5, Ld4/m;->c:Ljava/lang/String;

    .line 119
    .line 120
    if-eqz v8, :cond_6

    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-eqz v8, :cond_6

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    iget-object v8, v5, Ld4/m;->b:Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v8, :cond_4

    .line 136
    .line 137
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_4

    .line 146
    .line 147
    :cond_7
    :goto_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_8
    iput-wide v3, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .line 153
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_5

    .line 157
    :goto_3
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :catchall_1
    move-exception v4

    .line 162
    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    :goto_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 166
    :catch_0
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_9

    .line 171
    .line 172
    return-void

    .line 173
    :cond_9
    iget-object v3, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->k:Ld4/o;

    .line 174
    .line 175
    iget-object v4, v3, Ld4/o;->a:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    const/16 v7, 0x1388

    .line 189
    .line 190
    if-le v6, v7, :cond_a

    .line 191
    .line 192
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    sub-int/2addr v0, v7

    .line 197
    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v2, v0}, Landroidx/recyclerview/widget/k0;->notifyItemRangeRemoved(II)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-virtual {v3, v2, v0}, Landroidx/recyclerview/widget/k0;->notifyItemRangeInserted(II)V

    .line 212
    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {v3, v5, v0}, Landroidx/recyclerview/widget/k0;->notifyItemRangeInserted(II)V

    .line 220
    .line 221
    .line 222
    :goto_6
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->k:Ld4/o;

    .line 223
    .line 224
    iget-object v0, v0, Ld4/o;->a:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    const/4 v3, 0x1

    .line 231
    if-nez v0, :cond_b

    .line 232
    .line 233
    move v0, v3

    .line 234
    goto :goto_7

    .line 235
    :cond_b
    move v0, v2

    .line 236
    :goto_7
    iget-object v4, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->j:Landroid/view/View;

    .line 237
    .line 238
    if-eqz v0, :cond_c

    .line 239
    .line 240
    move v5, v2

    .line 241
    goto :goto_8

    .line 242
    :cond_c
    move v5, v1

    .line 243
    :goto_8
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    iget-object v4, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 247
    .line 248
    if-eqz v0, :cond_d

    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_d
    move v1, v2

    .line 252
    :goto_9
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    .line 254
    .line 255
    iget-boolean v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->m:Z

    .line 256
    .line 257
    if-eqz v0, :cond_e

    .line 258
    .line 259
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 260
    .line 261
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->k:Ld4/o;

    .line 262
    .line 263
    iget-object v1, v1, Ld4/o;->a:Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    sub-int/2addr v1, v3

    .line 270
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 271
    .line 272
    .line 273
    :cond_e
    return-void

    .line 274
    :cond_f
    :goto_a
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->j:Landroid/view/View;

    .line 275
    .line 276
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    .line 283
    .line 284
    return-void
.end method
