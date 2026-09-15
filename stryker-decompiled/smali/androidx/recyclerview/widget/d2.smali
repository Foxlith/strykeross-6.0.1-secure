.class public final Landroidx/recyclerview/widget/d2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/recyclerview/widget/c2;

.field public final b:Landroidx/recyclerview/widget/b2;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/t0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/d2;->a:Landroidx/recyclerview/widget/c2;

    .line 5
    .line 6
    new-instance p1, Landroidx/recyclerview/widget/b2;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p1, Landroidx/recyclerview/widget/b2;->a:I

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/recyclerview/widget/d2;->b:Landroidx/recyclerview/widget/b2;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(IIII)Landroid/view/View;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d2;->a:Landroidx/recyclerview/widget/c2;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/t0;

    .line 4
    .line 5
    iget v1, v0, Landroidx/recyclerview/widget/t0;->a:I

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/recyclerview/widget/t0;->b:Landroidx/recyclerview/widget/w0;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_0
    iget v2, v0, Landroidx/recyclerview/widget/t0;->a:I

    .line 22
    .line 23
    iget-object v3, v0, Landroidx/recyclerview/widget/t0;->b:Landroidx/recyclerview/widget/w0;

    .line 24
    .line 25
    packed-switch v2, :pswitch_data_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    :goto_1
    sub-int/2addr v2, v3

    .line 37
    goto :goto_2

    .line 38
    :pswitch_1
    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    goto :goto_1

    .line 47
    :goto_2
    if-le p2, p1, :cond_0

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    goto :goto_3

    .line 51
    :cond_0
    const/4 v3, -0x1

    .line 52
    :goto_3
    const/4 v4, 0x0

    .line 53
    :goto_4
    if-eq p1, p2, :cond_3

    .line 54
    .line 55
    iget v5, v0, Landroidx/recyclerview/widget/t0;->a:I

    .line 56
    .line 57
    iget-object v6, v0, Landroidx/recyclerview/widget/t0;->b:Landroidx/recyclerview/widget/w0;

    .line 58
    .line 59
    packed-switch v5, :pswitch_data_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    goto :goto_5

    .line 67
    :pswitch_2
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    :goto_5
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/t0;->b(Landroid/view/View;)I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/t0;->a(Landroid/view/View;)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    iget-object v8, p0, Landroidx/recyclerview/widget/d2;->b:Landroidx/recyclerview/widget/b2;

    .line 80
    .line 81
    iput v1, v8, Landroidx/recyclerview/widget/b2;->b:I

    .line 82
    .line 83
    iput v2, v8, Landroidx/recyclerview/widget/b2;->c:I

    .line 84
    .line 85
    iput v6, v8, Landroidx/recyclerview/widget/b2;->d:I

    .line 86
    .line 87
    iput v7, v8, Landroidx/recyclerview/widget/b2;->e:I

    .line 88
    .line 89
    if-eqz p3, :cond_1

    .line 90
    .line 91
    iput p3, v8, Landroidx/recyclerview/widget/b2;->a:I

    .line 92
    .line 93
    invoke-virtual {v8}, Landroidx/recyclerview/widget/b2;->a()Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_1

    .line 98
    .line 99
    return-object v5

    .line 100
    :cond_1
    if-eqz p4, :cond_2

    .line 101
    .line 102
    iput p4, v8, Landroidx/recyclerview/widget/b2;->a:I

    .line 103
    .line 104
    invoke-virtual {v8}, Landroidx/recyclerview/widget/b2;->a()Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_2

    .line 109
    .line 110
    move-object v4, v5

    .line 111
    :cond_2
    add-int/2addr p1, v3

    .line 112
    goto :goto_4

    .line 113
    :cond_3
    return-object v4

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d2;->a:Landroidx/recyclerview/widget/c2;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/t0;

    .line 4
    .line 5
    iget v1, v0, Landroidx/recyclerview/widget/t0;->a:I

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/recyclerview/widget/t0;->b:Landroidx/recyclerview/widget/w0;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_0
    iget v2, v0, Landroidx/recyclerview/widget/t0;->a:I

    .line 22
    .line 23
    iget-object v3, v0, Landroidx/recyclerview/widget/t0;->b:Landroidx/recyclerview/widget/w0;

    .line 24
    .line 25
    packed-switch v2, :pswitch_data_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    :goto_1
    sub-int/2addr v2, v3

    .line 37
    goto :goto_2

    .line 38
    :pswitch_1
    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    goto :goto_1

    .line 47
    :goto_2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/t0;->b(Landroid/view/View;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/t0;->a(Landroid/view/View;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget-object v0, p0, Landroidx/recyclerview/widget/d2;->b:Landroidx/recyclerview/widget/b2;

    .line 56
    .line 57
    iput v1, v0, Landroidx/recyclerview/widget/b2;->b:I

    .line 58
    .line 59
    iput v2, v0, Landroidx/recyclerview/widget/b2;->c:I

    .line 60
    .line 61
    iput v3, v0, Landroidx/recyclerview/widget/b2;->d:I

    .line 62
    .line 63
    iput p1, v0, Landroidx/recyclerview/widget/b2;->e:I

    .line 64
    .line 65
    const/16 p1, 0x6003

    .line 66
    .line 67
    iput p1, v0, Landroidx/recyclerview/widget/b2;->a:I

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b2;->a()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    return p1

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
