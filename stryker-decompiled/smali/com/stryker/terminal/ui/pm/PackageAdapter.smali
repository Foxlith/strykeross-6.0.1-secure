.class public final Lcom/stryker/terminal/ui/pm/PackageAdapter;
.super Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;
.source "SourceFile"

# interfaces
.implements Ld2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/ui/pm/PackageAdapter$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter<",
        "Lcom/stryker/terminal/ui/pm/PackageModel;",
        ">;",
        "Ld2/b;"
    }
.end annotation


# instance fields
.field private final listener:Lcom/stryker/terminal/ui/pm/PackageAdapter$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Comparator;Lcom/stryker/terminal/ui/pm/PackageAdapter$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Comparator<",
            "Lcom/stryker/terminal/ui/pm/PackageModel;",
            ">;",
            "Lcom/stryker/terminal/ui/pm/PackageAdapter$Listener;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/stryker/terminal/ui/pm/PackageModel;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/util/Comparator;)V

    iput-object p3, p0, Lcom/stryker/terminal/ui/pm/PackageAdapter;->listener:Lcom/stryker/terminal/ui/pm/PackageAdapter$Listener;

    return-void
.end method


# virtual methods
.method public getSectionName(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->getItem(I)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;

    move-result-object p1

    check-cast p1, Lcom/stryker/terminal/ui/pm/PackageModel;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/pm/PackageModel;->getPackageInfo()Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "#"

    :goto_0
    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder<",
            "+",
            "Lcom/stryker/terminal/ui/pm/PackageModel;",
            ">;"
        }
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "parent"

    invoke-static {p2, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/stryker/terminal/R$layout;->item_package:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/stryker/terminal/ui/pm/PackageViewHolder;

    const-string p3, "rootView"

    invoke-static {p1, p3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/stryker/terminal/ui/pm/PackageAdapter;->listener:Lcom/stryker/terminal/ui/pm/PackageAdapter$Listener;

    invoke-direct {p2, p1, p3}, Lcom/stryker/terminal/ui/pm/PackageViewHolder;-><init>(Landroid/view/View;Lcom/stryker/terminal/ui/pm/PackageAdapter$Listener;)V

    return-object p2
.end method
