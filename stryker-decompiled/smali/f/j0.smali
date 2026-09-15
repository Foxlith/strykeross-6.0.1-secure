.class public Lf/j0;
.super Landroidx/activity/j;
.source "SourceFile"

# interfaces
.implements Lf/r;


# instance fields
.field private mDelegate:Lf/u;

.field private final mKeyDispatcher:Landroidx/core/view/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const v0, 0x7f04017d

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 1
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    move v2, p2

    .line 2
    :goto_0
    invoke-direct {p0, p1, v2}, Landroidx/activity/j;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lf/i0;

    invoke-direct {v2, p0, v1}, Lf/i0;-><init>(Lf/j0;I)V

    iput-object v2, p0, Lf/j0;->mKeyDispatcher:Landroidx/core/view/n;

    invoke-virtual {p0}, Lf/j0;->getDelegate()Lf/u;

    move-result-object v2

    if-nez p2, :cond_1

    .line 3
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    :cond_1
    move-object p1, v2

    check-cast p1, Lf/h0;

    .line 4
    iput p2, p1, Lf/h0;->U:I

    .line 5
    invoke-virtual {v2}, Lf/u;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    const-string v0, "context"

    .line 6
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Landroidx/activity/j;-><init>(Landroid/content/Context;I)V

    .line 8
    new-instance p1, Lf/i0;

    invoke-direct {p1, p0, v0}, Lf/i0;-><init>(Lf/j0;I)V

    iput-object p1, p0, Lf/j0;->mKeyDispatcher:Landroidx/core/view/n;

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/j0;->getDelegate()Lf/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lf/h0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lf/h0;->v()V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lf/h0;->B:Landroid/view/ViewGroup;

    .line 11
    .line 12
    const v2, 0x1020002

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, v0, Lf/h0;->m:Lf/b0;

    .line 25
    .line 26
    iget-object p2, v0, Lf/h0;->l:Landroid/view/Window;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Lf/b0;->a(Landroid/view/Window$Callback;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Lf/j0;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0}, Lf/u;->e()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lf/j0;->mKeyDispatcher:Landroidx/core/view/n;

    invoke-static {v1, v0, p0, p1}, La/c;->e(Landroidx/core/view/n;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/j0;->getDelegate()Lf/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lf/h0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lf/h0;->v()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lf/h0;->l:Landroid/view/Window;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public getDelegate()Lf/u;
    .locals 3

    .line 1
    iget-object v0, p0, Lf/j0;->mDelegate:Lf/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lf/u;->a:Lf/o0;

    .line 6
    .line 7
    new-instance v0, Lf/h0;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v1, v2, p0, p0}, Lf/h0;-><init>(Landroid/content/Context;Landroid/view/Window;Lf/r;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lf/j0;->mDelegate:Lf/u;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lf/j0;->mDelegate:Lf/u;

    .line 23
    .line 24
    return-object v0
.end method

.method public getSupportActionBar()Lf/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/j0;->getDelegate()Lf/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lf/h0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lf/h0;->z()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lf/h0;->p:Lf/b;

    .line 11
    .line 12
    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/j0;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0}, Lf/u;->b()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/j0;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0}, Lf/u;->a()V

    invoke-super {p0, p1}, Landroidx/activity/j;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lf/j0;->getDelegate()Lf/u;

    move-result-object p1

    invoke-virtual {p1}, Lf/u;->d()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/j;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf/j0;->getDelegate()Lf/u;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lf/h0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lf/h0;->z()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lf/h0;->p:Lf/b;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lf/b;->o(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onSupportActionModeFinished(Li/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSupportActionModeStarted(Li/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onWindowStartingSupportActionMode(Li/b;)Li/c;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/j0;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/u;->h(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lf/j0;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/u;->i(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lf/j0;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lf/u;->j(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {p0}, Lf/j0;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf/u;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lf/j0;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/u;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/j0;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/u;->g(I)Z

    move-result p1

    return p1
.end method
