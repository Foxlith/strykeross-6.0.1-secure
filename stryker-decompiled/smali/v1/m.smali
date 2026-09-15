.class public final Lv1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/c;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv1/m;->d:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lv1/m;->a:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lv1/m;->b:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lv1/m;->c:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv1/m;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lv1/m;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Lv1/m;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv1/m;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ly0/w;

    invoke-virtual {v1}, Ly0/w;->b()V

    iget-object v1, p0, Lv1/m;->c:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/view/menu/d;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/d;->c()Lc1/h;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    invoke-interface {v2, v3}, Lc1/f;->h(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v2, v3, p1}, Lc1/f;->d(ILjava/lang/String;)V

    :goto_0
    move-object p1, v0

    check-cast p1, Ly0/w;

    invoke-virtual {p1}, Ly0/w;->c()V

    :try_start_0
    invoke-interface {v2}, Lc1/h;->e()I

    move-object p1, v0

    check-cast p1, Ly0/w;

    invoke-virtual {p1}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Ly0/w;

    invoke-virtual {v0}, Ly0/w;->f()V

    check-cast v1, Landroidx/appcompat/view/menu/d;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    return-void

    :catchall_0
    move-exception p1

    check-cast v0, Ly0/w;

    invoke-virtual {v0}, Ly0/w;->f()V

    check-cast v1, Landroidx/appcompat/view/menu/d;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    throw p1
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv1/m;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ly0/w;

    invoke-virtual {v1}, Ly0/w;->b()V

    iget-object v1, p0, Lv1/m;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/view/menu/d;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/d;->c()Lc1/h;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ly0/w;

    invoke-virtual {v2}, Ly0/w;->c()V

    :try_start_0
    invoke-interface {v1}, Lc1/h;->e()I

    move-object v2, v0

    check-cast v2, Ly0/w;

    invoke-virtual {v2}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Ly0/w;

    invoke-virtual {v0}, Ly0/w;->f()V

    iget-object v0, p0, Lv1/m;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/d;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    return-void

    :catchall_0
    move-exception v2

    check-cast v0, Ly0/w;

    invoke-virtual {v0}, Ly0/w;->f()V

    iget-object v0, p0, Lv1/m;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/d;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    throw v2
.end method
