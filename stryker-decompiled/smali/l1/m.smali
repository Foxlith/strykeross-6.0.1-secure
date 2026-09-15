.class public final Ll1/m;
.super Lf0/h;
.source "SourceFile"


# instance fields
.field public final b:Ll1/l;

.field public final c:Ll1/l;

.field public d:Ll1/f;

.field public final synthetic e:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ll1/m;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lf0/h;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ll1/l;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Ll1/l;-><init>(Ll1/m;I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Ll1/m;->b:Ll1/l;

    .line 13
    .line 14
    new-instance p1, Ll1/l;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p1, p0, v0}, Ll1/l;-><init>(Ll1/m;I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Ll1/m;->c:Ll1/l;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final c(Landroidx/recyclerview/widget/k0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll1/m;->i()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Ll1/m;->d:Ll1/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/k0;->registerAdapterDataObserver(Landroidx/recyclerview/widget/m0;)V

    :cond_0
    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/k0;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iget-object v0, p0, Ll1/m;->d:Ll1/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/k0;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/m0;)V

    :cond_0
    return-void
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-static {p1, v0}, Landroidx/core/view/k0;->s(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ll1/f;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-direct {p1, p0, v0}, Ll1/f;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Ll1/m;->d:Ll1/f;

    .line 14
    .line 15
    iget-object p1, p0, Ll1/m;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 16
    .line 17
    invoke-static {p1}, Landroidx/core/view/k0;->c(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-static {p1, v0}, Landroidx/core/view/k0;->s(Landroid/view/View;I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final f(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ll1/m;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    move v4, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    move v4, v1

    .line 36
    move v1, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v1, v3

    .line 39
    move v4, v1

    .line 40
    :goto_0
    invoke-static {v1, v4, v3, v3}, Landroidx/fragment/app/n;->d(IIIZ)Landroidx/fragment/app/n;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v1, v1, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_6

    .line 63
    .line 64
    iget-boolean v3, v0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    .line 65
    .line 66
    if-nez v3, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget v3, v0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 70
    .line 71
    if-lez v3, :cond_4

    .line 72
    .line 73
    const/16 v3, 0x2000

    .line 74
    .line 75
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 76
    .line 77
    .line 78
    :cond_4
    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 79
    .line 80
    sub-int/2addr v1, v2

    .line 81
    if-ge v0, v1, :cond_5

    .line 82
    .line 83
    const/16 v0, 0x1000

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 86
    .line 87
    .line 88
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 89
    .line 90
    .line 91
    :cond_6
    :goto_1
    return-void
.end method

.method public final g(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    const/16 p2, 0x2000

    .line 2
    .line 3
    if-eq p1, p2, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x1000

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    iget-object v1, p0, Ll1/m;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 18
    .line 19
    if-ne p1, p2, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    sub-int/2addr p1, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    add-int/2addr p1, v0

    .line 32
    :goto_1
    iget-boolean p2, v1, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    invoke-virtual {v1, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->b(IZ)V

    .line 37
    .line 38
    .line 39
    :cond_3
    return-void
.end method

.method public final h(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll1/m;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    const-string v0, "androidx.viewpager.widget.ViewPager"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final i()V
    .locals 12

    .line 1
    const v0, 0x1020048

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Ll1/m;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroidx/core/view/c1;->l(ILandroid/view/View;)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v2, v1}, Landroidx/core/view/c1;->i(ILandroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const v3, 0x1020049

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v1}, Landroidx/core/view/c1;->l(ILandroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v1}, Landroidx/core/view/c1;->i(ILandroid/view/View;)V

    .line 20
    .line 21
    .line 22
    const v4, 0x1020046

    .line 23
    .line 24
    .line 25
    invoke-static {v4, v1}, Landroidx/core/view/c1;->l(ILandroid/view/View;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v1}, Landroidx/core/view/c1;->i(ILandroid/view/View;)V

    .line 29
    .line 30
    .line 31
    const v5, 0x1020047

    .line 32
    .line 33
    .line 34
    invoke-static {v5, v1}, Landroidx/core/view/c1;->l(ILandroid/view/View;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v1}, Landroidx/core/view/c1;->i(ILandroid/view/View;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    if-nez v6, :cond_0

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v6}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_1

    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    iget-boolean v7, v1, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    .line 59
    .line 60
    if-nez v7, :cond_2

    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    const/4 v8, 0x1

    .line 68
    iget-object v9, p0, Ll1/m;->c:Ll1/l;

    .line 69
    .line 70
    iget-object v10, p0, Ll1/m;->b:Ll1/l;

    .line 71
    .line 72
    const/4 v11, 0x0

    .line 73
    if-nez v7, :cond_7

    .line 74
    .line 75
    iget-object v4, v1, Landroidx/viewpager2/widget/ViewPager2;->g:Ll1/j;

    .line 76
    .line 77
    invoke-virtual {v4}, Landroidx/recyclerview/widget/w0;->getLayoutDirection()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-ne v4, v8, :cond_3

    .line 82
    .line 83
    move v2, v8

    .line 84
    :cond_3
    if-eqz v2, :cond_4

    .line 85
    .line 86
    move v4, v0

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    move v4, v3

    .line 89
    :goto_0
    if-eqz v2, :cond_5

    .line 90
    .line 91
    move v0, v3

    .line 92
    :cond_5
    iget v2, v1, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 93
    .line 94
    sub-int/2addr v6, v8

    .line 95
    if-ge v2, v6, :cond_6

    .line 96
    .line 97
    new-instance v2, Lh0/g;

    .line 98
    .line 99
    invoke-direct {v2, v4, v11}, Lh0/g;-><init>(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v1, v2, v11, v10}, Landroidx/core/view/c1;->m(Landroid/view/View;Lh0/g;Ljava/lang/String;Lh0/w;)V

    .line 103
    .line 104
    .line 105
    :cond_6
    iget v2, v1, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 106
    .line 107
    if-lez v2, :cond_9

    .line 108
    .line 109
    new-instance v2, Lh0/g;

    .line 110
    .line 111
    invoke-direct {v2, v0, v11}, Lh0/g;-><init>(ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v2, v11, v9}, Landroidx/core/view/c1;->m(Landroid/view/View;Lh0/g;Ljava/lang/String;Lh0/w;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_7
    iget v0, v1, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 119
    .line 120
    sub-int/2addr v6, v8

    .line 121
    if-ge v0, v6, :cond_8

    .line 122
    .line 123
    new-instance v0, Lh0/g;

    .line 124
    .line 125
    invoke-direct {v0, v5, v11}, Lh0/g;-><init>(ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v0, v11, v10}, Landroidx/core/view/c1;->m(Landroid/view/View;Lh0/g;Ljava/lang/String;Lh0/w;)V

    .line 129
    .line 130
    .line 131
    :cond_8
    iget v0, v1, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 132
    .line 133
    if-lez v0, :cond_9

    .line 134
    .line 135
    new-instance v0, Lh0/g;

    .line 136
    .line 137
    invoke-direct {v0, v4, v11}, Lh0/g;-><init>(ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v0, v11, v9}, Landroidx/core/view/c1;->m(Landroid/view/View;Lh0/g;Ljava/lang/String;Lh0/w;)V

    .line 141
    .line 142
    .line 143
    :cond_9
    :goto_1
    return-void
.end method
