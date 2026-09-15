.class public final Landroidx/transition/k0;
.super Landroidx/transition/v;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroidx/transition/n0;


# direct methods
.method public constructor <init>(Landroidx/transition/n0;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/k0;->d:Landroidx/transition/n0;

    iput-object p2, p0, Landroidx/transition/k0;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/transition/k0;->b:Landroid/view/View;

    iput-object p4, p0, Landroidx/transition/k0;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Landroidx/transition/u;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/transition/k0;->c:Landroid/view/View;

    .line 3
    .line 4
    const v2, 0x7f0a0552

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/transition/k0;->a:Landroid/view/ViewGroup;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Landroidx/transition/k0;->b:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroidx/transition/u;->removeListener(Landroidx/transition/t;)Landroidx/transition/u;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onTransitionPause(Landroidx/transition/u;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/transition/k0;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Landroidx/transition/k0;->b:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onTransitionResume(Landroidx/transition/u;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/transition/k0;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/transition/k0;->a:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Landroidx/transition/k0;->d:Landroidx/transition/n0;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/transition/u;->cancel()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
