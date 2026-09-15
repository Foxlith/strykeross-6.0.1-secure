.class public final Landroidx/fragment/app/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/d;

.field public final b:Landroidx/fragment/app/c1;

.field public final c:Landroidx/fragment/app/Fragment;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/d;Landroidx/fragment/app/c1;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/b1;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/b1;->e:I

    iput-object p1, p0, Landroidx/fragment/app/b1;->a:Landroidx/fragment/app/d;

    iput-object p2, p0, Landroidx/fragment/app/b1;->b:Landroidx/fragment/app/c1;

    iput-object p3, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/d;Landroidx/fragment/app/c1;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/a1;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/b1;->d:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/fragment/app/b1;->e:I

    iput-object p1, p0, Landroidx/fragment/app/b1;->a:Landroidx/fragment/app/d;

    iput-object p2, p0, Landroidx/fragment/app/b1;->b:Landroidx/fragment/app/c1;

    iput-object p3, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    iput v0, p3, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mInLayout:Z

    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mAdded:Z

    iget-object p2, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object p1, p4, Landroidx/fragment/app/a1;->m:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    :goto_1
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_2

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :goto_2
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/d;Landroidx/fragment/app/c1;Ljava/lang/ClassLoader;Landroidx/fragment/app/o0;Landroidx/fragment/app/a1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/b1;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/b1;->e:I

    iput-object p1, p0, Landroidx/fragment/app/b1;->a:Landroidx/fragment/app/d;

    iput-object p2, p0, Landroidx/fragment/app/b1;->b:Landroidx/fragment/app/c1;

    .line 3
    iget-object p1, p4, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/u0;

    .line 4
    iget-object p1, p1, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 5
    iget-object p1, p1, Landroidx/fragment/app/i0;->b:Landroid/content/Context;

    const/4 p2, 0x0

    .line 6
    iget-object p4, p5, Landroidx/fragment/app/a1;->a:Ljava/lang/String;

    invoke-static {p1, p4, p2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 7
    iget-object p2, p5, Landroidx/fragment/app/a1;->j:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p2, p5, Landroidx/fragment/app/a1;->b:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean p2, p5, Landroidx/fragment/app/a1;->c:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRestored:Z

    iget p2, p5, Landroidx/fragment/app/a1;->d:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    iget p2, p5, Landroidx/fragment/app/a1;->e:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    iget-object p2, p5, Landroidx/fragment/app/a1;->f:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    iget-boolean p2, p5, Landroidx/fragment/app/a1;->g:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    iget-boolean p2, p5, Landroidx/fragment/app/a1;->h:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    iget-boolean p2, p5, Landroidx/fragment/app/a1;->i:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    iget-boolean p2, p5, Landroidx/fragment/app/a1;->k:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-static {}, Landroidx/lifecycle/n;->values()[Landroidx/lifecycle/n;

    move-result-object p2

    iget p3, p5, Landroidx/fragment/app/a1;->l:I

    aget-object p2, p2, p3

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/n;

    iget-object p2, p5, Landroidx/fragment/app/a1;->m:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    :goto_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :goto_1
    const-string p2, "FragmentManager"

    const/4 p3, 0x2

    .line 8
    invoke-static {p2, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b1;->b:Landroidx/fragment/app/c1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/c1;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    add-int/lit8 v5, v4, -0x1

    .line 21
    .line 22
    :goto_0
    if-ltz v5, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-ne v7, v2, :cond_1

    .line 33
    .line 34
    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 35
    .line 36
    if-eqz v6, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/lit8 v3, v0, 0x1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-ge v4, v5, :cond_4

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 61
    .line 62
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 63
    .line 64
    if-ne v6, v2, :cond_3

    .line 65
    .line 66
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 67
    .line 68
    if-eqz v5, :cond_3

    .line 69
    .line 70
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    goto :goto_1

    .line 76
    :cond_4
    :goto_2
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 77
    .line 78
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 79
    .line 80
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const-string v3, " that does not belong to this FragmentManager!"

    .line 19
    .line 20
    const-string v4, " declared target fragment "

    .line 21
    .line 22
    const-string v5, "Fragment "

    .line 23
    .line 24
    iget-object v6, p0, Landroidx/fragment/app/b1;->b:Landroidx/fragment/app/c1;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v6, v6, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/fragment/app/b1;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 41
    .line 42
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 47
    .line 48
    move-object v2, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_2
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    iget-object v2, v6, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    move-object v2, v0

    .line 90
    check-cast v2, Landroidx/fragment/app/b1;

    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 96
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v2, v1, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 119
    .line 120
    invoke-virtual {v2}, Landroidx/fragment/app/b1;->j()V

    .line 121
    .line 122
    .line 123
    :cond_5
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 124
    .line 125
    iget-object v2, v0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 126
    .line 127
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/i0;

    .line 128
    .line 129
    iget-object v0, v0, Landroidx/fragment/app/u0;->s:Landroidx/fragment/app/Fragment;

    .line 130
    .line 131
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 132
    .line 133
    iget-object v0, p0, Landroidx/fragment/app/b1;->a:Landroidx/fragment/app/d;

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    invoke-virtual {v0, v2}, Landroidx/fragment/app/d;->h(Z)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performAttach()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2}, Landroidx/fragment/app/d;->c(Z)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public final c()I
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget v1, p0, Landroidx/fragment/app/b1;->e:I

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/n;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x2

    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x5

    .line 23
    const/4 v8, -0x1

    .line 24
    const/4 v9, 0x4

    .line 25
    if-eq v2, v3, :cond_3

    .line 26
    .line 27
    if-eq v2, v4, :cond_2

    .line 28
    .line 29
    if-eq v2, v5, :cond_1

    .line 30
    .line 31
    if-eq v2, v9, :cond_4

    .line 32
    .line 33
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_4
    :goto_0
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 53
    .line 54
    if-eqz v2, :cond_7

    .line 55
    .line 56
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 57
    .line 58
    if-eqz v2, :cond_5

    .line 59
    .line 60
    iget v1, p0, Landroidx/fragment/app/b1;->e:I

    .line 61
    .line 62
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 67
    .line 68
    if-eqz v2, :cond_7

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-nez v2, :cond_7

    .line 75
    .line 76
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    goto :goto_1

    .line 81
    :cond_5
    iget v2, p0, Landroidx/fragment/app/b1;->e:I

    .line 82
    .line 83
    if-ge v2, v9, :cond_6

    .line 84
    .line 85
    iget v2, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 86
    .line 87
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    goto :goto_1

    .line 92
    :cond_6
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    :cond_7
    :goto_1
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 97
    .line 98
    if-nez v2, :cond_8

    .line 99
    .line 100
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    :cond_8
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 105
    .line 106
    if-eqz v2, :cond_d

    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/u0;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-static {v2, v10}, Landroidx/fragment/app/t1;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/u0;)Landroidx/fragment/app/t1;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v0}, Landroidx/fragment/app/t1;->d(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s1;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    if-eqz v10, :cond_9

    .line 124
    .line 125
    iget v6, v10, Landroidx/fragment/app/s1;->b:I

    .line 126
    .line 127
    :cond_9
    iget-object v2, v2, Landroidx/fragment/app/t1;->c:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-eqz v10, :cond_b

    .line 138
    .line 139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    check-cast v10, Landroidx/fragment/app/s1;

    .line 144
    .line 145
    iget-object v11, v10, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    .line 146
    .line 147
    invoke-virtual {v11, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-eqz v11, :cond_a

    .line 152
    .line 153
    iget-boolean v11, v10, Landroidx/fragment/app/s1;->f:Z

    .line 154
    .line 155
    if-nez v11, :cond_a

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_b
    const/4 v10, 0x0

    .line 159
    :goto_2
    if-eqz v10, :cond_d

    .line 160
    .line 161
    if-eqz v6, :cond_c

    .line 162
    .line 163
    if-ne v6, v3, :cond_d

    .line 164
    .line 165
    :cond_c
    iget v2, v10, Landroidx/fragment/app/s1;->b:I

    .line 166
    .line 167
    move v6, v2

    .line 168
    :cond_d
    if-ne v6, v4, :cond_e

    .line 169
    .line 170
    const/4 v2, 0x6

    .line 171
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    goto :goto_3

    .line 176
    :cond_e
    if-ne v6, v5, :cond_f

    .line 177
    .line 178
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    goto :goto_3

    .line 183
    :cond_f
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 184
    .line 185
    if-eqz v2, :cond_11

    .line 186
    .line 187
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_10

    .line 192
    .line 193
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    goto :goto_3

    .line 198
    :cond_10
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    :cond_11
    :goto_3
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 203
    .line 204
    if-eqz v2, :cond_12

    .line 205
    .line 206
    iget v2, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 207
    .line 208
    if-ge v2, v7, :cond_12

    .line 209
    .line 210
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    :cond_12
    const-string v2, "FragmentManager"

    .line 215
    .line 216
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_13

    .line 221
    .line 222
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    :cond_13
    return v1
.end method

.method public final d()V
    .locals 4

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/fragment/app/b1;->a:Landroidx/fragment/app/d;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v2}, Landroidx/fragment/app/d;->i(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroidx/fragment/app/d;->d(Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    iput v0, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x3

    .line 9
    const-string v2, "FragmentManager"

    .line 10
    .line 11
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget v3, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 32
    .line 33
    if-eqz v3, :cond_5

    .line 34
    .line 35
    const/4 v4, -0x1

    .line 36
    if-eq v3, v4, :cond_4

    .line 37
    .line 38
    iget-object v4, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 39
    .line 40
    iget-object v4, v4, Landroidx/fragment/app/u0;->r:Landroidx/fragment/app/g0;

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Landroidx/fragment/app/g0;->b(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroid/view/ViewGroup;

    .line 47
    .line 48
    if-nez v3, :cond_6

    .line 49
    .line 50
    iget-boolean v4, v0, Landroidx/fragment/app/Fragment;->mRestored:Z

    .line 51
    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget v2, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    const-string v1, "unknown"

    .line 67
    .line 68
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v4, "No view found for id 0x"

    .line 73
    .line 74
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget v4, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 78
    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v4, " ("

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ") for fragment "

    .line 95
    .line 96
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v2

    .line 110
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 111
    .line 112
    const-string v2, "Cannot create fragment "

    .line 113
    .line 114
    const-string v3, " for a container view with no id"

    .line 115
    .line 116
    invoke-static {v2, v0, v3}, Landroid/support/v4/media/session/a;->o(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v1

    .line 124
    :cond_5
    const/4 v3, 0x0

    .line 125
    :cond_6
    :goto_1
    iput-object v3, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 126
    .line 127
    iget-object v4, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 128
    .line 129
    invoke-virtual {v0, v1, v3, v4}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 133
    .line 134
    const/4 v4, 0x2

    .line 135
    if-eqz v1, :cond_b

    .line 136
    .line 137
    const/4 v5, 0x0

    .line 138
    invoke-virtual {v1, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 142
    .line 143
    const v6, 0x7f0a020b

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    if-eqz v3, :cond_7

    .line 150
    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/b1;->a()V

    .line 152
    .line 153
    .line 154
    :cond_7
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 155
    .line 156
    if-eqz v1, :cond_8

    .line 157
    .line 158
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 159
    .line 160
    const/16 v3, 0x8

    .line 161
    .line 162
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    :cond_8
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 166
    .line 167
    sget-object v3, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 168
    .line 169
    invoke-static {v1}, Landroidx/core/view/n0;->b(Landroid/view/View;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_9

    .line 174
    .line 175
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 176
    .line 177
    invoke-static {v1}, Landroidx/core/view/o0;->c(Landroid/view/View;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_9
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 182
    .line 183
    new-instance v3, Landroidx/fragment/app/j0;

    .line 184
    .line 185
    invoke-direct {v3, p0, v1}, Landroidx/fragment/app/j0;-><init>(Landroidx/fragment/app/b1;Landroid/view/View;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 189
    .line 190
    .line 191
    :goto_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performViewCreated()V

    .line 192
    .line 193
    .line 194
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 195
    .line 196
    iget-object v3, p0, Landroidx/fragment/app/b1;->a:Landroidx/fragment/app/d;

    .line 197
    .line 198
    invoke-virtual {v3, v0, v1, v5}, Landroidx/fragment/app/d;->n(Landroidx/fragment/app/Fragment;Landroid/view/View;Z)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 202
    .line 203
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 208
    .line 209
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->setPostOnViewCreatedAlpha(F)V

    .line 214
    .line 215
    .line 216
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 217
    .line 218
    if-eqz v3, :cond_b

    .line 219
    .line 220
    if-nez v1, :cond_b

    .line 221
    .line 222
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 223
    .line 224
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    if-eqz v1, :cond_a

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_a

    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    :cond_a
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 246
    .line 247
    const/4 v2, 0x0

    .line 248
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 249
    .line 250
    .line 251
    :cond_b
    iput v4, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 252
    .line 253
    return-void
.end method

.method public final f()V
    .locals 10

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    iget-object v3, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-boolean v2, v3, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x1

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    move v2, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v2, v4

    .line 30
    :goto_0
    iget-object v6, p0, Landroidx/fragment/app/b1;->b:Landroidx/fragment/app/c1;

    .line 31
    .line 32
    if-nez v2, :cond_5

    .line 33
    .line 34
    iget-object v7, v6, Landroidx/fragment/app/c1;->c:Landroidx/fragment/app/y0;

    .line 35
    .line 36
    iget-object v8, v7, Landroidx/fragment/app/y0;->d:Ljava/util/HashMap;

    .line 37
    .line 38
    iget-object v9, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-nez v8, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-boolean v8, v7, Landroidx/fragment/app/y0;->g:Z

    .line 48
    .line 49
    if-eqz v8, :cond_5

    .line 50
    .line 51
    iget-boolean v7, v7, Landroidx/fragment/app/y0;->h:Z

    .line 52
    .line 53
    if-eqz v7, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    iget-object v0, v3, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {v6, v0}, Landroidx/fragment/app/c1;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    iput-object v0, v3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 71
    .line 72
    :cond_4
    iput v4, v3, Landroidx/fragment/app/Fragment;->mState:I

    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_5
    :goto_1
    iget-object v7, v3, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/i0;

    .line 77
    .line 78
    instance-of v8, v7, Landroidx/lifecycle/y0;

    .line 79
    .line 80
    if-eqz v8, :cond_6

    .line 81
    .line 82
    iget-object v5, v6, Landroidx/fragment/app/c1;->c:Landroidx/fragment/app/y0;

    .line 83
    .line 84
    iget-boolean v5, v5, Landroidx/fragment/app/y0;->h:Z

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_6
    iget-object v7, v7, Landroidx/fragment/app/i0;->b:Landroid/content/Context;

    .line 88
    .line 89
    instance-of v8, v7, Landroid/app/Activity;

    .line 90
    .line 91
    if-eqz v8, :cond_7

    .line 92
    .line 93
    check-cast v7, Landroid/app/Activity;

    .line 94
    .line 95
    invoke-virtual {v7}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    xor-int/2addr v5, v7

    .line 100
    :cond_7
    :goto_2
    if-nez v2, :cond_8

    .line 101
    .line 102
    if-eqz v5, :cond_b

    .line 103
    .line 104
    :cond_8
    iget-object v2, v6, Landroidx/fragment/app/c1;->c:Landroidx/fragment/app/y0;

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_9

    .line 114
    .line 115
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    :cond_9
    iget-object v0, v2, Landroidx/fragment/app/y0;->e:Ljava/util/HashMap;

    .line 119
    .line 120
    iget-object v1, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Landroidx/fragment/app/y0;

    .line 127
    .line 128
    if-eqz v1, :cond_a

    .line 129
    .line 130
    invoke-virtual {v1}, Landroidx/fragment/app/y0;->b()V

    .line 131
    .line 132
    .line 133
    iget-object v1, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    :cond_a
    iget-object v0, v2, Landroidx/fragment/app/y0;->f:Ljava/util/HashMap;

    .line 139
    .line 140
    iget-object v1, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Landroidx/lifecycle/x0;

    .line 147
    .line 148
    if-eqz v1, :cond_b

    .line 149
    .line 150
    invoke-virtual {v1}, Landroidx/lifecycle/x0;->a()V

    .line 151
    .line 152
    .line 153
    iget-object v1, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    :cond_b
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->performDestroy()V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Landroidx/fragment/app/b1;->a:Landroidx/fragment/app/d;

    .line 162
    .line 163
    invoke-virtual {v0, v4}, Landroidx/fragment/app/d;->e(Z)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6}, Landroidx/fragment/app/c1;->d()Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    :cond_c
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_d

    .line 179
    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Landroidx/fragment/app/b1;

    .line 185
    .line 186
    if-eqz v1, :cond_c

    .line 187
    .line 188
    iget-object v2, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 189
    .line 190
    iget-object v1, v1, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 191
    .line 192
    iget-object v4, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_c

    .line 199
    .line 200
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 201
    .line 202
    const/4 v2, 0x0

    .line 203
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_d
    iget-object v0, v3, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 207
    .line 208
    if-eqz v0, :cond_e

    .line 209
    .line 210
    invoke-virtual {v6, v0}, Landroidx/fragment/app/c1;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iput-object v0, v3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 215
    .line 216
    :cond_e
    invoke-virtual {v6, p0}, Landroidx/fragment/app/c1;->h(Landroidx/fragment/app/b1;)V

    .line 217
    .line 218
    .line 219
    :goto_4
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroidx/fragment/app/b1;->a:Landroidx/fragment/app/d;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v2}, Landroidx/fragment/app/d;->o(Z)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 37
    .line 38
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 39
    .line 40
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    .line 41
    .line 42
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/b0;

    .line 43
    .line 44
    invoke-virtual {v3, v0}, Landroidx/lifecycle/b0;->e(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 48
    .line 49
    return-void
.end method

.method public final h()V
    .locals 6

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    iget-object v3, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->performDetach()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Landroidx/fragment/app/b1;->a:Landroidx/fragment/app/d;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v2, v4}, Landroidx/fragment/app/d;->f(Z)V

    .line 22
    .line 23
    .line 24
    const/4 v2, -0x1

    .line 25
    iput v2, v3, Landroidx/fragment/app/Fragment;->mState:I

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    iput-object v2, v3, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/i0;

    .line 29
    .line 30
    iput-object v2, v3, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    iput-object v2, v3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 33
    .line 34
    iget-boolean v2, v3, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v2, p0, Landroidx/fragment/app/b1;->b:Landroidx/fragment/app/c1;

    .line 46
    .line 47
    iget-object v2, v2, Landroidx/fragment/app/c1;->c:Landroidx/fragment/app/y0;

    .line 48
    .line 49
    iget-object v4, v2, Landroidx/fragment/app/y0;->d:Ljava/util/HashMap;

    .line 50
    .line 51
    iget-object v5, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-boolean v4, v2, Landroidx/fragment/app/y0;->g:Z

    .line 61
    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    iget-boolean v2, v2, Landroidx/fragment/app/y0;->h:Z

    .line 65
    .line 66
    if-eqz v2, :cond_5

    .line 67
    .line 68
    :cond_3
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->initState()V

    .line 78
    .line 79
    .line 80
    :cond_5
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    const-string v1, "FragmentManager"

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 48
    .line 49
    const v3, 0x7f0a020b

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 60
    .line 61
    const/16 v3, 0x8

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performViewCreated()V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 70
    .line 71
    iget-object v3, p0, Landroidx/fragment/app/b1;->a:Landroidx/fragment/app/d;

    .line 72
    .line 73
    invoke-virtual {v3, v0, v1, v2}, Landroidx/fragment/app/d;->n(Landroidx/fragment/app/Fragment;Landroid/view/View;Z)V

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x2

    .line 77
    iput v1, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method public final j()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/b1;->d:Z

    .line 2
    .line 3
    const-string v1, "FragmentManager"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object v3, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    :try_start_0
    iput-boolean v4, p0, Landroidx/fragment/app/b1;->d:Z

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/b1;->c()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    iget v6, v3, Landroidx/fragment/app/Fragment;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    const/4 v7, 0x3

    .line 31
    if-eq v5, v6, :cond_d

    .line 32
    .line 33
    iget-object v8, p0, Landroidx/fragment/app/b1;->a:Landroidx/fragment/app/d;

    .line 34
    .line 35
    if-le v5, v6, :cond_6

    .line 36
    .line 37
    add-int/lit8 v6, v6, 0x1

    .line 38
    .line 39
    packed-switch v6, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/b1;->l()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :pswitch_1
    const/4 v5, 0x6

    .line 51
    iput v5, v3, Landroidx/fragment/app/Fragment;->mState:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_2
    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->performStart()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8, v0}, Landroidx/fragment/app/d;->l(Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_3
    iget-object v5, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 71
    .line 72
    if-eqz v5, :cond_4

    .line 73
    .line 74
    iget-object v5, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 75
    .line 76
    if-eqz v5, :cond_4

    .line 77
    .line 78
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/u0;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-static {v5, v6}, Landroidx/fragment/app/t1;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/u0;)Landroidx/fragment/app/t1;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    iget-object v6, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    invoke-static {v6}, Landroid/support/v4/media/session/a;->b(I)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_3

    .line 104
    .line 105
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    :cond_3
    invoke-virtual {v5, v6, v2, p0}, Landroidx/fragment/app/t1;->a(IILandroidx/fragment/app/b1;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    const/4 v5, 0x4

    .line 112
    iput v5, v3, Landroidx/fragment/app/Fragment;->mState:I

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_4
    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_5

    .line 120
    .line 121
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    :cond_5
    iget-object v5, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 125
    .line 126
    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8, v0}, Landroidx/fragment/app/d;->b(Z)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/b1;->i()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/b1;->e()V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/b1;->d()V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/b1;->b()V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_6
    add-int/lit8 v6, v6, -0x1

    .line 149
    .line 150
    packed-switch v6, :pswitch_data_1

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :pswitch_8
    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-eqz v5, :cond_7

    .line 160
    .line 161
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    :cond_7
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->performPause()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8, v0}, Landroidx/fragment/app/d;->g(Z)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :pswitch_9
    const/4 v5, 0x5

    .line 173
    iput v5, v3, Landroidx/fragment/app/Fragment;->mState:I

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :pswitch_a
    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_8

    .line 182
    .line 183
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    :cond_8
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->performStop()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8, v0}, Landroidx/fragment/app/d;->m(Z)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :pswitch_b
    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-eqz v5, :cond_9

    .line 199
    .line 200
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    :cond_9
    iget-object v5, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 204
    .line 205
    if-eqz v5, :cond_a

    .line 206
    .line 207
    iget-object v5, v3, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 208
    .line 209
    if-nez v5, :cond_a

    .line 210
    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/b1;->n()V

    .line 212
    .line 213
    .line 214
    :cond_a
    iget-object v5, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 215
    .line 216
    if-eqz v5, :cond_c

    .line 217
    .line 218
    iget-object v5, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 219
    .line 220
    if-eqz v5, :cond_c

    .line 221
    .line 222
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/u0;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-static {v5, v6}, Landroidx/fragment/app/t1;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/u0;)Landroidx/fragment/app/t1;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    if-eqz v6, :cond_b

    .line 238
    .line 239
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    :cond_b
    invoke-virtual {v5, v4, v7, p0}, Landroidx/fragment/app/t1;->a(IILandroidx/fragment/app/b1;)V

    .line 243
    .line 244
    .line 245
    :cond_c
    iput v7, v3, Landroidx/fragment/app/Fragment;->mState:I

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :pswitch_c
    iput-boolean v0, v3, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 250
    .line 251
    iput v2, v3, Landroidx/fragment/app/Fragment;->mState:I

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/b1;->g()V

    .line 256
    .line 257
    .line 258
    iput v4, v3, Landroidx/fragment/app/Fragment;->mState:I

    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :pswitch_e
    invoke-virtual {p0}, Landroidx/fragment/app/b1;->f()V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/b1;->h()V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_d
    iget-boolean v5, v3, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 273
    .line 274
    if-eqz v5, :cond_13

    .line 275
    .line 276
    iget-object v5, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 277
    .line 278
    if-eqz v5, :cond_11

    .line 279
    .line 280
    iget-object v5, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 281
    .line 282
    if-eqz v5, :cond_11

    .line 283
    .line 284
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/u0;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-static {v5, v6}, Landroidx/fragment/app/t1;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/u0;)Landroidx/fragment/app/t1;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    iget-boolean v6, v3, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 293
    .line 294
    if-eqz v6, :cond_f

    .line 295
    .line 296
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-eqz v1, :cond_e

    .line 304
    .line 305
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    :cond_e
    invoke-virtual {v5, v7, v4, p0}, Landroidx/fragment/app/t1;->a(IILandroidx/fragment/app/b1;)V

    .line 309
    .line 310
    .line 311
    goto :goto_1

    .line 312
    :cond_f
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-eqz v1, :cond_10

    .line 320
    .line 321
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    :cond_10
    invoke-virtual {v5, v2, v4, p0}, Landroidx/fragment/app/t1;->a(IILandroidx/fragment/app/b1;)V

    .line 325
    .line 326
    .line 327
    :cond_11
    :goto_1
    iget-object v1, v3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 328
    .line 329
    if-eqz v1, :cond_12

    .line 330
    .line 331
    iget-boolean v2, v3, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 332
    .line 333
    if-eqz v2, :cond_12

    .line 334
    .line 335
    invoke-static {v3}, Landroidx/fragment/app/u0;->C(Landroidx/fragment/app/Fragment;)Z

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-eqz v2, :cond_12

    .line 340
    .line 341
    iput-boolean v4, v1, Landroidx/fragment/app/u0;->A:Z

    .line 342
    .line 343
    :cond_12
    iput-boolean v0, v3, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 344
    .line 345
    iget-boolean v1, v3, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 346
    .line 347
    invoke-virtual {v3, v1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    .line 349
    .line 350
    :cond_13
    iput-boolean v0, p0, Landroidx/fragment/app/b1;->d:Z

    .line 351
    .line 352
    return-void

    .line 353
    :goto_2
    iput-boolean v0, p0, Landroidx/fragment/app/b1;->d:Z

    .line 354
    .line 355
    throw v1

    .line 356
    nop

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final k(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, v0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_registry_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    :cond_1
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    const/4 p1, 0x0

    iput-object p1, v0, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    :goto_0
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez p1, :cond_3

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    :cond_3
    return-void
.end method

.method public final l()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "FragmentManager"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getFocusedView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 22
    .line 23
    if-ne v0, v3, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :goto_0
    if-eqz v3, :cond_3

    .line 31
    .line 32
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 33
    .line 34
    if-ne v3, v4, :cond_2

    .line 35
    .line 36
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    iget-object v0, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    :goto_2
    const/4 v0, 0x0

    .line 68
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->performResume()V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Landroidx/fragment/app/b1;->a:Landroidx/fragment/app/d;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-virtual {v1, v3}, Landroidx/fragment/app/d;->j(Z)V

    .line 78
    .line 79
    .line 80
    iput-object v0, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 81
    .line 82
    iput-object v0, v2, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 83
    .line 84
    iput-object v0, v2, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 85
    .line 86
    return-void
.end method

.method public final m()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroidx/fragment/app/b1;->a:Landroidx/fragment/app/d;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/fragment/app/d;->k(Z)V

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/b1;->n()V

    :cond_1
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_2
    const-string v2, "android:view_state"

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    if-eqz v2, :cond_5

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_4
    const-string v2, "android:view_registry_state"

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v2, :cond_7

    if-nez v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_6
    const-string v2, "android:user_visible_hint"

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    return-object v0
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-lez v2, :cond_1

    .line 23
    .line 24
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 25
    .line 26
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/fragment/app/o1;->c:Lb1/e;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Lb1/e;->c(Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 45
    .line 46
    :cond_2
    return-void
.end method
