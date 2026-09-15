.class public final Landroidx/transition/e;
.super Landroidx/transition/v;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/e;->b:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/transition/e;->a:Z

    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Landroidx/transition/u;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/e;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg/a;->F(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/e;->a:Z

    return-void
.end method

.method public final onTransitionEnd(Landroidx/transition/u;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/transition/e;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/transition/e;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg/a;->F(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/u;->removeListener(Landroidx/transition/t;)Landroidx/transition/u;

    return-void
.end method

.method public final onTransitionPause(Landroidx/transition/u;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/e;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg/a;->F(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final onTransitionResume(Landroidx/transition/u;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/e;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lg/a;->F(Landroid/view/ViewGroup;Z)V

    return-void
.end method
