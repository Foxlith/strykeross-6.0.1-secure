.class public Landroidx/media/s;
.super Landroidx/media/p;
.source "SourceFile"


# virtual methods
.method public final onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media/p;->a:Landroidx/media/r;

    .line 2
    .line 3
    check-cast v0, Landroidx/media/t;

    .line 4
    .line 5
    new-instance v1, Landroidx/media/q;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p2, v2}, Landroidx/media/q;-><init>(Landroid/service/media/MediaBrowserService$Result;I)V

    .line 9
    .line 10
    .line 11
    check-cast v0, Landroidx/media/g;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p2, Landroidx/media/e;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {p2, p1, v1, v2}, Landroidx/media/e;-><init>(Ljava/lang/Object;Landroidx/media/q;I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, v0, Landroidx/media/g;->e:Landroidx/media/MediaBrowserServiceCompat;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    iput p1, p2, Landroidx/media/j;->c:I

    .line 29
    .line 30
    invoke-virtual {p2}, Landroidx/media/j;->c()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
