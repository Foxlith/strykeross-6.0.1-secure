.class public final Landroidx/recyclerview/widget/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/recyclerview/widget/n;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/recyclerview/widget/n;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/n;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/n;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e()Z

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast v1, Landroidx/recyclerview/widget/r;

    .line 15
    .line 16
    iget v0, v1, Landroidx/recyclerview/widget/r;->B:I

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x1

    .line 20
    iget-object v4, v1, Landroidx/recyclerview/widget/r;->A:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    if-eq v0, v3, :cond_0

    .line 23
    .line 24
    if-eq v0, v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 28
    .line 29
    .line 30
    :cond_1
    const/4 v0, 0x3

    .line 31
    iput v0, v1, Landroidx/recyclerview/widget/r;->B:I

    .line 32
    .line 33
    new-array v0, v2, [F

    .line 34
    .line 35
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Float;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x0

    .line 46
    aput v1, v0, v2

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    aput v1, v0, v3

    .line 50
    .line 51
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 52
    .line 53
    .line 54
    const/16 v0, 0x1f4

    .line 55
    .line 56
    int-to-long v0, v0

    .line 57
    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
