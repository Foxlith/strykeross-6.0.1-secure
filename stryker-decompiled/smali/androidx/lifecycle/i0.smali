.class public final Landroidx/lifecycle/i0;
.super Landroid/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Lf/q0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroidx/lifecycle/m;)V
    .locals 1

    .line 1
    instance-of v0, p0, Landroidx/lifecycle/t;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/lifecycle/t;

    invoke-interface {p0}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object p0

    instance-of v0, p0, Landroidx/lifecycle/v;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/lifecycle/v;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/h0;->registerIn(Landroid/app/Activity;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/i0;

    invoke-direct {v2}, Landroidx/lifecycle/i0;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/m;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/lifecycle/i0;->a(Landroid/app/Activity;Landroidx/lifecycle/m;)V

    :cond_0
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget-object p1, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->b(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/i0;->b(Landroidx/lifecycle/m;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/lifecycle/i0;->a:Lf/q0;

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/i0;->b(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/lifecycle/i0;->a:Lf/q0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroidx/lifecycle/g0;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/lifecycle/g0;->a()V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object v0, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/lifecycle/i0;->b(Landroidx/lifecycle/m;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/lifecycle/i0;->a:Lf/q0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroidx/lifecycle/g0;

    .line 11
    .line 12
    iget v1, v0, Landroidx/lifecycle/g0;->a:I

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    add-int/2addr v1, v2

    .line 16
    iput v1, v0, Landroidx/lifecycle/g0;->a:I

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    iget-boolean v1, v0, Landroidx/lifecycle/g0;->d:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, v0, Landroidx/lifecycle/g0;->f:Landroidx/lifecycle/v;

    .line 25
    .line 26
    sget-object v2, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, v0, Landroidx/lifecycle/g0;->d:Z

    .line 33
    .line 34
    :cond_0
    sget-object v0, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroidx/lifecycle/i0;->b(Landroidx/lifecycle/m;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/i0;->b(Landroidx/lifecycle/m;)V

    return-void
.end method
