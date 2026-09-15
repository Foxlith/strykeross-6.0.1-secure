.class public final Landroidx/appcompat/view/menu/b;
.super Landroidx/appcompat/widget/l2;
.source "SourceFile"


# instance fields
.field public final synthetic j:Landroidx/appcompat/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->j:Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/l2;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Landroidx/appcompat/view/menu/g0;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->j:Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->f:Landroidx/appcompat/view/menu/c;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast v0, Landroidx/appcompat/widget/i;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/o;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/appcompat/widget/o;->v:Landroidx/appcompat/widget/h;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a0;->a()Landroidx/appcompat/view/menu/x;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    return-object v1
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->j:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->d:Landroidx/appcompat/view/menu/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/q;

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/n;->a(Landroidx/appcompat/view/menu/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b;->b()Landroidx/appcompat/view/menu/g0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/g0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
