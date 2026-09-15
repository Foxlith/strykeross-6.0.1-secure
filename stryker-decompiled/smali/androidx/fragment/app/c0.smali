.class public final Landroidx/fragment/app/c0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroidx/fragment/app/Fragment;

.field public final synthetic d:Landroidx/fragment/app/m0;

.field public final synthetic e:Ld0/d;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/m0;Ld0/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/c0;->b:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/c0;->c:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/m0;

    iput-object p5, p0, Landroidx/fragment/app/c0;->e:Ld0/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/fragment/app/c0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/m0;

    iget-object v0, p0, Landroidx/fragment/app/c0;->e:Ld0/d;

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/m0;->c(Landroidx/fragment/app/Fragment;Ld0/d;)V

    :cond_0
    return-void
.end method
