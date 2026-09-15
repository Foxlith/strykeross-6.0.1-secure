.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/w0;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/j1;


# instance fields
.field public final a:I

.field public final b:[Landroidx/recyclerview/widget/a2;

.field public final c:Landroidx/recyclerview/widget/e0;

.field public final d:Landroidx/recyclerview/widget/e0;

.field public final e:I

.field public f:I

.field public final g:Landroidx/recyclerview/widget/w;

.field public h:Z

.field public i:Z

.field public final j:Ljava/util/BitSet;

.field public k:I

.field public l:I

.field public final m:Lw5/h;

.field public final n:I

.field public o:Z

.field public p:Z

.field public q:Landroidx/recyclerview/widget/z1;

.field public final r:Landroid/graphics/Rect;

.field public final s:Landroidx/recyclerview/widget/w1;

.field public final t:Z

.field public u:[I

.field public final v:Landroidx/recyclerview/widget/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/w0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 11
    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 13
    .line 14
    const/high16 v0, -0x80000000

    .line 15
    .line 16
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 17
    .line 18
    new-instance v0, Lw5/h;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Lw5/h;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    .line 27
    .line 28
    new-instance v2, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroid/graphics/Rect;

    .line 34
    .line 35
    new-instance v2, Landroidx/recyclerview/widget/w1;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/w1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/w1;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    iput-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    .line 44
    .line 45
    new-instance v3, Landroidx/recyclerview/widget/n;

    .line 46
    .line 47
    invoke-direct {v3, p0, v2}, Landroidx/recyclerview/widget/n;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    iput-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/n;

    .line 51
    .line 52
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/w0;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/v0;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget p2, p1, Landroidx/recyclerview/widget/v0;->a:I

    .line 57
    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    if-ne p2, v2, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string p2, "invalid orientation."

    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_1
    :goto_0
    const/4 p3, 0x0

    .line 72
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 76
    .line 77
    if-ne p2, p4, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 81
    .line 82
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 83
    .line 84
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/e0;

    .line 85
    .line 86
    iput-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 87
    .line 88
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/e0;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    .line 91
    .line 92
    .line 93
    :goto_1
    iget p2, p1, Landroidx/recyclerview/widget/v0;->b:I

    .line 94
    .line 95
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 99
    .line 100
    if-eq p2, p4, :cond_4

    .line 101
    .line 102
    invoke-virtual {v0}, Lw5/h;->b()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    .line 106
    .line 107
    .line 108
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 109
    .line 110
    new-instance p2, Ljava/util/BitSet;

    .line 111
    .line 112
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 113
    .line 114
    invoke-direct {p2, p4}, Ljava/util/BitSet;-><init>(I)V

    .line 115
    .line 116
    .line 117
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    .line 118
    .line 119
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 120
    .line 121
    new-array p2, p2, [Landroidx/recyclerview/widget/a2;

    .line 122
    .line 123
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 124
    .line 125
    move p2, v1

    .line 126
    :goto_2
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 127
    .line 128
    if-ge p2, p4, :cond_3

    .line 129
    .line 130
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 131
    .line 132
    new-instance v0, Landroidx/recyclerview/widget/a2;

    .line 133
    .line 134
    invoke-direct {v0, p0, p2}, Landroidx/recyclerview/widget/a2;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    .line 135
    .line 136
    .line 137
    aput-object v0, p4, p2

    .line 138
    .line 139
    add-int/lit8 p2, p2, 0x1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    .line 143
    .line 144
    .line 145
    :cond_4
    iget-boolean p1, p1, Landroidx/recyclerview/widget/v0;->c:Z

    .line 146
    .line 147
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    .line 151
    .line 152
    if-eqz p2, :cond_5

    .line 153
    .line 154
    iget-boolean p3, p2, Landroidx/recyclerview/widget/z1;->h:Z

    .line 155
    .line 156
    if-eq p3, p1, :cond_5

    .line 157
    .line 158
    iput-boolean p1, p2, Landroidx/recyclerview/widget/z1;->h:Z

    .line 159
    .line 160
    :cond_5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 161
    .line 162
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    .line 163
    .line 164
    .line 165
    new-instance p1, Landroidx/recyclerview/widget/w;

    .line 166
    .line 167
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-boolean v2, p1, Landroidx/recyclerview/widget/w;->a:Z

    .line 171
    .line 172
    iput v1, p1, Landroidx/recyclerview/widget/w;->f:I

    .line 173
    .line 174
    iput v1, p1, Landroidx/recyclerview/widget/w;->g:I

    .line 175
    .line 176
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/w;

    .line 177
    .line 178
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 179
    .line 180
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/e0;->a(Landroidx/recyclerview/widget/w0;I)Landroidx/recyclerview/widget/d0;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 185
    .line 186
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 187
    .line 188
    sub-int/2addr v2, p1

    .line 189
    invoke-static {p0, v2}, Landroidx/recyclerview/widget/e0;->a(Landroidx/recyclerview/widget/w0;I)Landroidx/recyclerview/widget/d0;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/e0;

    .line 194
    .line 195
    return-void
.end method

.method public static E(III)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return p0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    xor-int/2addr v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    goto :goto_2

    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    goto :goto_0

    :goto_2
    return-void
.end method

.method public final B(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/w;

    iput p1, v0, Landroidx/recyclerview/widget/w;->e:I

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput v2, v0, Landroidx/recyclerview/widget/w;->d:I

    return-void
.end method

.method public final C(ILandroidx/recyclerview/widget/l1;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/w;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroidx/recyclerview/widget/w;->b:I

    .line 5
    .line 6
    iput p1, v0, Landroidx/recyclerview/widget/w;->c:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->isSmoothScrolling()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget p2, p2, Landroidx/recyclerview/widget/l1;->a:I

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    if-eq p2, v2, :cond_2

    .line 19
    .line 20
    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 21
    .line 22
    if-ge p2, p1, :cond_0

    .line 23
    .line 24
    move p1, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p1, v1

    .line 27
    :goto_0
    if-ne v2, p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/recyclerview/widget/e0;->i()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    move p2, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/recyclerview/widget/e0;->i()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    move p2, p1

    .line 44
    move p1, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move p1, v1

    .line 47
    move p2, p1

    .line 48
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getClipToPadding()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroidx/recyclerview/widget/e0;->h()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    sub-int/2addr v2, p2

    .line 61
    iput v2, v0, Landroidx/recyclerview/widget/w;->f:I

    .line 62
    .line 63
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 64
    .line 65
    invoke-virtual {p2}, Landroidx/recyclerview/widget/e0;->f()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    add-int/2addr p2, p1

    .line 70
    iput p2, v0, Landroidx/recyclerview/widget/w;->g:I

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 74
    .line 75
    check-cast v2, Landroidx/recyclerview/widget/d0;

    .line 76
    .line 77
    iget v4, v2, Landroidx/recyclerview/widget/d0;->d:I

    .line 78
    .line 79
    iget-object v2, v2, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 80
    .line 81
    packed-switch v4, :pswitch_data_0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Landroidx/recyclerview/widget/w0;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    goto :goto_2

    .line 89
    :pswitch_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/w0;->getWidth()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    :goto_2
    add-int/2addr v2, p1

    .line 94
    iput v2, v0, Landroidx/recyclerview/widget/w;->g:I

    .line 95
    .line 96
    neg-int p1, p2

    .line 97
    iput p1, v0, Landroidx/recyclerview/widget/w;->f:I

    .line 98
    .line 99
    :goto_3
    iput-boolean v1, v0, Landroidx/recyclerview/widget/w;->h:Z

    .line 100
    .line 101
    iput-boolean v3, v0, Landroidx/recyclerview/widget/w;->a:Z

    .line 102
    .line 103
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroidx/recyclerview/widget/e0;->g()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_4

    .line 110
    .line 111
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 112
    .line 113
    check-cast p1, Landroidx/recyclerview/widget/d0;

    .line 114
    .line 115
    iget p2, p1, Landroidx/recyclerview/widget/d0;->d:I

    .line 116
    .line 117
    iget-object p1, p1, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 118
    .line 119
    packed-switch p2, :pswitch_data_1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroidx/recyclerview/widget/w0;->getHeight()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    goto :goto_4

    .line 127
    :pswitch_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/w0;->getWidth()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    :goto_4
    if-nez p1, :cond_4

    .line 132
    .line 133
    move v1, v3

    .line 134
    :cond_4
    iput-boolean v1, v0, Landroidx/recyclerview/widget/w;->i:Z

    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final D(Landroidx/recyclerview/widget/a2;II)V
    .locals 5

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/a2;->d:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    iget v4, p1, Landroidx/recyclerview/widget/a2;->e:I

    .line 8
    .line 9
    if-ne p2, v3, :cond_1

    .line 10
    .line 11
    iget p2, p1, Landroidx/recyclerview/widget/a2;->b:I

    .line 12
    .line 13
    if-eq p2, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p1, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroidx/recyclerview/widget/x1;

    .line 29
    .line 30
    iget-object v3, p1, Landroidx/recyclerview/widget/a2;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 31
    .line 32
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 33
    .line 34
    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iput p2, p1, Landroidx/recyclerview/widget/a2;->b:I

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget p2, p1, Landroidx/recyclerview/widget/a2;->b:I

    .line 44
    .line 45
    :goto_0
    add-int/2addr p2, v0

    .line 46
    if-gt p2, p3, :cond_3

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    iget p2, p1, Landroidx/recyclerview/widget/a2;->c:I

    .line 50
    .line 51
    if-eq p2, v1, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/a2;->a()V

    .line 55
    .line 56
    .line 57
    iget p2, p1, Landroidx/recyclerview/widget/a2;->c:I

    .line 58
    .line 59
    :goto_1
    sub-int/2addr p2, v0

    .line 60
    if-lt p2, p3, :cond_3

    .line 61
    .line 62
    :goto_2
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    .line 63
    .line 64
    invoke-virtual {p1, v4, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method public final assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/w0;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final canScrollHorizontally()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final canScrollVertically()Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final checkLayoutParams(Landroidx/recyclerview/widget/x0;)Z
    .locals 0

    instance-of p1, p1, Landroidx/recyclerview/widget/x1;

    return p1
.end method

.method public final collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/u0;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move p1, p2

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_7

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w(ILandroidx/recyclerview/widget/l1;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:[I

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    array-length p1, p1

    .line 25
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 26
    .line 27
    if-ge p1, p2, :cond_3

    .line 28
    .line 29
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 30
    .line 31
    new-array p1, p1, [I

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:[I

    .line 34
    .line 35
    :cond_3
    const/4 p1, 0x0

    .line 36
    move p2, p1

    .line 37
    move v0, p2

    .line 38
    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/w;

    .line 41
    .line 42
    if-ge p2, v1, :cond_6

    .line 43
    .line 44
    iget v1, v2, Landroidx/recyclerview/widget/w;->d:I

    .line 45
    .line 46
    const/4 v3, -0x1

    .line 47
    if-ne v1, v3, :cond_4

    .line 48
    .line 49
    iget v1, v2, Landroidx/recyclerview/widget/w;->f:I

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 52
    .line 53
    aget-object v2, v2, p2

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/a2;->h(I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    :goto_2
    sub-int/2addr v1, v2

    .line 60
    goto :goto_3

    .line 61
    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 62
    .line 63
    aget-object v1, v1, p2

    .line 64
    .line 65
    iget v3, v2, Landroidx/recyclerview/widget/w;->g:I

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/a2;->f(I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iget v2, v2, Landroidx/recyclerview/widget/w;->g:I

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :goto_3
    if-ltz v1, :cond_5

    .line 75
    .line 76
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:[I

    .line 77
    .line 78
    aput v1, v2, v0

    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:[I

    .line 86
    .line 87
    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    .line 88
    .line 89
    .line 90
    :goto_4
    if-ge p1, v0, :cond_7

    .line 91
    .line 92
    iget p2, v2, Landroidx/recyclerview/widget/w;->c:I

    .line 93
    .line 94
    if-ltz p2, :cond_7

    .line 95
    .line 96
    invoke-virtual {p3}, Landroidx/recyclerview/widget/l1;->b()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-ge p2, v1, :cond_7

    .line 101
    .line 102
    iget p2, v2, Landroidx/recyclerview/widget/w;->c:I

    .line 103
    .line 104
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:[I

    .line 105
    .line 106
    aget v1, v1, p1

    .line 107
    .line 108
    move-object v3, p4

    .line 109
    check-cast v3, Landroidx/recyclerview/widget/s;

    .line 110
    .line 111
    invoke-virtual {v3, p2, v1}, Landroidx/recyclerview/widget/s;->a(II)V

    .line 112
    .line 113
    .line 114
    iget p2, v2, Landroidx/recyclerview/widget/w;->c:I

    .line 115
    .line 116
    iget v1, v2, Landroidx/recyclerview/widget/w;->d:I

    .line 117
    .line 118
    add-int/2addr p2, v1

    .line 119
    iput p2, v2, Landroidx/recyclerview/widget/w;->c:I

    .line 120
    .line 121
    add-int/lit8 p1, p1, 0x1

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_7
    :goto_5
    return-void
.end method

.method public final computeHorizontalScrollExtent(Landroidx/recyclerview/widget/l1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public final computeHorizontalScrollOffset(Landroidx/recyclerview/widget/l1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public final computeHorizontalScrollRange(Landroidx/recyclerview/widget/l1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(I)I

    move-result p1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    iput v2, v0, Landroid/graphics/PointF;->x:F

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v0
.end method

.method public final computeVerticalScrollExtent(Landroidx/recyclerview/widget/l1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public final computeVerticalScrollOffset(Landroidx/recyclerview/widget/l1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public final computeVerticalScrollRange(Landroidx/recyclerview/widget/l1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public final d(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    move-result v0

    if-ge p1, v0, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public final e()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()I

    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Lw5/h;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lw5/h;->b()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestSimpleAnimationsInNextLayout()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method public final f(Landroidx/recyclerview/widget/l1;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k(Z)Landroid/view/View;

    move-result-object v2

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroidx/lifecycle/k;->c(Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/e0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/w0;Z)I

    move-result p1

    return p1
.end method

.method public final g(Landroidx/recyclerview/widget/l1;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k(Z)Landroid/view/View;

    move-result-object v2

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroidx/lifecycle/k;->d(Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/e0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/w0;ZZ)I

    move-result p1

    return p1
.end method

.method public final generateDefaultLayoutParams()Landroidx/recyclerview/widget/x0;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/recyclerview/widget/x1;

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/x0;-><init>(II)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/x1;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/x0;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/x0;
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/x1;

    .line 1
    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/x0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/x0;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/x1;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/x0;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/x1;

    .line 4
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/x0;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final h(Landroidx/recyclerview/widget/l1;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k(Z)Landroid/view/View;

    move-result-object v2

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroidx/lifecycle/k;->e(Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/e0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/w0;Z)I

    move-result p1

    return p1
.end method

.method public final i(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/w;Landroidx/recyclerview/widget/l1;)I
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/w;

    iget-boolean v0, v11, Landroidx/recyclerview/widget/w;->i:Z

    if-eqz v0, :cond_1

    iget v0, v8, Landroidx/recyclerview/widget/w;->e:I

    if-ne v0, v10, :cond_0

    const v14, 0x7fffffff

    goto :goto_1

    :cond_0
    const/high16 v14, -0x80000000

    goto :goto_1

    :cond_1
    iget v0, v8, Landroidx/recyclerview/widget/w;->e:I

    if-ne v0, v10, :cond_2

    iget v0, v8, Landroidx/recyclerview/widget/w;->g:I

    iget v1, v8, Landroidx/recyclerview/widget/w;->b:I

    add-int/2addr v0, v1

    :goto_0
    move v14, v0

    goto :goto_1

    :cond_2
    iget v0, v8, Landroidx/recyclerview/widget/w;->f:I

    iget v1, v8, Landroidx/recyclerview/widget/w;->b:I

    sub-int/2addr v0, v1

    goto :goto_0

    :goto_1
    iget v0, v8, Landroidx/recyclerview/widget/w;->e:I

    move v1, v9

    :goto_2
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v1, v2, :cond_4

    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 1
    aget-object v2, v2, v1

    iget-object v2, v2, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    aget-object v2, v2, v1

    invoke-virtual {v6, v2, v0, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D(Landroidx/recyclerview/widget/a2;II)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-boolean v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v0

    :goto_4
    move v15, v0

    goto :goto_5

    :cond_5
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v0

    goto :goto_4

    :goto_5
    move v0, v9

    .line 3
    :goto_6
    iget v1, v8, Landroidx/recyclerview/widget/w;->c:I

    if-ltz v1, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/l1;->b()I

    move-result v2

    if-ge v1, v2, :cond_6

    move v1, v10

    goto :goto_7

    :cond_6
    move v1, v9

    :goto_7
    const/4 v2, -0x1

    if-eqz v1, :cond_7

    .line 4
    iget-boolean v1, v11, Landroidx/recyclerview/widget/w;->i:Z

    if-nez v1, :cond_8

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_8

    :cond_7
    move-object v1, v7

    move v3, v9

    goto/16 :goto_1a

    .line 5
    :cond_8
    :goto_8
    iget v0, v8, Landroidx/recyclerview/widget/w;->c:I

    const-wide v3, 0x7fffffffffffffffL

    .line 6
    invoke-virtual {v7, v3, v4, v0}, Landroidx/recyclerview/widget/e1;->l(JI)Landroidx/recyclerview/widget/p1;

    move-result-object v0

    .line 7
    iget-object v5, v0, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 8
    iget v0, v8, Landroidx/recyclerview/widget/w;->c:I

    iget v1, v8, Landroidx/recyclerview/widget/w;->d:I

    add-int/2addr v0, v1

    iput v0, v8, Landroidx/recyclerview/widget/w;->c:I

    .line 9
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/x1;

    .line 10
    iget-object v1, v0, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 11
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    move-result v1

    iget-object v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Lw5/h;

    .line 12
    iget-object v4, v3, Lw5/h;->a:Ljava/lang/Object;

    check-cast v4, [I

    if-eqz v4, :cond_a

    .line 13
    array-length v13, v4

    if-lt v1, v13, :cond_9

    goto :goto_9

    :cond_9
    aget v4, v4, v1

    goto :goto_a

    :cond_a
    :goto_9
    move v4, v2

    :goto_a
    if-ne v4, v2, :cond_10

    .line 14
    iget v4, v8, Landroidx/recyclerview/widget/w;->e:I

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v(I)Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    sub-int/2addr v4, v10

    move v13, v4

    move v4, v2

    goto :goto_b

    :cond_b
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    move v13, v9

    move v4, v10

    :goto_b
    iget v12, v8, Landroidx/recyclerview/widget/w;->e:I

    const/16 v17, 0x0

    if-ne v12, v10, :cond_e

    iget-object v12, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v12

    const v9, 0x7fffffff

    :goto_c
    if-eq v13, v2, :cond_d

    iget-object v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    aget-object v10, v10, v13

    invoke-virtual {v10, v12}, Landroidx/recyclerview/widget/a2;->f(I)I

    move-result v7

    if-ge v7, v9, :cond_c

    move v9, v7

    move-object/from16 v17, v10

    :cond_c
    add-int/2addr v13, v4

    move-object/from16 v7, p1

    const/4 v10, 0x1

    goto :goto_c

    :cond_d
    move-object/from16 v2, v17

    goto :goto_e

    :cond_e
    iget-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v7

    const/high16 v9, -0x80000000

    :goto_d
    if-eq v13, v2, :cond_d

    iget-object v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    aget-object v10, v10, v13

    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/a2;->h(I)I

    move-result v12

    if-le v12, v9, :cond_f

    move-object/from16 v17, v10

    move v9, v12

    :cond_f
    add-int/2addr v13, v4

    goto :goto_d

    .line 15
    :goto_e
    invoke-virtual {v3, v1}, Lw5/h;->c(I)V

    .line 16
    iget-object v3, v3, Lw5/h;->a:Ljava/lang/Object;

    check-cast v3, [I

    iget v4, v2, Landroidx/recyclerview/widget/a2;->e:I

    aput v4, v3, v1

    :goto_f
    move-object v7, v2

    goto :goto_10

    :cond_10
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 17
    aget-object v2, v1, v4

    goto :goto_f

    :goto_10
    iput-object v7, v0, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    iget v1, v8, Landroidx/recyclerview/widget/w;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/w0;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    goto :goto_11

    :cond_11
    const/4 v1, 0x0

    invoke-virtual {v6, v5, v1}, Landroidx/recyclerview/widget/w0;->addView(Landroid/view/View;I)V

    :goto_11
    iget v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-ne v3, v2, :cond_12

    iget v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getWidthMode()I

    move-result v4

    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v3, v4, v1, v9, v1}, Landroidx/recyclerview/widget/w0;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getHeightMode()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    move-result v10

    add-int/2addr v10, v9

    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v4, v10, v9, v2}, Landroidx/recyclerview/widget/w0;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    invoke-virtual {v6, v5, v3, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t(Landroid/view/View;II)V

    goto :goto_12

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getWidthMode()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    move-result v9

    add-int/2addr v9, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v3, v9, v4, v2}, Landroidx/recyclerview/widget/w0;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    iget v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getHeightMode()I

    move-result v4

    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v10, 0x0

    invoke-static {v3, v4, v10, v9, v10}, Landroidx/recyclerview/widget/w0;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    invoke-virtual {v6, v5, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t(Landroid/view/View;II)V

    .line 19
    :goto_12
    iget v1, v8, Landroidx/recyclerview/widget/w;->e:I

    if-ne v1, v2, :cond_13

    invoke-virtual {v7, v15}, Landroidx/recyclerview/widget/a2;->f(I)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    move v3, v1

    move v9, v2

    goto :goto_13

    :cond_13
    invoke-virtual {v7, v15}, Landroidx/recyclerview/widget/a2;->h(I)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    move v9, v1

    move v3, v2

    .line 20
    :goto_13
    iget v1, v8, Landroidx/recyclerview/widget/w;->e:I

    const/4 v2, 0x1

    iget-object v0, v0, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v1, v2, :cond_17

    .line 21
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/x1;

    .line 22
    iput-object v0, v1, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    iget-object v2, v0, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x80000000

    iput v4, v0, Landroidx/recyclerview/widget/a2;->c:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_14

    iput v4, v0, Landroidx/recyclerview/widget/a2;->b:I

    .line 23
    :cond_14
    iget-object v2, v1, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_15

    .line 24
    iget-object v1, v1, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/p1;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 25
    :cond_15
    iget v1, v0, Landroidx/recyclerview/widget/a2;->d:I

    iget-object v2, v0, Landroidx/recyclerview/widget/a2;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/recyclerview/widget/a2;->d:I

    :cond_16
    const/high16 v10, -0x80000000

    goto :goto_14

    .line 26
    :cond_17
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/x1;

    .line 27
    iput-object v0, v1, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    iget-object v2, v0, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/high16 v10, -0x80000000

    iput v10, v0, Landroidx/recyclerview/widget/a2;->b:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_18

    iput v10, v0, Landroidx/recyclerview/widget/a2;->c:I

    .line 28
    :cond_18
    iget-object v2, v1, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_19

    .line 29
    iget-object v1, v1, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/p1;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 30
    :cond_19
    iget v1, v0, Landroidx/recyclerview/widget/a2;->d:I

    iget-object v2, v0, Landroidx/recyclerview/widget/a2;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/recyclerview/widget/a2;->d:I

    .line 31
    :cond_1a
    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v0

    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    sub-int/2addr v2, v1

    iget v1, v7, Landroidx/recyclerview/widget/a2;->e:I

    sub-int/2addr v2, v1

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    :goto_15
    move v12, v0

    move v4, v1

    goto :goto_16

    :cond_1b
    iget v0, v7, Landroidx/recyclerview/widget/a2;->e:I

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    mul-int/2addr v0, v1

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_15

    :goto_16
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v13, 0x1

    if-ne v0, v13, :cond_1c

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v4, v12

    move-object/from16 v16, v5

    move v5, v9

    :goto_17
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/w0;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto :goto_18

    :cond_1c
    move-object/from16 v16, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v3

    move v3, v4

    move v4, v9

    move v5, v12

    goto :goto_17

    :goto_18
    iget v0, v11, Landroidx/recyclerview/widget/w;->e:I

    invoke-virtual {v6, v7, v0, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D(Landroidx/recyclerview/widget/a2;II)V

    move-object/from16 v1, p1

    invoke-virtual {v6, v1, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/w;)V

    iget-boolean v0, v11, Landroidx/recyclerview/widget/w;->h:Z

    if-eqz v0, :cond_1d

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    iget v2, v7, Landroidx/recyclerview/widget/a2;->e:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_19

    :cond_1d
    const/4 v3, 0x0

    :goto_19
    move-object v7, v1

    move v9, v3

    move v0, v13

    move v10, v0

    goto/16 :goto_6

    :goto_1a
    if-nez v0, :cond_1e

    invoke-virtual {v6, v1, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/w;)V

    :cond_1e
    iget v0, v11, Landroidx/recyclerview/widget/w;->e:I

    if-ne v0, v2, :cond_1f

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(I)I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_1b

    :cond_1f
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(I)I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v1

    sub-int v1, v0, v1

    :goto_1b
    if-lez v1, :cond_20

    iget v0, v8, Landroidx/recyclerview/widget/w;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_1c

    :cond_20
    move v9, v3

    :goto_1c
    return v9
.end method

.method public final isAutoMeasureEnabled()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLayoutRTL()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final j(Z)Landroid/view/View;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final k(Z)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final l(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Z)V
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr v0, p1

    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/e0;->m(I)V

    :cond_1
    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Z)V
    .locals 2

    .line 1
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    neg-int p2, v1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/e0;->m(I)V

    :cond_1
    return-void
.end method

.method public final n()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public final o()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final offsetChildrenHorizontal(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/w0;->offsetChildrenHorizontal(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 10
    .line 11
    aget-object v1, v1, v0

    .line 12
    .line 13
    iget v2, v1, Landroidx/recyclerview/widget/a2;->b:I

    .line 14
    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    add-int/2addr v2, p1

    .line 20
    iput v2, v1, Landroidx/recyclerview/widget/a2;->b:I

    .line 21
    .line 22
    :cond_0
    iget v2, v1, Landroidx/recyclerview/widget/a2;->c:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    add-int/2addr v2, p1

    .line 27
    iput v2, v1, Landroidx/recyclerview/widget/a2;->c:I

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method

.method public final offsetChildrenVertical(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/w0;->offsetChildrenVertical(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 10
    .line 11
    aget-object v1, v1, v0

    .line 12
    .line 13
    iget v2, v1, Landroidx/recyclerview/widget/a2;->b:I

    .line 14
    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    add-int/2addr v2, p1

    .line 20
    iput v2, v1, Landroidx/recyclerview/widget/a2;->b:I

    .line 21
    .line 22
    :cond_0
    iget v2, v1, Landroidx/recyclerview/widget/a2;->c:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    add-int/2addr v2, p1

    .line 27
    iput v2, v1, Landroidx/recyclerview/widget/a2;->c:I

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method

.method public final onAdapterChanged(Landroidx/recyclerview/widget/k0;Landroidx/recyclerview/widget/k0;)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Lw5/h;

    invoke-virtual {p1}, Lw5/h;->b()V

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/a2;->b()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/e1;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/w0;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/e1;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/w0;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/a2;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A()V

    .line 17
    .line 18
    .line 19
    const/high16 v0, -0x80000000

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq p2, v3, :cond_b

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    if-eq p2, v4, :cond_7

    .line 27
    .line 28
    const/16 v4, 0x11

    .line 29
    .line 30
    if-eq p2, v4, :cond_6

    .line 31
    .line 32
    const/16 v4, 0x21

    .line 33
    .line 34
    if-eq p2, v4, :cond_5

    .line 35
    .line 36
    const/16 v4, 0x42

    .line 37
    .line 38
    if-eq p2, v4, :cond_4

    .line 39
    .line 40
    const/16 v4, 0x82

    .line 41
    .line 42
    if-eq p2, v4, :cond_3

    .line 43
    .line 44
    :cond_2
    move p2, v0

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 47
    .line 48
    if-ne p2, v3, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 52
    .line 53
    if-nez p2, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 57
    .line 58
    if-ne p2, v3, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_6
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 62
    .line 63
    if-nez p2, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_7
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 67
    .line 68
    if-ne p2, v3, :cond_9

    .line 69
    .line 70
    :cond_8
    :goto_0
    move p2, v3

    .line 71
    goto :goto_2

    .line 72
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_8

    .line 77
    .line 78
    :cond_a
    :goto_1
    move p2, v2

    .line 79
    goto :goto_2

    .line 80
    :cond_b
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 81
    .line 82
    if-ne p2, v3, :cond_c

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_a

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :goto_2
    if-ne p2, v0, :cond_d

    .line 93
    .line 94
    return-object v1

    .line 95
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroidx/recyclerview/widget/x1;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object v0, v0, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    .line 105
    .line 106
    if-ne p2, v3, :cond_e

    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    goto :goto_3

    .line 113
    :cond_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    :goto_3
    invoke-virtual {p0, v4, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C(ILandroidx/recyclerview/widget/l1;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B(I)V

    .line 121
    .line 122
    .line 123
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/w;

    .line 124
    .line 125
    iget v6, v5, Landroidx/recyclerview/widget/w;->d:I

    .line 126
    .line 127
    add-int/2addr v6, v4

    .line 128
    iput v6, v5, Landroidx/recyclerview/widget/w;->c:I

    .line 129
    .line 130
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 131
    .line 132
    invoke-virtual {v6}, Landroidx/recyclerview/widget/e0;->i()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    int-to-float v6, v6

    .line 137
    const v7, 0x3eaaaaab

    .line 138
    .line 139
    .line 140
    mul-float/2addr v6, v7

    .line 141
    float-to-int v6, v6

    .line 142
    iput v6, v5, Landroidx/recyclerview/widget/w;->b:I

    .line 143
    .line 144
    iput-boolean v3, v5, Landroidx/recyclerview/widget/w;->h:Z

    .line 145
    .line 146
    const/4 v6, 0x0

    .line 147
    iput-boolean v6, v5, Landroidx/recyclerview/widget/w;->a:Z

    .line 148
    .line 149
    invoke-virtual {p0, p3, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/w;Landroidx/recyclerview/widget/l1;)I

    .line 150
    .line 151
    .line 152
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 153
    .line 154
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 155
    .line 156
    invoke-virtual {v0, v4, p2}, Landroidx/recyclerview/widget/a2;->g(II)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    if-eqz p3, :cond_f

    .line 161
    .line 162
    if-eq p3, p1, :cond_f

    .line 163
    .line 164
    return-object p3

    .line 165
    :cond_f
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v(I)Z

    .line 166
    .line 167
    .line 168
    move-result p3

    .line 169
    if-eqz p3, :cond_11

    .line 170
    .line 171
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 172
    .line 173
    sub-int/2addr p3, v3

    .line 174
    :goto_4
    if-ltz p3, :cond_13

    .line 175
    .line 176
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 177
    .line 178
    aget-object p4, p4, p3

    .line 179
    .line 180
    invoke-virtual {p4, v4, p2}, Landroidx/recyclerview/widget/a2;->g(II)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p4

    .line 184
    if-eqz p4, :cond_10

    .line 185
    .line 186
    if-eq p4, p1, :cond_10

    .line 187
    .line 188
    return-object p4

    .line 189
    :cond_10
    add-int/lit8 p3, p3, -0x1

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_11
    move p3, v6

    .line 193
    :goto_5
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 194
    .line 195
    if-ge p3, p4, :cond_13

    .line 196
    .line 197
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 198
    .line 199
    aget-object p4, p4, p3

    .line 200
    .line 201
    invoke-virtual {p4, v4, p2}, Landroidx/recyclerview/widget/a2;->g(II)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object p4

    .line 205
    if-eqz p4, :cond_12

    .line 206
    .line 207
    if-eq p4, p1, :cond_12

    .line 208
    .line 209
    return-object p4

    .line 210
    :cond_12
    add-int/lit8 p3, p3, 0x1

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_13
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 214
    .line 215
    xor-int/2addr p3, v3

    .line 216
    if-ne p2, v2, :cond_14

    .line 217
    .line 218
    move p4, v3

    .line 219
    goto :goto_6

    .line 220
    :cond_14
    move p4, v6

    .line 221
    :goto_6
    if-ne p3, p4, :cond_15

    .line 222
    .line 223
    move p3, v3

    .line 224
    goto :goto_7

    .line 225
    :cond_15
    move p3, v6

    .line 226
    :goto_7
    if-eqz p3, :cond_16

    .line 227
    .line 228
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a2;->c()I

    .line 229
    .line 230
    .line 231
    move-result p4

    .line 232
    goto :goto_8

    .line 233
    :cond_16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a2;->d()I

    .line 234
    .line 235
    .line 236
    move-result p4

    .line 237
    :goto_8
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/w0;->findViewByPosition(I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object p4

    .line 241
    if-eqz p4, :cond_17

    .line 242
    .line 243
    if-eq p4, p1, :cond_17

    .line 244
    .line 245
    return-object p4

    .line 246
    :cond_17
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v(I)Z

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    if-eqz p2, :cond_1b

    .line 251
    .line 252
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 253
    .line 254
    sub-int/2addr p2, v3

    .line 255
    :goto_9
    if-ltz p2, :cond_1e

    .line 256
    .line 257
    iget p4, v0, Landroidx/recyclerview/widget/a2;->e:I

    .line 258
    .line 259
    if-ne p2, p4, :cond_18

    .line 260
    .line 261
    goto :goto_b

    .line 262
    :cond_18
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 263
    .line 264
    if-eqz p3, :cond_19

    .line 265
    .line 266
    aget-object p4, p4, p2

    .line 267
    .line 268
    invoke-virtual {p4}, Landroidx/recyclerview/widget/a2;->c()I

    .line 269
    .line 270
    .line 271
    move-result p4

    .line 272
    goto :goto_a

    .line 273
    :cond_19
    aget-object p4, p4, p2

    .line 274
    .line 275
    invoke-virtual {p4}, Landroidx/recyclerview/widget/a2;->d()I

    .line 276
    .line 277
    .line 278
    move-result p4

    .line 279
    :goto_a
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/w0;->findViewByPosition(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object p4

    .line 283
    if-eqz p4, :cond_1a

    .line 284
    .line 285
    if-eq p4, p1, :cond_1a

    .line 286
    .line 287
    return-object p4

    .line 288
    :cond_1a
    :goto_b
    add-int/lit8 p2, p2, -0x1

    .line 289
    .line 290
    goto :goto_9

    .line 291
    :cond_1b
    :goto_c
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 292
    .line 293
    if-ge v6, p2, :cond_1e

    .line 294
    .line 295
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 296
    .line 297
    if-eqz p3, :cond_1c

    .line 298
    .line 299
    aget-object p2, p2, v6

    .line 300
    .line 301
    invoke-virtual {p2}, Landroidx/recyclerview/widget/a2;->c()I

    .line 302
    .line 303
    .line 304
    move-result p2

    .line 305
    goto :goto_d

    .line 306
    :cond_1c
    aget-object p2, p2, v6

    .line 307
    .line 308
    invoke-virtual {p2}, Landroidx/recyclerview/widget/a2;->d()I

    .line 309
    .line 310
    .line 311
    move-result p2

    .line 312
    :goto_d
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/w0;->findViewByPosition(I)Landroid/view/View;

    .line 313
    .line 314
    .line 315
    move-result-object p2

    .line 316
    if-eqz p2, :cond_1d

    .line 317
    .line 318
    if-eq p2, p1, :cond_1d

    .line 319
    .line 320
    return-object p2

    .line 321
    :cond_1d
    add-int/lit8 v6, v6, 0x1

    .line 322
    .line 323
    goto :goto_c

    .line 324
    :cond_1e
    return-object v1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/w0;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public final onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(III)V

    return-void
.end method

.method public final onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Lw5/h;

    invoke-virtual {p1}, Lw5/h;->b()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    return-void
.end method

.method public final onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    const/16 p1, 0x8

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(III)V

    return-void
.end method

.method public final onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x2

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(III)V

    return-void
.end method

.method public final onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(III)V

    return-void
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Z)V

    return-void
.end method

.method public final onLayoutCompleted(Landroidx/recyclerview/widget/l1;)V
    .locals 0

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/w1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/w1;->a()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/z1;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Landroidx/recyclerview/widget/z1;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    .line 8
    .line 9
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p1, Landroidx/recyclerview/widget/z1;->d:[I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput v2, p1, Landroidx/recyclerview/widget/z1;->c:I

    .line 19
    .line 20
    iput v1, p1, Landroidx/recyclerview/widget/z1;->a:I

    .line 21
    .line 22
    iput v1, p1, Landroidx/recyclerview/widget/z1;->b:I

    .line 23
    .line 24
    iput-object v0, p1, Landroidx/recyclerview/widget/z1;->d:[I

    .line 25
    .line 26
    iput v2, p1, Landroidx/recyclerview/widget/z1;->c:I

    .line 27
    .line 28
    iput v2, p1, Landroidx/recyclerview/widget/z1;->e:I

    .line 29
    .line 30
    iput-object v0, p1, Landroidx/recyclerview/widget/z1;->f:[I

    .line 31
    .line 32
    iput-object v0, p1, Landroidx/recyclerview/widget/z1;->g:Ljava/util/List;

    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroidx/recyclerview/widget/z1;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v2, v0, Landroidx/recyclerview/widget/z1;->c:I

    .line 11
    .line 12
    iput v2, v1, Landroidx/recyclerview/widget/z1;->c:I

    .line 13
    .line 14
    iget v2, v0, Landroidx/recyclerview/widget/z1;->a:I

    .line 15
    .line 16
    iput v2, v1, Landroidx/recyclerview/widget/z1;->a:I

    .line 17
    .line 18
    iget v2, v0, Landroidx/recyclerview/widget/z1;->b:I

    .line 19
    .line 20
    iput v2, v1, Landroidx/recyclerview/widget/z1;->b:I

    .line 21
    .line 22
    iget-object v2, v0, Landroidx/recyclerview/widget/z1;->d:[I

    .line 23
    .line 24
    iput-object v2, v1, Landroidx/recyclerview/widget/z1;->d:[I

    .line 25
    .line 26
    iget v2, v0, Landroidx/recyclerview/widget/z1;->e:I

    .line 27
    .line 28
    iput v2, v1, Landroidx/recyclerview/widget/z1;->e:I

    .line 29
    .line 30
    iget-object v2, v0, Landroidx/recyclerview/widget/z1;->f:[I

    .line 31
    .line 32
    iput-object v2, v1, Landroidx/recyclerview/widget/z1;->f:[I

    .line 33
    .line 34
    iget-boolean v2, v0, Landroidx/recyclerview/widget/z1;->h:Z

    .line 35
    .line 36
    iput-boolean v2, v1, Landroidx/recyclerview/widget/z1;->h:Z

    .line 37
    .line 38
    iget-boolean v2, v0, Landroidx/recyclerview/widget/z1;->i:Z

    .line 39
    .line 40
    iput-boolean v2, v1, Landroidx/recyclerview/widget/z1;->i:Z

    .line 41
    .line 42
    iget-boolean v2, v0, Landroidx/recyclerview/widget/z1;->j:Z

    .line 43
    .line 44
    iput-boolean v2, v1, Landroidx/recyclerview/widget/z1;->j:Z

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/recyclerview/widget/z1;->g:Ljava/util/List;

    .line 47
    .line 48
    iput-object v0, v1, Landroidx/recyclerview/widget/z1;->g:Ljava/util/List;

    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/z1;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 57
    .line 58
    iput-boolean v1, v0, Landroidx/recyclerview/widget/z1;->h:Z

    .line 59
    .line 60
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 61
    .line 62
    iput-boolean v1, v0, Landroidx/recyclerview/widget/z1;->i:Z

    .line 63
    .line 64
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    .line 65
    .line 66
    iput-boolean v1, v0, Landroidx/recyclerview/widget/z1;->j:Z

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Lw5/h;

    .line 70
    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    iget-object v3, v2, Lw5/h;->a:Ljava/lang/Object;

    .line 74
    .line 75
    move-object v4, v3

    .line 76
    check-cast v4, [I

    .line 77
    .line 78
    if-eqz v4, :cond_1

    .line 79
    .line 80
    check-cast v3, [I

    .line 81
    .line 82
    iput-object v3, v0, Landroidx/recyclerview/widget/z1;->f:[I

    .line 83
    .line 84
    array-length v3, v3

    .line 85
    iput v3, v0, Landroidx/recyclerview/widget/z1;->e:I

    .line 86
    .line 87
    iget-object v2, v2, Lw5/h;->b:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v2, Ljava/util/List;

    .line 90
    .line 91
    iput-object v2, v0, Landroidx/recyclerview/widget/z1;->g:Ljava/util/List;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    iput v1, v0, Landroidx/recyclerview/widget/z1;->e:I

    .line 95
    .line 96
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    const/4 v3, -0x1

    .line 101
    if-lez v2, :cond_7

    .line 102
    .line 103
    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 104
    .line 105
    if-eqz v2, :cond_2

    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    :goto_1
    iput v2, v0, Landroidx/recyclerview/widget/z1;->a:I

    .line 117
    .line 118
    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 119
    .line 120
    const/4 v4, 0x1

    .line 121
    if-eqz v2, :cond_3

    .line 122
    .line 123
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(Z)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    goto :goto_2

    .line 128
    :cond_3
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k(Z)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    :goto_2
    if-nez v2, :cond_4

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_4
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    :goto_3
    iput v3, v0, Landroidx/recyclerview/widget/z1;->b:I

    .line 140
    .line 141
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 142
    .line 143
    iput v2, v0, Landroidx/recyclerview/widget/z1;->c:I

    .line 144
    .line 145
    new-array v2, v2, [I

    .line 146
    .line 147
    iput-object v2, v0, Landroidx/recyclerview/widget/z1;->d:[I

    .line 148
    .line 149
    :goto_4
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 150
    .line 151
    if-ge v1, v2, :cond_8

    .line 152
    .line 153
    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 154
    .line 155
    const/high16 v3, -0x80000000

    .line 156
    .line 157
    if-eqz v2, :cond_5

    .line 158
    .line 159
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 160
    .line 161
    aget-object v2, v2, v1

    .line 162
    .line 163
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/a2;->f(I)I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eq v2, v3, :cond_6

    .line 168
    .line 169
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 170
    .line 171
    invoke-virtual {v3}, Landroidx/recyclerview/widget/e0;->f()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    :goto_5
    sub-int/2addr v2, v3

    .line 176
    goto :goto_6

    .line 177
    :cond_5
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 178
    .line 179
    aget-object v2, v2, v1

    .line 180
    .line 181
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/a2;->h(I)I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eq v2, v3, :cond_6

    .line 186
    .line 187
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 188
    .line 189
    invoke-virtual {v3}, Landroidx/recyclerview/widget/e0;->h()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    goto :goto_5

    .line 194
    :cond_6
    :goto_6
    iget-object v3, v0, Landroidx/recyclerview/widget/z1;->d:[I

    .line 195
    .line 196
    aput v2, v3, v1

    .line 197
    .line 198
    add-int/lit8 v1, v1, 0x1

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_7
    iput v3, v0, Landroidx/recyclerview/widget/z1;->a:I

    .line 202
    .line 203
    iput v3, v0, Landroidx/recyclerview/widget/z1;->b:I

    .line 204
    .line 205
    iput v1, v0, Landroidx/recyclerview/widget/z1;->c:I

    .line 206
    .line 207
    :cond_8
    return-object v0
.end method

.method public final onScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e()Z

    :cond_0
    return-void
.end method

.method public final p(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/a2;->f(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/a2;->f(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final q(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/a2;->h(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/a2;->h(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final r(III)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p2, 0x1

    :goto_1
    move v3, p1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, p1, 0x1

    move v3, p2

    goto :goto_2

    :cond_2
    add-int v2, p1, p2

    goto :goto_1

    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Lw5/h;

    invoke-virtual {v4, v3}, Lw5/h;->d(I)I

    const/4 v5, 0x1

    if-eq p3, v5, :cond_5

    const/4 v6, 0x2

    if-eq p3, v6, :cond_4

    if-eq p3, v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v4, p1, v5}, Lw5/h;->f(II)V

    invoke-virtual {v4, p2, v5}, Lw5/h;->e(II)V

    goto :goto_3

    :cond_4
    invoke-virtual {v4, p1, p2}, Lw5/h;->f(II)V

    goto :goto_3

    :cond_5
    invoke-virtual {v4, p1, p2}, Lw5/h;->e(II)V

    :goto_3
    if-gt v2, v0, :cond_6

    return-void

    :cond_6
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    move-result p1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()I

    move-result p1

    :goto_4
    if-gt v3, p1, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    :cond_8
    return-void
.end method

.method public final s()Landroid/view/View;
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    new-instance v2, Ljava/util/BitSet;

    .line 8
    .line 9
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-virtual {v2, v4, v3, v5}, Ljava/util/BitSet;->set(IIZ)V

    .line 19
    .line 20
    .line 21
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 22
    .line 23
    const/4 v6, -0x1

    .line 24
    if-ne v3, v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    move v3, v5

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v3, v6

    .line 35
    :goto_0
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 36
    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    move v0, v6

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v1, v4

    .line 42
    :goto_1
    if-ge v1, v0, :cond_2

    .line 43
    .line 44
    move v6, v5

    .line 45
    :cond_2
    if-eq v1, v0, :cond_d

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    check-cast v8, Landroidx/recyclerview/widget/x1;

    .line 56
    .line 57
    iget-object v9, v8, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    .line 58
    .line 59
    iget v9, v9, Landroidx/recyclerview/widget/a2;->e:I

    .line 60
    .line 61
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_7

    .line 66
    .line 67
    iget-object v9, v8, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    .line 68
    .line 69
    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 70
    .line 71
    const/high16 v11, -0x80000000

    .line 72
    .line 73
    if-eqz v10, :cond_4

    .line 74
    .line 75
    iget v10, v9, Landroidx/recyclerview/widget/a2;->c:I

    .line 76
    .line 77
    if-eq v10, v11, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {v9}, Landroidx/recyclerview/widget/a2;->a()V

    .line 81
    .line 82
    .line 83
    iget v10, v9, Landroidx/recyclerview/widget/a2;->c:I

    .line 84
    .line 85
    :goto_2
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 86
    .line 87
    invoke-virtual {v11}, Landroidx/recyclerview/widget/e0;->f()I

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    if-ge v10, v11, :cond_6

    .line 92
    .line 93
    iget-object v0, v9, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-static {v0, v5}, Landroid/support/v4/media/session/a;->j(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/view/View;

    .line 100
    .line 101
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroidx/recyclerview/widget/x1;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_4
    iget v10, v9, Landroidx/recyclerview/widget/a2;->b:I

    .line 112
    .line 113
    if-eq v10, v11, :cond_5

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_5
    iget-object v10, v9, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    check-cast v10, Landroid/view/View;

    .line 123
    .line 124
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    check-cast v11, Landroidx/recyclerview/widget/x1;

    .line 129
    .line 130
    iget-object v12, v9, Landroidx/recyclerview/widget/a2;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 131
    .line 132
    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 133
    .line 134
    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    iput v10, v9, Landroidx/recyclerview/widget/a2;->b:I

    .line 139
    .line 140
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget v10, v9, Landroidx/recyclerview/widget/a2;->b:I

    .line 144
    .line 145
    :goto_4
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 146
    .line 147
    invoke-virtual {v11}, Landroidx/recyclerview/widget/e0;->h()I

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-le v10, v11, :cond_6

    .line 152
    .line 153
    iget-object v0, v9, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Landroid/view/View;

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :goto_5
    return-object v7

    .line 163
    :cond_6
    iget-object v9, v8, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    .line 164
    .line 165
    iget v9, v9, Landroidx/recyclerview/widget/a2;->e:I

    .line 166
    .line 167
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    .line 168
    .line 169
    .line 170
    :cond_7
    add-int/2addr v1, v6

    .line 171
    if-eq v1, v0, :cond_2

    .line 172
    .line 173
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 178
    .line 179
    if-eqz v10, :cond_9

    .line 180
    .line 181
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 182
    .line 183
    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 188
    .line 189
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    if-ge v10, v11, :cond_8

    .line 194
    .line 195
    return-object v7

    .line 196
    :cond_8
    if-ne v10, v11, :cond_2

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_9
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 200
    .line 201
    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 206
    .line 207
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    if-le v10, v11, :cond_a

    .line 212
    .line 213
    return-object v7

    .line 214
    :cond_a
    if-ne v10, v11, :cond_2

    .line 215
    .line 216
    :goto_6
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    check-cast v9, Landroidx/recyclerview/widget/x1;

    .line 221
    .line 222
    iget-object v8, v8, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    .line 223
    .line 224
    iget v8, v8, Landroidx/recyclerview/widget/a2;->e:I

    .line 225
    .line 226
    iget-object v9, v9, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    .line 227
    .line 228
    iget v9, v9, Landroidx/recyclerview/widget/a2;->e:I

    .line 229
    .line 230
    sub-int/2addr v8, v9

    .line 231
    if-gez v8, :cond_b

    .line 232
    .line 233
    move v8, v5

    .line 234
    goto :goto_7

    .line 235
    :cond_b
    move v8, v4

    .line 236
    :goto_7
    if-gez v3, :cond_c

    .line 237
    .line 238
    move v9, v5

    .line 239
    goto :goto_8

    .line 240
    :cond_c
    move v9, v4

    .line 241
    :goto_8
    if-eq v8, v9, :cond_2

    .line 242
    .line 243
    return-object v7

    .line 244
    :cond_d
    const/4 v0, 0x0

    .line 245
    return-object v0
.end method

.method public final scrollBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w(ILandroidx/recyclerview/widget/l1;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/w;

    invoke-virtual {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/w;Landroidx/recyclerview/widget/l1;)I

    move-result p3

    iget v2, v0, Landroidx/recyclerview/widget/w;->b:I

    if-ge v2, p3, :cond_1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p3

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    neg-int v2, p1

    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/e0;->m(I)V

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    iput v1, v0, Landroidx/recyclerview/widget/w;->b:I

    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/w;)V

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public final scrollHorizontallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public final scrollToPosition(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, v0, Landroidx/recyclerview/widget/z1;->a:I

    .line 6
    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Landroidx/recyclerview/widget/z1;->d:[I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, v0, Landroidx/recyclerview/widget/z1;->c:I

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    iput v1, v0, Landroidx/recyclerview/widget/z1;->a:I

    .line 17
    .line 18
    iput v1, v0, Landroidx/recyclerview/widget/z1;->b:I

    .line 19
    .line 20
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 21
    .line 22
    const/high16 p1, -0x80000000

    .line 23
    .line 24
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final scrollVerticallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public final setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

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

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/w0;->chooseSize(III)I

    move-result p1

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    mul-int/2addr p3, v0

    add-int/2addr p3, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/w0;->chooseSize(III)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/w0;->chooseSize(III)I

    move-result p2

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    mul-int/2addr p1, v0

    add-int/2addr p1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/w0;->chooseSize(III)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/w0;->setMeasuredDimension(II)V

    return-void
.end method

.method public final smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;I)V
    .locals 0

    new-instance p2, Landroidx/recyclerview/widget/b0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/b0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/k1;->setTargetPosition(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/w0;->startSmoothScroll(Landroidx/recyclerview/widget/k1;)V

    return-void
.end method

.method public final supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final t(Landroid/view/View;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/w0;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/x1;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-static {p2, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E(III)I

    move-result p2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    invoke-static {p3, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E(III)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/recyclerview/widget/w0;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/x0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public final u(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    const/4 v4, -0x1

    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/w1;

    if-nez v3, :cond_0

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/l1;->b()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/w0;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/e1;)V

    invoke-virtual {v5}, Landroidx/recyclerview/widget/w1;->a()V

    return-void

    :cond_1
    iget-boolean v3, v5, Landroidx/recyclerview/widget/w1;->e:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v7

    :goto_1
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Lw5/h;

    iget-object v9, v5, Landroidx/recyclerview/widget/w1;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/high16 v10, -0x80000000

    if-eqz v3, :cond_22

    invoke-virtual {v5}, Landroidx/recyclerview/widget/w1;->a()V

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    if-eqz v11, :cond_a

    .line 1
    iget v12, v11, Landroidx/recyclerview/widget/z1;->c:I

    const/4 v13, 0x0

    if-lez v12, :cond_7

    iget v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ne v12, v14, :cond_6

    move v11, v6

    :goto_2
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v11, v12, :cond_7

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Landroidx/recyclerview/widget/a2;->b()V

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    iget-object v14, v12, Landroidx/recyclerview/widget/z1;->d:[I

    aget v14, v14, v11

    if-eq v14, v10, :cond_5

    iget-boolean v12, v12, Landroidx/recyclerview/widget/z1;->i:Z

    if-eqz v12, :cond_4

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v12

    :goto_3
    add-int/2addr v14, v12

    goto :goto_4

    :cond_4
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v12

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    aget-object v12, v12, v11

    .line 2
    iput v14, v12, Landroidx/recyclerview/widget/a2;->b:I

    .line 3
    iput v14, v12, Landroidx/recyclerview/widget/a2;->c:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 4
    :cond_6
    iput-object v13, v11, Landroidx/recyclerview/widget/z1;->d:[I

    iput v6, v11, Landroidx/recyclerview/widget/z1;->c:I

    iput v6, v11, Landroidx/recyclerview/widget/z1;->e:I

    iput-object v13, v11, Landroidx/recyclerview/widget/z1;->f:[I

    iput-object v13, v11, Landroidx/recyclerview/widget/z1;->g:Ljava/util/List;

    .line 5
    iget v12, v11, Landroidx/recyclerview/widget/z1;->b:I

    iput v12, v11, Landroidx/recyclerview/widget/z1;->a:I

    :cond_7
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    iget-boolean v12, v11, Landroidx/recyclerview/widget/z1;->j:Z

    iput-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    iget-boolean v11, v11, Landroidx/recyclerview/widget/z1;->h:Z

    .line 6
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    if-eqz v12, :cond_8

    iget-boolean v13, v12, Landroidx/recyclerview/widget/z1;->h:Z

    if-eq v13, v11, :cond_8

    iput-boolean v11, v12, Landroidx/recyclerview/widget/z1;->h:Z

    :cond_8
    iput-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A()V

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    iget v12, v11, Landroidx/recyclerview/widget/z1;->a:I

    if-eq v12, v4, :cond_9

    iput v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    iget-boolean v12, v11, Landroidx/recyclerview/widget/z1;->i:Z

    :goto_5
    iput-boolean v12, v5, Landroidx/recyclerview/widget/w1;->c:Z

    goto :goto_6

    :cond_9
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    goto :goto_5

    :goto_6
    iget v12, v11, Landroidx/recyclerview/widget/z1;->e:I

    if-le v12, v7, :cond_b

    iget-object v12, v11, Landroidx/recyclerview/widget/z1;->f:[I

    iput-object v12, v8, Lw5/h;->a:Ljava/lang/Object;

    iget-object v11, v11, Landroidx/recyclerview/widget/z1;->g:Ljava/util/List;

    iput-object v11, v8, Lw5/h;->b:Ljava/lang/Object;

    goto :goto_7

    .line 8
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A()V

    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    iput-boolean v11, v5, Landroidx/recyclerview/widget/w1;->c:Z

    .line 9
    :cond_b
    :goto_7
    iget-boolean v11, v2, Landroidx/recyclerview/widget/l1;->g:Z

    if-nez v11, :cond_1d

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    if-ne v11, v4, :cond_c

    goto/16 :goto_12

    :cond_c
    if-ltz v11, :cond_1c

    .line 10
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/l1;->b()I

    move-result v12

    if-lt v11, v12, :cond_d

    goto/16 :goto_11

    :cond_d
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    if-eqz v11, :cond_f

    iget v12, v11, Landroidx/recyclerview/widget/z1;->a:I

    if-eq v12, v4, :cond_f

    iget v11, v11, Landroidx/recyclerview/widget/z1;->c:I

    if-ge v11, v7, :cond_e

    goto :goto_8

    :cond_e
    iput v10, v5, Landroidx/recyclerview/widget/w1;->b:I

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    iput v11, v5, Landroidx/recyclerview/widget/w1;->a:I

    goto/16 :goto_16

    :cond_f
    :goto_8
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/w0;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_17

    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz v12, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()I

    move-result v12

    goto :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    move-result v12

    :goto_9
    iput v12, v5, Landroidx/recyclerview/widget/w1;->a:I

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    if-eq v12, v10, :cond_12

    iget-boolean v12, v5, Landroidx/recyclerview/widget/w1;->c:Z

    if-eqz v12, :cond_11

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v12

    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    sub-int/2addr v12, v13

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v13, v11}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    move-result v11

    :goto_a
    sub-int/2addr v12, v11

    :goto_b
    iput v12, v5, Landroidx/recyclerview/widget/w1;->b:I

    goto/16 :goto_16

    :cond_11
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v12

    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    add-int/2addr v12, v13

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v13, v11}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    move-result v11

    goto :goto_a

    :cond_12
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/e0;->i()I

    move-result v13

    if-le v12, v13, :cond_14

    iget-boolean v11, v5, Landroidx/recyclerview/widget/w1;->c:Z

    if-eqz v11, :cond_13

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v11

    goto :goto_c

    :cond_13
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v11

    :goto_c
    iput v11, v5, Landroidx/recyclerview/widget/w1;->b:I

    goto/16 :goto_16

    :cond_14
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v13

    sub-int/2addr v12, v13

    if-gez v12, :cond_15

    neg-int v11, v12

    goto :goto_c

    :cond_15
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v13, v11}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v12, v11

    if-gez v12, :cond_16

    goto :goto_b

    :cond_16
    iput v10, v5, Landroidx/recyclerview/widget/w1;->b:I

    goto/16 :goto_16

    :cond_17
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    iput v11, v5, Landroidx/recyclerview/widget/w1;->a:I

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    if-ne v12, v10, :cond_1a

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(I)I

    move-result v11

    if-ne v11, v7, :cond_18

    move v11, v7

    goto :goto_d

    :cond_18
    move v11, v6

    :goto_d
    iput-boolean v11, v5, Landroidx/recyclerview/widget/w1;->c:Z

    if-eqz v11, :cond_19

    .line 11
    iget-object v11, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v11

    goto :goto_e

    :cond_19
    iget-object v11, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v11

    :goto_e
    iput v11, v5, Landroidx/recyclerview/widget/w1;->b:I

    goto :goto_10

    .line 12
    :cond_1a
    iget-boolean v11, v5, Landroidx/recyclerview/widget/w1;->c:Z

    if-eqz v11, :cond_1b

    iget-object v11, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v11

    sub-int/2addr v11, v12

    :goto_f
    iput v11, v5, Landroidx/recyclerview/widget/w1;->b:I

    goto :goto_10

    :cond_1b
    iget-object v11, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v11

    add-int/2addr v11, v12

    goto :goto_f

    .line 13
    :goto_10
    iput-boolean v7, v5, Landroidx/recyclerview/widget/w1;->d:Z

    goto :goto_16

    :cond_1c
    :goto_11
    iput v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    iput v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    :cond_1d
    :goto_12
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v11, :cond_20

    .line 14
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/l1;->b()I

    move-result v11

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v12

    sub-int/2addr v12, v7

    :goto_13
    if-ltz v12, :cond_1f

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v13

    if-ltz v13, :cond_1e

    if-ge v13, v11, :cond_1e

    goto :goto_15

    :cond_1e
    add-int/lit8 v12, v12, -0x1

    goto :goto_13

    :cond_1f
    move v13, v6

    goto :goto_15

    .line 16
    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/l1;->b()I

    move-result v11

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v12

    move v13, v6

    :goto_14
    if-ge v13, v12, :cond_1f

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v14

    if-ltz v14, :cond_21

    if-ge v14, v11, :cond_21

    move v13, v14

    goto :goto_15

    :cond_21
    add-int/lit8 v13, v13, 0x1

    goto :goto_14

    .line 18
    :goto_15
    iput v13, v5, Landroidx/recyclerview/widget/w1;->a:I

    iput v10, v5, Landroidx/recyclerview/widget/w1;->b:I

    .line 19
    :goto_16
    iput-boolean v7, v5, Landroidx/recyclerview/widget/w1;->e:Z

    :cond_22
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    if-nez v11, :cond_24

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    if-ne v11, v4, :cond_24

    iget-boolean v11, v5, Landroidx/recyclerview/widget/w1;->c:Z

    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-ne v11, v12, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v11

    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    if-eq v11, v12, :cond_24

    :cond_23
    invoke-virtual {v8}, Lw5/h;->b()V

    iput-boolean v7, v5, Landroidx/recyclerview/widget/w1;->d:Z

    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v8

    if-lez v8, :cond_33

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/z1;

    if-eqz v8, :cond_25

    iget v8, v8, Landroidx/recyclerview/widget/z1;->c:I

    if-ge v8, v7, :cond_33

    :cond_25
    iget-boolean v8, v5, Landroidx/recyclerview/widget/w1;->d:Z

    if-eqz v8, :cond_27

    move v3, v6

    :goto_17
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v3, v8, :cond_33

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroidx/recyclerview/widget/a2;->b()V

    iget v8, v5, Landroidx/recyclerview/widget/w1;->b:I

    if-eq v8, v10, :cond_26

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    aget-object v9, v9, v3

    .line 20
    iput v8, v9, Landroidx/recyclerview/widget/a2;->b:I

    .line 21
    iput v8, v9, Landroidx/recyclerview/widget/a2;->c:I

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_27
    if-nez v3, :cond_29

    .line 22
    iget-object v3, v5, Landroidx/recyclerview/widget/w1;->f:[I

    if-nez v3, :cond_28

    goto :goto_19

    :cond_28
    move v3, v6

    :goto_18
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v3, v8, :cond_33

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroidx/recyclerview/widget/a2;->b()V

    iget-object v9, v5, Landroidx/recyclerview/widget/w1;->f:[I

    aget v9, v9, v3

    .line 23
    iput v9, v8, Landroidx/recyclerview/widget/a2;->b:I

    iput v9, v8, Landroidx/recyclerview/widget/a2;->c:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_29
    :goto_19
    move v3, v6

    :goto_1a
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v3, v8, :cond_30

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 24
    aget-object v8, v8, v3

    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    iget v12, v5, Landroidx/recyclerview/widget/w1;->b:I

    if-eqz v11, :cond_2a

    .line 25
    invoke-virtual {v8, v10}, Landroidx/recyclerview/widget/a2;->f(I)I

    move-result v13

    goto :goto_1b

    :cond_2a
    invoke-virtual {v8, v10}, Landroidx/recyclerview/widget/a2;->h(I)I

    move-result v13

    .line 26
    :goto_1b
    invoke-virtual {v8}, Landroidx/recyclerview/widget/a2;->b()V

    if-ne v13, v10, :cond_2b

    goto :goto_1c

    :cond_2b
    iget-object v14, v8, Landroidx/recyclerview/widget/a2;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v11, :cond_2c

    iget-object v15, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v15

    if-lt v13, v15, :cond_2f

    :cond_2c
    if-nez v11, :cond_2d

    iget-object v11, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v11

    if-le v13, v11, :cond_2d

    goto :goto_1c

    :cond_2d
    if-eq v12, v10, :cond_2e

    add-int/2addr v13, v12

    :cond_2e
    iput v13, v8, Landroidx/recyclerview/widget/a2;->c:I

    iput v13, v8, Landroidx/recyclerview/widget/a2;->b:I

    :cond_2f
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_30
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 27
    array-length v8, v3

    iget-object v11, v5, Landroidx/recyclerview/widget/w1;->f:[I

    if-eqz v11, :cond_31

    array-length v11, v11

    if-ge v11, v8, :cond_32

    :cond_31
    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    array-length v9, v9

    new-array v9, v9, [I

    iput-object v9, v5, Landroidx/recyclerview/widget/w1;->f:[I

    :cond_32
    move v9, v6

    :goto_1d
    if-ge v9, v8, :cond_33

    iget-object v11, v5, Landroidx/recyclerview/widget/w1;->f:[I

    aget-object v12, v3, v9

    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/a2;->h(I)I

    move-result v12

    aput v12, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    .line 28
    :cond_33
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/w0;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/e1;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/w;

    iput-boolean v6, v3, Landroidx/recyclerview/widget/w;->a:Z

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/e0;->i()I

    move-result v8

    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 29
    div-int v9, v8, v9

    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/e0;->g()I

    move-result v9

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 30
    iget v8, v5, Landroidx/recyclerview/widget/w1;->a:I

    invoke-virtual {v0, v8, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C(ILandroidx/recyclerview/widget/l1;)V

    iget-boolean v8, v5, Landroidx/recyclerview/widget/w1;->c:Z

    if-eqz v8, :cond_34

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B(I)V

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/w;Landroidx/recyclerview/widget/l1;)I

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B(I)V

    :goto_1e
    iget v4, v5, Landroidx/recyclerview/widget/w1;->a:I

    iget v8, v3, Landroidx/recyclerview/widget/w;->d:I

    add-int/2addr v4, v8

    iput v4, v3, Landroidx/recyclerview/widget/w;->c:I

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/w;Landroidx/recyclerview/widget/l1;)I

    goto :goto_1f

    :cond_34
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B(I)V

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/w;Landroidx/recyclerview/widget/l1;)I

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B(I)V

    goto :goto_1e

    :goto_1f
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/e0;

    .line 31
    invoke-virtual {v3}, Landroidx/recyclerview/widget/e0;->g()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_35

    goto/16 :goto_25

    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    move v8, v6

    :goto_20
    if-ge v8, v3, :cond_37

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    move-result v11

    int-to-float v11, v11

    cmpg-float v12, v11, v4

    if-gez v12, :cond_36

    goto :goto_21

    :cond_36
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/x1;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :goto_21
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_37
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    int-to-float v9, v9

    mul-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/e0;->g()I

    move-result v9

    if-ne v9, v10, :cond_38

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/e0;->i()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_38
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 32
    div-int v9, v4, v9

    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/e0;->g()I

    move-result v9

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    if-ne v4, v8, :cond_39

    goto :goto_25

    :cond_39
    move v4, v6

    :goto_22
    if-ge v4, v3, :cond_3c

    .line 33
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/x1;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v11

    if-eqz v11, :cond_3a

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-ne v11, v7, :cond_3a

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    sub-int/2addr v11, v7

    iget-object v10, v10, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    iget v10, v10, Landroidx/recyclerview/widget/a2;->e:I

    sub-int/2addr v11, v10

    neg-int v10, v11

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    mul-int/2addr v11, v10

    mul-int/2addr v10, v8

    sub-int/2addr v11, v10

    :goto_23
    invoke-virtual {v9, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_24

    :cond_3a
    iget-object v10, v10, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    iget v10, v10, Landroidx/recyclerview/widget/a2;->e:I

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    mul-int/2addr v11, v10

    mul-int/2addr v10, v8

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    sub-int/2addr v11, v10

    if-ne v12, v7, :cond_3b

    goto :goto_23

    :cond_3b
    invoke-virtual {v9, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 34
    :cond_3c
    :goto_25
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3e

    iget-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz v3, :cond_3d

    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Z)V

    invoke-virtual {v0, v1, v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Z)V

    goto :goto_26

    :cond_3d
    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Z)V

    invoke-virtual {v0, v1, v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Z)V

    :cond_3e
    :goto_26
    if-eqz p3, :cond_3f

    .line 35
    iget-boolean v3, v2, Landroidx/recyclerview/widget/l1;->g:Z

    if-nez v3, :cond_3f

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v3, :cond_3f

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3f

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3f

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/w0;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e()Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_27

    :cond_3f
    move v7, v6

    .line 37
    :goto_27
    iget-boolean v3, v2, Landroidx/recyclerview/widget/l1;->g:Z

    if-eqz v3, :cond_40

    .line 38
    invoke-virtual {v5}, Landroidx/recyclerview/widget/w1;->a()V

    :cond_40
    iget-boolean v3, v5, Landroidx/recyclerview/widget/w1;->c:Z

    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    if-eqz v7, :cond_41

    invoke-virtual {v5}, Landroidx/recyclerview/widget/w1;->a()V

    invoke-virtual {v0, v1, v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Z)V

    :cond_41
    return-void
.end method

.method public final v(I)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eq p1, v0, :cond_1

    move v2, v3

    :cond_1
    return v2

    :cond_2
    if-ne p1, v1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-ne p1, v0, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-ne p1, v0, :cond_5

    move v2, v3

    :cond_5
    return v2
.end method

.method public final w(ILandroidx/recyclerview/widget/l1;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()I

    move-result v1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    move-result v1

    const/4 v2, -0x1

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/w;

    iput-boolean v0, v3, Landroidx/recyclerview/widget/w;->a:Z

    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C(ILandroidx/recyclerview/widget/l1;)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B(I)V

    iget p2, v3, Landroidx/recyclerview/widget/w;->d:I

    add-int/2addr v1, p2

    iput v1, v3, Landroidx/recyclerview/widget/w;->c:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, v3, Landroidx/recyclerview/widget/w;->b:I

    return-void
.end method

.method public final x(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/w;)V
    .locals 4

    .line 1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/w;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-boolean v0, p2, Landroidx/recyclerview/widget/w;->i:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/w;->b:I

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget v0, p2, Landroidx/recyclerview/widget/w;->e:I

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget p2, p2, Landroidx/recyclerview/widget/w;->g:I

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y(Landroidx/recyclerview/widget/e1;I)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_1
    iget p2, p2, Landroidx/recyclerview/widget/w;->f:I

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z(Landroidx/recyclerview/widget/e1;I)V

    .line 30
    .line 31
    .line 32
    goto :goto_4

    .line 33
    :cond_2
    iget v0, p2, Landroidx/recyclerview/widget/w;->e:I

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    if-ne v0, v1, :cond_6

    .line 38
    .line 39
    iget v0, p2, Landroidx/recyclerview/widget/w;->f:I

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 42
    .line 43
    aget-object v1, v1, v2

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/a2;->h(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 50
    .line 51
    if-ge v3, v2, :cond_4

    .line 52
    .line 53
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 54
    .line 55
    aget-object v2, v2, v3

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/a2;->h(I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-le v2, v1, :cond_3

    .line 62
    .line 63
    move v1, v2

    .line 64
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    sub-int/2addr v0, v1

    .line 68
    if-gez v0, :cond_5

    .line 69
    .line 70
    iget p2, p2, Landroidx/recyclerview/widget/w;->g:I

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    iget v1, p2, Landroidx/recyclerview/widget/w;->g:I

    .line 74
    .line 75
    iget p2, p2, Landroidx/recyclerview/widget/w;->b:I

    .line 76
    .line 77
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    sub-int p2, v1, p2

    .line 82
    .line 83
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y(Landroidx/recyclerview/widget/e1;I)V

    .line 84
    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_6
    iget v0, p2, Landroidx/recyclerview/widget/w;->g:I

    .line 88
    .line 89
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 90
    .line 91
    aget-object v1, v1, v2

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/a2;->f(I)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    :goto_2
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 98
    .line 99
    if-ge v3, v2, :cond_8

    .line 100
    .line 101
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/a2;

    .line 102
    .line 103
    aget-object v2, v2, v3

    .line 104
    .line 105
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/a2;->f(I)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-ge v2, v1, :cond_7

    .line 110
    .line 111
    move v1, v2

    .line 112
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_8
    iget v0, p2, Landroidx/recyclerview/widget/w;->g:I

    .line 116
    .line 117
    sub-int/2addr v1, v0

    .line 118
    if-gez v1, :cond_9

    .line 119
    .line 120
    iget p2, p2, Landroidx/recyclerview/widget/w;->f:I

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_9
    iget v0, p2, Landroidx/recyclerview/widget/w;->f:I

    .line 124
    .line 125
    iget p2, p2, Landroidx/recyclerview/widget/w;->b:I

    .line 126
    .line 127
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    add-int/2addr p2, v0

    .line 132
    :goto_3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z(Landroidx/recyclerview/widget/e1;I)V

    .line 133
    .line 134
    .line 135
    :cond_a
    :goto_4
    return-void
.end method

.method public final y(Landroidx/recyclerview/widget/e1;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-lt v3, p2, :cond_4

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/e0;->l(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-lt v3, p2, :cond_4

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroidx/recyclerview/widget/x1;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v4, v3, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    .line 39
    .line 40
    iget-object v4, v4, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ne v4, v1, :cond_0

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v3, v3, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    .line 50
    .line 51
    iget-object v4, v3, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    add-int/lit8 v6, v5, -0x1

    .line 58
    .line 59
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Landroidx/recyclerview/widget/x1;

    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    iput-object v7, v6, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    .line 73
    .line 74
    iget-object v7, v6, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 75
    .line 76
    invoke-virtual {v7}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-nez v7, :cond_1

    .line 81
    .line 82
    iget-object v6, v6, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 83
    .line 84
    invoke-virtual {v6}, Landroidx/recyclerview/widget/p1;->isUpdated()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_2

    .line 89
    .line 90
    :cond_1
    iget v6, v3, Landroidx/recyclerview/widget/a2;->d:I

    .line 91
    .line 92
    iget-object v7, v3, Landroidx/recyclerview/widget/a2;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 93
    .line 94
    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 95
    .line 96
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    sub-int/2addr v6, v4

    .line 101
    iput v6, v3, Landroidx/recyclerview/widget/a2;->d:I

    .line 102
    .line 103
    :cond_2
    const/high16 v4, -0x80000000

    .line 104
    .line 105
    if-ne v5, v1, :cond_3

    .line 106
    .line 107
    iput v4, v3, Landroidx/recyclerview/widget/a2;->b:I

    .line 108
    .line 109
    :cond_3
    iput v4, v3, Landroidx/recyclerview/widget/a2;->c:I

    .line 110
    .line 111
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/w0;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/e1;)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v0, v0, -0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    return-void
.end method

.method public final z(Landroidx/recyclerview/widget/e1;I)V
    .locals 6

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-gt v2, p2, :cond_4

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/e0;->k(Landroid/view/View;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-gt v2, p2, :cond_4

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroidx/recyclerview/widget/x1;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v3, v2, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    .line 38
    .line 39
    iget-object v3, v3, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x1

    .line 46
    if-ne v3, v4, :cond_0

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v2, v2, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    .line 50
    .line 51
    iget-object v3, v2, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroidx/recyclerview/widget/x1;

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    iput-object v5, v4, Landroidx/recyclerview/widget/x1;->e:Landroidx/recyclerview/widget/a2;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/high16 v5, -0x80000000

    .line 73
    .line 74
    if-nez v3, :cond_1

    .line 75
    .line 76
    iput v5, v2, Landroidx/recyclerview/widget/a2;->c:I

    .line 77
    .line 78
    :cond_1
    iget-object v3, v4, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 79
    .line 80
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_2

    .line 85
    .line 86
    iget-object v3, v4, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 87
    .line 88
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p1;->isUpdated()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    :cond_2
    iget v3, v2, Landroidx/recyclerview/widget/a2;->d:I

    .line 95
    .line 96
    iget-object v4, v2, Landroidx/recyclerview/widget/a2;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 97
    .line 98
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 99
    .line 100
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    sub-int/2addr v3, v0

    .line 105
    iput v3, v2, Landroidx/recyclerview/widget/a2;->d:I

    .line 106
    .line 107
    :cond_3
    iput v5, v2, Landroidx/recyclerview/widget/a2;->b:I

    .line 108
    .line 109
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/w0;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/e1;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    return-void
.end method
