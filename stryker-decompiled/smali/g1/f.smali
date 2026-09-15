.class public final Lg1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public synthetic constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lg1/f;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lg1/f;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget p1, p0, Lg1/f;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lg1/f;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lg1/g;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {p1, v0, v1}, Lg1/g;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->B:Lg1/g;

    .line 18
    .line 19
    const-wide/16 v1, 0x96

    .line 20
    .line 21
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 22
    .line 23
    .line 24
    iget-object p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:Lg1/a;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-object v1, p1, Lg1/a;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 30
    .line 31
    .line 32
    iget-object p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:Lg1/a;

    .line 33
    .line 34
    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->B:Lg1/g;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_0
    iget-boolean p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c:Z

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lg1/e;

    .line 45
    .line 46
    const/16 v1, 0xff

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lg1/e;->setAlpha(I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lg1/e;

    .line 52
    .line 53
    invoke-virtual {p1}, Lg1/e;->start()V

    .line 54
    .line 55
    .line 56
    iget-boolean p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->E:Z

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    iget-object p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Lg1/j;

    .line 61
    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    invoke-interface {p1}, Lg1/j;->b()V

    .line 65
    .line 66
    .line 67
    :cond_0
    iget-object p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:Lg1/a;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iput p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->m:I

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f()V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method
