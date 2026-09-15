.class public final Landroidx/appcompat/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/c0;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroidx/appcompat/view/menu/o;

.field public final d:Landroid/view/LayoutInflater;

.field public e:Landroidx/appcompat/view/menu/b0;

.field public final f:I

.field public final g:I

.field public h:Landroidx/appcompat/view/menu/e0;

.field public i:I

.field public j:Landroidx/appcompat/widget/l;

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Z

.field public m:Z

.field public n:Z

.field public p:I

.field public q:I

.field public r:I

.field public s:Z

.field public final t:Landroid/util/SparseBooleanArray;

.field public u:Landroidx/appcompat/widget/h;

.field public v:Landroidx/appcompat/widget/h;

.field public w:Landroidx/appcompat/widget/j;

.field public x:Landroidx/appcompat/widget/i;

.field public final y:Landroidx/appcompat/widget/m;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/o;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/appcompat/widget/o;->d:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    const p1, 0x7f0d0003

    .line 13
    .line 14
    .line 15
    iput p1, p0, Landroidx/appcompat/widget/o;->f:I

    .line 16
    .line 17
    const p1, 0x7f0d0002

    .line 18
    .line 19
    .line 20
    iput p1, p0, Landroidx/appcompat/widget/o;->g:I

    .line 21
    .line 22
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/appcompat/widget/o;->t:Landroid/util/SparseBooleanArray;

    .line 28
    .line 29
    new-instance p1, Landroidx/appcompat/widget/m;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/m;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Landroidx/appcompat/widget/o;->y:Landroidx/appcompat/widget/m;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/q;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->getActionView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    :cond_0
    instance-of v0, p2, Landroidx/appcompat/view/menu/d0;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p2, Landroidx/appcompat/view/menu/d0;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p2, p0, Landroidx/appcompat/widget/o;->d:Landroid/view/LayoutInflater;

    .line 22
    .line 23
    iget v0, p0, Landroidx/appcompat/widget/o;->g:I

    .line 24
    .line 25
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroidx/appcompat/view/menu/d0;

    .line 30
    .line 31
    :goto_0
    invoke-interface {p2, p1, v1}, Landroidx/appcompat/view/menu/d0;->initialize(Landroidx/appcompat/view/menu/q;I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/appcompat/widget/o;->h:Landroidx/appcompat/view/menu/e0;

    .line 35
    .line 36
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 37
    .line 38
    move-object v2, p2

    .line 39
    check-cast v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/n;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Landroidx/appcompat/widget/o;->x:Landroidx/appcompat/widget/i;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    new-instance v0, Landroidx/appcompat/widget/i;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/i;-><init>(Landroidx/appcompat/widget/o;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Landroidx/appcompat/widget/o;->x:Landroidx/appcompat/widget/i;

    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/o;->x:Landroidx/appcompat/widget/i;

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/c;)V

    .line 58
    .line 59
    .line 60
    move-object v0, p2

    .line 61
    check-cast v0, Landroid/view/View;

    .line 62
    .line 63
    :cond_3
    iget-boolean p1, p1, Landroidx/appcompat/view/menu/q;->C:Z

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    const/16 v1, 0x8

    .line 68
    .line 69
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-nez p2, :cond_5

    .line 83
    .line 84
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->e(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/q;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    return-object v0
.end method

.method public final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/o;->w:Landroidx/appcompat/widget/j;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/appcompat/widget/o;->h:Landroidx/appcompat/view/menu/e0;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    check-cast v2, Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Landroidx/appcompat/widget/o;->w:Landroidx/appcompat/widget/j;

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/o;->u:Landroidx/appcompat/widget/h;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a0;->b()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/x;

    .line 30
    .line 31
    invoke-interface {v0}, Landroidx/appcompat/view/menu/g0;->dismiss()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return v1

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/o;->u:Landroidx/appcompat/widget/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final bridge synthetic collapseItemActionView(Landroidx/appcompat/view/menu/o;Landroidx/appcompat/view/menu/q;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/o;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/o;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/o;->c:Landroidx/appcompat/view/menu/o;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/o;->h:Landroidx/appcompat/view/menu/e0;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/o;->w:Landroidx/appcompat/widget/j;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/h;

    iget-object v2, p0, Landroidx/appcompat/widget/o;->b:Landroid/content/Context;

    iget-object v3, p0, Landroidx/appcompat/widget/o;->c:Landroidx/appcompat/view/menu/o;

    iget-object v4, p0, Landroidx/appcompat/widget/o;->j:Landroidx/appcompat/widget/l;

    invoke-direct {v0, p0, v2, v3, v4}, Landroidx/appcompat/widget/h;-><init>(Landroidx/appcompat/widget/o;Landroid/content/Context;Landroidx/appcompat/view/menu/o;Landroidx/appcompat/widget/l;)V

    new-instance v2, Landroidx/appcompat/widget/j;

    invoke-direct {v2, p0, v0, v1}, Landroidx/appcompat/widget/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v2, p0, Landroidx/appcompat/widget/o;->w:Landroidx/appcompat/widget/j;

    iget-object v0, p0, Landroidx/appcompat/widget/o;->h:Landroidx/appcompat/view/menu/e0;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final bridge synthetic expandItemActionView(Landroidx/appcompat/view/menu/o;Landroidx/appcompat/view/menu/q;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final flagActionItems()Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/widget/o;->c:Landroidx/appcompat/view/menu/o;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o;->getVisibleItems()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v4, v3

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget v5, v0, Landroidx/appcompat/widget/o;->r:I

    .line 20
    .line 21
    iget v6, v0, Landroidx/appcompat/widget/o;->q:I

    .line 22
    .line 23
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    iget-object v8, v0, Landroidx/appcompat/widget/o;->h:Landroidx/appcompat/view/menu/e0;

    .line 28
    .line 29
    check-cast v8, Landroid/view/ViewGroup;

    .line 30
    .line 31
    move v9, v3

    .line 32
    move v10, v9

    .line 33
    move v11, v10

    .line 34
    move v12, v11

    .line 35
    :goto_1
    const/4 v13, 0x2

    .line 36
    const/4 v14, 0x1

    .line 37
    if-ge v9, v4, :cond_4

    .line 38
    .line 39
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v15

    .line 43
    check-cast v15, Landroidx/appcompat/view/menu/q;

    .line 44
    .line 45
    iget v3, v15, Landroidx/appcompat/view/menu/q;->y:I

    .line 46
    .line 47
    and-int/lit8 v2, v3, 0x2

    .line 48
    .line 49
    if-ne v2, v13, :cond_1

    .line 50
    .line 51
    add-int/lit8 v11, v11, 0x1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    and-int/lit8 v2, v3, 0x1

    .line 55
    .line 56
    if-ne v2, v14, :cond_2

    .line 57
    .line 58
    add-int/lit8 v12, v12, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v10, v14

    .line 62
    :goto_2
    iget-boolean v2, v0, Landroidx/appcompat/widget/o;->s:Z

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iget-boolean v2, v15, Landroidx/appcompat/view/menu/q;->C:Z

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    iget-boolean v2, v0, Landroidx/appcompat/widget/o;->m:Z

    .line 76
    .line 77
    if-eqz v2, :cond_6

    .line 78
    .line 79
    if-nez v10, :cond_5

    .line 80
    .line 81
    add-int/2addr v12, v11

    .line 82
    if-le v12, v5, :cond_6

    .line 83
    .line 84
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 85
    .line 86
    :cond_6
    sub-int/2addr v5, v11

    .line 87
    iget-object v2, v0, Landroidx/appcompat/widget/o;->t:Landroid/util/SparseBooleanArray;

    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 90
    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    const/4 v9, 0x0

    .line 94
    :goto_3
    if-ge v3, v4, :cond_16

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    check-cast v10, Landroidx/appcompat/view/menu/q;

    .line 101
    .line 102
    iget v11, v10, Landroidx/appcompat/view/menu/q;->y:I

    .line 103
    .line 104
    and-int/lit8 v12, v11, 0x2

    .line 105
    .line 106
    if-ne v12, v13, :cond_7

    .line 107
    .line 108
    move v12, v14

    .line 109
    goto :goto_4

    .line 110
    :cond_7
    const/4 v12, 0x0

    .line 111
    :goto_4
    iget v15, v10, Landroidx/appcompat/view/menu/q;->b:I

    .line 112
    .line 113
    if-eqz v12, :cond_a

    .line 114
    .line 115
    const/4 v12, 0x0

    .line 116
    invoke-virtual {v0, v10, v12, v8}, Landroidx/appcompat/widget/o;->a(Landroidx/appcompat/view/menu/q;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    invoke-virtual {v11, v7, v7}, Landroid/view/View;->measure(II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    sub-int/2addr v6, v11

    .line 128
    if-nez v9, :cond_8

    .line 129
    .line 130
    move v9, v11

    .line 131
    :cond_8
    if-eqz v15, :cond_9

    .line 132
    .line 133
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 134
    .line 135
    .line 136
    :cond_9
    invoke-virtual {v10, v14}, Landroidx/appcompat/view/menu/q;->h(Z)V

    .line 137
    .line 138
    .line 139
    :goto_5
    const/4 v11, 0x0

    .line 140
    goto/16 :goto_a

    .line 141
    .line 142
    :cond_a
    and-int/lit8 v11, v11, 0x1

    .line 143
    .line 144
    if-ne v11, v14, :cond_15

    .line 145
    .line 146
    invoke-virtual {v2, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    if-gtz v5, :cond_b

    .line 151
    .line 152
    if-eqz v11, :cond_c

    .line 153
    .line 154
    :cond_b
    if-lez v6, :cond_c

    .line 155
    .line 156
    move v12, v14

    .line 157
    goto :goto_6

    .line 158
    :cond_c
    const/4 v12, 0x0

    .line 159
    :goto_6
    const/4 v13, 0x0

    .line 160
    if-eqz v12, :cond_f

    .line 161
    .line 162
    invoke-virtual {v0, v10, v13, v8}, Landroidx/appcompat/widget/o;->a(Landroidx/appcompat/view/menu/q;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    invoke-virtual {v14, v7, v7}, Landroid/view/View;->measure(II)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    sub-int/2addr v6, v14

    .line 174
    if-nez v9, :cond_d

    .line 175
    .line 176
    move v9, v14

    .line 177
    :cond_d
    add-int v14, v6, v9

    .line 178
    .line 179
    if-lez v14, :cond_e

    .line 180
    .line 181
    const/4 v14, 0x1

    .line 182
    goto :goto_7

    .line 183
    :cond_e
    const/4 v14, 0x0

    .line 184
    :goto_7
    and-int/2addr v12, v14

    .line 185
    :cond_f
    if-eqz v12, :cond_10

    .line 186
    .line 187
    if-eqz v15, :cond_10

    .line 188
    .line 189
    const/4 v14, 0x1

    .line 190
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 191
    .line 192
    .line 193
    goto :goto_9

    .line 194
    :cond_10
    if-eqz v11, :cond_13

    .line 195
    .line 196
    const/4 v11, 0x0

    .line 197
    invoke-virtual {v2, v15, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 198
    .line 199
    .line 200
    const/4 v11, 0x0

    .line 201
    :goto_8
    if-ge v11, v3, :cond_13

    .line 202
    .line 203
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    check-cast v14, Landroidx/appcompat/view/menu/q;

    .line 208
    .line 209
    iget v13, v14, Landroidx/appcompat/view/menu/q;->b:I

    .line 210
    .line 211
    if-ne v13, v15, :cond_12

    .line 212
    .line 213
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/q;->f()Z

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    if-eqz v13, :cond_11

    .line 218
    .line 219
    add-int/lit8 v5, v5, 0x1

    .line 220
    .line 221
    :cond_11
    const/4 v13, 0x0

    .line 222
    invoke-virtual {v14, v13}, Landroidx/appcompat/view/menu/q;->h(Z)V

    .line 223
    .line 224
    .line 225
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 226
    .line 227
    const/4 v13, 0x0

    .line 228
    goto :goto_8

    .line 229
    :cond_13
    :goto_9
    if-eqz v12, :cond_14

    .line 230
    .line 231
    add-int/lit8 v5, v5, -0x1

    .line 232
    .line 233
    :cond_14
    invoke-virtual {v10, v12}, Landroidx/appcompat/view/menu/q;->h(Z)V

    .line 234
    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_15
    const/4 v11, 0x0

    .line 238
    invoke-virtual {v10, v11}, Landroidx/appcompat/view/menu/q;->h(Z)V

    .line 239
    .line 240
    .line 241
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 242
    .line 243
    const/4 v13, 0x2

    .line 244
    const/4 v14, 0x1

    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :cond_16
    move v3, v14

    .line 248
    return v3
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/o;->i:I

    return v0
.end method

.method public final initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/o;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/o;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/appcompat/widget/o;->c:Landroidx/appcompat/view/menu/o;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-boolean v0, p0, Landroidx/appcompat/widget/o;->n:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroidx/appcompat/widget/o;->m:Z

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    div-int/2addr v0, v1

    .line 31
    iput v0, p0, Landroidx/appcompat/widget/o;->p:I

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 42
    .line 43
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 44
    .line 45
    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 46
    .line 47
    const/16 v3, 0x258

    .line 48
    .line 49
    if-gt p1, v3, :cond_6

    .line 50
    .line 51
    if-gt v0, v3, :cond_6

    .line 52
    .line 53
    const/16 p1, 0x2d0

    .line 54
    .line 55
    const/16 v3, 0x3c0

    .line 56
    .line 57
    if-le v0, v3, :cond_1

    .line 58
    .line 59
    if-gt v2, p1, :cond_6

    .line 60
    .line 61
    :cond_1
    if-le v0, p1, :cond_2

    .line 62
    .line 63
    if-le v2, v3, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/16 p1, 0x1f4

    .line 67
    .line 68
    if-ge v0, p1, :cond_5

    .line 69
    .line 70
    const/16 p1, 0x1e0

    .line 71
    .line 72
    const/16 v3, 0x280

    .line 73
    .line 74
    if-le v0, v3, :cond_3

    .line 75
    .line 76
    if-gt v2, p1, :cond_5

    .line 77
    .line 78
    :cond_3
    if-le v0, p1, :cond_4

    .line 79
    .line 80
    if-le v2, v3, :cond_4

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const/16 p1, 0x168

    .line 84
    .line 85
    if-lt v0, p1, :cond_7

    .line 86
    .line 87
    const/4 v1, 0x3

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    :goto_0
    const/4 v1, 0x4

    .line 90
    goto :goto_2

    .line 91
    :cond_6
    :goto_1
    const/4 v1, 0x5

    .line 92
    :cond_7
    :goto_2
    iput v1, p0, Landroidx/appcompat/widget/o;->r:I

    .line 93
    .line 94
    iget p1, p0, Landroidx/appcompat/widget/o;->p:I

    .line 95
    .line 96
    iget-boolean v0, p0, Landroidx/appcompat/widget/o;->m:Z

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    if-eqz v0, :cond_a

    .line 100
    .line 101
    iget-object v0, p0, Landroidx/appcompat/widget/o;->j:Landroidx/appcompat/widget/l;

    .line 102
    .line 103
    if-nez v0, :cond_9

    .line 104
    .line 105
    new-instance v0, Landroidx/appcompat/widget/l;

    .line 106
    .line 107
    iget-object v2, p0, Landroidx/appcompat/widget/o;->a:Landroid/content/Context;

    .line 108
    .line 109
    invoke-direct {v0, p0, v2}, Landroidx/appcompat/widget/l;-><init>(Landroidx/appcompat/widget/o;Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Landroidx/appcompat/widget/o;->j:Landroidx/appcompat/widget/l;

    .line 113
    .line 114
    iget-boolean v2, p0, Landroidx/appcompat/widget/o;->l:Z

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    if-eqz v2, :cond_8

    .line 118
    .line 119
    iget-object v2, p0, Landroidx/appcompat/widget/o;->k:Landroid/graphics/drawable/Drawable;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/h0;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    .line 123
    .line 124
    iput-object v1, p0, Landroidx/appcompat/widget/o;->k:Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    iput-boolean v3, p0, Landroidx/appcompat/widget/o;->l:Z

    .line 127
    .line 128
    :cond_8
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iget-object v1, p0, Landroidx/appcompat/widget/o;->j:Landroidx/appcompat/widget/l;

    .line 133
    .line 134
    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 135
    .line 136
    .line 137
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/o;->j:Landroidx/appcompat/widget/l;

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    sub-int/2addr p1, v0

    .line 144
    goto :goto_3

    .line 145
    :cond_a
    iput-object v1, p0, Landroidx/appcompat/widget/o;->j:Landroidx/appcompat/widget/l;

    .line 146
    .line 147
    :goto_3
    iput p1, p0, Landroidx/appcompat/widget/o;->q:I

    .line 148
    .line 149
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 154
    .line 155
    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/o;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/o;->b()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/o;->v:Landroidx/appcompat/widget/h;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a0;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/x;

    .line 15
    .line 16
    invoke-interface {v0}, Landroidx/appcompat/view/menu/g0;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/o;->e:Landroidx/appcompat/view/menu/b0;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/b0;->onCloseMenu(Landroidx/appcompat/view/menu/o;Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroidx/appcompat/widget/n;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/appcompat/widget/n;

    iget p1, p1, Landroidx/appcompat/widget/n;->a:I

    if-lez p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/o;->c:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/o;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/i0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/o;->onSubMenuSelected(Landroidx/appcompat/view/menu/i0;)Z

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/n;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroidx/appcompat/widget/o;->z:I

    .line 7
    .line 8
    iput v1, v0, Landroidx/appcompat/widget/n;->a:I

    .line 9
    .line 10
    return-object v0
.end method

.method public final onSubMenuSelected(Landroidx/appcompat/view/menu/i0;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->hasVisibleItems()Z

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
    return v1

    .line 9
    :cond_0
    move-object v0, p1

    .line 10
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i0;->getParentMenu()Landroid/view/Menu;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v3, p0, Landroidx/appcompat/widget/o;->c:Landroidx/appcompat/view/menu/o;

    .line 15
    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i0;->getParentMenu()Landroid/view/Menu;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroidx/appcompat/view/menu/i0;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i0;->getItem()Landroid/view/MenuItem;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v2, p0, Landroidx/appcompat/widget/o;->h:Landroidx/appcompat/view/menu/e0;

    .line 30
    .line 31
    check-cast v2, Landroid/view/ViewGroup;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    move v5, v1

    .line 42
    :goto_1
    if-ge v5, v4, :cond_4

    .line 43
    .line 44
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    instance-of v7, v6, Landroidx/appcompat/view/menu/d0;

    .line 49
    .line 50
    if-eqz v7, :cond_3

    .line 51
    .line 52
    move-object v7, v6

    .line 53
    check-cast v7, Landroidx/appcompat/view/menu/d0;

    .line 54
    .line 55
    invoke-interface {v7}, Landroidx/appcompat/view/menu/d0;->getItemData()Landroidx/appcompat/view/menu/q;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    if-ne v7, v0, :cond_3

    .line 60
    .line 61
    move-object v3, v6

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 67
    .line 68
    return v1

    .line 69
    :cond_5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i0;->getItem()Landroid/view/MenuItem;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iput v0, p0, Landroidx/appcompat/widget/o;->z:I

    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    move v2, v1

    .line 84
    :goto_3
    const/4 v4, 0x1

    .line 85
    if-ge v2, v0, :cond_7

    .line 86
    .line 87
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/o;->getItem(I)Landroid/view/MenuItem;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_6

    .line 96
    .line 97
    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    if-eqz v5, :cond_6

    .line 102
    .line 103
    move v0, v4

    .line 104
    goto :goto_4

    .line 105
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_7
    move v0, v1

    .line 109
    :goto_4
    new-instance v2, Landroidx/appcompat/widget/h;

    .line 110
    .line 111
    iget-object v5, p0, Landroidx/appcompat/widget/o;->b:Landroid/content/Context;

    .line 112
    .line 113
    invoke-direct {v2, p0, v5, p1, v3}, Landroidx/appcompat/widget/h;-><init>(Landroidx/appcompat/widget/o;Landroid/content/Context;Landroidx/appcompat/view/menu/i0;Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    iput-object v2, p0, Landroidx/appcompat/widget/o;->v:Landroidx/appcompat/widget/h;

    .line 117
    .line 118
    iput-boolean v0, v2, Landroidx/appcompat/view/menu/a0;->h:Z

    .line 119
    .line 120
    iget-object v2, v2, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/x;

    .line 121
    .line 122
    if-eqz v2, :cond_8

    .line 123
    .line 124
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/x;->f(Z)V

    .line 125
    .line 126
    .line 127
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/o;->v:Landroidx/appcompat/widget/h;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a0;->b()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_9

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_9
    iget-object v2, v0, Landroidx/appcompat/view/menu/a0;->f:Landroid/view/View;

    .line 137
    .line 138
    if-eqz v2, :cond_b

    .line 139
    .line 140
    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/appcompat/view/menu/a0;->d(IIZZ)V

    .line 141
    .line 142
    .line 143
    :goto_5
    iget-object v0, p0, Landroidx/appcompat/widget/o;->e:Landroidx/appcompat/view/menu/b0;

    .line 144
    .line 145
    if-eqz v0, :cond_a

    .line 146
    .line 147
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/b0;->c(Landroidx/appcompat/view/menu/o;)Z

    .line 148
    .line 149
    .line 150
    :cond_a
    return v4

    .line 151
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    const-string v0, "MenuPopupHelper cannot be used without an anchor"

    .line 154
    .line 155
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1
.end method

.method public final setCallback(Landroidx/appcompat/view/menu/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/o;->e:Landroidx/appcompat/view/menu/b0;

    return-void
.end method

.method public final updateMenuView(Z)V
    .locals 10

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/o;->h:Landroidx/appcompat/view/menu/e0;

    .line 2
    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/o;->c:Landroidx/appcompat/view/menu/o;

    .line 12
    .line 13
    if-eqz v2, :cond_6

    .line 14
    .line 15
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/o;->flagActionItems()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Landroidx/appcompat/widget/o;->c:Landroidx/appcompat/view/menu/o;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/o;->getVisibleItems()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    move v4, v1

    .line 29
    move v5, v4

    .line 30
    :goto_0
    if-ge v4, v3, :cond_7

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Landroidx/appcompat/view/menu/q;

    .line 37
    .line 38
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/q;->f()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_5

    .line 43
    .line 44
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    instance-of v8, v7, Landroidx/appcompat/view/menu/d0;

    .line 49
    .line 50
    if-eqz v8, :cond_1

    .line 51
    .line 52
    move-object v8, v7

    .line 53
    check-cast v8, Landroidx/appcompat/view/menu/d0;

    .line 54
    .line 55
    invoke-interface {v8}, Landroidx/appcompat/view/menu/d0;->getItemData()Landroidx/appcompat/view/menu/q;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move-object v8, v0

    .line 61
    :goto_1
    invoke-virtual {p0, v6, v7, p1}, Landroidx/appcompat/widget/o;->a(Landroidx/appcompat/view/menu/q;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    if-eq v6, v8, :cond_2

    .line 66
    .line 67
    invoke-virtual {v9, v1}, Landroid/view/View;->setPressed(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v9}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 71
    .line 72
    .line 73
    :cond_2
    if-eq v9, v7, :cond_4

    .line 74
    .line 75
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Landroid/view/ViewGroup;

    .line 80
    .line 81
    if-eqz v6, :cond_3

    .line 82
    .line 83
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-object v6, p0, Landroidx/appcompat/widget/o;->h:Landroidx/appcompat/view/menu/e0;

    .line 87
    .line 88
    check-cast v6, Landroid/view/ViewGroup;

    .line 89
    .line 90
    invoke-virtual {v6, v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 91
    .line 92
    .line 93
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    move v5, v1

    .line 99
    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-ge v5, v2, :cond_9

    .line 104
    .line 105
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    iget-object v3, p0, Landroidx/appcompat/widget/o;->j:Landroidx/appcompat/widget/l;

    .line 110
    .line 111
    if-ne v2, v3, :cond_8

    .line 112
    .line 113
    add-int/lit8 v5, v5, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_8
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_9
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/widget/o;->h:Landroidx/appcompat/view/menu/e0;

    .line 121
    .line 122
    check-cast p1, Landroid/view/View;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Landroidx/appcompat/widget/o;->c:Landroidx/appcompat/view/menu/o;

    .line 128
    .line 129
    if-eqz p1, :cond_a

    .line 130
    .line 131
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->getActionItems()Ljava/util/ArrayList;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    move v3, v1

    .line 140
    :goto_4
    if-ge v3, v2, :cond_a

    .line 141
    .line 142
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Landroidx/appcompat/view/menu/q;

    .line 147
    .line 148
    iget-object v4, v4, Landroidx/appcompat/view/menu/q;->A:Landroidx/appcompat/view/menu/r;

    .line 149
    .line 150
    add-int/lit8 v3, v3, 0x1

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_a
    iget-object p1, p0, Landroidx/appcompat/widget/o;->c:Landroidx/appcompat/view/menu/o;

    .line 154
    .line 155
    if-eqz p1, :cond_b

    .line 156
    .line 157
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->getNonActionItems()Ljava/util/ArrayList;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    :cond_b
    iget-boolean p1, p0, Landroidx/appcompat/widget/o;->m:Z

    .line 162
    .line 163
    if-eqz p1, :cond_f

    .line 164
    .line 165
    if-eqz v0, :cond_f

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    const/4 v2, 0x1

    .line 172
    if-ne p1, v2, :cond_c

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Landroidx/appcompat/view/menu/q;

    .line 179
    .line 180
    iget-boolean p1, p1, Landroidx/appcompat/view/menu/q;->C:Z

    .line 181
    .line 182
    xor-int/2addr p1, v2

    .line 183
    if-eqz p1, :cond_f

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_c
    if-lez p1, :cond_f

    .line 187
    .line 188
    :goto_5
    iget-object p1, p0, Landroidx/appcompat/widget/o;->j:Landroidx/appcompat/widget/l;

    .line 189
    .line 190
    if-nez p1, :cond_d

    .line 191
    .line 192
    new-instance p1, Landroidx/appcompat/widget/l;

    .line 193
    .line 194
    iget-object v0, p0, Landroidx/appcompat/widget/o;->a:Landroid/content/Context;

    .line 195
    .line 196
    invoke-direct {p1, p0, v0}, Landroidx/appcompat/widget/l;-><init>(Landroidx/appcompat/widget/o;Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    iput-object p1, p0, Landroidx/appcompat/widget/o;->j:Landroidx/appcompat/widget/l;

    .line 200
    .line 201
    :cond_d
    iget-object p1, p0, Landroidx/appcompat/widget/o;->j:Landroidx/appcompat/widget/l;

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    check-cast p1, Landroid/view/ViewGroup;

    .line 208
    .line 209
    iget-object v0, p0, Landroidx/appcompat/widget/o;->h:Landroidx/appcompat/view/menu/e0;

    .line 210
    .line 211
    if-eq p1, v0, :cond_10

    .line 212
    .line 213
    if-eqz p1, :cond_e

    .line 214
    .line 215
    iget-object v0, p0, Landroidx/appcompat/widget/o;->j:Landroidx/appcompat/widget/l;

    .line 216
    .line 217
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 218
    .line 219
    .line 220
    :cond_e
    iget-object p1, p0, Landroidx/appcompat/widget/o;->h:Landroidx/appcompat/view/menu/e0;

    .line 221
    .line 222
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 223
    .line 224
    iget-object v0, p0, Landroidx/appcompat/widget/o;->j:Landroidx/appcompat/widget/l;

    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->d()Landroidx/appcompat/widget/q;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    iput-boolean v2, v1, Landroidx/appcompat/widget/q;->a:Z

    .line 234
    .line 235
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_f
    iget-object p1, p0, Landroidx/appcompat/widget/o;->j:Landroidx/appcompat/widget/l;

    .line 240
    .line 241
    if-eqz p1, :cond_10

    .line 242
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    iget-object v0, p0, Landroidx/appcompat/widget/o;->h:Landroidx/appcompat/view/menu/e0;

    .line 248
    .line 249
    if-ne p1, v0, :cond_10

    .line 250
    .line 251
    check-cast v0, Landroid/view/ViewGroup;

    .line 252
    .line 253
    iget-object p1, p0, Landroidx/appcompat/widget/o;->j:Landroidx/appcompat/widget/l;

    .line 254
    .line 255
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 256
    .line 257
    .line 258
    :cond_10
    :goto_6
    iget-object p1, p0, Landroidx/appcompat/widget/o;->h:Landroidx/appcompat/view/menu/e0;

    .line 259
    .line 260
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 261
    .line 262
    iget-boolean v0, p0, Landroidx/appcompat/widget/o;->m:Z

    .line 263
    .line 264
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 265
    .line 266
    .line 267
    return-void
.end method
