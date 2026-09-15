.class public final Landroidx/fragment/app/z;
.super Landroidx/fragment/app/i0;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/y0;
.implements Landroidx/activity/q;
.implements Landroidx/activity/result/h;
.implements Landroidx/fragment/app/z0;


# instance fields
.field public final synthetic e:Landroidx/fragment/app/a0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/a0;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/z;->e:Landroidx/fragment/app/a0;

    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;-><init>(Landroidx/fragment/app/a0;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/fragment/app/a0;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/a0;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final b(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/fragment/app/a0;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/fragment/app/a0;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getActivityResultRegistry()Landroidx/activity/result/g;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/fragment/app/a0;

    invoke-virtual {v0}, Landroidx/activity/h;->getActivityResultRegistry()Landroidx/activity/result/g;

    move-result-object v0

    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/o;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/fragment/app/a0;

    iget-object v0, v0, Landroidx/fragment/app/a0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/p;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/fragment/app/a0;

    invoke-virtual {v0}, Landroidx/activity/h;->getOnBackPressedDispatcher()Landroidx/activity/p;

    move-result-object v0

    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/x0;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/fragment/app/a0;

    invoke-virtual {v0}, Landroidx/activity/h;->getViewModelStore()Landroidx/lifecycle/x0;

    move-result-object v0

    return-object v0
.end method
