.class public final Landroidx/viewpager2/adapter/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/viewpager2/adapter/b;

.field public b:Landroidx/viewpager2/adapter/c;

.field public c:Landroidx/lifecycle/r;

.field public d:Landroidx/viewpager2/widget/ViewPager2;

.field public e:J

.field public final synthetic f:Landroidx/viewpager2/adapter/e;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/adapter/d;->f:Landroidx/viewpager2/adapter/e;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/viewpager2/adapter/d;->e:J

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected ViewPager2 instance. Got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/adapter/d;->f:Landroidx/viewpager2/adapter/e;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/viewpager2/adapter/e;->b:Landroidx/fragment/app/u0;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/u0;->E()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/adapter/d;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v1, v0, Landroidx/viewpager2/adapter/e;->c:Ln/e;

    .line 22
    .line 23
    invoke-virtual {v1}, Ln/e;->h()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move-object v2, v0

    .line 31
    check-cast v2, Lm2/b;

    .line 32
    .line 33
    iget-object v2, v2, Lm2/b;->i:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_3

    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :cond_3
    iget-object v3, p0, Landroidx/viewpager2/adapter/d;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 43
    .line 44
    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-lt v3, v2, :cond_4

    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    invoke-virtual {v0, v3}, Landroidx/viewpager2/adapter/e;->getItemId(I)J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    iget-wide v4, p0, Landroidx/viewpager2/adapter/d;->e:J

    .line 60
    .line 61
    cmp-long v4, v2, v4

    .line 62
    .line 63
    if-nez v4, :cond_5

    .line 64
    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    return-void

    .line 68
    :cond_5
    const/4 p1, 0x0

    .line 69
    invoke-virtual {v1, p1, v2, v3}, Ln/e;->d(Ljava/lang/Long;J)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 74
    .line 75
    if-eqz v4, :cond_d

    .line 76
    .line 77
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_6

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_6
    iput-wide v2, p0, Landroidx/viewpager2/adapter/d;->e:J

    .line 85
    .line 86
    iget-object v0, v0, Landroidx/viewpager2/adapter/e;->b:Landroidx/fragment/app/u0;

    .line 87
    .line 88
    invoke-static {v0, v0}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/4 v2, 0x0

    .line 93
    move v3, v2

    .line 94
    :goto_1
    invoke-virtual {v1}, Ln/e;->h()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-ge v3, v4, :cond_a

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ln/e;->e(I)J

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    invoke-virtual {v1, v3}, Ln/e;->i(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 109
    .line 110
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-nez v7, :cond_7

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_7
    iget-wide v7, p0, Landroidx/viewpager2/adapter/d;->e:J

    .line 118
    .line 119
    cmp-long v7, v4, v7

    .line 120
    .line 121
    if-eqz v7, :cond_8

    .line 122
    .line 123
    sget-object v7, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    .line 124
    .line 125
    invoke-virtual {v0, v6, v7}, Landroidx/fragment/app/a;->m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)Landroidx/fragment/app/a;

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_8
    move-object p1, v6

    .line 130
    :goto_2
    iget-wide v7, p0, Landroidx/viewpager2/adapter/d;->e:J

    .line 131
    .line 132
    cmp-long v4, v4, v7

    .line 133
    .line 134
    if-nez v4, :cond_9

    .line 135
    .line 136
    const/4 v4, 0x1

    .line 137
    goto :goto_3

    .line 138
    :cond_9
    move v4, v2

    .line 139
    :goto_3
    invoke-virtual {v6, v4}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 140
    .line 141
    .line 142
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_a
    if-eqz p1, :cond_b

    .line 146
    .line 147
    sget-object v1, Landroidx/lifecycle/n;->e:Landroidx/lifecycle/n;

    .line 148
    .line 149
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/a;->m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)Landroidx/fragment/app/a;

    .line 150
    .line 151
    .line 152
    :cond_b
    iget-object p1, v0, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-nez p1, :cond_d

    .line 159
    .line 160
    iget-boolean p1, v0, Landroidx/fragment/app/e1;->g:Z

    .line 161
    .line 162
    if-nez p1, :cond_c

    .line 163
    .line 164
    iput-boolean v2, v0, Landroidx/fragment/app/e1;->h:Z

    .line 165
    .line 166
    iget-object p1, v0, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/u0;

    .line 167
    .line 168
    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/u0;->t(Landroidx/fragment/app/r0;Z)V

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 173
    .line 174
    const-string v0, "This transaction is already being added to the back stack"

    .line 175
    .line 176
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p1

    .line 180
    :cond_d
    :goto_5
    return-void
.end method
