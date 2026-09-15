.class public abstract Landroidx/viewpager2/adapter/e;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager2/adapter/g;


# instance fields
.field public final a:Landroidx/lifecycle/o;

.field public final b:Landroidx/fragment/app/u0;

.field public final c:Ln/e;

.field public final d:Ln/e;

.field public final e:Ln/e;

.field public f:Landroidx/viewpager2/adapter/d;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/a0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroidx/activity/h;->getLifecycle()Landroidx/lifecycle/o;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ln/e;

    .line 13
    .line 14
    invoke-direct {v1}, Ln/e;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Landroidx/viewpager2/adapter/e;->c:Ln/e;

    .line 18
    .line 19
    new-instance v1, Ln/e;

    .line 20
    .line 21
    invoke-direct {v1}, Ln/e;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Landroidx/viewpager2/adapter/e;->d:Ln/e;

    .line 25
    .line 26
    new-instance v1, Ln/e;

    .line 27
    .line 28
    invoke-direct {v1}, Ln/e;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Landroidx/viewpager2/adapter/e;->e:Ln/e;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Landroidx/viewpager2/adapter/e;->g:Z

    .line 35
    .line 36
    iput-boolean v1, p0, Landroidx/viewpager2/adapter/e;->h:Z

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/viewpager2/adapter/e;->b:Landroidx/fragment/app/u0;

    .line 39
    .line 40
    iput-object p1, p0, Landroidx/viewpager2/adapter/e;->a:Landroidx/lifecycle/o;

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/k0;->setHasStableIds(Z)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract b(J)Z
.end method

.method public final c()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager2/adapter/e;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/viewpager2/adapter/e;->b:Landroidx/fragment/app/u0;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/u0;->E()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ln/c;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Ln/c;-><init>(I)V

    .line 19
    .line 20
    .line 21
    move v2, v1

    .line 22
    :goto_0
    iget-object v3, p0, Landroidx/viewpager2/adapter/e;->c:Ln/e;

    .line 23
    .line 24
    invoke-virtual {v3}, Ln/e;->h()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iget-object v5, p0, Landroidx/viewpager2/adapter/e;->e:Ln/e;

    .line 29
    .line 30
    if-ge v2, v4, :cond_2

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ln/e;->e(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-virtual {p0, v3, v4}, Landroidx/viewpager2/adapter/e;->b(J)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_1

    .line 41
    .line 42
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v0, v6}, Ln/c;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v3, v4}, Ln/e;->g(J)V

    .line 50
    .line 51
    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-boolean v2, p0, Landroidx/viewpager2/adapter/e;->g:Z

    .line 56
    .line 57
    if-nez v2, :cond_8

    .line 58
    .line 59
    iput-boolean v1, p0, Landroidx/viewpager2/adapter/e;->h:Z

    .line 60
    .line 61
    :goto_1
    invoke-virtual {v3}, Ln/e;->h()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-ge v1, v2, :cond_8

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Ln/e;->e(I)J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    iget-boolean v2, v5, Ln/e;->a:Z

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {v5}, Ln/e;->c()V

    .line 76
    .line 77
    .line 78
    :cond_3
    iget-object v2, v5, Ln/e;->b:[J

    .line 79
    .line 80
    iget v4, v5, Ln/e;->d:I

    .line 81
    .line 82
    invoke-static {v6, v7, v2, v4}, Ln/d;->b(J[JI)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-ltz v2, :cond_4

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    const/4 v2, 0x0

    .line 90
    invoke-virtual {v3, v2, v6, v7}, Ln/e;->d(Ljava/lang/Long;J)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 95
    .line 96
    if-nez v2, :cond_5

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-nez v2, :cond_6

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-eqz v2, :cond_7

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_7
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v2}, Ln/c;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_8
    invoke-virtual {v0}, Ln/c;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_9

    .line 132
    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Ljava/lang/Long;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 140
    .line 141
    .line 142
    move-result-wide v1

    .line 143
    invoke-virtual {p0, v1, v2}, Landroidx/viewpager2/adapter/e;->f(J)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_9
    :goto_5
    return-void
.end method

.method public final d(I)Ljava/lang/Long;
    .locals 4

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/viewpager2/adapter/e;->e:Ln/e;

    invoke-virtual {v2}, Ln/e;->h()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Ln/e;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {v2, v1}, Ln/e;->e(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Design assumption violated: a ViewHolder can only be bound to one item at a time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final e(Landroidx/viewpager2/adapter/f;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getItemId()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Landroidx/viewpager2/adapter/e;->c:Ln/e;

    .line 7
    .line 8
    invoke-virtual {v3, v2, v0, v1}, Ln/e;->d(Ljava/lang/Long;J)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 13
    .line 14
    const-string v1, "Design assumption violated."

    .line 15
    .line 16
    if-eqz v0, :cond_9

    .line 17
    .line 18
    iget-object v2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 19
    .line 20
    check-cast v2, Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v4, p0, Landroidx/viewpager2/adapter/e;->b:Landroidx/fragment/app/u0;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    new-instance p1, Lv1/t;

    .line 52
    .line 53
    invoke-direct {p1, p0, v0, v2}, Lv1/t;-><init>(Landroidx/viewpager2/adapter/e;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v4, Landroidx/fragment/app/u0;->n:Landroidx/fragment/app/d;

    .line 57
    .line 58
    iget-object v0, v0, Landroidx/fragment/app/d;->a:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    .line 62
    new-instance v1, Landroidx/fragment/app/l0;

    .line 63
    .line 64
    invoke-direct {v1, p1}, Landroidx/fragment/app/l0;-><init>(Lv1/t;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eq p1, v2, :cond_3

    .line 88
    .line 89
    invoke-static {v3, v2}, Landroidx/viewpager2/adapter/e;->a(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    return-void

    .line 93
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    invoke-static {v3, v2}, Landroidx/viewpager2/adapter/e;->a(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_5
    invoke-virtual {v4}, Landroidx/fragment/app/u0;->E()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_7

    .line 108
    .line 109
    new-instance v1, Lv1/t;

    .line 110
    .line 111
    invoke-direct {v1, p0, v0, v2}, Lv1/t;-><init>(Landroidx/viewpager2/adapter/e;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    .line 112
    .line 113
    .line 114
    iget-object v2, v4, Landroidx/fragment/app/u0;->n:Landroidx/fragment/app/d;

    .line 115
    .line 116
    iget-object v2, v2, Landroidx/fragment/app/d;->a:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 119
    .line 120
    new-instance v3, Landroidx/fragment/app/l0;

    .line 121
    .line 122
    invoke-direct {v3, v1}, Landroidx/fragment/app/l0;-><init>(Lv1/t;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    new-instance v1, Landroidx/fragment/app/a;

    .line 129
    .line 130
    invoke-direct {v1, v4}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/u0;)V

    .line 131
    .line 132
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v3, "f"

    .line 136
    .line 137
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getItemId()J

    .line 141
    .line 142
    .line 143
    move-result-wide v3

    .line 144
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const/4 v2, 0x1

    .line 152
    const/4 v3, 0x0

    .line 153
    invoke-virtual {v1, v3, v0, p1, v2}, Landroidx/fragment/app/a;->d(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    sget-object p1, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    .line 157
    .line 158
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/a;->m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)Landroidx/fragment/app/a;

    .line 159
    .line 160
    .line 161
    iget-boolean p1, v1, Landroidx/fragment/app/e1;->g:Z

    .line 162
    .line 163
    if-nez p1, :cond_6

    .line 164
    .line 165
    iput-boolean v3, v1, Landroidx/fragment/app/e1;->h:Z

    .line 166
    .line 167
    iget-object p1, v1, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/u0;

    .line 168
    .line 169
    invoke-virtual {p1, v1, v3}, Landroidx/fragment/app/u0;->t(Landroidx/fragment/app/r0;Z)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Landroidx/viewpager2/adapter/e;->f:Landroidx/viewpager2/adapter/d;

    .line 173
    .line 174
    invoke-virtual {p1, v3}, Landroidx/viewpager2/adapter/d;->b(Z)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 179
    .line 180
    const-string v0, "This transaction is already being added to the back stack"

    .line 181
    .line 182
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :cond_7
    iget-boolean v0, v4, Landroidx/fragment/app/u0;->D:Z

    .line 187
    .line 188
    if-eqz v0, :cond_8

    .line 189
    .line 190
    return-void

    .line 191
    :cond_8
    new-instance v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;

    .line 192
    .line 193
    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;-><init>(Landroidx/viewpager2/adapter/e;Landroidx/viewpager2/adapter/f;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Landroidx/viewpager2/adapter/e;->a:Landroidx/lifecycle/o;

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 199
    .line 200
    .line 201
    :goto_1
    return-void

    .line 202
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 203
    .line 204
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p1
.end method

.method public final f(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/adapter/e;->c:Ln/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1, p2}, Ln/e;->d(Ljava/lang/Long;J)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    check-cast v2, Landroid/widget/FrameLayout;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/adapter/e;->b(J)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object v3, p0, Landroidx/viewpager2/adapter/e;->d:Ln/e;

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v3, p1, p2}, Ln/e;->g(J)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0, p1, p2}, Ln/e;->g(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    iget-object v2, p0, Landroidx/viewpager2/adapter/e;->b:Landroidx/fragment/app/u0;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/fragment/app/u0;->E()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Landroidx/viewpager2/adapter/e;->h:Z

    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_5

    .line 72
    .line 73
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/adapter/e;->b(J)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_5

    .line 78
    .line 79
    invoke-virtual {v2, v1}, Landroidx/fragment/app/u0;->Q(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v3, v4, p1, p2}, Ln/e;->f(Ljava/lang/Object;J)V

    .line 84
    .line 85
    .line 86
    :cond_5
    new-instance v3, Landroidx/fragment/app/a;

    .line 87
    .line 88
    invoke-direct {v3, v2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/u0;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v1}, Landroidx/fragment/app/a;->l(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 92
    .line 93
    .line 94
    iget-boolean v1, v3, Landroidx/fragment/app/e1;->g:Z

    .line 95
    .line 96
    if-nez v1, :cond_6

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    iput-boolean v1, v3, Landroidx/fragment/app/e1;->h:Z

    .line 100
    .line 101
    iget-object v2, v3, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/u0;

    .line 102
    .line 103
    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/u0;->t(Landroidx/fragment/app/r0;Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1, p2}, Ln/e;->g(J)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    const-string p2, "This transaction is already being added to the back stack"

    .line 113
    .line 114
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1
.end method

.method public final g(Landroid/os/Parcelable;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/adapter/e;->d:Ln/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln/e;->h()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_9

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/viewpager2/adapter/e;->c:Ln/e;

    .line 10
    .line 11
    invoke-virtual {v1}, Ln/e;->h()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_9

    .line 16
    .line 17
    check-cast p1, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x1

    .line 49
    if-eqz v3, :cond_7

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/String;

    .line 56
    .line 57
    const-string v5, "f#"

    .line 58
    .line 59
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    const/4 v6, 0x2

    .line 64
    if-eqz v5, :cond_2

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-le v5, v6, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 v4, 0x0

    .line 74
    :goto_1
    if-eqz v4, :cond_5

    .line 75
    .line 76
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    iget-object v6, p0, Landroidx/viewpager2/adapter/e;->b:Landroidx/fragment/app/u0;

    .line 85
    .line 86
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    const/4 v8, 0x0

    .line 94
    if-nez v7, :cond_3

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    iget-object v9, v6, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 98
    .line 99
    invoke-virtual {v9, v7}, Landroidx/fragment/app/c1;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    if-eqz v9, :cond_4

    .line 104
    .line 105
    move-object v8, v9

    .line 106
    :goto_2
    invoke-virtual {v1, v8, v4, v5}, Ln/e;->f(Ljava/lang/Object;J)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    const-string v0, "Fragment no longer exists for key "

    .line 113
    .line 114
    const-string v1, ": unique id "

    .line 115
    .line 116
    invoke-static {v0, v3, v1, v7}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, p1}, Landroidx/fragment/app/u0;->X(Ljava/lang/IllegalStateException;)V

    .line 124
    .line 125
    .line 126
    throw v8

    .line 127
    :cond_5
    const-string v4, "s#"

    .line 128
    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_6

    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-le v4, v6, :cond_6

    .line 140
    .line 141
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 146
    .line 147
    .line 148
    move-result-wide v4

    .line 149
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Landroidx/fragment/app/w;

    .line 154
    .line 155
    invoke-virtual {p0, v4, v5}, Landroidx/viewpager2/adapter/e;->b(J)Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-eqz v6, :cond_1

    .line 160
    .line 161
    invoke-virtual {v0, v3, v4, v5}, Ln/e;->f(Ljava/lang/Object;J)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    const-string v0, "Unexpected key in savedState: "

    .line 168
    .line 169
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1

    .line 177
    :cond_7
    invoke-virtual {v1}, Ln/e;->h()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-nez p1, :cond_8

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_8
    iput-boolean v4, p0, Landroidx/viewpager2/adapter/e;->h:Z

    .line 185
    .line 186
    iput-boolean v4, p0, Landroidx/viewpager2/adapter/e;->g:Z

    .line 187
    .line 188
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/e;->c()V

    .line 189
    .line 190
    .line 191
    new-instance p1, Landroid/os/Handler;

    .line 192
    .line 193
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Landroidx/activity/d;

    .line 201
    .line 202
    const/16 v1, 0xe

    .line 203
    .line 204
    invoke-direct {v0, p0, v1}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    .line 205
    .line 206
    .line 207
    new-instance v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;

    .line 208
    .line 209
    invoke-direct {v1, p1, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;-><init>(Landroid/os/Handler;Landroidx/activity/d;)V

    .line 210
    .line 211
    .line 212
    iget-object v2, p0, Landroidx/viewpager2/adapter/e;->a:Landroidx/lifecycle/o;

    .line 213
    .line 214
    invoke-virtual {v2, v1}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 215
    .line 216
    .line 217
    const-wide/16 v1, 0x2710

    .line 218
    .line 219
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    .line 221
    .line 222
    :goto_3
    return-void

    .line 223
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 224
    .line 225
    const-string v0, "Expected the adapter to be \'fresh\' while restoring state."

    .line 226
    .line 227
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p1
.end method

.method public abstract getItemId(I)J
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/adapter/e;->f:Landroidx/viewpager2/adapter/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/viewpager2/adapter/d;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/viewpager2/adapter/d;-><init>(Landroidx/viewpager2/adapter/e;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/viewpager2/adapter/e;->f:Landroidx/viewpager2/adapter/d;

    .line 11
    .line 12
    invoke-static {p1}, Landroidx/viewpager2/adapter/d;->a(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, v0, Landroidx/viewpager2/adapter/d;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 17
    .line 18
    new-instance v1, Landroidx/viewpager2/adapter/b;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, v0, v2}, Landroidx/viewpager2/adapter/b;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Landroidx/viewpager2/adapter/d;->a:Landroidx/viewpager2/adapter/b;

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/adapter/b;

    .line 27
    .line 28
    iget-object p1, p1, Landroidx/viewpager2/adapter/b;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    new-instance p1, Landroidx/viewpager2/adapter/c;

    .line 36
    .line 37
    invoke-direct {p1, v0}, Landroidx/viewpager2/adapter/c;-><init>(Landroidx/viewpager2/adapter/d;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, v0, Landroidx/viewpager2/adapter/d;->b:Landroidx/viewpager2/adapter/c;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->registerAdapterDataObserver(Landroidx/recyclerview/widget/m0;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    .line 46
    .line 47
    invoke-direct {p1, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;-><init>(Landroidx/viewpager2/adapter/d;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, v0, Landroidx/viewpager2/adapter/d;->c:Landroidx/lifecycle/r;

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/viewpager2/adapter/e;->a:Landroidx/lifecycle/o;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 61
    .line 62
    .line 63
    throw p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 7

    .line 1
    check-cast p1, Landroidx/viewpager2/adapter/f;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getItemId()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 8
    .line 9
    check-cast v2, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0, v2}, Landroidx/viewpager2/adapter/e;->d(I)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, p0, Landroidx/viewpager2/adapter/e;->e:Ln/e;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    cmp-long v5, v5, v0

    .line 28
    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    invoke-virtual {p0, v5, v6}, Landroidx/viewpager2/adapter/e;->f(J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    invoke-virtual {v4, v5, v6}, Ln/e;->g(J)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v4, v2, v0, v1}, Ln/e;->f(Ljava/lang/Object;J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p2}, Landroidx/viewpager2/adapter/e;->getItemId(I)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iget-object v2, p0, Landroidx/viewpager2/adapter/e;->c:Ln/e;

    .line 57
    .line 58
    iget-boolean v3, v2, Ln/e;->a:Z

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    invoke-virtual {v2}, Ln/e;->c()V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v3, v2, Ln/e;->b:[J

    .line 66
    .line 67
    iget v4, v2, Ln/e;->d:I

    .line 68
    .line 69
    invoke-static {v0, v1, v3, v4}, Ln/d;->b(J[JI)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-ltz v3, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move-object v3, p0

    .line 77
    check-cast v3, Lm2/b;

    .line 78
    .line 79
    iget-object v3, v3, Lm2/b;->i:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    check-cast p2, Lm2/a;

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_8

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    if-eq p2, v3, :cond_7

    .line 95
    .line 96
    const/4 v3, 0x2

    .line 97
    if-eq p2, v3, :cond_6

    .line 98
    .line 99
    const/4 v3, 0x3

    .line 100
    if-eq p2, v3, :cond_5

    .line 101
    .line 102
    const/4 v3, 0x4

    .line 103
    if-eq p2, v3, :cond_4

    .line 104
    .line 105
    const/4 v3, 0x5

    .line 106
    if-eq p2, v3, :cond_3

    .line 107
    .line 108
    new-instance p2, Lcom/zalexdev/stryker/appintro/slides/Slide6Final;

    .line 109
    .line 110
    invoke-direct {p2}, Lcom/zalexdev/stryker/appintro/slides/Slide6Final;-><init>()V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    new-instance p2, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;

    .line 115
    .line 116
    invoke-direct {p2}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;-><init>()V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    new-instance p2, Lcom/zalexdev/stryker/appintro/slides/Slide3;

    .line 121
    .line 122
    invoke-direct {p2}, Lcom/zalexdev/stryker/appintro/slides/Slide3;-><init>()V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    new-instance p2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;

    .line 127
    .line 128
    invoke-direct {p2}, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;-><init>()V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_6
    new-instance p2, Lcom/zalexdev/stryker/appintro/slides/Slide2;

    .line 133
    .line 134
    invoke-direct {p2}, Lcom/zalexdev/stryker/appintro/slides/Slide2;-><init>()V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_7
    new-instance p2, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;

    .line 139
    .line 140
    invoke-direct {p2}, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;-><init>()V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_8
    new-instance p2, Lcom/zalexdev/stryker/appintro/slides/Slide1;

    .line 145
    .line 146
    invoke-direct {p2}, Lcom/zalexdev/stryker/appintro/slides/Slide1;-><init>()V

    .line 147
    .line 148
    .line 149
    :goto_0
    const/4 v3, 0x0

    .line 150
    iget-object v4, p0, Landroidx/viewpager2/adapter/e;->d:Ln/e;

    .line 151
    .line 152
    invoke-virtual {v4, v3, v0, v1}, Ln/e;->d(Ljava/lang/Long;J)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Landroidx/fragment/app/w;

    .line 157
    .line 158
    invoke-virtual {p2, v3}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/w;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, p2, v0, v1}, Ln/e;->f(Ljava/lang/Object;J)V

    .line 162
    .line 163
    .line 164
    :goto_1
    iget-object p2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 165
    .line 166
    check-cast p2, Landroid/widget/FrameLayout;

    .line 167
    .line 168
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 169
    .line 170
    invoke-static {p2}, Landroidx/core/view/n0;->b(Landroid/view/View;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_a

    .line 175
    .line 176
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    if-nez v0, :cond_9

    .line 181
    .line 182
    new-instance v0, Landroidx/viewpager2/adapter/a;

    .line 183
    .line 184
    invoke-direct {v0, p0, p2, p1}, Landroidx/viewpager2/adapter/a;-><init>(Landroidx/viewpager2/adapter/e;Landroid/widget/FrameLayout;Landroidx/viewpager2/adapter/f;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 192
    .line 193
    const-string p2, "Design assumption violated."

    .line 194
    .line 195
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p1

    .line 199
    :cond_a
    :goto_2
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/e;->c()V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 1

    .line 1
    sget p2, Landroidx/viewpager2/adapter/f;->a:I

    .line 2
    .line 3
    new-instance p2, Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 22
    .line 23
    invoke-static {}, Landroidx/core/view/l0;->a()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Landroidx/viewpager2/adapter/f;

    .line 35
    .line 36
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    return-object p1
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/adapter/e;->f:Landroidx/viewpager2/adapter/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/viewpager2/adapter/d;->a(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v1, v0, Landroidx/viewpager2/adapter/d;->a:Landroidx/viewpager2/adapter/b;

    .line 11
    .line 12
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/adapter/b;

    .line 13
    .line 14
    iget-object p1, p1, Landroidx/viewpager2/adapter/b;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, v0, Landroidx/viewpager2/adapter/d;->b:Landroidx/viewpager2/adapter/c;

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/viewpager2/adapter/d;->f:Landroidx/viewpager2/adapter/e;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/k0;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/m0;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, v0, Landroidx/viewpager2/adapter/d;->c:Landroidx/lifecycle/r;

    .line 29
    .line 30
    iget-object v1, v1, Landroidx/viewpager2/adapter/e;->a:Landroidx/lifecycle/o;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, v0, Landroidx/viewpager2/adapter/d;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 37
    .line 38
    iput-object p1, p0, Landroidx/viewpager2/adapter/e;->f:Landroidx/viewpager2/adapter/d;

    .line 39
    .line 40
    return-void
.end method

.method public final bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/p1;)Z
    .locals 0

    check-cast p1, Landroidx/viewpager2/adapter/f;

    const/4 p1, 0x1

    return p1
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/p1;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/viewpager2/adapter/f;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/e;->e(Landroidx/viewpager2/adapter/f;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/e;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/p1;)V
    .locals 3

    .line 1
    check-cast p1, Landroidx/viewpager2/adapter/f;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p1, Landroid/widget/FrameLayout;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/e;->d(I)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager2/adapter/e;->f(J)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/viewpager2/adapter/e;->e:Ln/e;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2}, Ln/e;->g(J)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final setHasStableIds(Z)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
