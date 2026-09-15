.class public final Landroidx/transition/q;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln/b;

.field public final synthetic b:Landroidx/transition/u;


# direct methods
.method public constructor <init>(Landroidx/transition/u;Ln/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/q;->b:Landroidx/transition/u;

    iput-object p2, p0, Landroidx/transition/q;->a:Ln/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroidx/transition/q;->a:Ln/b;

    invoke-virtual {v0, p1}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/transition/q;->b:Landroidx/transition/u;

    iget-object v0, v0, Landroidx/transition/u;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroidx/transition/q;->b:Landroidx/transition/u;

    iget-object v0, v0, Landroidx/transition/u;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
