.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:[I

.field public d:[Landroid/view/View;

.field public final e:Landroid/util/SparseIntArray;

.field public final f:Landroid/util/SparseIntArray;

.field public final g:Landroidx/appcompat/widget/f4;

.field public final h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    iput-boolean v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    new-instance v1, Landroidx/appcompat/widget/f4;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/f4;-><init>(I)V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/widget/f4;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->y(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    new-instance v0, Landroidx/appcompat/widget/f4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/f4;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/widget/f4;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/w0;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/v0;

    move-result-object p1

    iget p1, p1, Landroidx/recyclerview/widget/v0;->b:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->y(I)V

    return-void
.end method


# virtual methods
.method public final checkLayoutParams(Landroidx/recyclerview/widget/x0;)Z
    .locals 0

    instance-of p1, p1, Landroidx/recyclerview/widget/v;

    return p1
.end method

.method public final collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/u0;)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 6
    .line 7
    if-ge v2, v3, :cond_0

    .line 8
    .line 9
    iget v3, p2, Landroidx/recyclerview/widget/z;->d:I

    .line 10
    .line 11
    if-ltz v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/l1;->b()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_0

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    iget v3, p2, Landroidx/recyclerview/widget/z;->d:I

    .line 22
    .line 23
    iget v4, p2, Landroidx/recyclerview/widget/z;->g:I

    .line 24
    .line 25
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    move-object v5, p3

    .line 30
    check-cast v5, Landroidx/recyclerview/widget/s;

    .line 31
    .line 32
    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/s;->a(II)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/widget/f4;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    iget v3, p2, Landroidx/recyclerview/widget/z;->d:I

    .line 43
    .line 44
    iget v4, p2, Landroidx/recyclerview/widget/z;->e:I

    .line 45
    .line 46
    add-int/2addr v3, v4

    .line 47
    iput v3, p2, Landroidx/recyclerview/widget/z;->d:I

    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public final computeHorizontalScrollOffset(Landroidx/recyclerview/widget/l1;)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollOffset(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public final computeHorizontalScrollRange(Landroidx/recyclerview/widget/l1;)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollRange(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public final computeVerticalScrollOffset(Landroidx/recyclerview/widget/l1;)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public final computeVerticalScrollRange(Landroidx/recyclerview/widget/l1;)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public final findReferenceChild(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;ZZ)Landroid/view/View;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    sub-int/2addr p3, v0

    .line 13
    const/4 p4, -0x1

    .line 14
    move v0, p4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p4, 0x0

    .line 17
    move v8, p4

    .line 18
    move p4, p3

    .line 19
    move p3, v8

    .line 20
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroidx/recyclerview/widget/e0;->h()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroidx/recyclerview/widget/e0;->f()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    move-object v5, v4

    .line 41
    :goto_1
    if-eq p3, p4, :cond_6

    .line 42
    .line 43
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-ltz v7, :cond_5

    .line 52
    .line 53
    if-ge v7, v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {p0, v7, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->v(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_1

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Landroidx/recyclerview/widget/x0;

    .line 67
    .line 68
    iget-object v7, v7, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 69
    .line 70
    invoke-virtual {v7}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_2

    .line 75
    .line 76
    if-nez v5, :cond_5

    .line 77
    .line 78
    move-object v5, v6

    .line 79
    goto :goto_3

    .line 80
    :cond_2
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 81
    .line 82
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-ge v7, v3, :cond_4

    .line 87
    .line 88
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 89
    .line 90
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-ge v7, v2, :cond_3

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    return-object v6

    .line 98
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 99
    .line 100
    move-object v4, v6

    .line 101
    :cond_5
    :goto_3
    add-int/2addr p3, v0

    .line 102
    goto :goto_1

    .line 103
    :cond_6
    if-eqz v4, :cond_7

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_7
    move-object v4, v5

    .line 107
    :goto_4
    return-object v4
.end method

.method public final generateDefaultLayoutParams()Landroidx/recyclerview/widget/x0;
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/v;

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/v;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/v;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/v;-><init>(II)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/x0;
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/v;

    .line 1
    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/x0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, v0, Landroidx/recyclerview/widget/v;->e:I

    const/4 p1, 0x0

    iput p1, v0, Landroidx/recyclerview/widget/v;->f:I

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/x0;
    .locals 3

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/v;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/x0;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput v2, v0, Landroidx/recyclerview/widget/v;->e:I

    iput v1, v0, Landroidx/recyclerview/widget/v;->f:I

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/v;

    .line 4
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/x0;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v2, v0, Landroidx/recyclerview/widget/v;->e:I

    iput v1, v0, Landroidx/recyclerview/widget/v;->f:I

    return-object v0
.end method

.method public final getColumnCountForAccessibility(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    return p1

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->u(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public final getRowCountForAccessibility(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    return p1

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->u(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public final layoutChunk(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/y;)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v2, p3

    .line 8
    .line 9
    move-object/from16 v7, p4

    .line 10
    .line 11
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 12
    .line 13
    check-cast v3, Landroidx/recyclerview/widget/d0;

    .line 14
    .line 15
    iget v4, v3, Landroidx/recyclerview/widget/d0;->d:I

    .line 16
    .line 17
    iget-object v3, v3, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 18
    .line 19
    packed-switch v4, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->getWidthMode()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    goto :goto_0

    .line 27
    :pswitch_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->getHeightMode()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    :goto_0
    const/4 v8, 0x1

    .line 32
    const/high16 v4, 0x40000000    # 2.0f

    .line 33
    .line 34
    if-eq v3, v4, :cond_0

    .line 35
    .line 36
    move v9, v8

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 v9, 0x0

    .line 39
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    if-lez v10, :cond_1

    .line 44
    .line 45
    iget-object v10, v6, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 46
    .line 47
    iget v11, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 48
    .line 49
    aget v10, v10, v11

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    const/4 v10, 0x0

    .line 53
    :goto_2
    if-eqz v9, :cond_2

    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->z()V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget v11, v2, Landroidx/recyclerview/widget/z;->e:I

    .line 59
    .line 60
    if-ne v11, v8, :cond_3

    .line 61
    .line 62
    move v11, v8

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/4 v11, 0x0

    .line 65
    :goto_3
    iget v12, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 66
    .line 67
    if-nez v11, :cond_4

    .line 68
    .line 69
    iget v12, v2, Landroidx/recyclerview/widget/z;->d:I

    .line 70
    .line 71
    invoke-virtual {v6, v12, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->v(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    iget v13, v2, Landroidx/recyclerview/widget/z;->d:I

    .line 76
    .line 77
    invoke-virtual {v6, v13, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->w(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    add-int/2addr v12, v13

    .line 82
    :cond_4
    const/4 v13, 0x0

    .line 83
    :goto_4
    iget v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 84
    .line 85
    if-ge v13, v14, :cond_8

    .line 86
    .line 87
    iget v14, v2, Landroidx/recyclerview/widget/z;->d:I

    .line 88
    .line 89
    if-ltz v14, :cond_8

    .line 90
    .line 91
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    if-ge v14, v15, :cond_8

    .line 96
    .line 97
    if-lez v12, :cond_8

    .line 98
    .line 99
    iget v14, v2, Landroidx/recyclerview/widget/z;->d:I

    .line 100
    .line 101
    invoke-virtual {v6, v14, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->w(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 102
    .line 103
    .line 104
    move-result v15

    .line 105
    iget v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 106
    .line 107
    if-gt v15, v4, :cond_7

    .line 108
    .line 109
    sub-int/2addr v12, v15

    .line 110
    if-gez v12, :cond_5

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_5
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/z;->b(Landroidx/recyclerview/widget/e1;)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    if-nez v4, :cond_6

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_6
    iget-object v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 121
    .line 122
    aput-object v4, v14, v13

    .line 123
    .line 124
    add-int/lit8 v13, v13, 0x1

    .line 125
    .line 126
    const/high16 v4, 0x40000000    # 2.0f

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 130
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v2, "Item at position "

    .line 134
    .line 135
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, " requires "

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v2, " spans but GridLayoutManager has only "

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 155
    .line 156
    const-string v3, " spans."

    .line 157
    .line 158
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v0

    .line 166
    :cond_8
    :goto_5
    if-nez v13, :cond_9

    .line 167
    .line 168
    iput-boolean v8, v7, Landroidx/recyclerview/widget/y;->b:Z

    .line 169
    .line 170
    return-void

    .line 171
    :cond_9
    if-eqz v11, :cond_a

    .line 172
    .line 173
    move v15, v8

    .line 174
    move v14, v13

    .line 175
    const/4 v12, 0x0

    .line 176
    goto :goto_6

    .line 177
    :cond_a
    add-int/lit8 v12, v13, -0x1

    .line 178
    .line 179
    const/4 v14, -0x1

    .line 180
    const/4 v15, -0x1

    .line 181
    :goto_6
    const/4 v4, 0x0

    .line 182
    :goto_7
    if-eq v12, v14, :cond_b

    .line 183
    .line 184
    iget-object v8, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 185
    .line 186
    aget-object v8, v8, v12

    .line 187
    .line 188
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 189
    .line 190
    .line 191
    move-result-object v16

    .line 192
    move-object/from16 v5, v16

    .line 193
    .line 194
    check-cast v5, Landroidx/recyclerview/widget/v;

    .line 195
    .line 196
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    invoke-virtual {v6, v8, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->w(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    iput v8, v5, Landroidx/recyclerview/widget/v;->f:I

    .line 205
    .line 206
    iput v4, v5, Landroidx/recyclerview/widget/v;->e:I

    .line 207
    .line 208
    add-int/2addr v4, v8

    .line 209
    add-int/2addr v12, v15

    .line 210
    const/4 v8, 0x1

    .line 211
    goto :goto_7

    .line 212
    :cond_b
    const/4 v0, 0x0

    .line 213
    const/4 v1, 0x0

    .line 214
    const/4 v4, 0x0

    .line 215
    :goto_8
    if-ge v1, v13, :cond_11

    .line 216
    .line 217
    iget-object v5, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 218
    .line 219
    aget-object v5, v5, v1

    .line 220
    .line 221
    iget-object v8, v2, Landroidx/recyclerview/widget/z;->k:Ljava/util/List;

    .line 222
    .line 223
    if-nez v8, :cond_d

    .line 224
    .line 225
    if-eqz v11, :cond_c

    .line 226
    .line 227
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/w0;->addView(Landroid/view/View;)V

    .line 228
    .line 229
    .line 230
    const/4 v8, 0x0

    .line 231
    goto :goto_9

    .line 232
    :cond_c
    const/4 v8, 0x0

    .line 233
    invoke-virtual {v6, v5, v8}, Landroidx/recyclerview/widget/w0;->addView(Landroid/view/View;I)V

    .line 234
    .line 235
    .line 236
    goto :goto_9

    .line 237
    :cond_d
    const/4 v8, 0x0

    .line 238
    if-eqz v11, :cond_e

    .line 239
    .line 240
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/w0;->addDisappearingView(Landroid/view/View;)V

    .line 241
    .line 242
    .line 243
    goto :goto_9

    .line 244
    :cond_e
    invoke-virtual {v6, v5, v8}, Landroidx/recyclerview/widget/w0;->addDisappearingView(Landroid/view/View;I)V

    .line 245
    .line 246
    .line 247
    :goto_9
    iget-object v12, v6, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 248
    .line 249
    invoke-virtual {v6, v5, v12}, Landroidx/recyclerview/widget/w0;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6, v5, v3, v8}, Landroidx/recyclerview/widget/GridLayoutManager;->x(Landroid/view/View;IZ)V

    .line 253
    .line 254
    .line 255
    iget-object v8, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 256
    .line 257
    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    .line 258
    .line 259
    .line 260
    move-result v8

    .line 261
    if-le v8, v4, :cond_f

    .line 262
    .line 263
    move v4, v8

    .line 264
    :cond_f
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    check-cast v8, Landroidx/recyclerview/widget/v;

    .line 269
    .line 270
    iget-object v12, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 271
    .line 272
    invoke-virtual {v12, v5}, Landroidx/recyclerview/widget/e0;->d(Landroid/view/View;)I

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    int-to-float v5, v5

    .line 277
    const/high16 v12, 0x3f800000    # 1.0f

    .line 278
    .line 279
    mul-float/2addr v5, v12

    .line 280
    iget v8, v8, Landroidx/recyclerview/widget/v;->f:I

    .line 281
    .line 282
    int-to-float v8, v8

    .line 283
    div-float/2addr v5, v8

    .line 284
    cmpl-float v8, v5, v0

    .line 285
    .line 286
    if-lez v8, :cond_10

    .line 287
    .line 288
    move v0, v5

    .line 289
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 290
    .line 291
    goto :goto_8

    .line 292
    :cond_11
    if-eqz v9, :cond_13

    .line 293
    .line 294
    iget v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 295
    .line 296
    int-to-float v1, v1

    .line 297
    mul-float/2addr v0, v1

    .line 298
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->r(I)V

    .line 307
    .line 308
    .line 309
    const/4 v4, 0x0

    .line 310
    const/4 v8, 0x0

    .line 311
    :goto_a
    if-ge v8, v13, :cond_13

    .line 312
    .line 313
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 314
    .line 315
    aget-object v0, v0, v8

    .line 316
    .line 317
    const/4 v1, 0x1

    .line 318
    const/high16 v3, 0x40000000    # 2.0f

    .line 319
    .line 320
    invoke-virtual {v6, v0, v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->x(Landroid/view/View;IZ)V

    .line 321
    .line 322
    .line 323
    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 324
    .line 325
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-le v0, v4, :cond_12

    .line 330
    .line 331
    move v4, v0

    .line 332
    :cond_12
    add-int/lit8 v8, v8, 0x1

    .line 333
    .line 334
    goto :goto_a

    .line 335
    :cond_13
    const/4 v8, 0x0

    .line 336
    :goto_b
    if-ge v8, v13, :cond_17

    .line 337
    .line 338
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 339
    .line 340
    aget-object v0, v0, v8

    .line 341
    .line 342
    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 343
    .line 344
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-eq v1, v4, :cond_15

    .line 349
    .line 350
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    check-cast v1, Landroidx/recyclerview/widget/v;

    .line 355
    .line 356
    iget-object v3, v1, Landroidx/recyclerview/widget/x0;->b:Landroid/graphics/Rect;

    .line 357
    .line 358
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 359
    .line 360
    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    .line 361
    .line 362
    add-int/2addr v5, v9

    .line 363
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 364
    .line 365
    add-int/2addr v5, v9

    .line 366
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 367
    .line 368
    add-int/2addr v5, v9

    .line 369
    iget v9, v3, Landroid/graphics/Rect;->left:I

    .line 370
    .line 371
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 372
    .line 373
    add-int/2addr v9, v3

    .line 374
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 375
    .line 376
    add-int/2addr v9, v3

    .line 377
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 378
    .line 379
    add-int/2addr v9, v3

    .line 380
    iget v3, v1, Landroidx/recyclerview/widget/v;->e:I

    .line 381
    .line 382
    iget v10, v1, Landroidx/recyclerview/widget/v;->f:I

    .line 383
    .line 384
    invoke-virtual {v6, v3, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->t(II)I

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    iget v10, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 389
    .line 390
    const/4 v11, 0x1

    .line 391
    if-ne v10, v11, :cond_14

    .line 392
    .line 393
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 394
    .line 395
    const/4 v10, 0x0

    .line 396
    const/high16 v11, 0x40000000    # 2.0f

    .line 397
    .line 398
    invoke-static {v3, v11, v9, v1, v10}, Landroidx/recyclerview/widget/w0;->getChildMeasureSpec(IIIIZ)I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    sub-int v3, v4, v5

    .line 403
    .line 404
    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    goto :goto_c

    .line 409
    :cond_14
    const/4 v10, 0x0

    .line 410
    const/high16 v11, 0x40000000    # 2.0f

    .line 411
    .line 412
    sub-int v9, v4, v9

    .line 413
    .line 414
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 415
    .line 416
    .line 417
    move-result v9

    .line 418
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 419
    .line 420
    invoke-static {v3, v11, v5, v1, v10}, Landroidx/recyclerview/widget/w0;->getChildMeasureSpec(IIIIZ)I

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    move v1, v9

    .line 425
    :goto_c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    check-cast v5, Landroidx/recyclerview/widget/x0;

    .line 430
    .line 431
    invoke-virtual {v6, v0, v1, v3, v5}, Landroidx/recyclerview/widget/w0;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/x0;)Z

    .line 432
    .line 433
    .line 434
    move-result v5

    .line 435
    if-eqz v5, :cond_16

    .line 436
    .line 437
    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    .line 438
    .line 439
    .line 440
    goto :goto_d

    .line 441
    :cond_15
    const/4 v10, 0x0

    .line 442
    const/high16 v11, 0x40000000    # 2.0f

    .line 443
    .line 444
    :cond_16
    :goto_d
    add-int/lit8 v8, v8, 0x1

    .line 445
    .line 446
    goto :goto_b

    .line 447
    :cond_17
    const/4 v10, 0x0

    .line 448
    iput v4, v7, Landroidx/recyclerview/widget/y;->a:I

    .line 449
    .line 450
    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 451
    .line 452
    const/4 v1, 0x1

    .line 453
    if-ne v0, v1, :cond_19

    .line 454
    .line 455
    iget v0, v2, Landroidx/recyclerview/widget/z;->f:I

    .line 456
    .line 457
    const/4 v1, -0x1

    .line 458
    iget v8, v2, Landroidx/recyclerview/widget/z;->b:I

    .line 459
    .line 460
    if-ne v0, v1, :cond_18

    .line 461
    .line 462
    sub-int v0, v8, v4

    .line 463
    .line 464
    move v2, v0

    .line 465
    move v0, v10

    .line 466
    move v1, v0

    .line 467
    goto :goto_f

    .line 468
    :cond_18
    add-int v0, v8, v4

    .line 469
    .line 470
    move v2, v8

    .line 471
    move v1, v10

    .line 472
    move v8, v0

    .line 473
    move v0, v1

    .line 474
    goto :goto_f

    .line 475
    :cond_19
    const/4 v1, -0x1

    .line 476
    iget v0, v2, Landroidx/recyclerview/widget/z;->f:I

    .line 477
    .line 478
    iget v8, v2, Landroidx/recyclerview/widget/z;->b:I

    .line 479
    .line 480
    if-ne v0, v1, :cond_1a

    .line 481
    .line 482
    sub-int v0, v8, v4

    .line 483
    .line 484
    move v1, v8

    .line 485
    :goto_e
    move v2, v10

    .line 486
    move v8, v2

    .line 487
    goto :goto_f

    .line 488
    :cond_1a
    add-int v0, v8, v4

    .line 489
    .line 490
    move v1, v0

    .line 491
    move v0, v8

    .line 492
    goto :goto_e

    .line 493
    :goto_f
    if-ge v10, v13, :cond_1f

    .line 494
    .line 495
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 496
    .line 497
    aget-object v9, v3, v10

    .line 498
    .line 499
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    move-object v11, v3

    .line 504
    check-cast v11, Landroidx/recyclerview/widget/v;

    .line 505
    .line 506
    iget v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 507
    .line 508
    const/4 v4, 0x1

    .line 509
    if-ne v3, v4, :cond_1c

    .line 510
    .line 511
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_1b

    .line 516
    .line 517
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    iget-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 522
    .line 523
    iget v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 524
    .line 525
    iget v4, v11, Landroidx/recyclerview/widget/v;->e:I

    .line 526
    .line 527
    sub-int/2addr v3, v4

    .line 528
    aget v1, v1, v3

    .line 529
    .line 530
    add-int/2addr v0, v1

    .line 531
    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 532
    .line 533
    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/e0;->d(Landroid/view/View;)I

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    sub-int v1, v0, v1

    .line 538
    .line 539
    move v12, v0

    .line 540
    move v14, v2

    .line 541
    move v15, v8

    .line 542
    move v8, v1

    .line 543
    goto :goto_10

    .line 544
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    iget-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 549
    .line 550
    iget v3, v11, Landroidx/recyclerview/widget/v;->e:I

    .line 551
    .line 552
    aget v1, v1, v3

    .line 553
    .line 554
    add-int/2addr v0, v1

    .line 555
    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 556
    .line 557
    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/e0;->d(Landroid/view/View;)I

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    add-int/2addr v1, v0

    .line 562
    move v12, v1

    .line 563
    move v14, v2

    .line 564
    move v15, v8

    .line 565
    move v8, v0

    .line 566
    goto :goto_10

    .line 567
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 572
    .line 573
    iget v4, v11, Landroidx/recyclerview/widget/v;->e:I

    .line 574
    .line 575
    aget v3, v3, v4

    .line 576
    .line 577
    add-int/2addr v2, v3

    .line 578
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 579
    .line 580
    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/e0;->d(Landroid/view/View;)I

    .line 581
    .line 582
    .line 583
    move-result v3

    .line 584
    add-int/2addr v3, v2

    .line 585
    move v8, v0

    .line 586
    move v12, v1

    .line 587
    move v14, v2

    .line 588
    move v15, v3

    .line 589
    :goto_10
    move-object/from16 v0, p0

    .line 590
    .line 591
    move-object v1, v9

    .line 592
    move v2, v8

    .line 593
    move v3, v14

    .line 594
    move v4, v12

    .line 595
    move v5, v15

    .line 596
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/w0;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 597
    .line 598
    .line 599
    iget-object v0, v11, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 600
    .line 601
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 602
    .line 603
    .line 604
    move-result v0

    .line 605
    if-nez v0, :cond_1d

    .line 606
    .line 607
    iget-object v0, v11, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 608
    .line 609
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isUpdated()Z

    .line 610
    .line 611
    .line 612
    move-result v0

    .line 613
    if-eqz v0, :cond_1e

    .line 614
    .line 615
    :cond_1d
    const/4 v0, 0x1

    .line 616
    goto :goto_11

    .line 617
    :cond_1e
    const/4 v0, 0x1

    .line 618
    goto :goto_12

    .line 619
    :goto_11
    iput-boolean v0, v7, Landroidx/recyclerview/widget/y;->c:Z

    .line 620
    .line 621
    :goto_12
    iget-boolean v1, v7, Landroidx/recyclerview/widget/y;->d:Z

    .line 622
    .line 623
    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    or-int/2addr v1, v2

    .line 628
    iput-boolean v1, v7, Landroidx/recyclerview/widget/y;->d:Z

    .line 629
    .line 630
    add-int/lit8 v10, v10, 0x1

    .line 631
    .line 632
    move v0, v8

    .line 633
    move v1, v12

    .line 634
    move v2, v14

    .line 635
    move v8, v15

    .line 636
    goto/16 :goto_f

    .line 637
    .line 638
    :cond_1f
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 639
    .line 640
    const/4 v1, 0x0

    .line 641
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 642
    .line 643
    .line 644
    return-void

    .line 645
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnchorReady(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/x;I)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/x;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->z()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_3

    .line 12
    .line 13
    iget-boolean v0, p2, Landroidx/recyclerview/widget/l1;->g:Z

    .line 14
    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p4, v0, :cond_0

    .line 19
    .line 20
    move p4, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p4, 0x0

    .line 23
    :goto_0
    iget v1, p3, Landroidx/recyclerview/widget/x;->b:I

    .line 24
    .line 25
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->v(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz p4, :cond_1

    .line 30
    .line 31
    :goto_1
    if-lez v1, :cond_3

    .line 32
    .line 33
    iget p4, p3, Landroidx/recyclerview/widget/x;->b:I

    .line 34
    .line 35
    if-lez p4, :cond_3

    .line 36
    .line 37
    add-int/lit8 p4, p4, -0x1

    .line 38
    .line 39
    iput p4, p3, Landroidx/recyclerview/widget/x;->b:I

    .line 40
    .line 41
    invoke-virtual {p0, p4, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->v(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 47
    .line 48
    .line 49
    move-result p4

    .line 50
    sub-int/2addr p4, v0

    .line 51
    iget v0, p3, Landroidx/recyclerview/widget/x;->b:I

    .line 52
    .line 53
    :goto_2
    if-ge v0, p4, :cond_2

    .line 54
    .line 55
    add-int/lit8 v2, v0, 0x1

    .line 56
    .line 57
    invoke-virtual {p0, v2, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->v(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-le v3, v1, :cond_2

    .line 62
    .line 63
    move v0, v2

    .line 64
    move v1, v3

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    iput v0, p3, Landroidx/recyclerview/widget/x;->b:I

    .line 67
    .line 68
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->s()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)Landroid/view/View;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/w0;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/v;

    iget v6, v5, Landroidx/recyclerview/widget/v;->e:I

    iget v5, v5, Landroidx/recyclerview/widget/v;->f:I

    add-int/2addr v5, v6

    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    return-object v4

    :cond_1
    move/from16 v7, p2

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    move v7, v9

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v11, -0x1

    if-eq v7, v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v9

    move v10, v11

    move v12, v10

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v7

    move v10, v7

    move v12, v9

    const/4 v7, 0x0

    :goto_1
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v13, v9, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v13

    if-eqz v13, :cond_4

    move v13, v9

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v0, v7, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->u(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result v14

    move v15, v11

    move/from16 v16, v15

    const/4 v8, 0x0

    const/16 v17, 0x0

    move v11, v7

    move-object v7, v4

    :goto_3
    if-eq v11, v10, :cond_5

    invoke-virtual {v0, v11, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->u(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result v9

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_6

    :cond_5
    :goto_4
    move-object/from16 v21, v7

    goto/16 :goto_c

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_a

    if-eq v9, v14, :cond_a

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v18, v3

    move-object/from16 v21, v7

    :cond_8
    move/from16 v19, v8

    move/from16 v20, v10

    :cond_9
    move/from16 v7, v16

    move/from16 v8, v17

    goto/16 :goto_a

    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/v;

    iget v2, v9, Landroidx/recyclerview/widget/v;->e:I

    move-object/from16 v18, v3

    iget v3, v9, Landroidx/recyclerview/widget/v;->f:I

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_b

    if-ne v2, v6, :cond_b

    if-ne v3, v5, :cond_b

    return-object v1

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_c

    if-eqz v4, :cond_d

    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_e

    if-nez v7, :cond_e

    :cond_d
    move-object/from16 v21, v7

    :goto_5
    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v7, v16

    move/from16 v8, v17

    goto :goto_9

    :cond_e
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v21, v7

    sub-int v7, v20, v19

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_11

    if-le v7, v8, :cond_f

    :goto_6
    goto :goto_5

    :cond_f
    if-ne v7, v8, :cond_8

    if-le v2, v15, :cond_10

    const/4 v7, 0x1

    goto :goto_7

    :cond_10
    const/4 v7, 0x0

    :goto_7
    if-ne v13, v7, :cond_8

    goto :goto_6

    :cond_11
    if-nez v4, :cond_8

    move/from16 v19, v8

    move/from16 v20, v10

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v1, v8, v10}, Landroidx/recyclerview/widget/w0;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v22

    if-eqz v22, :cond_9

    move/from16 v8, v17

    if-le v7, v8, :cond_12

    move/from16 v7, v16

    goto :goto_9

    :cond_12
    if-ne v7, v8, :cond_15

    move/from16 v7, v16

    if-le v2, v7, :cond_13

    goto :goto_8

    :cond_13
    const/4 v10, 0x0

    :goto_8
    if-ne v13, v10, :cond_16

    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v10

    if-eqz v10, :cond_14

    iget v4, v9, Landroidx/recyclerview/widget/v;->e:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v3, v2

    move v15, v4

    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v7, v21

    move-object v4, v1

    move v8, v2

    goto :goto_b

    :cond_14
    iget v7, v9, Landroidx/recyclerview/widget/v;->e:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v17, v3, v2

    move/from16 v16, v7

    move/from16 v8, v19

    move-object v7, v1

    goto :goto_b

    :cond_15
    move/from16 v7, v16

    :cond_16
    :goto_a
    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v8, v19

    move-object/from16 v7, v21

    :goto_b
    add-int/2addr v11, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v18

    move/from16 v10, v20

    const/4 v9, 0x1

    goto/16 :goto_3

    :goto_c
    if-eqz v4, :cond_17

    goto :goto_d

    :cond_17
    move-object/from16 v4, v21

    :goto_d
    return-object v4
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Lh0/h;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/w0;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Lh0/h;)V

    const-class p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lh0/h;->g(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroid/view/View;Lh0/h;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/v;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p3, p4}, Landroidx/recyclerview/widget/w0;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Lh0/h;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/v;

    .line 14
    .line 15
    iget-object p3, v0, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 16
    .line 17
    invoke-virtual {p3}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    invoke-virtual {p0, p3, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->u(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 26
    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    iget v1, v0, Landroidx/recyclerview/widget/v;->e:I

    .line 30
    .line 31
    iget v2, v0, Landroidx/recyclerview/widget/v;->f:I

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    move v3, p1

    .line 37
    :goto_0
    invoke-static/range {v1 .. v6}, Landroidx/fragment/app/n;->c(IIIIZZ)Landroidx/fragment/app/n;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p4, p1}, Lh0/h;->h(Landroidx/fragment/app/n;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v2, 0x1

    .line 46
    iget v3, v0, Landroidx/recyclerview/widget/v;->e:I

    .line 47
    .line 48
    iget v4, v0, Landroidx/recyclerview/widget/v;->f:I

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    move v1, p1

    .line 53
    goto :goto_0

    .line 54
    :goto_1
    return-void
.end method

.method public final onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/widget/f4;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/f4;->d()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/widget/f4;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/f4;->d()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/widget/f4;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/f4;->d()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/widget/f4;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/f4;->d()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/widget/f4;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/f4;->d()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)V
    .locals 7

    .line 1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/l1;->g:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Landroidx/recyclerview/widget/v;

    .line 25
    .line 26
    iget-object v5, v4, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 27
    .line 28
    invoke-virtual {v5}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    iget v6, v4, Landroidx/recyclerview/widget/v;->f:I

    .line 33
    .line 34
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    .line 36
    .line 37
    iget v4, v4, Landroidx/recyclerview/widget/v;->e:I

    .line 38
    .line 39
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onLayoutCompleted(Landroidx/recyclerview/widget/l1;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/l1;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    return-void
.end method

.method public final r(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 2
    .line 3
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    array-length v3, v0

    .line 9
    add-int/lit8 v4, v1, 0x1

    .line 10
    .line 11
    if-ne v3, v4, :cond_0

    .line 12
    .line 13
    array-length v3, v0

    .line 14
    sub-int/2addr v3, v2

    .line 15
    aget v3, v0, v3

    .line 16
    .line 17
    if-eq v3, p1, :cond_1

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 20
    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    :cond_1
    const/4 v3, 0x0

    .line 24
    aput v3, v0, v3

    .line 25
    .line 26
    div-int v4, p1, v1

    .line 27
    .line 28
    rem-int/2addr p1, v1

    .line 29
    move v5, v3

    .line 30
    :goto_0
    if-gt v2, v1, :cond_3

    .line 31
    .line 32
    add-int/2addr v3, p1

    .line 33
    if-lez v3, :cond_2

    .line 34
    .line 35
    sub-int v6, v1, v3

    .line 36
    .line 37
    if-ge v6, p1, :cond_2

    .line 38
    .line 39
    add-int/lit8 v6, v4, 0x1

    .line 40
    .line 41
    sub-int/2addr v3, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v6, v4

    .line 44
    :goto_1
    add-int/2addr v5, v6

    .line 45
    aput v5, v0, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 51
    .line 52
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    :cond_1
    return-void
.end method

.method public final scrollHorizontallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->z()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->s()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public final scrollVerticallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->z()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->s()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public final setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/w0;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/w0;->chooseSize(III)I

    move-result p1

    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    array-length v0, p3

    sub-int/2addr v0, v3

    aget p3, p3, v0

    add-int/2addr p3, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/w0;->chooseSize(III)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/w0;->chooseSize(III)I

    move-result p2

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    array-length v0, p1

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/w0;->chooseSize(III)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/w0;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setStackFromEnd(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final t(II)I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    sub-int v2, v1, p1

    aget v2, v0, v2

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget p1, v0, v1

    sub-int/2addr v2, p1

    return v2

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    add-int/2addr p2, p1

    aget p2, v0, p2

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public final u(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 1

    .line 1
    iget-boolean p3, p3, Landroidx/recyclerview/widget/l1;->g:Z

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/widget/f4;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/f4;->a(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/e1;->b(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const/4 p3, -0x1

    .line 19
    if-ne p2, p3, :cond_1

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string p3, "Cannot find span size for pre layout position. "

    .line 24
    .line 25
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "GridLayoutManager"

    .line 36
    .line 37
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    return p1

    .line 42
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 43
    .line 44
    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/widget/f4;->a(II)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public final v(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 2

    .line 1
    iget-boolean p3, p3, Landroidx/recyclerview/widget/l1;->g:Z

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/widget/f4;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/f4;->b(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {p3, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eq p3, v1, :cond_1

    .line 22
    .line 23
    return p3

    .line 24
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/e1;->b(I)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-ne p2, v1, :cond_2

    .line 29
    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    .line 33
    .line 34
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "GridLayoutManager"

    .line 45
    .line 46
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    return p1

    .line 51
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 52
    .line 53
    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/widget/f4;->b(II)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1
.end method

.method public final w(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 3

    .line 1
    iget-boolean p3, p3, Landroidx/recyclerview/widget/l1;->g:Z

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/widget/f4;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    invoke-virtual {p3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eq p3, v2, :cond_1

    .line 20
    .line 21
    return p3

    .line 22
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/e1;->b(I)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-ne p2, v2, :cond_2

    .line 27
    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    .line 31
    .line 32
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p2, "GridLayoutManager"

    .line 43
    .line 44
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    return v1
.end method

.method public final x(Landroid/view/View;IZ)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/v;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/recyclerview/widget/x0;->b:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 10
    .line 11
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 12
    .line 13
    add-int/2addr v2, v3

    .line 14
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 15
    .line 16
    add-int/2addr v2, v3

    .line 17
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 18
    .line 19
    add-int/2addr v2, v3

    .line 20
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 23
    .line 24
    add-int/2addr v3, v1

    .line 25
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 26
    .line 27
    add-int/2addr v3, v1

    .line 28
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 29
    .line 30
    add-int/2addr v3, v1

    .line 31
    iget v1, v0, Landroidx/recyclerview/widget/v;->e:I

    .line 32
    .line 33
    iget v4, v0, Landroidx/recyclerview/widget/v;->f:I

    .line 34
    .line 35
    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->t(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x1

    .line 43
    if-ne v4, v6, :cond_0

    .line 44
    .line 45
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 46
    .line 47
    invoke-static {v1, p2, v3, v4, v5}, Landroidx/recyclerview/widget/w0;->getChildMeasureSpec(IIIIZ)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/recyclerview/widget/e0;->i()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getHeightMode()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 62
    .line 63
    invoke-static {v1, v3, v2, v0, v6}, Landroidx/recyclerview/widget/w0;->getChildMeasureSpec(IIIIZ)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 69
    .line 70
    invoke-static {v1, p2, v2, v4, v5}, Landroidx/recyclerview/widget/w0;->getChildMeasureSpec(IIIIZ)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroidx/recyclerview/widget/e0;->i()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getWidthMode()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 85
    .line 86
    invoke-static {v1, v2, v3, v0, v6}, Landroidx/recyclerview/widget/w0;->getChildMeasureSpec(IIIIZ)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    move v7, v0

    .line 91
    move v0, p2

    .line 92
    move p2, v7

    .line 93
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Landroidx/recyclerview/widget/x0;

    .line 98
    .line 99
    if-eqz p3, :cond_1

    .line 100
    .line 101
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/w0;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/x0;)Z

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/w0;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/x0;)Z

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    :goto_1
    if-eqz p3, :cond_2

    .line 111
    .line 112
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 113
    .line 114
    .line 115
    :cond_2
    return-void
.end method

.method public final y(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    .line 8
    .line 9
    if-lt p1, v0, :cond_1

    .line 10
    .line 11
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/widget/f4;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/appcompat/widget/f4;->d()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v1, "Span count should be at least 1. Provided "

    .line 25
    .line 26
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public final z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    move-result v1

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->r(I)V

    return-void
.end method
