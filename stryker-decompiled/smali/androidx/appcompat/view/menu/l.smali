.class public final Landroidx/appcompat/view/menu/l;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/o;

.field public b:I

.field public c:Z

.field public final d:Z

.field public final e:Landroid/view/LayoutInflater;

.field public final f:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o;Landroid/view/LayoutInflater;ZI)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/view/menu/l;->b:I

    iput-boolean p3, p0, Landroidx/appcompat/view/menu/l;->d:Z

    iput-object p2, p0, Landroidx/appcompat/view/menu/l;->e:Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroidx/appcompat/view/menu/l;->a:Landroidx/appcompat/view/menu/o;

    iput p4, p0, Landroidx/appcompat/view/menu/l;->f:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->a:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o;->getExpandedItem()Landroidx/appcompat/view/menu/q;

    move-result-object v1

    if-eqz v1, :cond_1

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

    iput v3, p0, Landroidx/appcompat/view/menu/l;->b:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/view/menu/l;->b:I

    return-void
.end method

.method public final b(I)Landroidx/appcompat/view/menu/q;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/l;->d:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/l;->a:Landroidx/appcompat/view/menu/o;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget v1, p0, Landroidx/appcompat/view/menu/l;->b:I

    if-ltz v1, :cond_1

    if-lt p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/q;

    return-object p1
.end method

.method public final getCount()I
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/l;->d:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/l;->a:Landroidx/appcompat/view/menu/o;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget v1, p0, Landroidx/appcompat/view/menu/l;->b:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/l;->b(I)Landroidx/appcompat/view/menu/q;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Landroidx/appcompat/view/menu/l;->e:Landroid/view/LayoutInflater;

    .line 5
    .line 6
    iget v1, p0, Landroidx/appcompat/view/menu/l;->f:I

    .line 7
    .line 8
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/l;->b(I)Landroidx/appcompat/view/menu/q;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iget p3, p3, Landroidx/appcompat/view/menu/q;->b:I

    .line 17
    .line 18
    add-int/lit8 v1, p1, -0x1

    .line 19
    .line 20
    if-ltz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/l;->b(I)Landroidx/appcompat/view/menu/q;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v1, v1, Landroidx/appcompat/view/menu/q;->b:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v1, p3

    .line 30
    :goto_0
    move-object v2, p2

    .line 31
    check-cast v2, Landroidx/appcompat/view/menu/ListMenuItemView;

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/appcompat/view/menu/l;->a:Landroidx/appcompat/view/menu/o;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/o;->isGroupDividerEnabled()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x1

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    if-eq p3, v1, :cond_2

    .line 43
    .line 44
    move p3, v4

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move p3, v0

    .line 47
    :goto_1
    invoke-virtual {v2, p3}, Landroidx/appcompat/view/menu/ListMenuItemView;->setGroupDividerEnabled(Z)V

    .line 48
    .line 49
    .line 50
    move-object p3, p2

    .line 51
    check-cast p3, Landroidx/appcompat/view/menu/d0;

    .line 52
    .line 53
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/l;->c:Z

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/l;->b(I)Landroidx/appcompat/view/menu/q;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p3, p1, v0}, Landroidx/appcompat/view/menu/d0;->initialize(Landroidx/appcompat/view/menu/q;I)V

    .line 65
    .line 66
    .line 67
    return-object p2
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->a()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
