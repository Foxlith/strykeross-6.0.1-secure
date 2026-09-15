.class public final Landroidx/lifecycle/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerIn(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Landroidx/lifecycle/h0;

    invoke-direct {v0}, Landroidx/lifecycle/h0;-><init>()V

    invoke-static {p0, v0}, Landroidx/appcompat/widget/r1;->m(Landroid/app/Activity;Landroidx/lifecycle/h0;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    sget-object p2, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    invoke-static {p1, p2}, Landroidx/lifecycle/i0;->a(Landroid/app/Activity;Landroidx/lifecycle/m;)V

    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    invoke-static {p1, v0}, Landroidx/lifecycle/i0;->a(Landroid/app/Activity;Landroidx/lifecycle/m;)V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    invoke-static {p1, v0}, Landroidx/lifecycle/i0;->a(Landroid/app/Activity;Landroidx/lifecycle/m;)V

    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    invoke-static {p1, v0}, Landroidx/lifecycle/i0;->a(Landroid/app/Activity;Landroidx/lifecycle/m;)V

    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    invoke-static {p1, v0}, Landroidx/lifecycle/i0;->a(Landroid/app/Activity;Landroidx/lifecycle/m;)V

    return-void
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    invoke-static {p1, v0}, Landroidx/lifecycle/i0;->a(Landroid/app/Activity;Landroidx/lifecycle/m;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
