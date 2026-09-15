.class public final Lcom/stryker/terminal/ui/pm/PackageViewHolder;
.super Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder<",
        "Lcom/stryker/terminal/ui/pm/PackageModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final listener:Lcom/stryker/terminal/ui/pm/PackageAdapter$Listener;

.field private final packageDescView:Landroid/widget/TextView;

.field private final packageNameView:Landroid/widget/TextView;

.field private final rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/stryker/terminal/ui/pm/PackageAdapter$Listener;)V
    .locals 1

    const-string v0, "rootView"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/pm/PackageViewHolder;->rootView:Landroid/view/View;

    iput-object p2, p0, Lcom/stryker/terminal/ui/pm/PackageViewHolder;->listener:Lcom/stryker/terminal/ui/pm/PackageAdapter$Listener;

    sget p2, Lcom/stryker/terminal/R$id;->package_item_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "rootView.findViewById(R.id.package_item_name)"

    invoke-static {p2, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/stryker/terminal/ui/pm/PackageViewHolder;->packageNameView:Landroid/widget/TextView;

    sget p2, Lcom/stryker/terminal/R$id;->package_item_desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "rootView.findViewById(R.id.package_item_desc)"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stryker/terminal/ui/pm/PackageViewHolder;->packageDescView:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic a(Lcom/stryker/terminal/ui/pm/PackageViewHolder;Lcom/stryker/terminal/ui/pm/PackageModel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/ui/pm/PackageViewHolder;->performBind$lambda$0(Lcom/stryker/terminal/ui/pm/PackageViewHolder;Lcom/stryker/terminal/ui/pm/PackageModel;Landroid/view/View;)V

    return-void
.end method

.method private static final performBind$lambda$0(Lcom/stryker/terminal/ui/pm/PackageViewHolder;Lcom/stryker/terminal/ui/pm/PackageModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/stryker/terminal/ui/pm/PackageViewHolder;->listener:Lcom/stryker/terminal/ui/pm/PackageAdapter$Listener;

    invoke-interface {p0, p1}, Lcom/stryker/terminal/ui/pm/PackageAdapter$Listener;->onModelClicked(Lcom/stryker/terminal/ui/pm/PackageModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic performBind(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/stryker/terminal/ui/pm/PackageModel;

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/pm/PackageViewHolder;->performBind(Lcom/stryker/terminal/ui/pm/PackageModel;)V

    return-void
.end method

.method public performBind(Lcom/stryker/terminal/ui/pm/PackageModel;)V
    .locals 3

    .line 2
    const-string v0, "item"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/pm/PackageViewHolder;->rootView:Landroid/view/View;

    new-instance v1, Lcom/google/android/material/snackbar/a;

    const/4 v2, 0x6

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/pm/PackageViewHolder;->packageNameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/pm/PackageModel;->getPackageInfo()Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/pm/PackageViewHolder;->packageDescView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/pm/PackageModel;->getPackageInfo()Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
