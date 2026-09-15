.class public final Landroidx/customview/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final x:Landroidx/customview/widget/f;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[F

.field public e:[F

.field public f:[F

.field public g:[F

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:I

.field public l:Landroid/view/VelocityTracker;

.field public final m:F

.field public n:F

.field public o:I

.field public final p:I

.field public q:I

.field public final r:Landroid/widget/OverScroller;

.field public final s:Landroidx/customview/widget/g;

.field public t:Landroid/view/View;

.field public u:Z

.field public final v:Landroid/view/ViewGroup;

.field public final w:Landroidx/activity/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/customview/widget/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/customview/widget/f;-><init>(I)V

    sput-object v0, Landroidx/customview/widget/h;->x:Landroidx/customview/widget/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/customview/widget/h;->c:I

    new-instance v0, Landroidx/activity/d;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/customview/widget/h;->w:Landroidx/activity/d;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p2, p0, Landroidx/customview/widget/h;->v:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/customview/widget/h;->s:Landroidx/customview/widget/g;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p0, Landroidx/customview/widget/h;->p:I

    iput p3, p0, Landroidx/customview/widget/h;->o:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Landroidx/customview/widget/h;->b:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Landroidx/customview/widget/h;->m:F

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/customview/widget/h;->n:F

    new-instance p2, Landroid/widget/OverScroller;

    sget-object p3, Landroidx/customview/widget/h;->x:Landroidx/customview/widget/f;

    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Landroidx/customview/widget/h;->r:Landroid/widget/OverScroller;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent view may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static h(Landroid/view/ViewGroup;FLandroidx/customview/widget/g;)Landroidx/customview/widget/h;
    .locals 2

    .line 1
    new-instance v0, Landroidx/customview/widget/h;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p0, p2}, Landroidx/customview/widget/h;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/g;)V

    .line 8
    .line 9
    .line 10
    iget p0, v0, Landroidx/customview/widget/h;->b:I

    .line 11
    .line 12
    int-to-float p0, p0

    .line 13
    const/high16 p2, 0x3f800000    # 1.0f

    .line 14
    .line 15
    div-float/2addr p2, p1

    .line 16
    mul-float/2addr p2, p0

    .line 17
    float-to-int p0, p2

    .line 18
    iput p0, v0, Landroidx/customview/widget/h;->b:I

    .line 19
    .line 20
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/customview/widget/h;->c:I

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/customview/widget/h;->d:[F

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/customview/widget/h;->e:[F

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/customview/widget/h;->f:[F

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/customview/widget/h;->g:[F

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/customview/widget/h;->h:[I

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/customview/widget/h;->i:[I

    .line 35
    .line 36
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Landroidx/customview/widget/h;->j:[I

    .line 40
    .line 41
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 42
    .line 43
    .line 44
    iput v1, p0, Landroidx/customview/widget/h;->k:I

    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, Landroidx/customview/widget/h;->l:Landroid/view/VelocityTracker;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Landroidx/customview/widget/h;->l:Landroid/view/VelocityTracker;

    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final b(ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/customview/widget/h;->v:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    iput-object p2, p0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    iput p1, p0, Landroidx/customview/widget/h;->c:I

    iget-object v0, p0, Landroidx/customview/widget/h;->s:Landroidx/customview/widget/g;

    invoke-virtual {v0, p2, p1}, Landroidx/customview/widget/g;->onViewCaptured(Landroid/view/View;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/customview/widget/h;->q(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(FFII)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Landroidx/customview/widget/h;->h:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_2

    iget v0, p0, Landroidx/customview/widget/h;->q:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/customview/widget/h;->j:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget-object v0, p0, Landroidx/customview/widget/h;->i:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget v0, p0, Landroidx/customview/widget/h;->b:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    iget-object p2, p0, Landroidx/customview/widget/h;->s:Landroidx/customview/widget/g;

    invoke-virtual {p2, p4}, Landroidx/customview/widget/g;->onEdgeLock(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Landroidx/customview/widget/h;->j:[I

    aget p2, p1, p3

    or-int/2addr p2, p4

    aput p2, p1, p3

    return v1

    :cond_1
    iget-object p2, p0, Landroidx/customview/widget/h;->i:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_2

    iget p2, p0, Landroidx/customview/widget/h;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final d(FFLandroid/view/View;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/customview/widget/h;->s:Landroidx/customview/widget/g;

    invoke-virtual {v1, p3}, Landroidx/customview/widget/g;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {v1, p3}, Landroidx/customview/widget/g;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p3

    if-lez p3, :cond_2

    move p3, v3

    goto :goto_1

    :cond_2
    move p3, v0

    :goto_1
    if-eqz v2, :cond_4

    if-eqz p3, :cond_4

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p2, p1

    iget p1, p0, Landroidx/customview/widget/h;->b:I

    mul-int/2addr p1, p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    move v0, v3

    :cond_3
    return v0

    :cond_4
    if-eqz v2, :cond_6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroidx/customview/widget/h;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    move v0, v3

    :cond_5
    return v0

    :cond_6
    if-eqz p3, :cond_7

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroidx/customview/widget/h;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    move v0, v3

    :cond_7
    return v0
.end method

.method public final e(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/h;->d:[F

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroidx/customview/widget/h;->k:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    shl-int/2addr v2, p1

    .line 9
    and-int v3, v1, v2

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput v3, v0, p1

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/customview/widget/h;->e:[F

    .line 17
    .line 18
    aput v3, v0, p1

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/customview/widget/h;->f:[F

    .line 21
    .line 22
    aput v3, v0, p1

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/customview/widget/h;->g:[F

    .line 25
    .line 26
    aput v3, v0, p1

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/customview/widget/h;->h:[I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    aput v3, v0, p1

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/customview/widget/h;->i:[I

    .line 34
    .line 35
    aput v3, v0, p1

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/customview/widget/h;->j:[I

    .line 38
    .line 39
    aput v3, v0, p1

    .line 40
    .line 41
    not-int p1, v2

    .line 42
    and-int/2addr p1, v1

    .line 43
    iput p1, p0, Landroidx/customview/widget/h;->k:I

    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final f(III)I
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/h;->v:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    div-int/lit8 v1, v0, 0x2

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    int-to-float v0, v0

    .line 19
    div-float/2addr v2, v0

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    int-to-float v1, v1

    .line 27
    const/high16 v3, 0x3f000000    # 0.5f

    .line 28
    .line 29
    sub-float/2addr v2, v3

    .line 30
    const v3, 0x3ef1463b

    .line 31
    .line 32
    .line 33
    mul-float/2addr v2, v3

    .line 34
    float-to-double v2, v2

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    double-to-float v2, v2

    .line 40
    mul-float/2addr v2, v1

    .line 41
    add-float/2addr v2, v1

    .line 42
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-lez p2, :cond_1

    .line 47
    .line 48
    int-to-float p1, p2

    .line 49
    div-float/2addr v2, p1

    .line 50
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 55
    .line 56
    mul-float/2addr p1, p2

    .line 57
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    mul-int/lit8 p1, p1, 0x4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    int-to-float p1, p1

    .line 69
    int-to-float p2, p3

    .line 70
    div-float/2addr p1, p2

    .line 71
    add-float/2addr p1, v0

    .line 72
    const/high16 p2, 0x43800000    # 256.0f

    .line 73
    .line 74
    mul-float/2addr p1, p2

    .line 75
    float-to-int p1, p1

    .line 76
    :goto_0
    const/16 p2, 0x258

    .line 77
    .line 78
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    return p1
.end method

.method public final g()Z
    .locals 11

    .line 1
    iget v0, p0, Landroidx/customview/widget/h;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_5

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/customview/widget/h;->r:Landroid/widget/OverScroller;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 13
    .line 14
    .line 15
    move-result v9

    .line 16
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 17
    .line 18
    .line 19
    move-result v10

    .line 20
    iget-object v3, p0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    sub-int v7, v9, v3

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    sub-int v8, v10, v3

    .line 35
    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    iget-object v3, p0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 39
    .line 40
    sget-object v4, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 41
    .line 42
    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    if-eqz v8, :cond_1

    .line 46
    .line 47
    iget-object v3, p0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 48
    .line 49
    sget-object v4, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 50
    .line 51
    invoke-virtual {v3, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    if-nez v7, :cond_2

    .line 55
    .line 56
    if-eqz v8, :cond_3

    .line 57
    .line 58
    :cond_2
    iget-object v3, p0, Landroidx/customview/widget/h;->s:Landroidx/customview/widget/g;

    .line 59
    .line 60
    iget-object v4, p0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 61
    .line 62
    move v5, v9

    .line 63
    move v6, v10

    .line 64
    invoke-virtual/range {v3 .. v8}, Landroidx/customview/widget/g;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 65
    .line 66
    .line 67
    :cond_3
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-ne v9, v3, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-ne v10, v3, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    if-nez v2, :cond_5

    .line 86
    .line 87
    :goto_0
    iget-object v0, p0, Landroidx/customview/widget/h;->w:Landroidx/activity/d;

    .line 88
    .line 89
    iget-object v2, p0, Landroidx/customview/widget/h;->v:Landroid/view/ViewGroup;

    .line 90
    .line 91
    invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    :cond_5
    iget v0, p0, Landroidx/customview/widget/h;->a:I

    .line 95
    .line 96
    if-ne v0, v1, :cond_6

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    goto :goto_1

    .line 100
    :cond_6
    const/4 v0, 0x0

    .line 101
    :goto_1
    return v0
.end method

.method public final i(II)Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/h;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroidx/customview/widget/h;->s:Landroidx/customview/widget/g;

    invoke-virtual {v2, v1}, Landroidx/customview/widget/g;->getOrderedChildIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final j(IIII)Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v0, p0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    sub-int v4, p1, v2

    .line 14
    .line 15
    sub-int v5, p2, v3

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/customview/widget/h;->r:Landroid/widget/OverScroller;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/customview/widget/h;->q(I)V

    .line 28
    .line 29
    .line 30
    return p1

    .line 31
    :cond_0
    iget-object p2, p0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 32
    .line 33
    iget v0, p0, Landroidx/customview/widget/h;->n:F

    .line 34
    .line 35
    float-to-int v0, v0

    .line 36
    iget v6, p0, Landroidx/customview/widget/h;->m:F

    .line 37
    .line 38
    float-to-int v6, v6

    .line 39
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-ge v7, v0, :cond_1

    .line 44
    .line 45
    move p3, p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    if-le v7, v6, :cond_3

    .line 48
    .line 49
    if-lez p3, :cond_2

    .line 50
    .line 51
    move p3, v6

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    neg-int p3, v6

    .line 54
    :cond_3
    :goto_0
    iget v0, p0, Landroidx/customview/widget/h;->n:F

    .line 55
    .line 56
    float-to-int v0, v0

    .line 57
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-ge v7, v0, :cond_4

    .line 62
    .line 63
    :goto_1
    move p4, p1

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    if-le v7, v6, :cond_6

    .line 66
    .line 67
    if-lez p4, :cond_5

    .line 68
    .line 69
    move p4, v6

    .line 70
    goto :goto_2

    .line 71
    :cond_5
    neg-int p1, v6

    .line 72
    goto :goto_1

    .line 73
    :cond_6
    :goto_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    add-int v8, v6, v7

    .line 90
    .line 91
    add-int v9, p1, v0

    .line 92
    .line 93
    if-eqz p3, :cond_7

    .line 94
    .line 95
    int-to-float p1, v6

    .line 96
    int-to-float v6, v8

    .line 97
    :goto_3
    div-float/2addr p1, v6

    .line 98
    goto :goto_4

    .line 99
    :cond_7
    int-to-float p1, p1

    .line 100
    int-to-float v6, v9

    .line 101
    goto :goto_3

    .line 102
    :goto_4
    if-eqz p4, :cond_8

    .line 103
    .line 104
    int-to-float v0, v7

    .line 105
    int-to-float v6, v8

    .line 106
    :goto_5
    div-float/2addr v0, v6

    .line 107
    goto :goto_6

    .line 108
    :cond_8
    int-to-float v0, v0

    .line 109
    int-to-float v6, v9

    .line 110
    goto :goto_5

    .line 111
    :goto_6
    iget-object v6, p0, Landroidx/customview/widget/h;->s:Landroidx/customview/widget/g;

    .line 112
    .line 113
    invoke-virtual {v6, p2}, Landroidx/customview/widget/g;->getViewHorizontalDragRange(Landroid/view/View;)I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    invoke-virtual {p0, v4, p3, v7}, Landroidx/customview/widget/h;->f(III)I

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    invoke-virtual {v6, p2}, Landroidx/customview/widget/g;->getViewVerticalDragRange(Landroid/view/View;)I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    invoke-virtual {p0, v5, p4, p2}, Landroidx/customview/widget/h;->f(III)I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    int-to-float p3, p3

    .line 130
    mul-float/2addr p3, p1

    .line 131
    int-to-float p1, p2

    .line 132
    mul-float/2addr p1, v0

    .line 133
    add-float/2addr p1, p3

    .line 134
    float-to-int v6, p1

    .line 135
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 136
    .line 137
    .line 138
    const/4 p1, 0x2

    .line 139
    invoke-virtual {p0, p1}, Landroidx/customview/widget/h;->q(I)V

    .line 140
    .line 141
    .line 142
    const/4 p1, 0x1

    .line 143
    return p1
.end method

.method public final k(I)Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/customview/widget/h;->k:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    shl-int v2, v1, p1

    .line 5
    .line 6
    and-int/2addr v0, v2

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "Ignoring pointerId="

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "ViewDragHelper"

    .line 30
    .line 31
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method public final l(Landroid/view/MotionEvent;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/h;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v4, v0, Landroidx/customview/widget/h;->l:Landroid/view/VelocityTracker;

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iput-object v4, v0, Landroidx/customview/widget/h;->l:Landroid/view/VelocityTracker;

    .line 27
    .line 28
    :cond_1
    iget-object v4, v0, Landroidx/customview/widget/h;->l:Landroid/view/VelocityTracker;

    .line 29
    .line 30
    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    iget-object v5, v0, Landroidx/customview/widget/h;->s:Landroidx/customview/widget/g;

    .line 35
    .line 36
    if-eqz v2, :cond_17

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    if-eq v2, v6, :cond_16

    .line 40
    .line 41
    const/4 v7, 0x2

    .line 42
    if-eq v2, v7, :cond_c

    .line 43
    .line 44
    const/4 v7, 0x3

    .line 45
    if-eq v2, v7, :cond_a

    .line 46
    .line 47
    const/4 v7, 0x5

    .line 48
    if-eq v2, v7, :cond_7

    .line 49
    .line 50
    const/4 v5, 0x6

    .line 51
    if-eq v2, v5, :cond_2

    .line 52
    .line 53
    goto/16 :goto_7

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iget v3, v0, Landroidx/customview/widget/h;->a:I

    .line 60
    .line 61
    if-ne v3, v6, :cond_6

    .line 62
    .line 63
    iget v3, v0, Landroidx/customview/widget/h;->c:I

    .line 64
    .line 65
    if-ne v2, v3, :cond_6

    .line 66
    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    :goto_0
    if-ge v4, v3, :cond_5

    .line 72
    .line 73
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    iget v6, v0, Landroidx/customview/widget/h;->c:I

    .line 78
    .line 79
    if-ne v5, v6, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    float-to-int v6, v6

    .line 91
    float-to-int v7, v7

    .line 92
    invoke-virtual {v0, v6, v7}, Landroidx/customview/widget/h;->i(II)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    iget-object v7, v0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 97
    .line 98
    if-ne v6, v7, :cond_4

    .line 99
    .line 100
    invoke-virtual {v0, v5, v7}, Landroidx/customview/widget/h;->u(ILandroid/view/View;)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_4

    .line 105
    .line 106
    iget v1, v0, Landroidx/customview/widget/h;->c:I

    .line 107
    .line 108
    const/4 v3, -0x1

    .line 109
    if-ne v1, v3, :cond_6

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/h;->m()V

    .line 116
    .line 117
    .line 118
    :cond_6
    invoke-virtual {v0, v2}, Landroidx/customview/widget/h;->e(I)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_7

    .line 122
    .line 123
    :cond_7
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-virtual {v0, v2, v4, v1}, Landroidx/customview/widget/h;->o(IFF)V

    .line 136
    .line 137
    .line 138
    iget v3, v0, Landroidx/customview/widget/h;->a:I

    .line 139
    .line 140
    if-nez v3, :cond_8

    .line 141
    .line 142
    float-to-int v3, v4

    .line 143
    float-to-int v1, v1

    .line 144
    invoke-virtual {v0, v3, v1}, Landroidx/customview/widget/h;->i(II)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v2, v1}, Landroidx/customview/widget/h;->u(ILandroid/view/View;)Z

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Landroidx/customview/widget/h;->h:[I

    .line 152
    .line 153
    aget v1, v1, v2

    .line 154
    .line 155
    iget v3, v0, Landroidx/customview/widget/h;->q:I

    .line 156
    .line 157
    and-int/2addr v1, v3

    .line 158
    if-eqz v1, :cond_18

    .line 159
    .line 160
    invoke-virtual {v5, v1, v2}, Landroidx/customview/widget/g;->onEdgeTouched(II)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_7

    .line 164
    .line 165
    :cond_8
    float-to-int v3, v4

    .line 166
    float-to-int v1, v1

    .line 167
    iget-object v4, v0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 168
    .line 169
    if-nez v4, :cond_9

    .line 170
    .line 171
    goto/16 :goto_7

    .line 172
    .line 173
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-lt v3, v5, :cond_18

    .line 178
    .line 179
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    if-ge v3, v5, :cond_18

    .line 184
    .line 185
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-lt v1, v3, :cond_18

    .line 190
    .line 191
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-ge v1, v3, :cond_18

    .line 196
    .line 197
    iget-object v1, v0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 198
    .line 199
    invoke-virtual {v0, v2, v1}, Landroidx/customview/widget/h;->u(ILandroid/view/View;)Z

    .line 200
    .line 201
    .line 202
    goto/16 :goto_7

    .line 203
    .line 204
    :cond_a
    iget v1, v0, Landroidx/customview/widget/h;->a:I

    .line 205
    .line 206
    if-ne v1, v6, :cond_b

    .line 207
    .line 208
    iput-boolean v6, v0, Landroidx/customview/widget/h;->u:Z

    .line 209
    .line 210
    iget-object v1, v0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 211
    .line 212
    const/4 v2, 0x0

    .line 213
    invoke-virtual {v5, v1, v2, v2}, Landroidx/customview/widget/g;->onViewReleased(Landroid/view/View;FF)V

    .line 214
    .line 215
    .line 216
    iput-boolean v4, v0, Landroidx/customview/widget/h;->u:Z

    .line 217
    .line 218
    iget v1, v0, Landroidx/customview/widget/h;->a:I

    .line 219
    .line 220
    if-ne v1, v6, :cond_b

    .line 221
    .line 222
    invoke-virtual {v0, v4}, Landroidx/customview/widget/h;->q(I)V

    .line 223
    .line 224
    .line 225
    :cond_b
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/h;->a()V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_7

    .line 229
    .line 230
    :cond_c
    iget v2, v0, Landroidx/customview/widget/h;->a:I

    .line 231
    .line 232
    if-ne v2, v6, :cond_12

    .line 233
    .line 234
    iget v2, v0, Landroidx/customview/widget/h;->c:I

    .line 235
    .line 236
    invoke-virtual {v0, v2}, Landroidx/customview/widget/h;->k(I)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-nez v2, :cond_d

    .line 241
    .line 242
    goto/16 :goto_7

    .line 243
    .line 244
    :cond_d
    iget v2, v0, Landroidx/customview/widget/h;->c:I

    .line 245
    .line 246
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    iget-object v4, v0, Landroidx/customview/widget/h;->f:[F

    .line 259
    .line 260
    iget v6, v0, Landroidx/customview/widget/h;->c:I

    .line 261
    .line 262
    aget v4, v4, v6

    .line 263
    .line 264
    sub-float/2addr v3, v4

    .line 265
    float-to-int v3, v3

    .line 266
    iget-object v4, v0, Landroidx/customview/widget/h;->g:[F

    .line 267
    .line 268
    aget v4, v4, v6

    .line 269
    .line 270
    sub-float/2addr v2, v4

    .line 271
    float-to-int v2, v2

    .line 272
    iget-object v4, v0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 273
    .line 274
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    add-int/2addr v4, v3

    .line 279
    iget-object v6, v0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 280
    .line 281
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    add-int/2addr v6, v2

    .line 286
    iget-object v7, v0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 287
    .line 288
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    iget-object v8, v0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 293
    .line 294
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 295
    .line 296
    .line 297
    move-result v8

    .line 298
    if-eqz v3, :cond_e

    .line 299
    .line 300
    iget-object v9, v0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 301
    .line 302
    invoke-virtual {v5, v9, v4, v3}, Landroidx/customview/widget/g;->clampViewPositionHorizontal(Landroid/view/View;II)I

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    iget-object v9, v0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 307
    .line 308
    sub-int v10, v4, v7

    .line 309
    .line 310
    sget-object v11, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 311
    .line 312
    invoke-virtual {v9, v10}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 313
    .line 314
    .line 315
    :cond_e
    move v14, v4

    .line 316
    if-eqz v2, :cond_f

    .line 317
    .line 318
    iget-object v4, v0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 319
    .line 320
    invoke-virtual {v5, v4, v6, v2}, Landroidx/customview/widget/g;->clampViewPositionVertical(Landroid/view/View;II)I

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    iget-object v4, v0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 325
    .line 326
    sub-int v5, v6, v8

    .line 327
    .line 328
    sget-object v9, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 329
    .line 330
    invoke-virtual {v4, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 331
    .line 332
    .line 333
    :cond_f
    move v15, v6

    .line 334
    if-nez v3, :cond_10

    .line 335
    .line 336
    if-eqz v2, :cond_11

    .line 337
    .line 338
    :cond_10
    sub-int v16, v14, v7

    .line 339
    .line 340
    sub-int v17, v15, v8

    .line 341
    .line 342
    iget-object v12, v0, Landroidx/customview/widget/h;->s:Landroidx/customview/widget/g;

    .line 343
    .line 344
    iget-object v13, v0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 345
    .line 346
    invoke-virtual/range {v12 .. v17}, Landroidx/customview/widget/g;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 347
    .line 348
    .line 349
    :cond_11
    :goto_4
    invoke-virtual/range {p0 .. p1}, Landroidx/customview/widget/h;->p(Landroid/view/MotionEvent;)V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_7

    .line 353
    .line 354
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    :goto_5
    if-ge v4, v2, :cond_11

    .line 359
    .line 360
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    invoke-virtual {v0, v3}, Landroidx/customview/widget/h;->k(I)Z

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    if-nez v5, :cond_13

    .line 369
    .line 370
    goto :goto_6

    .line 371
    :cond_13
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 376
    .line 377
    .line 378
    move-result v7

    .line 379
    iget-object v8, v0, Landroidx/customview/widget/h;->d:[F

    .line 380
    .line 381
    aget v8, v8, v3

    .line 382
    .line 383
    sub-float v8, v5, v8

    .line 384
    .line 385
    iget-object v9, v0, Landroidx/customview/widget/h;->e:[F

    .line 386
    .line 387
    aget v9, v9, v3

    .line 388
    .line 389
    sub-float v9, v7, v9

    .line 390
    .line 391
    invoke-virtual {v0, v3, v8, v9}, Landroidx/customview/widget/h;->n(IFF)V

    .line 392
    .line 393
    .line 394
    iget v10, v0, Landroidx/customview/widget/h;->a:I

    .line 395
    .line 396
    if-ne v10, v6, :cond_14

    .line 397
    .line 398
    goto :goto_4

    .line 399
    :cond_14
    float-to-int v5, v5

    .line 400
    float-to-int v7, v7

    .line 401
    invoke-virtual {v0, v5, v7}, Landroidx/customview/widget/h;->i(II)Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    invoke-virtual {v0, v8, v9, v5}, Landroidx/customview/widget/h;->d(FFLandroid/view/View;)Z

    .line 406
    .line 407
    .line 408
    move-result v7

    .line 409
    if-eqz v7, :cond_15

    .line 410
    .line 411
    invoke-virtual {v0, v3, v5}, Landroidx/customview/widget/h;->u(ILandroid/view/View;)Z

    .line 412
    .line 413
    .line 414
    move-result v3

    .line 415
    if-eqz v3, :cond_15

    .line 416
    .line 417
    goto :goto_4

    .line 418
    :cond_15
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 419
    .line 420
    goto :goto_5

    .line 421
    :cond_16
    iget v1, v0, Landroidx/customview/widget/h;->a:I

    .line 422
    .line 423
    if-ne v1, v6, :cond_b

    .line 424
    .line 425
    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/h;->m()V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_3

    .line 429
    .line 430
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    float-to-int v4, v2

    .line 443
    float-to-int v6, v3

    .line 444
    invoke-virtual {v0, v4, v6}, Landroidx/customview/widget/h;->i(II)Landroid/view/View;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    invoke-virtual {v0, v1, v2, v3}, Landroidx/customview/widget/h;->o(IFF)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v1, v4}, Landroidx/customview/widget/h;->u(ILandroid/view/View;)Z

    .line 452
    .line 453
    .line 454
    iget-object v2, v0, Landroidx/customview/widget/h;->h:[I

    .line 455
    .line 456
    aget v2, v2, v1

    .line 457
    .line 458
    iget v3, v0, Landroidx/customview/widget/h;->q:I

    .line 459
    .line 460
    and-int/2addr v2, v3

    .line 461
    if-eqz v2, :cond_18

    .line 462
    .line 463
    invoke-virtual {v5, v2, v1}, Landroidx/customview/widget/g;->onEdgeTouched(II)V

    .line 464
    .line 465
    .line 466
    :cond_18
    :goto_7
    return-void
.end method

.method public final m()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/h;->l:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    iget v1, p0, Landroidx/customview/widget/h;->m:F

    .line 4
    .line 5
    const/16 v2, 0x3e8

    .line 6
    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/customview/widget/h;->l:Landroid/view/VelocityTracker;

    .line 11
    .line 12
    iget v2, p0, Landroidx/customview/widget/h;->c:I

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v2, p0, Landroidx/customview/widget/h;->n:F

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    cmpg-float v2, v3, v2

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    if-gez v2, :cond_0

    .line 28
    .line 29
    move v0, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    cmpl-float v2, v3, v1

    .line 32
    .line 33
    if-lez v2, :cond_2

    .line 34
    .line 35
    cmpl-float v0, v0, v4

    .line 36
    .line 37
    if-lez v0, :cond_1

    .line 38
    .line 39
    move v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    neg-float v0, v1

    .line 42
    :cond_2
    :goto_0
    iget-object v2, p0, Landroidx/customview/widget/h;->l:Landroid/view/VelocityTracker;

    .line 43
    .line 44
    iget v3, p0, Landroidx/customview/widget/h;->c:I

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget v3, p0, Landroidx/customview/widget/h;->n:F

    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    cmpg-float v3, v5, v3

    .line 57
    .line 58
    if-gez v3, :cond_3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    cmpl-float v3, v5, v1

    .line 62
    .line 63
    if-lez v3, :cond_5

    .line 64
    .line 65
    cmpl-float v2, v2, v4

    .line 66
    .line 67
    if-lez v2, :cond_4

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    neg-float v1, v1

    .line 71
    :goto_1
    move v4, v1

    .line 72
    goto :goto_2

    .line 73
    :cond_5
    move v4, v2

    .line 74
    :goto_2
    const/4 v1, 0x1

    .line 75
    iput-boolean v1, p0, Landroidx/customview/widget/h;->u:Z

    .line 76
    .line 77
    iget-object v2, p0, Landroidx/customview/widget/h;->s:Landroidx/customview/widget/g;

    .line 78
    .line 79
    iget-object v3, p0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    .line 80
    .line 81
    invoke-virtual {v2, v3, v0, v4}, Landroidx/customview/widget/g;->onViewReleased(Landroid/view/View;FF)V

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Landroidx/customview/widget/h;->u:Z

    .line 86
    .line 87
    iget v2, p0, Landroidx/customview/widget/h;->a:I

    .line 88
    .line 89
    if-ne v2, v1, :cond_6

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroidx/customview/widget/h;->q(I)V

    .line 92
    .line 93
    .line 94
    :cond_6
    return-void
.end method

.method public final n(IFF)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, p1, v0}, Landroidx/customview/widget/h;->c(FFII)Z

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, p3, p2, p1, v1}, Landroidx/customview/widget/h;->c(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, p2, p3, p1, v1}, Landroidx/customview/widget/h;->c(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, p3, p2, p1, v1}, Landroidx/customview/widget/h;->c(FFII)Z

    move-result p2

    if-eqz p2, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    if-eqz v0, :cond_3

    iget-object p2, p0, Landroidx/customview/widget/h;->i:[I

    aget p3, p2, p1

    or-int/2addr p3, v0

    aput p3, p2, p1

    iget-object p2, p0, Landroidx/customview/widget/h;->s:Landroidx/customview/widget/g;

    invoke-virtual {p2, v0, p1}, Landroidx/customview/widget/g;->onEdgeDragStarted(II)V

    :cond_3
    return-void
.end method

.method public final o(IFF)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/h;->d:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    if-gt v2, p1, :cond_2

    .line 8
    .line 9
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 10
    .line 11
    new-array v3, v2, [F

    .line 12
    .line 13
    new-array v4, v2, [F

    .line 14
    .line 15
    new-array v5, v2, [F

    .line 16
    .line 17
    new-array v6, v2, [F

    .line 18
    .line 19
    new-array v7, v2, [I

    .line 20
    .line 21
    new-array v8, v2, [I

    .line 22
    .line 23
    new-array v2, v2, [I

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    array-length v9, v0

    .line 28
    invoke-static {v0, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/customview/widget/h;->e:[F

    .line 32
    .line 33
    array-length v9, v0

    .line 34
    invoke-static {v0, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/customview/widget/h;->f:[F

    .line 38
    .line 39
    array-length v9, v0

    .line 40
    invoke-static {v0, v1, v5, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroidx/customview/widget/h;->g:[F

    .line 44
    .line 45
    array-length v9, v0

    .line 46
    invoke-static {v0, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Landroidx/customview/widget/h;->h:[I

    .line 50
    .line 51
    array-length v9, v0

    .line 52
    invoke-static {v0, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Landroidx/customview/widget/h;->i:[I

    .line 56
    .line 57
    array-length v9, v0

    .line 58
    invoke-static {v0, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Landroidx/customview/widget/h;->j:[I

    .line 62
    .line 63
    array-length v9, v0

    .line 64
    invoke-static {v0, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iput-object v3, p0, Landroidx/customview/widget/h;->d:[F

    .line 68
    .line 69
    iput-object v4, p0, Landroidx/customview/widget/h;->e:[F

    .line 70
    .line 71
    iput-object v5, p0, Landroidx/customview/widget/h;->f:[F

    .line 72
    .line 73
    iput-object v6, p0, Landroidx/customview/widget/h;->g:[F

    .line 74
    .line 75
    iput-object v7, p0, Landroidx/customview/widget/h;->h:[I

    .line 76
    .line 77
    iput-object v8, p0, Landroidx/customview/widget/h;->i:[I

    .line 78
    .line 79
    iput-object v2, p0, Landroidx/customview/widget/h;->j:[I

    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Landroidx/customview/widget/h;->d:[F

    .line 82
    .line 83
    iget-object v2, p0, Landroidx/customview/widget/h;->f:[F

    .line 84
    .line 85
    aput p2, v2, p1

    .line 86
    .line 87
    aput p2, v0, p1

    .line 88
    .line 89
    iget-object v0, p0, Landroidx/customview/widget/h;->e:[F

    .line 90
    .line 91
    iget-object v2, p0, Landroidx/customview/widget/h;->g:[F

    .line 92
    .line 93
    aput p3, v2, p1

    .line 94
    .line 95
    aput p3, v0, p1

    .line 96
    .line 97
    iget-object v0, p0, Landroidx/customview/widget/h;->h:[I

    .line 98
    .line 99
    float-to-int p2, p2

    .line 100
    float-to-int p3, p3

    .line 101
    iget-object v2, p0, Landroidx/customview/widget/h;->v:Landroid/view/ViewGroup;

    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    iget v4, p0, Landroidx/customview/widget/h;->o:I

    .line 108
    .line 109
    add-int/2addr v3, v4

    .line 110
    const/4 v4, 0x1

    .line 111
    if-ge p2, v3, :cond_3

    .line 112
    .line 113
    move v1, v4

    .line 114
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    iget v5, p0, Landroidx/customview/widget/h;->o:I

    .line 119
    .line 120
    add-int/2addr v3, v5

    .line 121
    if-ge p3, v3, :cond_4

    .line 122
    .line 123
    or-int/lit8 v1, v1, 0x4

    .line 124
    .line 125
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    iget v5, p0, Landroidx/customview/widget/h;->o:I

    .line 130
    .line 131
    sub-int/2addr v3, v5

    .line 132
    if-le p2, v3, :cond_5

    .line 133
    .line 134
    or-int/lit8 v1, v1, 0x2

    .line 135
    .line 136
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    iget v2, p0, Landroidx/customview/widget/h;->o:I

    .line 141
    .line 142
    sub-int/2addr p2, v2

    .line 143
    if-le p3, p2, :cond_6

    .line 144
    .line 145
    or-int/lit8 v1, v1, 0x8

    .line 146
    .line 147
    :cond_6
    aput v1, v0, p1

    .line 148
    .line 149
    iget p2, p0, Landroidx/customview/widget/h;->k:I

    .line 150
    .line 151
    shl-int p1, v4, p1

    .line 152
    .line 153
    or-int/2addr p1, p2

    .line 154
    iput p1, p0, Landroidx/customview/widget/h;->k:I

    .line 155
    .line 156
    return-void
.end method

.method public final p(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/customview/widget/h;->k(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Landroidx/customview/widget/h;->f:[F

    aput v3, v5, v2

    iget-object v3, p0, Landroidx/customview/widget/h;->g:[F

    aput v4, v3, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final q(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/h;->w:Landroidx/activity/d;

    iget-object v1, p0, Landroidx/customview/widget/h;->v:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Landroidx/customview/widget/h;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/customview/widget/h;->a:I

    iget-object v0, p0, Landroidx/customview/widget/h;->s:Landroidx/customview/widget/g;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/g;->onViewDragStateChanged(I)V

    iget p1, p0, Landroidx/customview/widget/h;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final r(II)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/customview/widget/h;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/customview/widget/h;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/widget/h;->c:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroidx/customview/widget/h;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidx/customview/widget/h;->c:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/customview/widget/h;->j(IIII)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(Landroid/view/MotionEvent;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/h;->a()V

    :cond_0
    iget-object v4, v0, Landroidx/customview/widget/h;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroidx/customview/widget/h;->l:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v4, v0, Landroidx/customview/widget/h;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget-object v7, v0, Landroidx/customview/widget/h;->s:Landroidx/customview/widget/g;

    if-eqz v2, :cond_10

    if-eq v2, v4, :cond_f

    if-eq v2, v5, :cond_6

    const/4 v8, 0x3

    if-eq v2, v8, :cond_f

    const/4 v8, 0x5

    if-eq v2, v8, :cond_4

    const/4 v5, 0x6

    if-eq v2, v5, :cond_3

    :cond_2
    :goto_0
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/h;->e(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {v0, v2, v8, v1}, Landroidx/customview/widget/h;->o(IFF)V

    iget v3, v0, Landroidx/customview/widget/h;->a:I

    if-nez v3, :cond_5

    iget-object v1, v0, Landroidx/customview/widget/h;->h:[I

    aget v1, v1, v2

    iget v3, v0, Landroidx/customview/widget/h;->q:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {v7, v1, v2}, Landroidx/customview/widget/g;->onEdgeTouched(II)V

    goto :goto_0

    :cond_5
    if-ne v3, v5, :cond_2

    float-to-int v3, v8

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroidx/customview/widget/h;->i(II)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    if-ne v1, v3, :cond_2

    invoke-virtual {v0, v2, v1}, Landroidx/customview/widget/h;->u(ILandroid/view/View;)Z

    goto :goto_0

    :cond_6
    iget-object v2, v0, Landroidx/customview/widget/h;->d:[F

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroidx/customview/widget/h;->e:[F

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_e

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/customview/widget/h;->k(I)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iget-object v10, v0, Landroidx/customview/widget/h;->d:[F

    aget v10, v10, v5

    sub-float v10, v8, v10

    iget-object v11, v0, Landroidx/customview/widget/h;->e:[F

    aget v11, v11, v5

    sub-float v11, v9, v11

    float-to-int v8, v8

    float-to-int v9, v9

    invoke-virtual {v0, v8, v9}, Landroidx/customview/widget/h;->i(II)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v0, v10, v11, v8}, Landroidx/customview/widget/h;->d(FFLandroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_9

    move v9, v4

    goto :goto_2

    :cond_9
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_b

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    float-to-int v13, v10

    add-int v14, v12, v13

    invoke-virtual {v7, v8, v14, v13}, Landroidx/customview/widget/g;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v13

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v14

    float-to-int v15, v11

    add-int v6, v14, v15

    invoke-virtual {v7, v8, v6, v15}, Landroidx/customview/widget/g;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v6

    invoke-virtual {v7, v8}, Landroidx/customview/widget/g;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v15

    invoke-virtual {v7, v8}, Landroidx/customview/widget/g;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v16

    if-eqz v15, :cond_a

    if-lez v15, :cond_b

    if-ne v13, v12, :cond_b

    :cond_a
    if-eqz v16, :cond_e

    if-lez v16, :cond_b

    if-ne v6, v14, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v0, v5, v10, v11}, Landroidx/customview/widget/h;->n(IFF)V

    iget v6, v0, Landroidx/customview/widget/h;->a:I

    if-ne v6, v4, :cond_c

    goto :goto_4

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v0, v5, v8}, Landroidx/customview/widget/h;->u(ILandroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_4

    :cond_d
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_e
    :goto_4
    invoke-virtual/range {p0 .. p1}, Landroidx/customview/widget/h;->p(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/h;->a()V

    goto/16 :goto_0

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/customview/widget/h;->o(IFF)V

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroidx/customview/widget/h;->i(II)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    if-ne v2, v3, :cond_11

    iget v3, v0, Landroidx/customview/widget/h;->a:I

    if-ne v3, v5, :cond_11

    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/h;->u(ILandroid/view/View;)Z

    :cond_11
    iget-object v2, v0, Landroidx/customview/widget/h;->h:[I

    aget v2, v2, v1

    iget v3, v0, Landroidx/customview/widget/h;->q:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_12

    invoke-virtual {v7, v2, v1}, Landroidx/customview/widget/g;->onEdgeTouched(II)V

    :cond_12
    :goto_5
    iget v1, v0, Landroidx/customview/widget/h;->a:I

    if-ne v1, v4, :cond_13

    goto :goto_6

    :cond_13
    move v4, v6

    :goto_6
    return v4
.end method

.method public final t(Landroid/view/View;II)Z
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/customview/widget/h;->c:I

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1, p1}, Landroidx/customview/widget/h;->j(IIII)Z

    move-result p1

    if-nez p1, :cond_0

    iget p2, p0, Landroidx/customview/widget/h;->a:I

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    :cond_0
    return p1
.end method

.method public final u(ILandroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/h;->t:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroidx/customview/widget/h;->c:I

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/customview/widget/h;->s:Landroidx/customview/widget/g;

    invoke-virtual {v0, p2, p1}, Landroidx/customview/widget/g;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Landroidx/customview/widget/h;->c:I

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/h;->b(ILandroid/view/View;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
