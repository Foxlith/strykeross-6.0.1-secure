.class public Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# instance fields
.field public a:Ll4/l;

.field public b:Landroid/content/Context;

.field public c:Landroidx/fragment/app/a0;

.field public d:Lt2/m;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p3, 0x7f0d0027

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->c:Landroidx/fragment/app/a0;

    new-instance p2, Ll4/l;

    iget-object p3, p0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->b:Landroid/content/Context;

    invoke-direct {p2, p3}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->a:Ll4/l;

    iget-object p2, p0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const p2, 0x7f0a0162

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    const/16 v0, 0xff

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    const v0, 0x7f0a007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lt2/m;

    iget-object v2, p0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->c:Landroidx/fragment/app/a0;

    iget-object v4, p0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->a:Ll4/l;

    iget-object v4, v4, Ll4/l;->e:Ll4/m;

    invoke-virtual {v4}, Ll4/m;->g()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p3}, Lt2/m;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;I)V

    iput-object v1, p0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->d:Lt2/m;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    new-instance p2, Lcom/nambimobile/widgets/efab/a;

    const/16 p3, 0x12

    invoke-direct {p2, p0, p3}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->d:Lt2/m;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->a:Ll4/l;

    if-eqz p2, :cond_0

    iget-object p2, p2, Ll4/l;->e:Ll4/m;

    invoke-virtual {p2}, Ll4/m;->g()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p1, Lt2/m;->b:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->d:Lt2/m;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
