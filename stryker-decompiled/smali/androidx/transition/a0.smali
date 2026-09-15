.class public Landroidx/transition/a0;
.super Landroidx/transition/u;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Z

.field public c:I

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/transition/u;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/transition/a0;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/a0;->d:Z

    iput v0, p0, Landroidx/transition/a0;->e:I

    return-void
.end method


# virtual methods
.method public final addListener(Landroidx/transition/t;)Landroidx/transition/u;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/u;->addListener(Landroidx/transition/t;)Landroidx/transition/u;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/transition/a0;

    .line 6
    .line 7
    return-object p1
.end method

.method public final addTarget(I)Landroidx/transition/u;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    invoke-virtual {v1, p1}, Landroidx/transition/u;->addTarget(I)Landroidx/transition/u;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/u;->addTarget(I)Landroidx/transition/u;

    move-result-object p1

    check-cast p1, Landroidx/transition/a0;

    return-object p1
.end method

.method public final addTarget(Landroid/view/View;)Landroidx/transition/u;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    invoke-virtual {v1, p1}, Landroidx/transition/u;->addTarget(Landroid/view/View;)Landroidx/transition/u;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/u;->addTarget(Landroid/view/View;)Landroidx/transition/u;

    move-result-object p1

    check-cast p1, Landroidx/transition/a0;

    return-object p1
.end method

.method public final addTarget(Ljava/lang/Class;)Landroidx/transition/u;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    invoke-virtual {v1, p1}, Landroidx/transition/u;->addTarget(Ljava/lang/Class;)Landroidx/transition/u;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/u;->addTarget(Ljava/lang/Class;)Landroidx/transition/u;

    move-result-object p1

    check-cast p1, Landroidx/transition/a0;

    return-object p1
.end method

.method public final addTarget(Ljava/lang/String;)Landroidx/transition/u;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    invoke-virtual {v1, p1}, Landroidx/transition/u;->addTarget(Ljava/lang/String;)Landroidx/transition/u;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/u;->addTarget(Ljava/lang/String;)Landroidx/transition/u;

    move-result-object p1

    check-cast p1, Landroidx/transition/a0;

    return-object p1
.end method

.method public final cancel()V
    .locals 3

    invoke-super {p0}, Landroidx/transition/u;->cancel()V

    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/u;

    invoke-virtual {v2}, Landroidx/transition/u;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final captureEndValues(Landroidx/transition/c0;)V
    .locals 3

    iget-object v0, p1, Landroidx/transition/c0;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/transition/u;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    iget-object v2, p1, Landroidx/transition/c0;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/transition/u;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Landroidx/transition/u;->captureEndValues(Landroidx/transition/c0;)V

    iget-object v2, p1, Landroidx/transition/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final capturePropagationValues(Landroidx/transition/c0;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/transition/u;->capturePropagationValues(Landroidx/transition/c0;)V

    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/u;

    invoke-virtual {v2, p1}, Landroidx/transition/u;->capturePropagationValues(Landroidx/transition/c0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final captureStartValues(Landroidx/transition/c0;)V
    .locals 3

    iget-object v0, p1, Landroidx/transition/c0;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/transition/u;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    iget-object v2, p1, Landroidx/transition/c0;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/transition/u;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Landroidx/transition/u;->captureStartValues(Landroidx/transition/c0;)V

    iget-object v2, p1, Landroidx/transition/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final clone()Landroidx/transition/u;
    .locals 5

    invoke-super {p0}, Landroidx/transition/u;->clone()Landroidx/transition/u;

    move-result-object v0

    check-cast v0, Landroidx/transition/a0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/u;

    invoke-virtual {v3}, Landroidx/transition/u;->clone()Landroidx/transition/u;

    move-result-object v3

    .line 1
    iget-object v4, v0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v3, Landroidx/transition/u;->mParent:Landroidx/transition/a0;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/transition/a0;->clone()Landroidx/transition/u;

    move-result-object v0

    return-object v0
.end method

.method public final createAnimators(Landroid/view/ViewGroup;Landroidx/transition/d0;Landroidx/transition/d0;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12

    move-object v0, p0

    invoke-virtual {p0}, Landroidx/transition/u;->getStartDelay()J

    move-result-wide v1

    iget-object v3, v0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, v0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/transition/u;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    iget-boolean v5, v0, Landroidx/transition/a0;->b:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    :cond_0
    invoke-virtual {v6}, Landroidx/transition/u;->getStartDelay()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    invoke-virtual {v6, v9, v10}, Landroidx/transition/u;->setStartDelay(J)Landroidx/transition/u;

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1, v2}, Landroidx/transition/u;->setStartDelay(J)Landroidx/transition/u;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Landroidx/transition/u;->createAnimators(Landroid/view/ViewGroup;Landroidx/transition/d0;Landroidx/transition/d0;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final e(Landroidx/transition/u;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iput-object p0, p1, Landroidx/transition/u;->mParent:Landroidx/transition/a0;

    .line 7
    .line 8
    iget-wide v0, p0, Landroidx/transition/u;->mDuration:J

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v2, v0, v2

    .line 13
    .line 14
    if-ltz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroidx/transition/u;->setDuration(J)Landroidx/transition/u;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget v0, p0, Landroidx/transition/a0;->e:I

    .line 20
    .line 21
    and-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/transition/u;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Landroidx/transition/u;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/u;

    .line 30
    .line 31
    .line 32
    :cond_1
    iget v0, p0, Landroidx/transition/a0;->e:I

    .line 33
    .line 34
    and-int/lit8 v0, v0, 0x2

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/transition/u;->getPropagation()Landroidx/transition/y;

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Landroidx/transition/u;->setPropagation(Landroidx/transition/y;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget v0, p0, Landroidx/transition/a0;->e:I

    .line 46
    .line 47
    and-int/lit8 v0, v0, 0x4

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/transition/u;->getPathMotion()Landroidx/transition/n;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Landroidx/transition/u;->setPathMotion(Landroidx/transition/n;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget v0, p0, Landroidx/transition/a0;->e:I

    .line 59
    .line 60
    and-int/lit8 v0, v0, 0x8

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/transition/u;->getEpicenterCallback()Landroidx/transition/s;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Landroidx/transition/u;->setEpicenterCallback(Landroidx/transition/s;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    return-void
.end method

.method public final excludeTarget(IZ)Landroidx/transition/u;
    .locals 2

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    invoke-virtual {v1, p1, p2}, Landroidx/transition/u;->excludeTarget(IZ)Landroidx/transition/u;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/transition/u;->excludeTarget(IZ)Landroidx/transition/u;

    move-result-object p1

    return-object p1
.end method

.method public final excludeTarget(Landroid/view/View;Z)Landroidx/transition/u;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    invoke-virtual {v1, p1, p2}, Landroidx/transition/u;->excludeTarget(Landroid/view/View;Z)Landroidx/transition/u;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/transition/u;->excludeTarget(Landroid/view/View;Z)Landroidx/transition/u;

    move-result-object p1

    return-object p1
.end method

.method public final excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/u;
    .locals 2

    .line 3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    invoke-virtual {v1, p1, p2}, Landroidx/transition/u;->excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/u;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/transition/u;->excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/u;

    move-result-object p1

    return-object p1
.end method

.method public final excludeTarget(Ljava/lang/String;Z)Landroidx/transition/u;
    .locals 2

    .line 4
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    invoke-virtual {v1, p1, p2}, Landroidx/transition/u;->excludeTarget(Ljava/lang/String;Z)Landroidx/transition/u;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/transition/u;->excludeTarget(Ljava/lang/String;Z)Landroidx/transition/u;

    move-result-object p1

    return-object p1
.end method

.method public final f(Landroidx/transition/u;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/transition/u;->mParent:Landroidx/transition/a0;

    return-void
.end method

.method public final forceToEnd(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/transition/u;->forceToEnd(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/u;

    invoke-virtual {v2, p1}, Landroidx/transition/u;->forceToEnd(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(J)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/transition/u;->setDuration(J)Landroidx/transition/u;

    iget-wide v0, p0, Landroidx/transition/u;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/u;

    invoke-virtual {v2, p1, p2}, Landroidx/transition/u;->setDuration(J)Landroidx/transition/u;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h(Landroid/animation/TimeInterpolator;)Landroidx/transition/a0;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/transition/a0;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/transition/a0;->e:I

    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/u;

    invoke-virtual {v2, p1}, Landroidx/transition/u;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/u;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/u;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/u;

    move-result-object p1

    check-cast p1, Landroidx/transition/a0;

    return-object p1
.end method

.method public final i(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroidx/transition/a0;->b:Z

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 11
    .line 12
    const-string v1, "Invalid parameter for TransitionSet ordering: "

    .line 13
    .line 14
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    iput-boolean v0, p0, Landroidx/transition/a0;->b:Z

    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final pause(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/transition/u;->pause(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/u;

    invoke-virtual {v2, p1}, Landroidx/transition/u;->pause(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeListener(Landroidx/transition/t;)Landroidx/transition/u;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/u;->removeListener(Landroidx/transition/t;)Landroidx/transition/u;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/transition/a0;

    .line 6
    .line 7
    return-object p1
.end method

.method public final removeTarget(I)Landroidx/transition/u;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    invoke-virtual {v1, p1}, Landroidx/transition/u;->removeTarget(I)Landroidx/transition/u;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/u;->removeTarget(I)Landroidx/transition/u;

    move-result-object p1

    check-cast p1, Landroidx/transition/a0;

    return-object p1
.end method

.method public final removeTarget(Landroid/view/View;)Landroidx/transition/u;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    invoke-virtual {v1, p1}, Landroidx/transition/u;->removeTarget(Landroid/view/View;)Landroidx/transition/u;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/u;->removeTarget(Landroid/view/View;)Landroidx/transition/u;

    move-result-object p1

    check-cast p1, Landroidx/transition/a0;

    return-object p1
.end method

.method public final removeTarget(Ljava/lang/Class;)Landroidx/transition/u;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    invoke-virtual {v1, p1}, Landroidx/transition/u;->removeTarget(Ljava/lang/Class;)Landroidx/transition/u;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/u;->removeTarget(Ljava/lang/Class;)Landroidx/transition/u;

    move-result-object p1

    check-cast p1, Landroidx/transition/a0;

    return-object p1
.end method

.method public final removeTarget(Ljava/lang/String;)Landroidx/transition/u;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    invoke-virtual {v1, p1}, Landroidx/transition/u;->removeTarget(Ljava/lang/String;)Landroidx/transition/u;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/u;->removeTarget(Ljava/lang/String;)Landroidx/transition/u;

    move-result-object p1

    check-cast p1, Landroidx/transition/a0;

    return-object p1
.end method

.method public final resume(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/transition/u;->resume(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/u;

    invoke-virtual {v2, p1}, Landroidx/transition/u;->resume(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final runAnimators()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/transition/u;->start()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/transition/u;->end()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Landroidx/transition/z;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p0, v0, Landroidx/transition/z;->a:Landroidx/transition/a0;

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroidx/transition/u;

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroidx/transition/u;->addListener(Landroidx/transition/t;)Landroidx/transition/u;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Landroidx/transition/a0;->c:I

    .line 52
    .line 53
    iget-boolean v0, p0, Landroidx/transition/a0;->b:Z

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    :goto_1
    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-ge v0, v1, :cond_2

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 67
    .line 68
    add-int/lit8 v2, v0, -0x1

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroidx/transition/u;

    .line 75
    .line 76
    iget-object v2, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Landroidx/transition/u;

    .line 83
    .line 84
    new-instance v3, Landroidx/transition/h;

    .line 85
    .line 86
    const/4 v4, 0x2

    .line 87
    invoke-direct {v3, p0, v2, v4}, Landroidx/transition/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v3}, Landroidx/transition/u;->addListener(Landroidx/transition/t;)Landroidx/transition/u;

    .line 91
    .line 92
    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroidx/transition/u;

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    invoke-virtual {v0}, Landroidx/transition/u;->runAnimators()V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_4

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Landroidx/transition/u;

    .line 128
    .line 129
    invoke-virtual {v1}, Landroidx/transition/u;->runAnimators()V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    :goto_3
    return-void
.end method

.method public final setCanRemoveViews(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/transition/u;->setCanRemoveViews(Z)V

    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/u;

    invoke-virtual {v2, p1}, Landroidx/transition/u;->setCanRemoveViews(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic setDuration(J)Landroidx/transition/u;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/transition/a0;->g(J)V

    return-object p0
.end method

.method public final setEpicenterCallback(Landroidx/transition/s;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/transition/u;->setEpicenterCallback(Landroidx/transition/s;)V

    iget v0, p0, Landroidx/transition/a0;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/transition/a0;->e:I

    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/u;

    invoke-virtual {v2, p1}, Landroidx/transition/u;->setEpicenterCallback(Landroidx/transition/s;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/u;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/transition/a0;->h(Landroid/animation/TimeInterpolator;)Landroidx/transition/a0;

    move-result-object p1

    return-object p1
.end method

.method public final setPathMotion(Landroidx/transition/n;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/transition/u;->setPathMotion(Landroidx/transition/n;)V

    iget v0, p0, Landroidx/transition/a0;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/transition/a0;->e:I

    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    invoke-virtual {v1, p1}, Landroidx/transition/u;->setPathMotion(Landroidx/transition/n;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setPropagation(Landroidx/transition/y;)V
    .locals 3

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/transition/u;->setPropagation(Landroidx/transition/y;)V

    iget v0, p0, Landroidx/transition/a0;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/transition/a0;->e:I

    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/u;

    invoke-virtual {v2, p1}, Landroidx/transition/u;->setPropagation(Landroidx/transition/y;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/u;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/u;->setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/u;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/transition/u;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Landroidx/transition/u;->setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/u;

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object p0
.end method

.method public final setStartDelay(J)Landroidx/transition/u;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/transition/u;->setStartDelay(J)Landroidx/transition/u;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/transition/a0;

    .line 6
    .line 7
    return-object p1
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/u;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    const-string v2, "\n"

    .line 15
    .line 16
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v2, p0, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/transition/u;

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v4, "  "

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Landroidx/transition/u;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-object v0
.end method
