.class Lcom/zalexdev/stryker/wpair/WpairTerminal$3;
.super Landroidx/recyclerview/widget/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zalexdev/stryker/wpair/WpairTerminal;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wpair/WpairTerminal;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$3;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$3;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->access$300(Lcom/zalexdev/stryker/wpair/WpairTerminal;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$3;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-static {p2}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->access$400(Lcom/zalexdev/stryker/wpair/WpairTerminal;)Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->getItemCount()I

    move-result p2

    iget-object p3, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$3;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    add-int/lit8 p2, p2, -0x2

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    invoke-static {p3, p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->access$502(Lcom/zalexdev/stryker/wpair/WpairTerminal;Z)Z

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$3;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Ll4/l;

    invoke-direct {p2, p1}, Ll4/l;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$3;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->access$500(Lcom/zalexdev/stryker/wpair/WpairTerminal;)Z

    move-result p1

    xor-int/2addr p1, v0

    const-string p3, "wpair_term_manual_scroll"

    invoke-virtual {p2, p3, p1}, Ll4/l;->b0(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method
