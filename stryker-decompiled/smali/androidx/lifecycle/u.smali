.class public final Landroidx/lifecycle/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/n;

.field public b:Landroidx/lifecycle/r;


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroidx/lifecycle/m;->a()Landroidx/lifecycle/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gez v2, :cond_0

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    :cond_0
    iput-object v1, p0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/r;

    .line 17
    .line 18
    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 22
    .line 23
    return-void
.end method
