.class final Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/WpairTerminal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LineAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/k0;"
    }
.end annotation


# instance fields
.field private final all:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

.field private final visible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/zalexdev/stryker/wpair/WpairTerminal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->all:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->visible:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wpair/WpairTerminal;Lcom/zalexdev/stryker/wpair/WpairTerminal$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;-><init>(Lcom/zalexdev/stryker/wpair/WpairTerminal;)V

    return-void
.end method

.method private matches(Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;->host:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;->body:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p1, p1, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;->tag:Ljava/lang/String;

    if-eqz p1, :cond_2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public append(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x1388

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->all:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->access$600(Lcom/zalexdev/stryker/wpair/WpairTerminal;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->applyFilter(Ljava/lang/String;)V

    return-void
.end method

.method public applyFilter(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;

    invoke-direct {p0, v2, p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->matches(Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->visible:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/k0;->notifyItemRangeRemoved(II)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/k0;->notifyItemRangeInserted(II)V

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->access$700(Lcom/zalexdev/stryker/wpair/WpairTerminal;Z)V

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/k0;->notifyItemRangeRemoved(II)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getVisibleCount()I
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;

    invoke-virtual {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->onBindViewHolder(Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;I)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;->timestamp:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;->tag:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;->host:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;->host:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, 0x10d45

    const/4 v4, 0x1

    if-eq v1, v3, :cond_3

    const v2, 0x1332e

    if-eq v1, v2, :cond_2

    const v2, 0x225cae

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    goto :goto_2

    :cond_2
    const-string v1, "OUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v4

    goto :goto_2

    :cond_3
    const-string v1, "ERR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, -0x1

    :goto_2
    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;->tag:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    if-eq v2, v4, :cond_5

    const v1, -0x2d5701

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;->body:Landroid/widget/TextView;

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_5
    const v1, -0x811879

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;->body:Landroid/widget/TextView;

    const v1, -0x19120d

    goto :goto_3

    :cond_6
    const v1, -0x848e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;->body:Landroid/widget/TextView;

    const/16 v1, -0x5e68

    goto :goto_3

    :goto_4
    iget-object p1, p1, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;->body:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;->body:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d007d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;

    invoke-direct {p2, p0, p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;-><init>(Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;Landroid/view/View;)V

    return-object p2
.end method
