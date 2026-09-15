.class Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$1;
.super Landroidx/recyclerview/widget/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    move-result-object p1

    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p2, Ll4/l;

    iget-object p3, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Ll4/l;-><init>(Landroid/content/Context;)V

    const-string p3, "wpair_recordings_scroll_pos"

    invoke-virtual {p2, p1, p3}, Ll4/l;->c0(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
