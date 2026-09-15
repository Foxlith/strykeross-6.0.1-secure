.class public Landroidx/constraintlayout/widget/Barrier;
.super Landroidx/constraintlayout/widget/b;
.source "SourceFile"


# instance fields
.field public h:I

.field public i:I

.field public j:Lq/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->a:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/util/HashMap;

    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->c:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/Barrier;->g(Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final g(Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/b;->g(Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lq/j;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lq/a;->s0:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    iput-boolean v2, v0, Lq/a;->t0:Z

    .line 14
    .line 15
    iput v1, v0, Lq/a;->u0:I

    .line 16
    .line 17
    iput-boolean v1, v0, Lq/a;->v0:Z

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->j:Lq/a;

    .line 20
    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v3, Landroidx/constraintlayout/widget/s;->b:[I

    .line 28
    .line 29
    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    move v3, v1

    .line 38
    :goto_0
    if-ge v3, v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/16 v5, 0x1a

    .line 45
    .line 46
    if-ne v4, v5, :cond_0

    .line 47
    .line 48
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    const/16 v5, 0x19

    .line 57
    .line 58
    if-ne v4, v5, :cond_1

    .line 59
    .line 60
    iget-object v5, p0, Landroidx/constraintlayout/widget/Barrier;->j:Lq/a;

    .line 61
    .line 62
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    iput-boolean v4, v5, Lq/a;->t0:Z

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/16 v5, 0x1b

    .line 70
    .line 71
    if-ne v4, v5, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    iget-object v5, p0, Landroidx/constraintlayout/widget/Barrier;->j:Lq/a;

    .line 78
    .line 79
    iput v4, v5, Lq/a;->u0:I

    .line 80
    .line 81
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->j:Lq/a;

    .line 88
    .line 89
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->d:Lq/j;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->i()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public getAllowsGoneWidget()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->j:Lq/a;

    .line 2
    .line 3
    iget-boolean v0, v0, Lq/a;->t0:Z

    .line 4
    .line 5
    return v0
.end method

.method public getMargin()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->j:Lq/a;

    .line 2
    .line 3
    iget v0, v0, Lq/a;->u0:I

    .line 4
    .line 5
    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->h:I

    return v0
.end method

.method public final h(Lq/d;Z)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->h:I

    .line 2
    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->i:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x6

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x5

    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    if-ne v0, v4, :cond_0

    .line 12
    .line 13
    :goto_0
    iput v3, p0, Landroidx/constraintlayout/widget/Barrier;->i:I

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    if-ne v0, v2, :cond_3

    .line 17
    .line 18
    :goto_1
    iput v1, p0, Landroidx/constraintlayout/widget/Barrier;->i:I

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    if-ne v0, v4, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    if-ne v0, v2, :cond_3

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    :goto_2
    instance-of p2, p1, Lq/a;

    .line 28
    .line 29
    if-eqz p2, :cond_4

    .line 30
    .line 31
    check-cast p1, Lq/a;

    .line 32
    .line 33
    iget p2, p0, Landroidx/constraintlayout/widget/Barrier;->i:I

    .line 34
    .line 35
    iput p2, p1, Lq/a;->s0:I

    .line 36
    .line 37
    :cond_4
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->j:Lq/a;

    .line 2
    .line 3
    iput-boolean p1, v0, Lq/a;->t0:Z

    .line 4
    .line 5
    return-void
.end method

.method public setDpMargin(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    int-to-float p1, p1

    .line 12
    mul-float/2addr p1, v0

    .line 13
    const/high16 v0, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p1, v0

    .line 16
    float-to-int p1, p1

    .line 17
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->j:Lq/a;

    .line 18
    .line 19
    iput p1, v0, Lq/a;->u0:I

    .line 20
    .line 21
    return-void
.end method

.method public setMargin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->j:Lq/a;

    .line 2
    .line 3
    iput p1, v0, Lq/a;->u0:I

    .line 4
    .line 5
    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->h:I

    return-void
.end method
