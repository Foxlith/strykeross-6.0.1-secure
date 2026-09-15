.class public final Landroidx/fragment/app/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:Landroidx/fragment/app/Fragment;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/HashSet;

.field public f:Z

.field public g:Z

.field public final h:Landroidx/fragment/app/b1;


# direct methods
.method public constructor <init>(IILandroidx/fragment/app/b1;Ld0/d;)V
    .locals 2

    .line 1
    iget-object v0, p3, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Landroidx/fragment/app/s1;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v1, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Landroidx/fragment/app/s1;->e:Ljava/util/HashSet;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Landroidx/fragment/app/s1;->f:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Landroidx/fragment/app/s1;->g:Z

    .line 24
    .line 25
    iput p1, p0, Landroidx/fragment/app/s1;->a:I

    .line 26
    .line 27
    iput p2, p0, Landroidx/fragment/app/s1;->b:I

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    new-instance p1, Landroidx/fragment/app/n;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4, p1}, Ld0/d;->b(Ld0/c;)V

    .line 37
    .line 38
    .line 39
    iput-object p3, p0, Landroidx/fragment/app/s1;->h:Landroidx/fragment/app/b1;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/s1;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/s1;->f:Z

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/fragment/app/s1;->e:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/s1;->b()V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ld0/d;

    .line 41
    .line 42
    invoke-virtual {v1}, Ld0/d;->a()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/s1;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const-string v0, "FragmentManager"

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/s1;->e()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    :cond_1
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Landroidx/fragment/app/s1;->g:Z

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/fragment/app/s1;->d:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Runnable;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/s1;->h:Landroidx/fragment/app/b1;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/fragment/app/b1;->j()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final c(II)V
    .locals 4

    .line 1
    if-eqz p2, :cond_7

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    sub-int/2addr p2, v0

    .line 5
    const/4 v1, 0x2

    .line 6
    iget-object v2, p0, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    const-string v3, "FragmentManager"

    .line 9
    .line 10
    if-eqz p2, :cond_4

    .line 11
    .line 12
    if-eq p2, v0, :cond_2

    .line 13
    .line 14
    if-eq p2, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    :cond_1
    iput v0, p0, Landroidx/fragment/app/s1;->a:I

    .line 27
    .line 28
    const/4 p1, 0x3

    .line 29
    iput p1, p0, Landroidx/fragment/app/s1;->b:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget p1, p0, Landroidx/fragment/app/s1;->a:I

    .line 33
    .line 34
    if-ne p1, v0, :cond_6

    .line 35
    .line 36
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    :cond_3
    iput v1, p0, Landroidx/fragment/app/s1;->a:I

    .line 46
    .line 47
    iput v1, p0, Landroidx/fragment/app/s1;->b:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    iget p2, p0, Landroidx/fragment/app/s1;->a:I

    .line 51
    .line 52
    if-eq p2, v0, :cond_6

    .line 53
    .line 54
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_5

    .line 59
    .line 60
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    :cond_5
    iput p1, p0, Landroidx/fragment/app/s1;->a:I

    .line 64
    .line 65
    :cond_6
    :goto_0
    return-void

    .line 66
    :cond_7
    const/4 p1, 0x0

    .line 67
    throw p1
.end method

.method public final d()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/s1;->b:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/s1;->h:Landroidx/fragment/app/b1;

    .line 7
    .line 8
    iget-object v2, v0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    const-string v4, "FragmentManager"

    .line 22
    .line 23
    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/4 v4, 0x0

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/fragment/app/b1;->a()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    cmpl-float v0, v0, v4

    .line 59
    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    const/4 v0, 0x4

    .line 69
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getPostOnViewCreatedAlpha()F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Operation {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} {mFinalState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/s1;->a:I

    invoke-static {v1}, Landroid/support/v4/media/session/a;->G(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} {mLifecycleImpact = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/s1;->b:I

    invoke-static {v1}, Landroid/support/v4/media/session/a;->F(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} {mFragment = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/s1;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
