.class public final Landroidx/recyclerview/widget/d0;
.super Landroidx/recyclerview/widget/e0;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/w0;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/recyclerview/widget/d0;->d:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/e0;-><init>(Landroidx/recyclerview/widget/w0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d0;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/recyclerview/widget/x0;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/w0;->getDecoratedBottom(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 19
    .line 20
    add-int/2addr p1, v0

    .line 21
    return p1

    .line 22
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/recyclerview/widget/x0;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/w0;->getDecoratedRight(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 33
    .line 34
    add-int/2addr p1, v0

    .line 35
    return p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/View;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d0;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/recyclerview/widget/x0;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/w0;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 19
    .line 20
    add-int/2addr p1, v1

    .line 21
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 22
    .line 23
    add-int/2addr p1, v0

    .line 24
    return p1

    .line 25
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroidx/recyclerview/widget/x0;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/w0;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 36
    .line 37
    add-int/2addr p1, v1

    .line 38
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 39
    .line 40
    add-int/2addr p1, v0

    .line 41
    return p1

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/view/View;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d0;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/recyclerview/widget/x0;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/w0;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 19
    .line 20
    add-int/2addr p1, v1

    .line 21
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 22
    .line 23
    add-int/2addr p1, v0

    .line 24
    return p1

    .line 25
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroidx/recyclerview/widget/x0;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/w0;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 36
    .line 37
    add-int/2addr p1, v1

    .line 38
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 39
    .line 40
    add-int/2addr p1, v0

    .line 41
    return p1

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Landroid/view/View;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d0;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/recyclerview/widget/x0;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/w0;->getDecoratedTop(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 19
    .line 20
    sub-int/2addr p1, v0

    .line 21
    return p1

    .line 22
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/recyclerview/widget/x0;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/w0;->getDecoratedLeft(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 33
    .line 34
    sub-int/2addr p1, v0

    .line 35
    return p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d0;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sub-int/2addr v0, v1

    .line 17
    return v0

    .line 18
    :pswitch_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sub-int/2addr v0, v1

    .line 27
    return v0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d0;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->getHeightMode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :pswitch_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->getWidthMode()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d0;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :pswitch_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d0;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    sub-int/2addr v0, v2

    .line 17
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-int/2addr v0, v1

    .line 22
    return v0

    .line 23
    :pswitch_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    sub-int/2addr v0, v2

    .line 32
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    sub-int/2addr v0, v1

    .line 37
    return v0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Landroid/view/View;)I
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d0;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/e0;->c:Landroid/graphics/Rect;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, p1, v2, v1}, Landroidx/recyclerview/widget/w0;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    .line 15
    .line 16
    return p1

    .line 17
    :pswitch_0
    invoke-virtual {v3, p1, v2, v1}, Landroidx/recyclerview/widget/w0;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    iget p1, v1, Landroid/graphics/Rect;->right:I

    .line 21
    .line 22
    return p1

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Landroid/view/View;)I
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d0;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/e0;->c:Landroid/graphics/Rect;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, p1, v2, v1}, Landroidx/recyclerview/widget/w0;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    iget p1, v1, Landroid/graphics/Rect;->top:I

    .line 15
    .line 16
    return p1

    .line 17
    :pswitch_0
    invoke-virtual {v3, p1, v2, v1}, Landroidx/recyclerview/widget/w0;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    iget p1, v1, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    return p1

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d0;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/w0;->offsetChildrenVertical(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/w0;->offsetChildrenHorizontal(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
