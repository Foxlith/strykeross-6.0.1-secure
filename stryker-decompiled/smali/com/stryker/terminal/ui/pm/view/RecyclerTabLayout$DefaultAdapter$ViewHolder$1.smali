.class Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;-><init>(Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;

.field final synthetic val$this$0:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder$1;->this$1:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;

    iput-object p2, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder$1;->val$this$0:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder$1;->this$1:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder$1;->this$1:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;

    iget-object p1, p1, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;->this$0:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$Adapter;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->j()V

    :cond_0
    return-void
.end method
