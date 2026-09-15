.class public abstract Ly0/d;
.super Landroidx/appcompat/view/menu/d;
.source "SourceFile"


# virtual methods
.method public abstract t(Lc1/h;Ljava/lang/Object;)V
.end method

.method public final u(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->c()Lc1/h;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Ly0/d;->t(Lc1/h;Ljava/lang/Object;)V

    invoke-interface {v0}, Lc1/h;->r()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    throw p1
.end method
