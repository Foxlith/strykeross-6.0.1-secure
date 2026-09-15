.class public final Landroidx/appcompat/widget/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/d;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/appcompat/widget/d;->b:Ljava/lang/Object;

    .line 5
    .line 6
    sparse-switch v0, :sswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :sswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 14
    .line 15
    .line 16
    check-cast v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 17
    .line 18
    iput-boolean v1, v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->p:Z

    .line 19
    .line 20
    return-void

    .line 21
    :sswitch_1
    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroid/view/ViewPropertyAnimator;

    .line 25
    .line 26
    iput-boolean v1, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    .line 27
    .line 28
    return-void

    .line 29
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/d;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/appcompat/widget/d;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 10
    .line 11
    .line 12
    check-cast v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 13
    .line 14
    iput-boolean v1, v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->p:Z

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    check-cast v2, Landroidx/vectordrawable/graphics/drawable/f;

    .line 20
    .line 21
    iget-object v0, v2, Landroidx/vectordrawable/graphics/drawable/f;->e:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :goto_0
    if-ge v1, v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroidx/vectordrawable/graphics/drawable/c;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Landroidx/vectordrawable/graphics/drawable/c;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void

    .line 45
    :pswitch_1
    check-cast v2, Landroidx/transition/u;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroidx/transition/u;->end()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_2
    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    iput-object p1, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroid/view/ViewPropertyAnimator;

    .line 58
    .line 59
    iput-boolean v1, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/d;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/f;

    .line 15
    .line 16
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/f;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroidx/vectordrawable/graphics/drawable/c;

    .line 33
    .line 34
    invoke-virtual {v3, v0}, Landroidx/vectordrawable/graphics/drawable/c;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
