.class public Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/p1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;->this$0:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder$1;-><init>(Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
