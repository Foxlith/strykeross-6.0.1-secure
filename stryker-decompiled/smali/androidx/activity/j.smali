.class public abstract Landroidx/activity/j;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/t;
.implements Landroidx/activity/q;


# instance fields
.field private _lifecycleRegistry:Landroidx/lifecycle/v;

.field private final onBackPressedDispatcher:Landroidx/activity/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Landroidx/activity/p;

    new-instance p2, Landroidx/activity/b;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2}, Landroidx/activity/p;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Landroidx/activity/j;->onBackPressedDispatcher:Landroidx/activity/p;

    return-void
.end method

.method public static a(Landroidx/activity/j;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b()Landroidx/lifecycle/v;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/j;->_lifecycleRegistry:Landroidx/lifecycle/v;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/v;

    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    iput-object v0, p0, Landroidx/activity/j;->_lifecycleRegistry:Landroidx/lifecycle/v;

    :cond_0
    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/o;
    .locals 1

    invoke-virtual {p0}, Landroidx/activity/j;->b()Landroidx/lifecycle/v;

    move-result-object v0

    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/p;
    .locals 1

    iget-object v0, p0, Landroidx/activity/j;->onBackPressedDispatcher:Landroidx/activity/p;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/j;->onBackPressedDispatcher:Landroidx/activity/p;

    invoke-virtual {v0}, Landroidx/activity/p;->b()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x21

    .line 7
    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/activity/j;->onBackPressedDispatcher:Landroidx/activity/p;

    .line 11
    .line 12
    invoke-static {p0}, Landroidx/activity/i;->d(Landroidx/activity/j;)Landroid/window/OnBackInvokedDispatcher;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p1, Landroidx/activity/p;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/activity/p;->c()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/activity/j;->b()Landroidx/lifecycle/v;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Landroidx/activity/j;->b()Landroidx/lifecycle/v;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Landroidx/activity/j;->b()Landroidx/lifecycle/v;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/j;->_lifecycleRegistry:Landroidx/lifecycle/v;

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method
