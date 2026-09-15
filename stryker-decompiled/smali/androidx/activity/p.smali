.class public final Landroidx/activity/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Landroidx/activity/l;

.field public final d:Landroid/window/OnBackInvokedCallback;

.field public e:Landroid/window/OnBackInvokedDispatcher;

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/activity/p;->b:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/activity/p;->f:Z

    iput-object p1, p0, Landroidx/activity/p;->a:Ljava/lang/Runnable;

    invoke-static {}, Lv1/f;->D()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/activity/l;

    invoke-direct {p1, p0}, Landroidx/activity/l;-><init>(Landroidx/activity/p;)V

    iput-object p1, p0, Landroidx/activity/p;->c:Landroidx/activity/l;

    new-instance p1, Landroidx/activity/b;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Landroidx/activity/n;->a(Ljava/lang/Runnable;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    iput-object p1, p0, Landroidx/activity/p;->d:Landroid/window/OnBackInvokedCallback;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/fragment/app/n0;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/lifecycle/v;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 9
    .line 10
    sget-object v1, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/p;Landroidx/lifecycle/o;Landroidx/fragment/app/n0;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p2, Landroidx/activity/k;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lv1/f;->D()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/activity/p;->c()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/activity/p;->c:Landroidx/activity/l;

    .line 35
    .line 36
    iput-object p1, p2, Landroidx/activity/k;->c:Lg0/a;

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/p;->b:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/activity/k;

    .line 18
    .line 19
    iget-boolean v2, v1, Landroidx/activity/k;->a:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    check-cast v1, Landroidx/fragment/app/n0;

    .line 24
    .line 25
    iget v0, v1, Landroidx/fragment/app/n0;->d:I

    .line 26
    .line 27
    iget-object v1, v1, Landroidx/fragment/app/n0;->e:Ljava/lang/Object;

    .line 28
    .line 29
    packed-switch v0, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    check-cast v1, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 33
    .line 34
    sget v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->g()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_0
    check-cast v1, Landroidx/fragment/app/u0;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {v1, v0}, Landroidx/fragment/app/u0;->s(Z)Z

    .line 44
    .line 45
    .line 46
    iget-object v0, v1, Landroidx/fragment/app/u0;->h:Landroidx/fragment/app/n0;

    .line 47
    .line 48
    iget-boolean v0, v0, Landroidx/activity/k;->a:Z

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/fragment/app/u0;->J()Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, v1, Landroidx/fragment/app/u0;->g:Landroidx/activity/p;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/activity/p;->b()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void

    .line 62
    :cond_2
    iget-object v0, p0, Landroidx/activity/p;->a:Ljava/lang/Runnable;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/activity/p;->b:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/activity/k;

    .line 20
    .line 21
    iget-boolean v1, v1, Landroidx/activity/k;->a:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v3

    .line 28
    :goto_0
    iget-object v1, p0, Landroidx/activity/p;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    iget-object v4, p0, Landroidx/activity/p;->d:Landroid/window/OnBackInvokedCallback;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-boolean v5, p0, Landroidx/activity/p;->f:Z

    .line 37
    .line 38
    if-nez v5, :cond_2

    .line 39
    .line 40
    invoke-static {v1, v3, v4}, Landroidx/activity/n;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-boolean v2, p0, Landroidx/activity/p;->f:Z

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    if-nez v0, :cond_3

    .line 47
    .line 48
    iget-boolean v0, p0, Landroidx/activity/p;->f:Z

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-static {v1, v4}, Landroidx/activity/n;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput-boolean v3, p0, Landroidx/activity/p;->f:Z

    .line 56
    .line 57
    :cond_3
    :goto_1
    return-void
.end method
