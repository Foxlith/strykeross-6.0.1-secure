.class public final Lw5/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw5/h;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lw5/h;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/view/View;)Lw5/h;
    .locals 3

    .line 1
    new-instance v0, Lw5/h;

    const v1, 0x7f0a05a3

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a05a4

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-direct {v0, v1, p0}, Lw5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw5/h;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [I

    if-eqz v1, :cond_0

    check-cast v0, [I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lw5/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public final c(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lw5/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, [I

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    new-array p1, p1, [I

    .line 18
    .line 19
    iput-object p1, p0, Lw5/h;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, [I

    .line 22
    .line 23
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move-object v1, v0

    .line 28
    check-cast v1, [I

    .line 29
    .line 30
    array-length v1, v1

    .line 31
    if-lt p1, v1, :cond_2

    .line 32
    .line 33
    move-object v1, v0

    .line 34
    check-cast v1, [I

    .line 35
    .line 36
    check-cast v0, [I

    .line 37
    .line 38
    array-length v0, v0

    .line 39
    :goto_0
    if-gt v0, p1, :cond_1

    .line 40
    .line 41
    mul-int/lit8 v0, v0, 0x2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-array p1, v0, [I

    .line 45
    .line 46
    iput-object p1, p0, Lw5/h;->a:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, [I

    .line 49
    .line 50
    array-length v0, v1

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lw5/h;->a:Ljava/lang/Object;

    .line 56
    .line 57
    move-object v0, p1

    .line 58
    check-cast v0, [I

    .line 59
    .line 60
    array-length v1, v1

    .line 61
    check-cast p1, [I

    .line 62
    .line 63
    array-length p1, p1

    .line 64
    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_1
    return-void
.end method

.method public final d(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lw5/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    array-length v0, v0

    .line 10
    if-lt p1, v0, :cond_1

    .line 11
    .line 12
    return v1

    .line 13
    :cond_1
    iget-object v0, p0, Lw5/h;->b:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v2, v0

    .line 16
    check-cast v2, Ljava/util/List;

    .line 17
    .line 18
    if-nez v2, :cond_3

    .line 19
    .line 20
    :cond_2
    move v0, v1

    .line 21
    goto :goto_4

    .line 22
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v0, :cond_4

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    :goto_0
    if-ltz v0, :cond_6

    .line 35
    .line 36
    iget-object v3, p0, Lw5/h;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v3, Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroidx/recyclerview/widget/y1;

    .line 45
    .line 46
    iget v4, v3, Landroidx/recyclerview/widget/y1;->a:I

    .line 47
    .line 48
    if-ne v4, p1, :cond_5

    .line 49
    .line 50
    move-object v2, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    .line 56
    .line 57
    iget-object v0, p0, Lw5/h;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_7
    iget-object v0, p0, Lw5/h;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v2, 0x0

    .line 73
    :goto_2
    if-ge v2, v0, :cond_9

    .line 74
    .line 75
    iget-object v3, p0, Lw5/h;->b:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v3, Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Landroidx/recyclerview/widget/y1;

    .line 84
    .line 85
    iget v3, v3, Landroidx/recyclerview/widget/y1;->a:I

    .line 86
    .line 87
    if-lt v3, p1, :cond_8

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_9
    move v2, v1

    .line 94
    :goto_3
    if-eq v2, v1, :cond_2

    .line 95
    .line 96
    iget-object v0, p0, Lw5/h;->b:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroidx/recyclerview/widget/y1;

    .line 105
    .line 106
    iget-object v3, p0, Lw5/h;->b:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v3, Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    iget v0, v0, Landroidx/recyclerview/widget/y1;->a:I

    .line 114
    .line 115
    :goto_4
    if-ne v0, v1, :cond_a

    .line 116
    .line 117
    iget-object v0, p0, Lw5/h;->a:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, [I

    .line 120
    .line 121
    array-length v2, v0

    .line 122
    invoke-static {v0, p1, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lw5/h;->a:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p1, [I

    .line 128
    .line 129
    array-length p1, p1

    .line 130
    return p1

    .line 131
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 132
    .line 133
    iget-object v2, p0, Lw5/h;->a:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, [I

    .line 136
    .line 137
    array-length v2, v2

    .line 138
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    iget-object v2, p0, Lw5/h;->a:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v2, [I

    .line 145
    .line 146
    invoke-static {v2, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 147
    .line 148
    .line 149
    return v0
.end method

.method public final e(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lw5/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    add-int v0, p1, p2

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lw5/h;->c(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lw5/h;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, [I

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    sub-int/2addr v2, p1

    .line 22
    sub-int/2addr v2, p2

    .line 23
    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lw5/h;->a:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, [I

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lw5/h;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Ljava/util/List;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 46
    .line 47
    :goto_0
    if-ltz v0, :cond_3

    .line 48
    .line 49
    iget-object v1, p0, Lw5/h;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroidx/recyclerview/widget/y1;

    .line 58
    .line 59
    iget v2, v1, Landroidx/recyclerview/widget/y1;->a:I

    .line 60
    .line 61
    if-ge v2, p1, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    add-int/2addr v2, p2

    .line 65
    iput v2, v1, Landroidx/recyclerview/widget/y1;->a:I

    .line 66
    .line 67
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    :goto_2
    return-void
.end method

.method public final f(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lw5/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    add-int v0, p1, p2

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lw5/h;->c(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lw5/h;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, [I

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    sub-int/2addr v2, p1

    .line 22
    sub-int/2addr v2, p2

    .line 23
    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lw5/h;->a:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, [I

    .line 29
    .line 30
    array-length v2, v1

    .line 31
    sub-int/2addr v2, p2

    .line 32
    array-length v3, v1

    .line 33
    const/4 v4, -0x1

    .line 34
    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lw5/h;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Ljava/util/List;

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/lit8 v1, v1, -0x1

    .line 49
    .line 50
    :goto_0
    if-ltz v1, :cond_4

    .line 51
    .line 52
    iget-object v2, p0, Lw5/h;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroidx/recyclerview/widget/y1;

    .line 61
    .line 62
    iget v3, v2, Landroidx/recyclerview/widget/y1;->a:I

    .line 63
    .line 64
    if-ge v3, p1, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    if-ge v3, v0, :cond_3

    .line 68
    .line 69
    iget-object v2, p0, Lw5/h;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    sub-int/2addr v3, p2

    .line 78
    iput v3, v2, Landroidx/recyclerview/widget/y1;->a:I

    .line 79
    .line 80
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    :goto_2
    return-void
.end method
