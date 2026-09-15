.class public final Landroidx/lifecycle/f0;
.super Landroidx/lifecycle/f;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/g0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/g0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/f0;->this$0:Landroidx/lifecycle/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x1d

    .line 4
    .line 5
    if-ge p2, v0, :cond_0

    .line 6
    .line 7
    sget p2, Landroidx/lifecycle/i0;->b:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroidx/lifecycle/i0;

    .line 20
    .line 21
    iget-object p2, p0, Landroidx/lifecycle/f0;->this$0:Landroidx/lifecycle/g0;

    .line 22
    .line 23
    iget-object p2, p2, Landroidx/lifecycle/g0;->h:Lf/q0;

    .line 24
    .line 25
    iput-object p2, p1, Landroidx/lifecycle/i0;->a:Lf/q0;

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/f0;->this$0:Landroidx/lifecycle/g0;

    .line 2
    .line 3
    iget v0, p1, Landroidx/lifecycle/g0;->b:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p1, Landroidx/lifecycle/g0;->b:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/lifecycle/g0;->e:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/lifecycle/g0;->g:Landroidx/activity/d;

    .line 14
    .line 15
    const-wide/16 v1, 0x2bc

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    new-instance p2, Landroidx/lifecycle/e0;

    invoke-direct {p2, p0}, Landroidx/lifecycle/e0;-><init>(Landroidx/lifecycle/f0;)V

    invoke-static {p1, p2}, Landroidx/appcompat/widget/r1;->l(Landroid/app/Activity;Landroidx/lifecycle/e0;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/f0;->this$0:Landroidx/lifecycle/g0;

    .line 2
    .line 3
    iget v0, p1, Landroidx/lifecycle/g0;->a:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    iput v0, p1, Landroidx/lifecycle/g0;->a:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p1, Landroidx/lifecycle/g0;->c:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/lifecycle/g0;->f:Landroidx/lifecycle/v;

    .line 16
    .line 17
    sget-object v2, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 20
    .line 21
    .line 22
    iput-boolean v1, p1, Landroidx/lifecycle/g0;->d:Z

    .line 23
    .line 24
    :cond_0
    return-void
.end method
