.class public Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public a:Landroidx/fragment/app/a0;

.field public b:Landroid/content/Context;

.field public c:Ll4/l;

.field public d:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p3, 0x7f0d0103

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->a:Landroidx/fragment/app/a0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->b:Landroid/content/Context;

    new-instance p3, Ll4/l;

    invoke-direct {p3, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->c:Ll4/l;

    const p2, 0x7f0a05fb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p2, p0, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lt2/m;

    iget-object v2, p0, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->a:Landroidx/fragment/app/a0;

    iget-object v4, p0, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->c:Ll4/l;

    invoke-virtual {v4}, Ll4/l;->G()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lt2/m;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;I)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    const p2, 0x7f0a01e1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    new-instance v1, Lt2/n;

    invoke-direct {v1, p0, v0}, Lt2/n;-><init>(Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a02df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    new-instance v0, Lt2/n;

    invoke-direct {v0, p0, p3}, Lt2/n;-><init>(Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
