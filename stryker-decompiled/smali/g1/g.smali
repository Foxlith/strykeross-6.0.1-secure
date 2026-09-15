.class public final Lg1/g;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public synthetic constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Lg1/g;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lg1/g;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 1
    iget p2, p0, Lg1/g;->a:I

    .line 2
    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    .line 5
    iget-object v1, p0, Lg1/g;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 6
    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/high16 p2, -0x80000000

    .line 14
    .line 15
    mul-float/2addr p2, p1

    .line 16
    const/4 v0, 0x0

    .line 17
    add-float/2addr p2, v0

    .line 18
    invoke-virtual {v1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e(F)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    invoke-virtual {v1, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e(F)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget p2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:I

    .line 33
    .line 34
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iget v2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->x:I

    .line 39
    .line 40
    sub-int/2addr v2, p2

    .line 41
    iget p2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->v:I

    .line 42
    .line 43
    sub-int/2addr v2, p2

    .line 44
    int-to-float v2, v2

    .line 45
    mul-float/2addr v2, p1

    .line 46
    float-to-int v2, v2

    .line 47
    add-int/2addr p2, v2

    .line 48
    iget-object v2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:Lg1/a;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    sub-int/2addr p2, v2

    .line 55
    invoke-virtual {v1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 56
    .line 57
    .line 58
    iget-object p2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lg1/e;

    .line 59
    .line 60
    sub-float/2addr v0, p1

    .line 61
    iget-object p1, p2, Lg1/e;->a:Lg1/d;

    .line 62
    .line 63
    iget v1, p1, Lg1/d;->p:F

    .line 64
    .line 65
    cmpl-float v1, v0, v1

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    iput v0, p1, Lg1/d;->p:F

    .line 70
    .line 71
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_2
    sub-float/2addr v0, p1

    .line 76
    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_3
    invoke-virtual {v1, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
