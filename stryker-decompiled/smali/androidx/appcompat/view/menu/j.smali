.class public final Landroidx/appcompat/view/menu/j;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public a:I

.field public final synthetic b:Landroidx/appcompat/view/menu/k;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/k;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/k;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/appcompat/view/menu/j;->a:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/k;

    iget-object v1, v0, Landroidx/appcompat/view/menu/k;->c:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o;->getExpandedItem()Landroidx/appcompat/view/menu/q;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroidx/appcompat/view/menu/k;->c:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/q;

    if-ne v4, v1, :cond_0

    iput v3, p0, Landroidx/appcompat/view/menu/j;->a:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/view/menu/j;->a:I

    return-void
.end method

.method public final b(I)Landroidx/appcompat/view/menu/q;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/k;

    iget-object v1, v0, Landroidx/appcompat/view/menu/k;->c:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/appcompat/view/menu/j;->a:I

    if-ltz v0, :cond_0

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/q;

    return-object p1
.end method

.method public final getCount()I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/k;

    iget-object v1, v0, Landroidx/appcompat/view/menu/k;->c:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/appcompat/view/menu/j;->a:I

    if-gez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->b(I)Landroidx/appcompat/view/menu/q;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/k;

    iget-object p2, p2, Landroidx/appcompat/view/menu/k;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0010

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object p3, p2

    check-cast p3, Landroidx/appcompat/view/menu/d0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->b(I)Landroidx/appcompat/view/menu/q;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Landroidx/appcompat/view/menu/d0;->initialize(Landroidx/appcompat/view/menu/q;I)V

    return-object p2
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->a()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
