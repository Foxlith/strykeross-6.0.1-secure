.class final Landroidx/lifecycle/LifecycleController$observer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "source.lifecycle"

    .line 6
    .line 7
    invoke-static {p2, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p2, Landroidx/lifecycle/v;

    .line 11
    .line 12
    iget-object p2, p2, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 13
    .line 14
    sget-object v1, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-ne p2, v1, :cond_0

    .line 18
    .line 19
    throw v2

    .line 20
    :cond_0
    invoke-interface {p1}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v2
.end method
