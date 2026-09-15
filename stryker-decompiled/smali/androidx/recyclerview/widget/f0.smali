.class public final Landroidx/recyclerview/widget/f0;
.super Landroidx/recyclerview/widget/b0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/g0;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/g0;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/f0;->a:Landroidx/recyclerview/widget/g0;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/b0;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public final calculateTimeForScrolling(I)I
    .locals 1

    const/16 v0, 0x64

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/b0;->calculateTimeForScrolling(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/i1;)V
    .locals 3

    .line 1
    iget-object p2, p0, Landroidx/recyclerview/widget/f0;->a:Landroidx/recyclerview/widget/g0;

    .line 2
    .line 3
    iget-object v0, p2, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/g0;->b(Landroidx/recyclerview/widget/w0;Landroid/view/View;)[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    aget p2, p1, p2

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    aget p1, p1, v0

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/b0;->calculateTimeForDeceleration(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-lez v1, :cond_0

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/recyclerview/widget/b0;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 38
    .line 39
    iput p2, p3, Landroidx/recyclerview/widget/i1;->a:I

    .line 40
    .line 41
    iput p1, p3, Landroidx/recyclerview/widget/i1;->b:I

    .line 42
    .line 43
    iput v1, p3, Landroidx/recyclerview/widget/i1;->c:I

    .line 44
    .line 45
    iput-object v2, p3, Landroidx/recyclerview/widget/i1;->e:Landroid/view/animation/Interpolator;

    .line 46
    .line 47
    iput-boolean v0, p3, Landroidx/recyclerview/widget/i1;->f:Z

    .line 48
    .line 49
    :cond_0
    return-void
.end method
