.class public final Landroidx/transition/z;
.super Landroidx/transition/v;
.source "SourceFile"


# instance fields
.field public a:Landroidx/transition/a0;


# virtual methods
.method public final onTransitionEnd(Landroidx/transition/u;)V
    .locals 2

    iget-object v0, p0, Landroidx/transition/z;->a:Landroidx/transition/a0;

    iget v1, v0, Landroidx/transition/a0;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/transition/a0;->c:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/transition/a0;->d:Z

    invoke-virtual {v0}, Landroidx/transition/u;->end()V

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/u;->removeListener(Landroidx/transition/t;)Landroidx/transition/u;

    return-void
.end method

.method public final onTransitionStart(Landroidx/transition/u;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/z;->a:Landroidx/transition/a0;

    iget-boolean v0, p1, Landroidx/transition/a0;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/transition/u;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/transition/a0;->d:Z

    :cond_0
    return-void
.end method
