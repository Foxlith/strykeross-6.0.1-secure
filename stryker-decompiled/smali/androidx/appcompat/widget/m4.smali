.class public final Landroidx/appcompat/widget/m4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/c0;


# instance fields
.field public a:Landroidx/appcompat/view/menu/o;

.field public b:Landroidx/appcompat/view/menu/q;

.field public final synthetic c:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/m4;->c:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public final collapseItemActionView(Landroidx/appcompat/view/menu/o;Landroidx/appcompat/view/menu/q;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/m4;->c:Landroidx/appcompat/widget/Toolbar;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 4
    .line 5
    instance-of v1, v0, Li/d;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Li/d;

    .line 10
    .line 11
    invoke-interface {v0}, Li/d;->c()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->addChildrenForExpandedActionView()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/appcompat/widget/m4;->b:Landroidx/appcompat/view/menu/q;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p2, Landroidx/appcompat/view/menu/q;->C:Z

    .line 37
    .line 38
    iget-object p2, p2, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->updateBackInvokedCallbackState()V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    return p1
.end method

.method public final expandItemActionView(Landroidx/appcompat/view/menu/o;Landroidx/appcompat/view/menu/q;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/m4;->c:Landroidx/appcompat/widget/Toolbar;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eq v0, p1, :cond_1

    .line 13
    .line 14
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    .line 20
    iget-object v1, p1, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/q;->getActionView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 35
    .line 36
    iput-object p2, p0, Landroidx/appcompat/widget/m4;->b:Landroidx/appcompat/view/menu/q;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eq v0, p1, :cond_3

    .line 43
    .line 44
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    check-cast v0, Landroid/view/ViewGroup;

    .line 49
    .line 50
    iget-object v1, p1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/n4;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget v1, p1, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    .line 60
    .line 61
    and-int/lit8 v1, v1, 0x70

    .line 62
    .line 63
    const v2, 0x800003

    .line 64
    .line 65
    .line 66
    or-int/2addr v1, v2

    .line 67
    iput v1, v0, Lf/a;->a:I

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    iput v1, v0, Landroidx/appcompat/widget/n4;->b:I

    .line 71
    .line 72
    iget-object v1, p1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->removeChildrenForExpandedActionView()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 86
    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p2, Landroidx/appcompat/view/menu/q;->C:Z

    .line 90
    .line 91
    iget-object p2, p2, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 98
    .line 99
    instance-of v1, p2, Li/d;

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    check-cast p2, Li/d;

    .line 104
    .line 105
    invoke-interface {p2}, Li/d;->b()V

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->updateBackInvokedCallbackState()V

    .line 109
    .line 110
    .line 111
    return v0
.end method

.method public final flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/o;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/widget/m4;->a:Landroidx/appcompat/view/menu/o;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/m4;->b:Landroidx/appcompat/view/menu/q;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/o;->collapseItemActionView(Landroidx/appcompat/view/menu/q;)Z

    :cond_0
    iput-object p2, p0, Landroidx/appcompat/widget/m4;->a:Landroidx/appcompat/view/menu/o;

    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/o;Z)V
    .locals 0

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onSubMenuSelected(Landroidx/appcompat/view/menu/i0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final updateMenuView(Z)V
    .locals 3

    iget-object p1, p0, Landroidx/appcompat/widget/m4;->b:Landroidx/appcompat/view/menu/q;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/widget/m4;->a:Landroidx/appcompat/view/menu/o;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/m4;->a:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/o;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/widget/m4;->b:Landroidx/appcompat/view/menu/q;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/m4;->a:Landroidx/appcompat/view/menu/o;

    iget-object v0, p0, Landroidx/appcompat/widget/m4;->b:Landroidx/appcompat/view/menu/q;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/m4;->collapseItemActionView(Landroidx/appcompat/view/menu/o;Landroidx/appcompat/view/menu/q;)Z

    :cond_2
    :goto_1
    return-void
.end method
