.class public final Landroidx/transition/c;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/transition/c;->a:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/transition/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 13
    .line 14
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v1, v0

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-int/2addr v2, p2

    .line 28
    invoke-static {p1, v0, p2, v1, v2}, Landroidx/transition/e0;->a(Landroid/view/View;IIII)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 39
    .line 40
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {p1, v0, p2, v1, v2}, Landroidx/transition/e0;->a(Landroid/view/View;IIII)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iget v2, p2, Landroid/graphics/PointF;->x:F

    .line 65
    .line 66
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 71
    .line 72
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-static {p1, v0, v1, v2, p2}, Landroidx/transition/e0;->a(Landroid/view/View;IIII)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroidx/transition/f;Landroid/graphics/PointF;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Landroidx/transition/c;->a:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, p1, Landroidx/transition/f;->c:I

    .line 17
    .line 18
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iput p2, p1, Landroidx/transition/f;->d:I

    .line 25
    .line 26
    iget v1, p1, Landroidx/transition/f;->g:I

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    iput v1, p1, Landroidx/transition/f;->g:I

    .line 31
    .line 32
    iget v2, p1, Landroidx/transition/f;->f:I

    .line 33
    .line 34
    if-ne v2, v1, :cond_0

    .line 35
    .line 36
    iget v1, p1, Landroidx/transition/f;->a:I

    .line 37
    .line 38
    iget v2, p1, Landroidx/transition/f;->b:I

    .line 39
    .line 40
    iget v3, p1, Landroidx/transition/f;->c:I

    .line 41
    .line 42
    iget-object v4, p1, Landroidx/transition/f;->e:Landroid/view/View;

    .line 43
    .line 44
    invoke-static {v4, v1, v2, v3, p2}, Landroidx/transition/e0;->a(Landroid/view/View;IIII)V

    .line 45
    .line 46
    .line 47
    iput v0, p1, Landroidx/transition/f;->f:I

    .line 48
    .line 49
    iput v0, p1, Landroidx/transition/f;->g:I

    .line 50
    .line 51
    :cond_0
    return-void

    .line 52
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iput v1, p1, Landroidx/transition/f;->a:I

    .line 62
    .line 63
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 64
    .line 65
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    iput p2, p1, Landroidx/transition/f;->b:I

    .line 70
    .line 71
    iget v1, p1, Landroidx/transition/f;->f:I

    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    iput v1, p1, Landroidx/transition/f;->f:I

    .line 76
    .line 77
    iget v2, p1, Landroidx/transition/f;->g:I

    .line 78
    .line 79
    if-ne v1, v2, :cond_1

    .line 80
    .line 81
    iget v1, p1, Landroidx/transition/f;->a:I

    .line 82
    .line 83
    iget v2, p1, Landroidx/transition/f;->c:I

    .line 84
    .line 85
    iget v3, p1, Landroidx/transition/f;->d:I

    .line 86
    .line 87
    iget-object v4, p1, Landroidx/transition/f;->e:Landroid/view/View;

    .line 88
    .line 89
    invoke-static {v4, v1, p2, v2, v3}, Landroidx/transition/e0;->a(Landroid/view/View;IIII)V

    .line 90
    .line 91
    .line 92
    iput v0, p1, Landroidx/transition/f;->f:I

    .line 93
    .line 94
    iput v0, p1, Landroidx/transition/f;->g:I

    .line 95
    .line 96
    :cond_1
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/transition/c;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/core/view/m0;->a(Landroid/view/View;)Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 17
    .line 18
    sget-object v0, Landroidx/transition/e0;->a:Landroidx/transition/i0;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroidx/transition/f0;->r(Landroid/view/View;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :pswitch_1
    check-cast p1, Landroid/view/View;

    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_2
    check-cast p1, Landroid/view/View;

    .line 33
    .line 34
    return-object v1

    .line 35
    :pswitch_3
    check-cast p1, Landroid/view/View;

    .line 36
    .line 37
    return-object v1

    .line 38
    :pswitch_4
    check-cast p1, Landroidx/transition/f;

    .line 39
    .line 40
    return-object v1

    .line 41
    :pswitch_5
    check-cast p1, Landroidx/transition/f;

    .line 42
    .line 43
    return-object v1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/transition/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/view/View;

    .line 7
    .line 8
    check-cast p2, Landroid/graphics/Rect;

    .line 9
    .line 10
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    invoke-static {p1, p2}, Landroidx/core/view/m0;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 17
    .line 18
    check-cast p2, Ljava/lang/Float;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    sget-object v0, Landroidx/transition/e0;->a:Landroidx/transition/i0;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroidx/transition/f0;->s(Landroid/view/View;F)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    check-cast p1, Landroid/view/View;

    .line 31
    .line 32
    check-cast p2, Landroid/graphics/PointF;

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Landroidx/transition/c;->a(Landroid/view/View;Landroid/graphics/PointF;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_2
    check-cast p1, Landroid/view/View;

    .line 39
    .line 40
    check-cast p2, Landroid/graphics/PointF;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Landroidx/transition/c;->a(Landroid/view/View;Landroid/graphics/PointF;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_3
    check-cast p1, Landroid/view/View;

    .line 47
    .line 48
    check-cast p2, Landroid/graphics/PointF;

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Landroidx/transition/c;->a(Landroid/view/View;Landroid/graphics/PointF;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_4
    check-cast p1, Landroidx/transition/f;

    .line 55
    .line 56
    check-cast p2, Landroid/graphics/PointF;

    .line 57
    .line 58
    invoke-virtual {p0, p1, p2}, Landroidx/transition/c;->b(Landroidx/transition/f;Landroid/graphics/PointF;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_5
    check-cast p1, Landroidx/transition/f;

    .line 63
    .line 64
    check-cast p2, Landroid/graphics/PointF;

    .line 65
    .line 66
    invoke-virtual {p0, p1, p2}, Landroidx/transition/c;->b(Landroidx/transition/f;Landroid/graphics/PointF;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
