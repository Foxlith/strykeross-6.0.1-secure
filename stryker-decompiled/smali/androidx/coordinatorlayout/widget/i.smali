.class public final Landroidx/coordinatorlayout/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/coordinatorlayout/widget/i;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;)I
    .locals 4

    .line 1
    iget v0, p0, Landroidx/coordinatorlayout/widget/i;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lj1/d;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Lj1/d;

    .line 20
    .line 21
    iget-boolean p1, p1, Lj1/d;->a:Z

    .line 22
    .line 23
    iget-boolean p2, p2, Lj1/d;->a:Z

    .line 24
    .line 25
    if-eq p1, p2, :cond_1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    move v1, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v1, v2

    .line 32
    :cond_1
    :goto_0
    return v1

    .line 33
    :pswitch_0
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 34
    .line 35
    invoke-static {p1}, Landroidx/core/view/q0;->m(Landroid/view/View;)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-static {p2}, Landroidx/core/view/q0;->m(Landroid/view/View;)F

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    cmpl-float v0, p1, p2

    .line 44
    .line 45
    if-lez v0, :cond_2

    .line 46
    .line 47
    move v1, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    cmpg-float p1, p1, p2

    .line 50
    .line 51
    if-gez p1, :cond_3

    .line 52
    .line 53
    move v1, v3

    .line 54
    :cond_3
    :goto_1
    return v1

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/coordinatorlayout/widget/i;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p2, Ljava/lang/reflect/Constructor;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    array-length p2, p2

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p1, Ljava/lang/reflect/Constructor;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    array-length p1, p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-ne p2, p1, :cond_0

    .line 32
    .line 33
    move v1, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    if-nez p2, :cond_1

    .line 36
    .line 37
    move v1, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-nez p1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    :goto_0
    return v1

    .line 47
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 48
    .line 49
    check-cast p2, Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Landroidx/coordinatorlayout/widget/i;->a(Landroid/view/View;Landroid/view/View;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :pswitch_1
    check-cast p1, Lj1/c;

    .line 57
    .line 58
    check-cast p2, Lj1/c;

    .line 59
    .line 60
    iget p1, p1, Lj1/c;->a:I

    .line 61
    .line 62
    iget p2, p2, Lj1/c;->a:I

    .line 63
    .line 64
    sub-int/2addr p1, p2

    .line 65
    return p1

    .line 66
    :pswitch_2
    check-cast p1, Landroidx/recyclerview/widget/t;

    .line 67
    .line 68
    check-cast p2, Landroidx/recyclerview/widget/t;

    .line 69
    .line 70
    iget-object v0, p1, Landroidx/recyclerview/widget/t;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    move v4, v1

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move v4, v3

    .line 77
    :goto_1
    iget-object v5, p2, Landroidx/recyclerview/widget/t;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    if-nez v5, :cond_4

    .line 80
    .line 81
    move v5, v1

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move v5, v3

    .line 84
    :goto_2
    if-eq v4, v5, :cond_7

    .line 85
    .line 86
    if-nez v0, :cond_5

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_5
    :goto_3
    move v1, v2

    .line 90
    :cond_6
    :goto_4
    move v3, v1

    .line 91
    goto :goto_5

    .line 92
    :cond_7
    iget-boolean v0, p1, Landroidx/recyclerview/widget/t;->a:Z

    .line 93
    .line 94
    iget-boolean v4, p2, Landroidx/recyclerview/widget/t;->a:Z

    .line 95
    .line 96
    if-eq v0, v4, :cond_8

    .line 97
    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_8
    iget v0, p2, Landroidx/recyclerview/widget/t;->b:I

    .line 102
    .line 103
    iget v1, p1, Landroidx/recyclerview/widget/t;->b:I

    .line 104
    .line 105
    sub-int/2addr v0, v1

    .line 106
    if-eqz v0, :cond_9

    .line 107
    .line 108
    move v3, v0

    .line 109
    goto :goto_5

    .line 110
    :cond_9
    iget p1, p1, Landroidx/recyclerview/widget/t;->c:I

    .line 111
    .line 112
    iget p2, p2, Landroidx/recyclerview/widget/t;->c:I

    .line 113
    .line 114
    sub-int/2addr p1, p2

    .line 115
    if-eqz p1, :cond_a

    .line 116
    .line 117
    move v3, p1

    .line 118
    :cond_a
    :goto_5
    return v3

    .line 119
    :pswitch_3
    check-cast p1, Landroidx/recyclerview/widget/m;

    .line 120
    .line 121
    check-cast p2, Landroidx/recyclerview/widget/m;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    const/4 p1, 0x0

    .line 127
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    rsub-int/lit8 p1, p1, 0x0

    .line 131
    .line 132
    return p1

    .line 133
    :pswitch_4
    check-cast p1, Landroid/view/View;

    .line 134
    .line 135
    check-cast p2, Landroid/view/View;

    .line 136
    .line 137
    invoke-virtual {p0, p1, p2}, Landroidx/coordinatorlayout/widget/i;->a(Landroid/view/View;Landroid/view/View;)I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    return p1

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
