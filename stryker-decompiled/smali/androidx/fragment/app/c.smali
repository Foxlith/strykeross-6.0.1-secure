.class public final Landroidx/fragment/app/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/fragment/app/s1;

.field public final synthetic e:Landroidx/fragment/app/h;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/s1;Landroidx/fragment/app/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/c;->b:Landroid/view/View;

    iput-boolean p3, p0, Landroidx/fragment/app/c;->c:Z

    iput-object p4, p0, Landroidx/fragment/app/c;->d:Landroidx/fragment/app/s1;

    iput-object p5, p0, Landroidx/fragment/app/c;->e:Landroidx/fragment/app/h;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/c;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/c;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-boolean p1, p0, Landroidx/fragment/app/c;->c:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/fragment/app/c;->d:Landroidx/fragment/app/s1;

    .line 13
    .line 14
    iget p1, p1, Landroidx/fragment/app/s1;->a:I

    .line 15
    .line 16
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->a(ILandroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/c;->e:Landroidx/fragment/app/h;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/i;->a()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
