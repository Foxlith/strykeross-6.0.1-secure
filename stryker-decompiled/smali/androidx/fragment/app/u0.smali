.class public abstract Landroidx/fragment/app/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Ljava/util/ArrayList;

.field public G:Ljava/util/ArrayList;

.field public H:Ljava/util/ArrayList;

.field public I:Landroidx/fragment/app/y0;

.field public final J:Landroidx/fragment/app/b0;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Landroidx/fragment/app/c1;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Landroidx/fragment/app/k0;

.field public g:Landroidx/activity/p;

.field public final h:Landroidx/fragment/app/n0;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;

.field public k:Ljava/util/ArrayList;

.field public final l:Ljava/util/Map;

.field public final m:Landroidx/fragment/app/m0;

.field public final n:Landroidx/fragment/app/d;

.field public final o:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public p:I

.field public q:Landroidx/fragment/app/i0;

.field public r:Landroidx/fragment/app/g0;

.field public s:Landroidx/fragment/app/Fragment;

.field public t:Landroidx/fragment/app/Fragment;

.field public final u:Landroidx/fragment/app/o0;

.field public final v:Landroidx/fragment/app/m0;

.field public w:Landroidx/activity/result/d;

.field public x:Landroidx/activity/result/d;

.field public y:Landroidx/activity/result/d;

.field public z:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/u0;->a:Ljava/util/ArrayList;

    new-instance v0, Landroidx/fragment/app/c1;

    invoke-direct {v0}, Landroidx/fragment/app/c1;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    new-instance v0, Landroidx/fragment/app/k0;

    invoke-direct {v0, p0}, Landroidx/fragment/app/k0;-><init>(Landroidx/fragment/app/u0;)V

    iput-object v0, p0, Landroidx/fragment/app/u0;->f:Landroidx/fragment/app/k0;

    new-instance v0, Landroidx/fragment/app/n0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroidx/fragment/app/n0;-><init>(Ljava/lang/Object;ZI)V

    iput-object v0, p0, Landroidx/fragment/app/u0;->h:Landroidx/fragment/app/n0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/u0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/u0;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/u0;->l:Ljava/util/Map;

    new-instance v0, Landroidx/fragment/app/m0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/m0;-><init>(Landroidx/fragment/app/u0;I)V

    iput-object v0, p0, Landroidx/fragment/app/u0;->m:Landroidx/fragment/app/m0;

    new-instance v0, Landroidx/fragment/app/d;

    invoke-direct {v0, p0}, Landroidx/fragment/app/d;-><init>(Landroidx/fragment/app/u0;)V

    iput-object v0, p0, Landroidx/fragment/app/u0;->n:Landroidx/fragment/app/d;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/u0;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/u0;->p:I

    new-instance v0, Landroidx/fragment/app/o0;

    invoke-direct {v0, p0}, Landroidx/fragment/app/o0;-><init>(Landroidx/fragment/app/u0;)V

    iput-object v0, p0, Landroidx/fragment/app/u0;->u:Landroidx/fragment/app/o0;

    new-instance v0, Landroidx/fragment/app/m0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/m0;-><init>(Landroidx/fragment/app/u0;I)V

    iput-object v0, p0, Landroidx/fragment/app/u0;->v:Landroidx/fragment/app/m0;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/u0;->z:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/fragment/app/b0;

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/fragment/app/u0;->J:Landroidx/fragment/app/b0;

    return-void
.end method

.method public static C(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/u0;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/c1;->e()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v0, 0x0

    .line 22
    move v1, v0

    .line 23
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-static {v2}, Landroidx/fragment/app/u0;->C(Landroidx/fragment/app/Fragment;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :cond_2
    if-eqz v1, :cond_1

    .line 42
    .line 43
    :cond_3
    const/4 v0, 0x1

    .line 44
    :cond_4
    return v0
.end method

.method public static D(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/fragment/app/u0;->t:Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    iget-object p0, v1, Landroidx/fragment/app/u0;->s:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/fragment/app/u0;->D(Landroidx/fragment/app/Fragment;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
.end method


# virtual methods
.method public final A()Landroidx/fragment/app/m0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u0;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    invoke-virtual {v0}, Landroidx/fragment/app/u0;->A()Landroidx/fragment/app/m0;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u0;->v:Landroidx/fragment/app/m0;

    return-object v0
.end method

.method public final B(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 19
    .line 20
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 21
    .line 22
    xor-int/2addr v0, v1

    .line 23
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/fragment/app/u0;->V(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/u0;->B:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/u0;->C:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final F(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string p2, "No activity"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 18
    .line 19
    iget p2, p0, Landroidx/fragment/app/u0;->p:I

    .line 20
    .line 21
    if-ne p1, p2, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iput p1, p0, Landroidx/fragment/app/u0;->p:I

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 27
    .line 28
    iget-object p2, p1, Landroidx/fragment/app/c1;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v1, p1, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 47
    .line 48
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroidx/fragment/app/b1;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/fragment/app/b1;->j()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroidx/fragment/app/b1;

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/fragment/app/b1;->j()V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 88
    .line 89
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 90
    .line 91
    if-eqz v2, :cond_5

    .line 92
    .line 93
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroidx/fragment/app/c1;->h(Landroidx/fragment/app/b1;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->W()V

    .line 104
    .line 105
    .line 106
    iget-boolean p1, p0, Landroidx/fragment/app/u0;->A:Z

    .line 107
    .line 108
    if-eqz p1, :cond_7

    .line 109
    .line 110
    iget-object p1, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 111
    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    iget p2, p0, Landroidx/fragment/app/u0;->p:I

    .line 115
    .line 116
    const/4 v0, 0x7

    .line 117
    if-ne p2, v0, :cond_7

    .line 118
    .line 119
    check-cast p1, Landroidx/fragment/app/z;

    .line 120
    .line 121
    iget-object p1, p1, Landroidx/fragment/app/z;->e:Landroidx/fragment/app/a0;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroidx/fragment/app/a0;->supportInvalidateOptionsMenu()V

    .line 124
    .line 125
    .line 126
    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Landroidx/fragment/app/u0;->A:Z

    .line 128
    .line 129
    :cond_7
    return-void
.end method

.method public final G(Landroidx/fragment/app/Fragment;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 8
    .line 9
    iget-object v3, v2, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/fragment/app/b1;

    .line 16
    .line 17
    iget-object v3, v0, Landroidx/fragment/app/u0;->n:Landroidx/fragment/app/d;

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Landroidx/fragment/app/b1;

    .line 23
    .line 24
    invoke-direct {v1, v3, v2, v7}, Landroidx/fragment/app/b1;-><init>(Landroidx/fragment/app/d;Landroidx/fragment/app/c1;Landroidx/fragment/app/Fragment;)V

    .line 25
    .line 26
    .line 27
    iput v8, v1, Landroidx/fragment/app/b1;->e:I

    .line 28
    .line 29
    :cond_0
    move-object v9, v1

    .line 30
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 31
    .line 32
    const/4 v10, 0x2

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    .line 40
    .line 41
    if-ne v1, v10, :cond_1

    .line 42
    .line 43
    move/from16 v1, p2

    .line 44
    .line 45
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move/from16 v1, p2

    .line 51
    .line 52
    :goto_0
    invoke-virtual {v9}, Landroidx/fragment/app/b1;->c()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    .line 61
    .line 62
    iget-object v12, v0, Landroidx/fragment/app/u0;->l:Ljava/util/Map;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    const-string v13, "FragmentManager"

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    iget-object v5, v9, Landroidx/fragment/app/b1;->a:Landroidx/fragment/app/d;

    .line 69
    .line 70
    iget-object v6, v9, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 71
    .line 72
    const/4 v14, 0x4

    .line 73
    const/4 v15, -0x1

    .line 74
    if-gt v1, v11, :cond_e

    .line 75
    .line 76
    if-ge v1, v11, :cond_3

    .line 77
    .line 78
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_3

    .line 83
    .line 84
    iget-object v1, v0, Landroidx/fragment/app/u0;->l:Ljava/util/Map;

    .line 85
    .line 86
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    check-cast v12, Ljava/util/HashSet;

    .line 91
    .line 92
    if-eqz v12, :cond_3

    .line 93
    .line 94
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v16

    .line 98
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v17

    .line 102
    if-eqz v17, :cond_2

    .line 103
    .line 104
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v17

    .line 108
    check-cast v17, Ld0/d;

    .line 109
    .line 110
    invoke-virtual/range {v17 .. v17}, Ld0/d;->a()V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    invoke-virtual {v12}, Ljava/util/HashSet;->clear()V

    .line 115
    .line 116
    .line 117
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v4}, Landroidx/fragment/app/d;->o(Z)V

    .line 121
    .line 122
    .line 123
    iput-object v2, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 124
    .line 125
    iput-object v2, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 126
    .line 127
    iput-object v2, v7, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    .line 128
    .line 129
    iget-object v3, v7, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/b0;

    .line 130
    .line 131
    invoke-virtual {v3, v2}, Landroidx/lifecycle/b0;->e(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iput-boolean v4, v7, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 135
    .line 136
    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_3
    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    .line 140
    .line 141
    if-eq v1, v15, :cond_5

    .line 142
    .line 143
    if-eqz v1, :cond_6

    .line 144
    .line 145
    if-eq v1, v8, :cond_7

    .line 146
    .line 147
    if-eq v1, v10, :cond_9

    .line 148
    .line 149
    if-eq v1, v14, :cond_b

    .line 150
    .line 151
    const/4 v2, 0x5

    .line 152
    if-eq v1, v2, :cond_4

    .line 153
    .line 154
    goto/16 :goto_7

    .line 155
    .line 156
    :cond_4
    move v3, v2

    .line 157
    goto :goto_2

    .line 158
    :cond_5
    if-le v11, v15, :cond_6

    .line 159
    .line 160
    invoke-virtual {v9}, Landroidx/fragment/app/b1;->b()V

    .line 161
    .line 162
    .line 163
    :cond_6
    if-lez v11, :cond_7

    .line 164
    .line 165
    invoke-virtual {v9}, Landroidx/fragment/app/b1;->d()V

    .line 166
    .line 167
    .line 168
    :cond_7
    if-le v11, v15, :cond_8

    .line 169
    .line 170
    invoke-virtual {v9}, Landroidx/fragment/app/b1;->i()V

    .line 171
    .line 172
    .line 173
    :cond_8
    if-le v11, v8, :cond_9

    .line 174
    .line 175
    invoke-virtual {v9}, Landroidx/fragment/app/b1;->e()V

    .line 176
    .line 177
    .line 178
    :cond_9
    if-le v11, v10, :cond_b

    .line 179
    .line 180
    const/4 v1, 0x3

    .line 181
    invoke-static {v13, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_a

    .line 186
    .line 187
    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    :cond_a
    iget-object v1, v6, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 191
    .line 192
    invoke-virtual {v6, v1}, Landroidx/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v4}, Landroidx/fragment/app/d;->b(Z)V

    .line 196
    .line 197
    .line 198
    :cond_b
    if-le v11, v14, :cond_d

    .line 199
    .line 200
    const/4 v1, 0x3

    .line 201
    invoke-static {v13, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_c

    .line 206
    .line 207
    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    :cond_c
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->performStart()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5, v4}, Landroidx/fragment/app/d;->l(Z)V

    .line 214
    .line 215
    .line 216
    :cond_d
    const/4 v3, 0x5

    .line 217
    :goto_2
    if-le v11, v3, :cond_21

    .line 218
    .line 219
    invoke-virtual {v9}, Landroidx/fragment/app/b1;->l()V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_7

    .line 223
    .line 224
    :cond_e
    const/4 v3, 0x5

    .line 225
    if-le v1, v11, :cond_21

    .line 226
    .line 227
    if-eqz v1, :cond_1f

    .line 228
    .line 229
    if-eq v1, v8, :cond_1d

    .line 230
    .line 231
    if-eq v1, v10, :cond_16

    .line 232
    .line 233
    if-eq v1, v14, :cond_14

    .line 234
    .line 235
    if-eq v1, v3, :cond_12

    .line 236
    .line 237
    const/4 v3, 0x7

    .line 238
    if-eq v1, v3, :cond_f

    .line 239
    .line 240
    goto/16 :goto_7

    .line 241
    .line 242
    :cond_f
    if-ge v11, v3, :cond_11

    .line 243
    .line 244
    const/4 v1, 0x3

    .line 245
    invoke-static {v13, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_10

    .line 250
    .line 251
    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    :cond_10
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->performPause()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5, v4}, Landroidx/fragment/app/d;->g(Z)V

    .line 258
    .line 259
    .line 260
    :cond_11
    const/4 v1, 0x5

    .line 261
    goto :goto_3

    .line 262
    :cond_12
    move v1, v3

    .line 263
    :goto_3
    if-ge v11, v1, :cond_14

    .line 264
    .line 265
    const/4 v1, 0x3

    .line 266
    invoke-static {v13, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_13

    .line 271
    .line 272
    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    :cond_13
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->performStop()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5, v4}, Landroidx/fragment/app/d;->m(Z)V

    .line 279
    .line 280
    .line 281
    :cond_14
    if-ge v11, v14, :cond_16

    .line 282
    .line 283
    const/4 v1, 0x3

    .line 284
    invoke-static {v13, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-eqz v3, :cond_15

    .line 289
    .line 290
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    :cond_15
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 294
    .line 295
    if-eqz v1, :cond_16

    .line 296
    .line 297
    iget-object v1, v0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 298
    .line 299
    check-cast v1, Landroidx/fragment/app/z;

    .line 300
    .line 301
    iget-object v1, v1, Landroidx/fragment/app/z;->e:Landroidx/fragment/app/a0;

    .line 302
    .line 303
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    xor-int/2addr v1, v8

    .line 308
    if-eqz v1, :cond_16

    .line 309
    .line 310
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 311
    .line 312
    if-nez v1, :cond_16

    .line 313
    .line 314
    invoke-virtual {v9}, Landroidx/fragment/app/b1;->n()V

    .line 315
    .line 316
    .line 317
    :cond_16
    if-ge v11, v10, :cond_1d

    .line 318
    .line 319
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 320
    .line 321
    if-eqz v1, :cond_1b

    .line 322
    .line 323
    iget-object v3, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 324
    .line 325
    if-eqz v3, :cond_1b

    .line 326
    .line 327
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 328
    .line 329
    .line 330
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 331
    .line 332
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 333
    .line 334
    .line 335
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->isRemovingParent()Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-nez v1, :cond_1b

    .line 340
    .line 341
    iget v1, v0, Landroidx/fragment/app/u0;->p:I

    .line 342
    .line 343
    const/4 v3, 0x0

    .line 344
    if-le v1, v15, :cond_17

    .line 345
    .line 346
    iget-boolean v1, v0, Landroidx/fragment/app/u0;->D:Z

    .line 347
    .line 348
    if-nez v1, :cond_17

    .line 349
    .line 350
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 351
    .line 352
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-nez v1, :cond_17

    .line 357
    .line 358
    iget v1, v7, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 359
    .line 360
    cmpl-float v1, v1, v3

    .line 361
    .line 362
    if-ltz v1, :cond_17

    .line 363
    .line 364
    iget-object v1, v0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 365
    .line 366
    iget-object v1, v1, Landroidx/fragment/app/i0;->b:Landroid/content/Context;

    .line 367
    .line 368
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    invoke-static {v1, v7, v4, v2}, Landroidx/fragment/app/f0;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/d0;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    :cond_17
    iput v3, v7, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 377
    .line 378
    iget-object v14, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 379
    .line 380
    iget-object v15, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 381
    .line 382
    if-eqz v2, :cond_19

    .line 383
    .line 384
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 385
    .line 386
    .line 387
    new-instance v6, Ld0/d;

    .line 388
    .line 389
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 390
    .line 391
    .line 392
    new-instance v1, Landroidx/fragment/app/r;

    .line 393
    .line 394
    invoke-direct {v1, v7}, Landroidx/fragment/app/r;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v6, v1}, Ld0/d;->b(Ld0/c;)V

    .line 398
    .line 399
    .line 400
    iget-object v5, v0, Landroidx/fragment/app/u0;->m:Landroidx/fragment/app/m0;

    .line 401
    .line 402
    invoke-virtual {v5, v7, v6}, Landroidx/fragment/app/m0;->d(Landroidx/fragment/app/Fragment;Ld0/d;)V

    .line 403
    .line 404
    .line 405
    iget-object v1, v2, Landroidx/fragment/app/d0;->a:Landroid/view/animation/Animation;

    .line 406
    .line 407
    if-eqz v1, :cond_18

    .line 408
    .line 409
    new-instance v2, Landroidx/fragment/app/e0;

    .line 410
    .line 411
    invoke-direct {v2, v1, v14, v15}, Landroidx/fragment/app/e0;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 412
    .line 413
    .line 414
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 415
    .line 416
    invoke-virtual {v7, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 417
    .line 418
    .line 419
    new-instance v1, Landroidx/fragment/app/e;

    .line 420
    .line 421
    invoke-direct {v1, v14, v7, v5, v6}, Landroidx/fragment/app/e;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/m0;Ld0/d;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 425
    .line 426
    .line 427
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 428
    .line 429
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 430
    .line 431
    .line 432
    goto :goto_4

    .line 433
    :cond_18
    iget-object v4, v2, Landroidx/fragment/app/d0;->b:Landroid/animation/Animator;

    .line 434
    .line 435
    invoke-virtual {v7, v4}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 436
    .line 437
    .line 438
    new-instance v3, Landroidx/fragment/app/c0;

    .line 439
    .line 440
    move-object v1, v3

    .line 441
    move-object v2, v14

    .line 442
    move-object v8, v3

    .line 443
    move-object v3, v15

    .line 444
    move-object v10, v4

    .line 445
    move-object/from16 v4, p1

    .line 446
    .line 447
    invoke-direct/range {v1 .. v6}, Landroidx/fragment/app/c0;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/m0;Ld0/d;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v10, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 451
    .line 452
    .line 453
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 454
    .line 455
    invoke-virtual {v10, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v10}, Landroid/animation/Animator;->start()V

    .line 459
    .line 460
    .line 461
    :cond_19
    :goto_4
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 462
    .line 463
    .line 464
    const/4 v1, 0x2

    .line 465
    invoke-static {v13, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    if-eqz v1, :cond_1a

    .line 470
    .line 471
    invoke-static {v15}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    :cond_1a
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 481
    .line 482
    if-eq v14, v1, :cond_1b

    .line 483
    .line 484
    return-void

    .line 485
    :cond_1b
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    if-nez v1, :cond_1c

    .line 490
    .line 491
    invoke-virtual {v9}, Landroidx/fragment/app/b1;->g()V

    .line 492
    .line 493
    .line 494
    :cond_1c
    const/4 v1, 0x1

    .line 495
    goto :goto_5

    .line 496
    :cond_1d
    move v1, v8

    .line 497
    :goto_5
    if-ge v11, v1, :cond_1f

    .line 498
    .line 499
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    if-eqz v2, :cond_1e

    .line 504
    .line 505
    move v8, v1

    .line 506
    goto :goto_6

    .line 507
    :cond_1e
    invoke-virtual {v9}, Landroidx/fragment/app/b1;->f()V

    .line 508
    .line 509
    .line 510
    :cond_1f
    move v8, v11

    .line 511
    :goto_6
    if-gez v8, :cond_20

    .line 512
    .line 513
    invoke-virtual {v9}, Landroidx/fragment/app/b1;->h()V

    .line 514
    .line 515
    .line 516
    :cond_20
    move v11, v8

    .line 517
    :cond_21
    :goto_7
    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    .line 518
    .line 519
    if-eq v1, v11, :cond_23

    .line 520
    .line 521
    const/4 v1, 0x3

    .line 522
    invoke-static {v13, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    if-eqz v1, :cond_22

    .line 527
    .line 528
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    :cond_22
    iput v11, v7, Landroidx/fragment/app/Fragment;->mState:I

    .line 532
    .line 533
    :cond_23
    return-void
.end method

.method public final H()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/u0;->B:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/fragment/app/u0;->C:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/fragment/app/u0;->I:Landroidx/fragment/app/y0;

    .line 12
    .line 13
    iput-boolean v0, v1, Landroidx/fragment/app/y0;->i:Z

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/c1;->f()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-void
.end method

.method public final I()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/fragment/app/s0;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/fragment/app/s0;-><init>(Landroidx/fragment/app/u0;II)V

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/u0;->q(Landroidx/fragment/app/r0;Z)V

    return-void
.end method

.method public final J()Z
    .locals 8

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v4, -0x1

    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    invoke-virtual {p0, v6}, Landroidx/fragment/app/u0;->s(Z)Z

    .line 6
    .line 7
    .line 8
    const/4 v7, 0x1

    .line 9
    invoke-virtual {p0, v7}, Landroidx/fragment/app/u0;->r(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/fragment/app/u0;->t:Landroidx/fragment/app/Fragment;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/u0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/u0;->J()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/u0;->F:Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/fragment/app/u0;->G:Ljava/util/ArrayList;

    .line 30
    .line 31
    move-object v0, p0

    .line 32
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/u0;->K(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iput-boolean v7, p0, Landroidx/fragment/app/u0;->b:Z

    .line 39
    .line 40
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/u0;->F:Ljava/util/ArrayList;

    .line 41
    .line 42
    iget-object v2, p0, Landroidx/fragment/app/u0;->G:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/u0;->N(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->d()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->d()V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->Y()V

    .line 57
    .line 58
    .line 59
    iget-boolean v1, p0, Landroidx/fragment/app/u0;->E:Z

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iput-boolean v6, p0, Landroidx/fragment/app/u0;->E:Z

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->W()V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 69
    .line 70
    iget-object v1, v1, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v1, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    move v7, v0

    .line 85
    :goto_1
    return v7
.end method

.method public final K(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, 0x1

    .line 8
    if-nez p3, :cond_2

    .line 9
    .line 10
    if-gez p4, :cond_2

    .line 11
    .line 12
    and-int/lit8 v3, p5, 0x1

    .line 13
    .line 14
    if-nez v3, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    sub-int/2addr p3, v2

    .line 21
    if-gez p3, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget-object p4, p0, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_2
    if-nez p3, :cond_4

    .line 41
    .line 42
    if-ltz p4, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/4 p3, -0x1

    .line 46
    goto :goto_4

    .line 47
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sub-int/2addr v0, v2

    .line 52
    :goto_1
    if-ltz v0, :cond_7

    .line 53
    .line 54
    iget-object v3, p0, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Landroidx/fragment/app/a;

    .line 61
    .line 62
    if-eqz p3, :cond_5

    .line 63
    .line 64
    iget-object v4, v3, Landroidx/fragment/app/e1;->i:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_5

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    if-ltz p4, :cond_6

    .line 74
    .line 75
    iget v3, v3, Landroidx/fragment/app/a;->s:I

    .line 76
    .line 77
    if-ne p4, v3, :cond_6

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_7
    :goto_2
    if-gez v0, :cond_8

    .line 84
    .line 85
    return v1

    .line 86
    :cond_8
    and-int/2addr p5, v2

    .line 87
    if-eqz p5, :cond_b

    .line 88
    .line 89
    :cond_9
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 90
    .line 91
    if-ltz v0, :cond_b

    .line 92
    .line 93
    iget-object p5, p0, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p5

    .line 99
    check-cast p5, Landroidx/fragment/app/a;

    .line 100
    .line 101
    if-eqz p3, :cond_a

    .line 102
    .line 103
    iget-object v3, p5, Landroidx/fragment/app/e1;->i:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_9

    .line 110
    .line 111
    :cond_a
    if-ltz p4, :cond_b

    .line 112
    .line 113
    iget p5, p5, Landroidx/fragment/app/a;->s:I

    .line 114
    .line 115
    if-ne p4, p5, :cond_b

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_b
    move p3, v0

    .line 119
    :goto_4
    iget-object p4, p0, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result p4

    .line 125
    sub-int/2addr p4, v2

    .line 126
    if-ne p3, p4, :cond_c

    .line 127
    .line 128
    return v1

    .line 129
    :cond_c
    iget-object p4, p0, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result p4

    .line 135
    sub-int/2addr p4, v2

    .line 136
    :goto_5
    if-le p4, p3, :cond_d

    .line 137
    .line 138
    iget-object p5, p0, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p5

    .line 144
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    add-int/lit8 p4, p4, -0x1

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_d
    :goto_6
    return v2
.end method

.method public final L(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    iget-object p3, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string p2, "Fragment "

    .line 14
    .line 15
    const-string v0, " is not currently in the FragmentManager"

    .line 16
    .line 17
    invoke-static {p2, p3, v0}, Landroid/support/v4/media/session/a;->o(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroidx/fragment/app/u0;->X(Ljava/lang/IllegalStateException;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    throw p1
.end method

.method public final M(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    xor-int/2addr v0, v1

    .line 19
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 26
    .line 27
    iget-object v2, v0, Landroidx/fragment/app/c1;->a:Ljava/util/ArrayList;

    .line 28
    .line 29
    monitor-enter v2

    .line 30
    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/c1;->a:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 38
    .line 39
    invoke-static {p1}, Landroidx/fragment/app/u0;->C(Landroidx/fragment/app/Fragment;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iput-boolean v1, p0, Landroidx/fragment/app/u0;->A:Z

    .line 46
    .line 47
    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroidx/fragment/app/u0;->V(Landroidx/fragment/app/Fragment;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p1
.end method

.method public final N(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/e1;->p:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/u0;->u(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/e1;->p:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/u0;->u(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/u0;->u(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final O(Landroid/os/Parcelable;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    move-object/from16 v1, p1

    .line 7
    .line 8
    check-cast v1, Landroidx/fragment/app/w0;

    .line 9
    .line 10
    iget-object v2, v1, Landroidx/fragment/app/w0;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v2, v0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 16
    .line 17
    iget-object v3, v2, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v3, v1, Landroidx/fragment/app/w0;->a:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x2

    .line 33
    iget-object v6, v0, Landroidx/fragment/app/u0;->n:Landroidx/fragment/app/d;

    .line 34
    .line 35
    const-string v7, "FragmentManager"

    .line 36
    .line 37
    if-eqz v4, :cond_6

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    move-object v13, v4

    .line 44
    check-cast v13, Landroidx/fragment/app/a1;

    .line 45
    .line 46
    if-eqz v13, :cond_2

    .line 47
    .line 48
    iget-object v4, v0, Landroidx/fragment/app/u0;->I:Landroidx/fragment/app/y0;

    .line 49
    .line 50
    iget-object v4, v4, Landroidx/fragment/app/y0;->d:Ljava/util/HashMap;

    .line 51
    .line 52
    iget-object v8, v13, Landroidx/fragment/app/a1;->b:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 59
    .line 60
    if-eqz v4, :cond_4

    .line 61
    .line 62
    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_3

    .line 67
    .line 68
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    :cond_3
    new-instance v8, Landroidx/fragment/app/b1;

    .line 72
    .line 73
    invoke-direct {v8, v6, v2, v4, v13}, Landroidx/fragment/app/b1;-><init>(Landroidx/fragment/app/d;Landroidx/fragment/app/c1;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/a1;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    new-instance v4, Landroidx/fragment/app/b1;

    .line 78
    .line 79
    iget-object v9, v0, Landroidx/fragment/app/u0;->n:Landroidx/fragment/app/d;

    .line 80
    .line 81
    iget-object v10, v0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 82
    .line 83
    iget-object v6, v0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 84
    .line 85
    iget-object v6, v6, Landroidx/fragment/app/i0;->b:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/u0;->z()Landroidx/fragment/app/o0;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    move-object v8, v4

    .line 96
    invoke-direct/range {v8 .. v13}, Landroidx/fragment/app/b1;-><init>(Landroidx/fragment/app/d;Landroidx/fragment/app/c1;Ljava/lang/ClassLoader;Landroidx/fragment/app/o0;Landroidx/fragment/app/a1;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    iget-object v4, v8, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 100
    .line 101
    iput-object v0, v4, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 102
    .line 103
    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_5

    .line 108
    .line 109
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    :cond_5
    iget-object v4, v0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 113
    .line 114
    iget-object v4, v4, Landroidx/fragment/app/i0;->b:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v8, v4}, Landroidx/fragment/app/b1;->k(Ljava/lang/ClassLoader;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v8}, Landroidx/fragment/app/c1;->g(Landroidx/fragment/app/b1;)V

    .line 124
    .line 125
    .line 126
    iget v4, v0, Landroidx/fragment/app/u0;->p:I

    .line 127
    .line 128
    iput v4, v8, Landroidx/fragment/app/b1;->e:I

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_6
    iget-object v3, v0, Landroidx/fragment/app/u0;->I:Landroidx/fragment/app/y0;

    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    new-instance v4, Ljava/util/ArrayList;

    .line 137
    .line 138
    iget-object v3, v3, Landroidx/fragment/app/y0;->d:Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    const/4 v9, 0x1

    .line 156
    if-eqz v4, :cond_a

    .line 157
    .line 158
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 163
    .line 164
    iget-object v10, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 165
    .line 166
    iget-object v11, v2, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 167
    .line 168
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    if-eqz v10, :cond_8

    .line 173
    .line 174
    move v8, v9

    .line 175
    goto :goto_3

    .line 176
    :cond_8
    const/4 v8, 0x0

    .line 177
    :goto_3
    if-nez v8, :cond_7

    .line 178
    .line 179
    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    if-eqz v8, :cond_9

    .line 184
    .line 185
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    iget-object v8, v1, Landroidx/fragment/app/w0;->a:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-static {v8}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    :cond_9
    iget-object v8, v0, Landroidx/fragment/app/u0;->I:Landroidx/fragment/app/y0;

    .line 194
    .line 195
    invoke-virtual {v8, v4}, Landroidx/fragment/app/y0;->d(Landroidx/fragment/app/Fragment;)V

    .line 196
    .line 197
    .line 198
    iput-object v0, v4, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 199
    .line 200
    new-instance v8, Landroidx/fragment/app/b1;

    .line 201
    .line 202
    invoke-direct {v8, v6, v2, v4}, Landroidx/fragment/app/b1;-><init>(Landroidx/fragment/app/d;Landroidx/fragment/app/c1;Landroidx/fragment/app/Fragment;)V

    .line 203
    .line 204
    .line 205
    iput v9, v8, Landroidx/fragment/app/b1;->e:I

    .line 206
    .line 207
    invoke-virtual {v8}, Landroidx/fragment/app/b1;->j()V

    .line 208
    .line 209
    .line 210
    iput-boolean v9, v4, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 211
    .line 212
    invoke-virtual {v8}, Landroidx/fragment/app/b1;->j()V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_a
    iget-object v3, v1, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    .line 217
    .line 218
    iget-object v4, v2, Landroidx/fragment/app/c1;->a:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 221
    .line 222
    .line 223
    if-eqz v3, :cond_d

    .line 224
    .line 225
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-eqz v4, :cond_d

    .line 234
    .line 235
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    check-cast v4, Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v2, v4}, Landroidx/fragment/app/c1;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    if-eqz v6, :cond_c

    .line 246
    .line 247
    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-eqz v4, :cond_b

    .line 252
    .line 253
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    :cond_b
    invoke-virtual {v2, v6}, Landroidx/fragment/app/c1;->a(Landroidx/fragment/app/Fragment;)V

    .line 257
    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 261
    .line 262
    const-string v2, "No instantiated fragment for ("

    .line 263
    .line 264
    const-string v3, ")"

    .line 265
    .line 266
    invoke-static {v2, v4, v3}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v1

    .line 274
    :cond_d
    iget-object v3, v1, Landroidx/fragment/app/w0;->c:[Landroidx/fragment/app/b;

    .line 275
    .line 276
    const/4 v4, 0x0

    .line 277
    if-eqz v3, :cond_13

    .line 278
    .line 279
    new-instance v3, Ljava/util/ArrayList;

    .line 280
    .line 281
    iget-object v6, v1, Landroidx/fragment/app/w0;->c:[Landroidx/fragment/app/b;

    .line 282
    .line 283
    array-length v6, v6

    .line 284
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    .line 286
    .line 287
    iput-object v3, v0, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 288
    .line 289
    const/4 v3, 0x0

    .line 290
    :goto_5
    iget-object v6, v1, Landroidx/fragment/app/w0;->c:[Landroidx/fragment/app/b;

    .line 291
    .line 292
    array-length v10, v6

    .line 293
    if-ge v3, v10, :cond_12

    .line 294
    .line 295
    aget-object v6, v6, v3

    .line 296
    .line 297
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    new-instance v10, Landroidx/fragment/app/a;

    .line 301
    .line 302
    invoke-direct {v10, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/u0;)V

    .line 303
    .line 304
    .line 305
    const/4 v11, 0x0

    .line 306
    const/4 v12, 0x0

    .line 307
    :goto_6
    iget-object v13, v6, Landroidx/fragment/app/b;->a:[I

    .line 308
    .line 309
    array-length v14, v13

    .line 310
    if-ge v11, v14, :cond_10

    .line 311
    .line 312
    new-instance v14, Landroidx/fragment/app/d1;

    .line 313
    .line 314
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 315
    .line 316
    .line 317
    add-int/lit8 v15, v11, 0x1

    .line 318
    .line 319
    aget v8, v13, v11

    .line 320
    .line 321
    iput v8, v14, Landroidx/fragment/app/d1;->a:I

    .line 322
    .line 323
    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    if-eqz v8, :cond_e

    .line 328
    .line 329
    invoke-virtual {v10}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    aget v8, v13, v15

    .line 333
    .line 334
    :cond_e
    iget-object v8, v6, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    .line 335
    .line 336
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    check-cast v8, Ljava/lang/String;

    .line 341
    .line 342
    if-eqz v8, :cond_f

    .line 343
    .line 344
    invoke-virtual {v2, v8}, Landroidx/fragment/app/c1;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 345
    .line 346
    .line 347
    move-result-object v8

    .line 348
    iput-object v8, v14, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_f
    iput-object v4, v14, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 352
    .line 353
    :goto_7
    invoke-static {}, Landroidx/lifecycle/n;->values()[Landroidx/lifecycle/n;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    iget-object v4, v6, Landroidx/fragment/app/b;->c:[I

    .line 358
    .line 359
    aget v4, v4, v12

    .line 360
    .line 361
    aget-object v4, v8, v4

    .line 362
    .line 363
    iput-object v4, v14, Landroidx/fragment/app/d1;->g:Landroidx/lifecycle/n;

    .line 364
    .line 365
    invoke-static {}, Landroidx/lifecycle/n;->values()[Landroidx/lifecycle/n;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    iget-object v8, v6, Landroidx/fragment/app/b;->d:[I

    .line 370
    .line 371
    aget v8, v8, v12

    .line 372
    .line 373
    aget-object v4, v4, v8

    .line 374
    .line 375
    iput-object v4, v14, Landroidx/fragment/app/d1;->h:Landroidx/lifecycle/n;

    .line 376
    .line 377
    add-int/lit8 v4, v11, 0x2

    .line 378
    .line 379
    aget v8, v13, v15

    .line 380
    .line 381
    iput v8, v14, Landroidx/fragment/app/d1;->c:I

    .line 382
    .line 383
    add-int/lit8 v15, v11, 0x3

    .line 384
    .line 385
    aget v4, v13, v4

    .line 386
    .line 387
    iput v4, v14, Landroidx/fragment/app/d1;->d:I

    .line 388
    .line 389
    add-int/lit8 v16, v11, 0x4

    .line 390
    .line 391
    aget v15, v13, v15

    .line 392
    .line 393
    iput v15, v14, Landroidx/fragment/app/d1;->e:I

    .line 394
    .line 395
    add-int/lit8 v11, v11, 0x5

    .line 396
    .line 397
    aget v13, v13, v16

    .line 398
    .line 399
    iput v13, v14, Landroidx/fragment/app/d1;->f:I

    .line 400
    .line 401
    iput v8, v10, Landroidx/fragment/app/e1;->b:I

    .line 402
    .line 403
    iput v4, v10, Landroidx/fragment/app/e1;->c:I

    .line 404
    .line 405
    iput v15, v10, Landroidx/fragment/app/e1;->d:I

    .line 406
    .line 407
    iput v13, v10, Landroidx/fragment/app/e1;->e:I

    .line 408
    .line 409
    invoke-virtual {v10, v14}, Landroidx/fragment/app/e1;->b(Landroidx/fragment/app/d1;)V

    .line 410
    .line 411
    .line 412
    add-int/lit8 v12, v12, 0x1

    .line 413
    .line 414
    const/4 v4, 0x0

    .line 415
    goto :goto_6

    .line 416
    :cond_10
    iget v4, v6, Landroidx/fragment/app/b;->e:I

    .line 417
    .line 418
    iput v4, v10, Landroidx/fragment/app/e1;->f:I

    .line 419
    .line 420
    iget-object v4, v6, Landroidx/fragment/app/b;->f:Ljava/lang/String;

    .line 421
    .line 422
    iput-object v4, v10, Landroidx/fragment/app/e1;->i:Ljava/lang/String;

    .line 423
    .line 424
    iget v4, v6, Landroidx/fragment/app/b;->g:I

    .line 425
    .line 426
    iput v4, v10, Landroidx/fragment/app/a;->s:I

    .line 427
    .line 428
    iput-boolean v9, v10, Landroidx/fragment/app/e1;->g:Z

    .line 429
    .line 430
    iget v4, v6, Landroidx/fragment/app/b;->h:I

    .line 431
    .line 432
    iput v4, v10, Landroidx/fragment/app/e1;->j:I

    .line 433
    .line 434
    iget-object v4, v6, Landroidx/fragment/app/b;->i:Ljava/lang/CharSequence;

    .line 435
    .line 436
    iput-object v4, v10, Landroidx/fragment/app/e1;->k:Ljava/lang/CharSequence;

    .line 437
    .line 438
    iget v4, v6, Landroidx/fragment/app/b;->j:I

    .line 439
    .line 440
    iput v4, v10, Landroidx/fragment/app/e1;->l:I

    .line 441
    .line 442
    iget-object v4, v6, Landroidx/fragment/app/b;->k:Ljava/lang/CharSequence;

    .line 443
    .line 444
    iput-object v4, v10, Landroidx/fragment/app/e1;->m:Ljava/lang/CharSequence;

    .line 445
    .line 446
    iget-object v4, v6, Landroidx/fragment/app/b;->l:Ljava/util/ArrayList;

    .line 447
    .line 448
    iput-object v4, v10, Landroidx/fragment/app/e1;->n:Ljava/util/ArrayList;

    .line 449
    .line 450
    iget-object v4, v6, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    .line 451
    .line 452
    iput-object v4, v10, Landroidx/fragment/app/e1;->o:Ljava/util/ArrayList;

    .line 453
    .line 454
    iget-boolean v4, v6, Landroidx/fragment/app/b;->n:Z

    .line 455
    .line 456
    iput-boolean v4, v10, Landroidx/fragment/app/e1;->p:Z

    .line 457
    .line 458
    invoke-virtual {v10, v9}, Landroidx/fragment/app/a;->g(I)V

    .line 459
    .line 460
    .line 461
    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 462
    .line 463
    .line 464
    move-result v4

    .line 465
    if-eqz v4, :cond_11

    .line 466
    .line 467
    invoke-virtual {v10}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    new-instance v4, Landroidx/fragment/app/q1;

    .line 471
    .line 472
    invoke-direct {v4}, Landroidx/fragment/app/q1;-><init>()V

    .line 473
    .line 474
    .line 475
    new-instance v6, Ljava/io/PrintWriter;

    .line 476
    .line 477
    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 478
    .line 479
    .line 480
    const-string v4, "  "

    .line 481
    .line 482
    const/4 v8, 0x0

    .line 483
    invoke-virtual {v10, v4, v6, v8}, Landroidx/fragment/app/a;->i(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 487
    .line 488
    .line 489
    goto :goto_8

    .line 490
    :cond_11
    const/4 v8, 0x0

    .line 491
    :goto_8
    iget-object v4, v0, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 492
    .line 493
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    add-int/lit8 v3, v3, 0x1

    .line 497
    .line 498
    const/4 v4, 0x0

    .line 499
    goto/16 :goto_5

    .line 500
    .line 501
    :cond_12
    const/4 v8, 0x0

    .line 502
    goto :goto_9

    .line 503
    :cond_13
    move-object v3, v4

    .line 504
    const/4 v8, 0x0

    .line 505
    iput-object v3, v0, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 506
    .line 507
    :goto_9
    iget-object v3, v0, Landroidx/fragment/app/u0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 508
    .line 509
    iget v4, v1, Landroidx/fragment/app/w0;->d:I

    .line 510
    .line 511
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 512
    .line 513
    .line 514
    iget-object v3, v1, Landroidx/fragment/app/w0;->e:Ljava/lang/String;

    .line 515
    .line 516
    if-eqz v3, :cond_14

    .line 517
    .line 518
    invoke-virtual {v2, v3}, Landroidx/fragment/app/c1;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    iput-object v2, v0, Landroidx/fragment/app/u0;->t:Landroidx/fragment/app/Fragment;

    .line 523
    .line 524
    invoke-virtual {v0, v2}, Landroidx/fragment/app/u0;->m(Landroidx/fragment/app/Fragment;)V

    .line 525
    .line 526
    .line 527
    :cond_14
    iget-object v2, v1, Landroidx/fragment/app/w0;->f:Ljava/util/ArrayList;

    .line 528
    .line 529
    if-eqz v2, :cond_15

    .line 530
    .line 531
    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 532
    .line 533
    .line 534
    move-result v3

    .line 535
    if-ge v8, v3, :cond_15

    .line 536
    .line 537
    iget-object v3, v1, Landroidx/fragment/app/w0;->g:Ljava/util/ArrayList;

    .line 538
    .line 539
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    check-cast v3, Landroid/os/Bundle;

    .line 544
    .line 545
    iget-object v4, v0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 546
    .line 547
    iget-object v4, v4, Landroidx/fragment/app/i0;->b:Landroid/content/Context;

    .line 548
    .line 549
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 554
    .line 555
    .line 556
    iget-object v4, v0, Landroidx/fragment/app/u0;->j:Ljava/util/Map;

    .line 557
    .line 558
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    add-int/lit8 v8, v8, 0x1

    .line 566
    .line 567
    goto :goto_a

    .line 568
    :cond_15
    new-instance v2, Ljava/util/ArrayDeque;

    .line 569
    .line 570
    iget-object v1, v1, Landroidx/fragment/app/w0;->h:Ljava/util/ArrayList;

    .line 571
    .line 572
    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 573
    .line 574
    .line 575
    iput-object v2, v0, Landroidx/fragment/app/u0;->z:Ljava/util/ArrayDeque;

    .line 576
    .line 577
    return-void
.end method

.method public final P()Landroidx/fragment/app/w0;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->e()Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/fragment/app/t1;

    .line 21
    .line 22
    iget-boolean v3, v1, Landroidx/fragment/app/t1;->e:Z

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iput-boolean v2, v1, Landroidx/fragment/app/t1;->e:Z

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/fragment/app/t1;->c()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->e()Ljava/util/HashSet;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroidx/fragment/app/t1;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/fragment/app/t1;->e()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Landroidx/fragment/app/u0;->s(Z)Z

    .line 58
    .line 59
    .line 60
    iput-boolean v0, p0, Landroidx/fragment/app/u0;->B:Z

    .line 61
    .line 62
    iget-object v1, p0, Landroidx/fragment/app/u0;->I:Landroidx/fragment/app/y0;

    .line 63
    .line 64
    iput-boolean v0, v1, Landroidx/fragment/app/y0;->i:Z

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    .line 72
    .line 73
    iget-object v0, v0, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    const/4 v4, 0x2

    .line 95
    if-eqz v3, :cond_7

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Landroidx/fragment/app/b1;

    .line 102
    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    new-instance v5, Landroidx/fragment/app/a1;

    .line 106
    .line 107
    iget-object v6, v3, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 108
    .line 109
    invoke-direct {v5, v6}, Landroidx/fragment/app/a1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 110
    .line 111
    .line 112
    iget v7, v6, Landroidx/fragment/app/Fragment;->mState:I

    .line 113
    .line 114
    const/4 v8, -0x1

    .line 115
    if-le v7, v8, :cond_5

    .line 116
    .line 117
    iget-object v7, v5, Landroidx/fragment/app/a1;->m:Landroid/os/Bundle;

    .line 118
    .line 119
    if-nez v7, :cond_5

    .line 120
    .line 121
    invoke-virtual {v3}, Landroidx/fragment/app/b1;->m()Landroid/os/Bundle;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    iput-object v3, v5, Landroidx/fragment/app/a1;->m:Landroid/os/Bundle;

    .line 126
    .line 127
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v7, :cond_6

    .line 130
    .line 131
    if-nez v3, :cond_4

    .line 132
    .line 133
    new-instance v3, Landroid/os/Bundle;

    .line 134
    .line 135
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object v3, v5, Landroidx/fragment/app/a1;->m:Landroid/os/Bundle;

    .line 139
    .line 140
    :cond_4
    iget-object v3, v5, Landroidx/fragment/app/a1;->m:Landroid/os/Bundle;

    .line 141
    .line 142
    const-string v7, "android:target_state"

    .line 143
    .line 144
    iget-object v8, v6, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v3, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget v3, v6, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 150
    .line 151
    if-eqz v3, :cond_6

    .line 152
    .line 153
    iget-object v7, v5, Landroidx/fragment/app/a1;->m:Landroid/os/Bundle;

    .line 154
    .line 155
    const-string v8, "android:target_req_state"

    .line 156
    .line 157
    invoke-virtual {v7, v8, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_5
    iget-object v3, v6, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 162
    .line 163
    iput-object v3, v5, Landroidx/fragment/app/a1;->m:Landroid/os/Bundle;

    .line 164
    .line 165
    :cond_6
    :goto_3
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    const-string v3, "FragmentManager"

    .line 169
    .line 170
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-eqz v3, :cond_3

    .line 175
    .line 176
    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    iget-object v3, v5, Landroidx/fragment/app/a1;->m:Landroid/os/Bundle;

    .line 180
    .line 181
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    const/4 v3, 0x0

    .line 190
    if-eqz v0, :cond_8

    .line 191
    .line 192
    const-string v0, "FragmentManager"

    .line 193
    .line 194
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 195
    .line 196
    .line 197
    return-object v3

    .line 198
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 199
    .line 200
    iget-object v5, v0, Landroidx/fragment/app/c1;->a:Ljava/util/ArrayList;

    .line 201
    .line 202
    monitor-enter v5

    .line 203
    :try_start_0
    iget-object v6, v0, Landroidx/fragment/app/c1;->a:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    if-eqz v6, :cond_9

    .line 210
    .line 211
    monitor-exit v5

    .line 212
    move-object v6, v3

    .line 213
    goto :goto_5

    .line 214
    :catchall_0
    move-exception v0

    .line 215
    goto/16 :goto_7

    .line 216
    .line 217
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    .line 218
    .line 219
    iget-object v7, v0, Landroidx/fragment/app/c1;->a:Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .line 227
    .line 228
    iget-object v0, v0, Landroidx/fragment/app/c1;->a:Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v7

    .line 238
    if-eqz v7, :cond_b

    .line 239
    .line 240
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 245
    .line 246
    iget-object v8, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    const-string v8, "FragmentManager"

    .line 252
    .line 253
    invoke-static {v8, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    if-eqz v8, :cond_a

    .line 258
    .line 259
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_b
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :goto_5
    iget-object v0, p0, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 265
    .line 266
    if-eqz v0, :cond_d

    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-lez v0, :cond_d

    .line 273
    .line 274
    new-array v5, v0, [Landroidx/fragment/app/b;

    .line 275
    .line 276
    :goto_6
    if-ge v2, v0, :cond_e

    .line 277
    .line 278
    new-instance v7, Landroidx/fragment/app/b;

    .line 279
    .line 280
    iget-object v8, p0, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    check-cast v8, Landroidx/fragment/app/a;

    .line 287
    .line 288
    invoke-direct {v7, v8}, Landroidx/fragment/app/b;-><init>(Landroidx/fragment/app/a;)V

    .line 289
    .line 290
    .line 291
    aput-object v7, v5, v2

    .line 292
    .line 293
    const-string v7, "FragmentManager"

    .line 294
    .line 295
    invoke-static {v7, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 296
    .line 297
    .line 298
    move-result v7

    .line 299
    if-eqz v7, :cond_c

    .line 300
    .line 301
    iget-object v7, p0, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_d
    move-object v5, v3

    .line 314
    :cond_e
    new-instance v0, Landroidx/fragment/app/w0;

    .line 315
    .line 316
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 317
    .line 318
    .line 319
    iput-object v3, v0, Landroidx/fragment/app/w0;->e:Ljava/lang/String;

    .line 320
    .line 321
    new-instance v2, Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .line 325
    .line 326
    iput-object v2, v0, Landroidx/fragment/app/w0;->f:Ljava/util/ArrayList;

    .line 327
    .line 328
    new-instance v3, Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .line 332
    .line 333
    iput-object v3, v0, Landroidx/fragment/app/w0;->g:Ljava/util/ArrayList;

    .line 334
    .line 335
    iput-object v1, v0, Landroidx/fragment/app/w0;->a:Ljava/util/ArrayList;

    .line 336
    .line 337
    iput-object v6, v0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    .line 338
    .line 339
    iput-object v5, v0, Landroidx/fragment/app/w0;->c:[Landroidx/fragment/app/b;

    .line 340
    .line 341
    iget-object v1, p0, Landroidx/fragment/app/u0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 342
    .line 343
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    iput v1, v0, Landroidx/fragment/app/w0;->d:I

    .line 348
    .line 349
    iget-object v1, p0, Landroidx/fragment/app/u0;->t:Landroidx/fragment/app/Fragment;

    .line 350
    .line 351
    if-eqz v1, :cond_f

    .line 352
    .line 353
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 354
    .line 355
    iput-object v1, v0, Landroidx/fragment/app/w0;->e:Ljava/lang/String;

    .line 356
    .line 357
    :cond_f
    iget-object v1, p0, Landroidx/fragment/app/u0;->j:Ljava/util/Map;

    .line 358
    .line 359
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 364
    .line 365
    .line 366
    iget-object v1, p0, Landroidx/fragment/app/u0;->j:Ljava/util/Map;

    .line 367
    .line 368
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 373
    .line 374
    .line 375
    new-instance v1, Ljava/util/ArrayList;

    .line 376
    .line 377
    iget-object v2, p0, Landroidx/fragment/app/u0;->z:Ljava/util/ArrayDeque;

    .line 378
    .line 379
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 380
    .line 381
    .line 382
    iput-object v1, v0, Landroidx/fragment/app/w0;->h:Ljava/util/ArrayList;

    .line 383
    .line 384
    return-object v0

    .line 385
    :goto_7
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    throw v0
.end method

.method public final Q(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/fragment/app/b1;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v2, v0, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    iget p1, v2, Landroidx/fragment/app/Fragment;->mState:I

    .line 25
    .line 26
    const/4 v2, -0x1

    .line 27
    if-le p1, v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/b1;->m()Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    new-instance v1, Landroidx/fragment/app/w;

    .line 36
    .line 37
    invoke-direct {v1, p1}, Landroidx/fragment/app/w;-><init>(Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-object v1

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v2, "Fragment "

    .line 44
    .line 45
    const-string v3, " is not currently in the FragmentManager"

    .line 46
    .line 47
    invoke-static {v2, p1, v3}, Landroid/support/v4/media/session/a;->o(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroidx/fragment/app/u0;->X(Ljava/lang/IllegalStateException;)V

    .line 55
    .line 56
    .line 57
    throw v1
.end method

.method public final R()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/u0;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/fragment/app/i0;->c:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/fragment/app/u0;->J:Landroidx/fragment/app/b0;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 23
    .line 24
    iget-object v1, v1, Landroidx/fragment/app/i0;->c:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/fragment/app/u0;->J:Landroidx/fragment/app/b0;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->Y()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw v1
.end method

.method public final S(Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/u0;->y(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public final T(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroidx/fragment/app/c1;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/i0;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 20
    .line 21
    if-ne v0, p0, :cond_1

    .line 22
    .line 23
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/n;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Fragment "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " is not an active fragment of FragmentManager "

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2
.end method

.method public final U(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/fragment/app/c1;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/i0;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 22
    .line 23
    if-ne v0, p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "Fragment "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " is not an active fragment of FragmentManager "

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/u0;->t:Landroidx/fragment/app/Fragment;

    .line 55
    .line 56
    iput-object p1, p0, Landroidx/fragment/app/u0;->t:Landroidx/fragment/app/Fragment;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/fragment/app/u0;->m(Landroidx/fragment/app/Fragment;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Landroidx/fragment/app/u0;->t:Landroidx/fragment/app/Fragment;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroidx/fragment/app/u0;->m(Landroidx/fragment/app/Fragment;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final V(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/u0;->y(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result v2

    add-int/2addr v2, v1

    if-lez v2, :cond_1

    const v1, 0x7f0a06b3

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    :cond_1
    return-void
.end method

.method public final W()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/c1;->d()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/b1;

    .line 22
    .line 23
    iget-object v2, v1, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    iget-boolean v3, p0, Landroidx/fragment/app/u0;->b:Z

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Landroidx/fragment/app/u0;->E:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, 0x0

    .line 38
    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/fragment/app/b1;->j()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method public final X(Ljava/lang/IllegalStateException;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FragmentManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const-string v0, "Activity state:"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroidx/fragment/app/q1;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/fragment/app/q1;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/io/PrintWriter;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 26
    .line 27
    const-string v3, "Failed dumping state"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v6, "  "

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 36
    .line 37
    check-cast v0, Landroidx/fragment/app/z;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/fragment/app/z;->e:Landroidx/fragment/app/a0;

    .line 40
    .line 41
    invoke-virtual {v0, v6, v5, v2, v4}, Landroidx/fragment/app/a0;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/u0;->p(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    .line 54
    .line 55
    :goto_0
    throw p1
.end method

.method public final Y()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/u0;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/fragment/app/u0;->h:Landroidx/fragment/app/n0;

    .line 14
    .line 15
    iput-boolean v2, v1, Landroidx/activity/k;->a:Z

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/activity/k;->c:Lg0/a;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-interface {v1, v2}, Lg0/a;->accept(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v0, p0, Landroidx/fragment/app/u0;->h:Landroidx/fragment/app/n0;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->x()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-lez v1, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/fragment/app/u0;->s:Landroidx/fragment/app/Fragment;

    .line 40
    .line 41
    invoke-static {v1}, Landroidx/fragment/app/u0;->D(Landroidx/fragment/app/Fragment;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v2, 0x0

    .line 49
    :goto_0
    iput-boolean v2, v0, Landroidx/activity/k;->a:Z

    .line 50
    .line 51
    iget-object v0, v0, Landroidx/activity/k;->c:Lg0/a;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v0, v1}, Lg0/a;->accept(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    return-void

    .line 63
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw v1
.end method

.method public final a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/b1;
    .locals 3

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/u0;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/b1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object p0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroidx/fragment/app/c1;->g(Landroidx/fragment/app/b1;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroidx/fragment/app/c1;->a(Landroidx/fragment/app/Fragment;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 33
    .line 34
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 39
    .line 40
    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/u0;->C(Landroidx/fragment/app/Fragment;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Landroidx/fragment/app/u0;->A:Z

    .line 48
    .line 49
    :cond_2
    return-object v0
.end method

.method public final b(Landroidx/fragment/app/i0;Landroidx/fragment/app/g0;Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/fragment/app/u0;->r:Landroidx/fragment/app/g0;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/fragment/app/u0;->s:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    iget-object p2, p0, Landroidx/fragment/app/u0;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroidx/fragment/app/p0;

    .line 16
    .line 17
    invoke-direct {v0, p3}, Landroidx/fragment/app/p0;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/z0;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    check-cast v0, Landroidx/fragment/app/z0;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    iget-object p2, p0, Landroidx/fragment/app/u0;->s:Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->Y()V

    .line 37
    .line 38
    .line 39
    :cond_2
    instance-of p2, p1, Landroidx/activity/q;

    .line 40
    .line 41
    if-eqz p2, :cond_4

    .line 42
    .line 43
    move-object p2, p1

    .line 44
    check-cast p2, Landroidx/activity/q;

    .line 45
    .line 46
    invoke-interface {p2}, Landroidx/activity/q;->getOnBackPressedDispatcher()Landroidx/activity/p;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Landroidx/fragment/app/u0;->g:Landroidx/activity/p;

    .line 51
    .line 52
    if-eqz p3, :cond_3

    .line 53
    .line 54
    move-object p2, p3

    .line 55
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/u0;->h:Landroidx/fragment/app/n0;

    .line 56
    .line 57
    invoke-virtual {v0, p2, v1}, Landroidx/activity/p;->a(Landroidx/lifecycle/t;Landroidx/fragment/app/n0;)V

    .line 58
    .line 59
    .line 60
    :cond_4
    const/4 p2, 0x0

    .line 61
    if-eqz p3, :cond_6

    .line 62
    .line 63
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 64
    .line 65
    iget-object p1, p1, Landroidx/fragment/app/u0;->I:Landroidx/fragment/app/y0;

    .line 66
    .line 67
    iget-object v0, p1, Landroidx/fragment/app/y0;->e:Ljava/util/HashMap;

    .line 68
    .line 69
    iget-object v1, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroidx/fragment/app/y0;

    .line 76
    .line 77
    if-nez v1, :cond_5

    .line 78
    .line 79
    new-instance v1, Landroidx/fragment/app/y0;

    .line 80
    .line 81
    iget-boolean p1, p1, Landroidx/fragment/app/y0;->g:Z

    .line 82
    .line 83
    invoke-direct {v1, p1}, Landroidx/fragment/app/y0;-><init>(Z)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :cond_5
    iput-object v1, p0, Landroidx/fragment/app/u0;->I:Landroidx/fragment/app/y0;

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_6
    instance-of v0, p1, Landroidx/lifecycle/y0;

    .line 95
    .line 96
    if-eqz v0, :cond_8

    .line 97
    .line 98
    check-cast p1, Landroidx/lifecycle/y0;

    .line 99
    .line 100
    invoke-interface {p1}, Landroidx/lifecycle/y0;->getViewModelStore()Landroidx/lifecycle/x0;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance v0, Lv1/t;

    .line 105
    .line 106
    sget-object v1, Landroidx/fragment/app/y0;->j:Landroidx/fragment/app/x0;

    .line 107
    .line 108
    invoke-direct {v0, p1, v1, p2}, Lv1/t;-><init>(Landroidx/lifecycle/x0;Landroidx/fragment/app/x0;I)V

    .line 109
    .line 110
    .line 111
    const-class p1, Landroidx/fragment/app/y0;

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_7

    .line 118
    .line 119
    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 120
    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, p1, v1}, Lv1/t;->j(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/s0;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Landroidx/fragment/app/y0;

    .line 130
    .line 131
    :goto_2
    iput-object p1, p0, Landroidx/fragment/app/u0;->I:Landroidx/fragment/app/y0;

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    const-string p2, "Local and anonymous classes can not be ViewModels"

    .line 137
    .line 138
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p1

    .line 142
    :cond_8
    new-instance p1, Landroidx/fragment/app/y0;

    .line 143
    .line 144
    invoke-direct {p1, p2}, Landroidx/fragment/app/y0;-><init>(Z)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :goto_3
    iget-object p1, p0, Landroidx/fragment/app/u0;->I:Landroidx/fragment/app/y0;

    .line 149
    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->E()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    iput-boolean v0, p1, Landroidx/fragment/app/y0;->i:Z

    .line 155
    .line 156
    iget-object p1, p0, Landroidx/fragment/app/u0;->I:Landroidx/fragment/app/y0;

    .line 157
    .line 158
    iget-object v0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 159
    .line 160
    iput-object p1, v0, Landroidx/fragment/app/c1;->c:Landroidx/fragment/app/y0;

    .line 161
    .line 162
    iget-object p1, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 163
    .line 164
    instance-of v0, p1, Landroidx/activity/result/h;

    .line 165
    .line 166
    if-eqz v0, :cond_a

    .line 167
    .line 168
    check-cast p1, Landroidx/activity/result/h;

    .line 169
    .line 170
    invoke-interface {p1}, Landroidx/activity/result/h;->getActivityResultRegistry()Landroidx/activity/result/g;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    if-eqz p3, :cond_9

    .line 175
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    iget-object p3, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 182
    .line 183
    const-string v1, ":"

    .line 184
    .line 185
    invoke-static {v0, p3, v1}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p3

    .line 189
    goto :goto_4

    .line 190
    :cond_9
    const-string p3, ""

    .line 191
    .line 192
    :goto_4
    const-string v0, "FragmentManager:"

    .line 193
    .line 194
    invoke-static {v0, p3}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    const-string v0, "StartActivityForResult"

    .line 199
    .line 200
    invoke-static {p3, v0}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    new-instance v1, Ld/f;

    .line 205
    .line 206
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 207
    .line 208
    .line 209
    new-instance v2, Landroidx/fragment/app/m0;

    .line 210
    .line 211
    const/4 v3, 0x4

    .line 212
    invoke-direct {v2, p0, v3}, Landroidx/fragment/app/m0;-><init>(Landroidx/fragment/app/u0;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/g;->d(Ljava/lang/String;Ld/a;Landroidx/fragment/app/m0;)Landroidx/activity/result/d;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    iput-object v0, p0, Landroidx/fragment/app/u0;->w:Landroidx/activity/result/d;

    .line 220
    .line 221
    const-string v0, "StartIntentSenderForResult"

    .line 222
    .line 223
    invoke-static {p3, v0}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    new-instance v1, Ld/c;

    .line 228
    .line 229
    const/4 v2, 0x1

    .line 230
    invoke-direct {v1, v2}, Ld/c;-><init>(I)V

    .line 231
    .line 232
    .line 233
    new-instance v3, Landroidx/fragment/app/m0;

    .line 234
    .line 235
    invoke-direct {v3, p0, p2}, Landroidx/fragment/app/m0;-><init>(Landroidx/fragment/app/u0;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, v0, v1, v3}, Landroidx/activity/result/g;->d(Ljava/lang/String;Ld/a;Landroidx/fragment/app/m0;)Landroidx/activity/result/d;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    iput-object p2, p0, Landroidx/fragment/app/u0;->x:Landroidx/activity/result/d;

    .line 243
    .line 244
    const-string p2, "RequestPermissions"

    .line 245
    .line 246
    invoke-static {p3, p2}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    new-instance p3, Ld/e;

    .line 251
    .line 252
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 253
    .line 254
    .line 255
    new-instance v0, Landroidx/fragment/app/m0;

    .line 256
    .line 257
    invoke-direct {v0, p0, v2}, Landroidx/fragment/app/m0;-><init>(Landroidx/fragment/app/u0;I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, p2, p3, v0}, Landroidx/activity/result/g;->d(Ljava/lang/String;Ld/a;Landroidx/fragment/app/m0;)Landroidx/activity/result/d;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    iput-object p1, p0, Landroidx/fragment/app/u0;->y:Landroidx/activity/result/d;

    .line 265
    .line 266
    :cond_a
    return-void

    .line 267
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 268
    .line 269
    const-string p2, "Already attached"

    .line 270
    .line 271
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw p1
.end method

.method public final c(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 19
    .line 20
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Landroidx/fragment/app/c1;->a(Landroidx/fragment/app/Fragment;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/u0;->C(Landroidx/fragment/app/Fragment;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Landroidx/fragment/app/u0;->A:Z

    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/u0;->b:Z

    iget-object v0, p0, Landroidx/fragment/app/u0;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/fragment/app/u0;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final e()Ljava/util/HashSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/c1;->d()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/fragment/app/b1;

    .line 27
    .line 28
    iget-object v2, v2, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->A()Landroidx/fragment/app/m0;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v2, v3}, Landroidx/fragment/app/t1;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/m0;)Landroidx/fragment/app/t1;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object v0
.end method

.method public final f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/b1;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/fragment/app/b1;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Landroidx/fragment/app/b1;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/fragment/app/u0;->n:Landroidx/fragment/app/d;

    .line 19
    .line 20
    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/b1;-><init>(Landroidx/fragment/app/d;Landroidx/fragment/app/c1;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 24
    .line 25
    iget-object p1, p1, Landroidx/fragment/app/i0;->b:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Landroidx/fragment/app/b1;->k(Ljava/lang/ClassLoader;)V

    .line 32
    .line 33
    .line 34
    iget p1, p0, Landroidx/fragment/app/u0;->p:I

    .line 35
    .line 36
    iput p1, v0, Landroidx/fragment/app/b1;->e:I

    .line 37
    .line 38
    return-object v0
.end method

.method public final g(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 14
    .line 15
    if-nez v2, :cond_3

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 19
    .line 20
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 21
    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 34
    .line 35
    iget-object v1, v0, Landroidx/fragment/app/c1;->a:Ljava/util/ArrayList;

    .line 36
    .line 37
    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/c1;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 46
    .line 47
    invoke-static {p1}, Landroidx/fragment/app/u0;->C(Landroidx/fragment/app/Fragment;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iput-boolean v2, p0, Landroidx/fragment/app/u0;->A:Z

    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/u0;->V(Landroidx/fragment/app/Fragment;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p1

    .line 62
    :cond_3
    :goto_0
    return-void
.end method

.method public final h(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/u0;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    invoke-virtual {v0}, Landroidx/fragment/app/c1;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public final i(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    .line 1
    iget v0, p0, Landroidx/fragment/app/u0;->p:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/c1;->f()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    new-instance v3, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move v4, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/u0;->e:Ljava/util/ArrayList;

    .line 59
    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/u0;->e:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-ge v1, p1, :cond_6

    .line 69
    .line 70
    iget-object p1, p0, Landroidx/fragment/app/u0;->e:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 77
    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_5

    .line 85
    .line 86
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    .line 87
    .line 88
    .line 89
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_6
    iput-object v3, p0, Landroidx/fragment/app/u0;->e:Ljava/util/ArrayList;

    .line 93
    .line 94
    return v4
.end method

.method public final j()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/u0;->D:Z

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/u0;->s(Z)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->e()Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/fragment/app/t1;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/fragment/app/t1;->e()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, -0x1

    .line 32
    invoke-virtual {p0, v0}, Landroidx/fragment/app/u0;->o(I)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/fragment/app/u0;->r:Landroidx/fragment/app/g0;

    .line 39
    .line 40
    iput-object v0, p0, Landroidx/fragment/app/u0;->s:Landroidx/fragment/app/Fragment;

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/fragment/app/u0;->g:Landroidx/activity/p;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/fragment/app/u0;->h:Landroidx/fragment/app/n0;

    .line 47
    .line 48
    iget-object v1, v1, Landroidx/activity/k;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroidx/activity/a;

    .line 65
    .line 66
    invoke-interface {v2}, Landroidx/activity/a;->cancel()V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iput-object v0, p0, Landroidx/fragment/app/u0;->g:Landroidx/activity/p;

    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/u0;->w:Landroidx/activity/result/d;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/activity/result/d;->b()V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Landroidx/fragment/app/u0;->x:Landroidx/activity/result/d;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/activity/result/d;->b()V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Landroidx/fragment/app/u0;->y:Landroidx/activity/result/d;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroidx/activity/result/d;->b()V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-void
.end method

.method public final k(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/u0;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    invoke-virtual {v0}, Landroidx/fragment/app/c1;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public final l(Landroid/view/Menu;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/u0;->p:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    invoke-virtual {v0}, Landroidx/fragment/app/c1;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final m(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/fragment/app/c1;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final n(Landroid/view/Menu;)Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/u0;->p:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/c1;->f()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    move v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return v1
.end method

.method public final o(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/u0;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 6
    .line 7
    iget-object v2, v2, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroidx/fragment/app/b1;

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iput p1, v3, Landroidx/fragment/app/b1;->e:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/u0;->F(IZ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->e()Ljava/util/HashSet;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroidx/fragment/app/t1;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/fragment/app/t1;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/u0;->b:Z

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroidx/fragment/app/u0;->s(Z)Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_2
    iput-boolean v1, p0, Landroidx/fragment/app/u0;->b:Z

    .line 70
    .line 71
    throw p1
.end method

.method public final p(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, "    "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, v1, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v4, "Active Fragments:"

    .line 41
    .line 42
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroidx/fragment/app/b1;

    .line 64
    .line 65
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    if-eqz v4, :cond_0

    .line 69
    .line 70
    iget-object v4, v4, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 71
    .line 72
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v2, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const-string v4, "null"

    .line 80
    .line 81
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object p2, v1, Landroidx/fragment/app/c1;->a:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result p4

    .line 91
    const/4 v1, 0x0

    .line 92
    if-lez p4, :cond_2

    .line 93
    .line 94
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v2, "Added Fragments:"

    .line 98
    .line 99
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    move v2, v1

    .line 103
    :goto_1
    if-ge v2, p4, :cond_2

    .line 104
    .line 105
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 110
    .line 111
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v4, "  #"

    .line 115
    .line 116
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 120
    .line 121
    .line 122
    const-string v4, ": "

    .line 123
    .line 124
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v2, v2, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/u0;->e:Ljava/util/ArrayList;

    .line 138
    .line 139
    if-eqz p2, :cond_3

    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    if-lez p2, :cond_3

    .line 146
    .line 147
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string p4, "Fragments Created Menus:"

    .line 151
    .line 152
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    move p4, v1

    .line 156
    :goto_2
    if-ge p4, p2, :cond_3

    .line 157
    .line 158
    iget-object v2, p0, Landroidx/fragment/app/u0;->e:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 165
    .line 166
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string v3, "  #"

    .line 170
    .line 171
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 175
    .line 176
    .line 177
    const-string v3, ": "

    .line 178
    .line 179
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    add-int/lit8 p4, p4, 0x1

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_3
    iget-object p2, p0, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 193
    .line 194
    if-eqz p2, :cond_4

    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    if-lez p2, :cond_4

    .line 201
    .line 202
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string p4, "Back Stack:"

    .line 206
    .line 207
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    move p4, v1

    .line 211
    :goto_3
    if-ge p4, p2, :cond_4

    .line 212
    .line 213
    iget-object v2, p0, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Landroidx/fragment/app/a;

    .line 220
    .line 221
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const-string v3, "  #"

    .line 225
    .line 226
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 230
    .line 231
    .line 232
    const-string v3, ": "

    .line 233
    .line 234
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const/4 v3, 0x1

    .line 245
    invoke-virtual {v2, v0, p3, v3}, Landroidx/fragment/app/a;->i(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 246
    .line 247
    .line 248
    add-int/lit8 p4, p4, 0x1

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    new-instance p2, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string p4, "Back Stack Index: "

    .line 257
    .line 258
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object p4, p0, Landroidx/fragment/app/u0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 262
    .line 263
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 264
    .line 265
    .line 266
    move-result p4

    .line 267
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object p2, p0, Landroidx/fragment/app/u0;->a:Ljava/util/ArrayList;

    .line 278
    .line 279
    monitor-enter p2

    .line 280
    :try_start_0
    iget-object p4, p0, Landroidx/fragment/app/u0;->a:Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 283
    .line 284
    .line 285
    move-result p4

    .line 286
    if-lez p4, :cond_5

    .line 287
    .line 288
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const-string v0, "Pending Actions:"

    .line 292
    .line 293
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :goto_4
    if-ge v1, p4, :cond_5

    .line 297
    .line 298
    iget-object v0, p0, Landroidx/fragment/app/u0;->a:Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    check-cast v0, Landroidx/fragment/app/r0;

    .line 305
    .line 306
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const-string v2, "  #"

    .line 310
    .line 311
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 315
    .line 316
    .line 317
    const-string v2, ": "

    .line 318
    .line 319
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    add-int/lit8 v1, v1, 0x1

    .line 326
    .line 327
    goto :goto_4

    .line 328
    :catchall_0
    move-exception p1

    .line 329
    goto :goto_5

    .line 330
    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const-string p2, "FragmentManager misc state:"

    .line 335
    .line 336
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const-string p2, "  mHost="

    .line 343
    .line 344
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget-object p2, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 348
    .line 349
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    const-string p2, "  mContainer="

    .line 356
    .line 357
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    iget-object p2, p0, Landroidx/fragment/app/u0;->r:Landroidx/fragment/app/g0;

    .line 361
    .line 362
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    iget-object p2, p0, Landroidx/fragment/app/u0;->s:Landroidx/fragment/app/Fragment;

    .line 366
    .line 367
    if-eqz p2, :cond_6

    .line 368
    .line 369
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    const-string p2, "  mParent="

    .line 373
    .line 374
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object p2, p0, Landroidx/fragment/app/u0;->s:Landroidx/fragment/app/Fragment;

    .line 378
    .line 379
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    const-string p2, "  mCurState="

    .line 386
    .line 387
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    iget p2, p0, Landroidx/fragment/app/u0;->p:I

    .line 391
    .line 392
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 393
    .line 394
    .line 395
    const-string p2, " mStateSaved="

    .line 396
    .line 397
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    iget-boolean p2, p0, Landroidx/fragment/app/u0;->B:Z

    .line 401
    .line 402
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 403
    .line 404
    .line 405
    const-string p2, " mStopped="

    .line 406
    .line 407
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    iget-boolean p2, p0, Landroidx/fragment/app/u0;->C:Z

    .line 411
    .line 412
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 413
    .line 414
    .line 415
    const-string p2, " mDestroyed="

    .line 416
    .line 417
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    iget-boolean p2, p0, Landroidx/fragment/app/u0;->D:Z

    .line 421
    .line 422
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 423
    .line 424
    .line 425
    iget-boolean p2, p0, Landroidx/fragment/app/u0;->A:Z

    .line 426
    .line 427
    if-eqz p2, :cond_7

    .line 428
    .line 429
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    const-string p1, "  mNeedMenuInvalidate="

    .line 433
    .line 434
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    iget-boolean p1, p0, Landroidx/fragment/app/u0;->A:Z

    .line 438
    .line 439
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 440
    .line 441
    .line 442
    :cond_7
    return-void

    .line 443
    :goto_5
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    throw p1
.end method

.method public final q(Landroidx/fragment/app/r0;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p0, Landroidx/fragment/app/u0;->D:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string p2, "FragmentManager has been destroyed"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string p2, "FragmentManager has not been attached to a host."

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->E()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string p2, "Can not perform this action after onSaveInstanceState"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/u0;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 46
    .line 47
    if-nez v1, :cond_5

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "Activity has been destroyed"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/u0;->a:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->R()V

    .line 69
    .line 70
    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p1
.end method

.method public final r(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/u0;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p0, Landroidx/fragment/app/u0;->D:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "FragmentManager has been destroyed"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "FragmentManager has not been attached to a host."

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 34
    .line 35
    iget-object v1, v1, Landroidx/fragment/app/i0;->c:Landroid/os/Handler;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-ne v0, v1, :cond_5

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->E()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v0, "Can not perform this action after onSaveInstanceState"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/u0;->F:Ljava/util/ArrayList;

    .line 61
    .line 62
    if-nez p1, :cond_4

    .line 63
    .line 64
    new-instance p1, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Landroidx/fragment/app/u0;->F:Ljava/util/ArrayList;

    .line 70
    .line 71
    new-instance p1, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Landroidx/fragment/app/u0;->G:Ljava/util/ArrayList;

    .line 77
    .line 78
    :cond_4
    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Landroidx/fragment/app/u0;->b:Z

    .line 80
    .line 81
    return-void

    .line 82
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string v0, "Must be called from main thread of fragment host"

    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string v0, "FragmentManager is already executing transactions"

    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method

.method public final s(Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/u0;->r(Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    move v0, p1

    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/u0;->F:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/fragment/app/u0;->G:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/fragment/app/u0;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/u0;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    monitor-exit v3

    .line 22
    goto :goto_2

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_3

    .line 25
    :cond_0
    iget-object v4, p0, Landroidx/fragment/app/u0;->a:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    move v5, p1

    .line 32
    move v6, v5

    .line 33
    :goto_1
    if-ge v5, v4, :cond_1

    .line 34
    .line 35
    iget-object v7, p0, Landroidx/fragment/app/u0;->a:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Landroidx/fragment/app/r0;

    .line 42
    .line 43
    invoke-interface {v7, v1, v2}, Landroidx/fragment/app/r0;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    or-int/2addr v6, v7

    .line 48
    add-int/lit8 v5, v5, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/u0;->a:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 57
    .line 58
    iget-object v1, v1, Landroidx/fragment/app/i0;->c:Landroid/os/Handler;

    .line 59
    .line 60
    iget-object v2, p0, Landroidx/fragment/app/u0;->J:Landroidx/fragment/app/b0;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    if-eqz v6, :cond_2

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Landroidx/fragment/app/u0;->b:Z

    .line 70
    .line 71
    :try_start_1
    iget-object v1, p0, Landroidx/fragment/app/u0;->F:Ljava/util/ArrayList;

    .line 72
    .line 73
    iget-object v2, p0, Landroidx/fragment/app/u0;->G:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/u0;->N(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->d()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_1
    move-exception p1

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->d()V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->Y()V

    .line 88
    .line 89
    .line 90
    iget-boolean v1, p0, Landroidx/fragment/app/u0;->E:Z

    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    iput-boolean p1, p0, Landroidx/fragment/app/u0;->E:Z

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->W()V

    .line 97
    .line 98
    .line 99
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 100
    .line 101
    iget-object p1, p1, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-interface {p1, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 113
    .line 114
    .line 115
    return v0

    .line 116
    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    throw p1
.end method

.method public final t(Landroidx/fragment/app/r0;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/u0;->D:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    return-void

    .line 12
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/u0;->r(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Landroidx/fragment/app/u0;->F:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/fragment/app/u0;->G:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-interface {p1, p2, v0}, Landroidx/fragment/app/r0;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Landroidx/fragment/app/u0;->b:Z

    .line 27
    .line 28
    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/u0;->F:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object p2, p0, Landroidx/fragment/app/u0;->G:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/u0;->N(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->d()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->d()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->Y()V

    .line 45
    .line 46
    .line 47
    iget-boolean p1, p0, Landroidx/fragment/app/u0;->E:Z

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Landroidx/fragment/app/u0;->E:Z

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->W()V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 58
    .line 59
    iget-object p1, p1, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/4 p2, 0x0

    .line 66
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-interface {p1, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/u0;->s:Landroidx/fragment/app/Fragment;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/u0;->s:Landroidx/fragment/app/Fragment;

    :goto_0
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    check-cast v5, Landroidx/fragment/app/a;

    .line 16
    .line 17
    iget-boolean v5, v5, Landroidx/fragment/app/e1;->p:Z

    .line 18
    .line 19
    iget-object v6, v0, Landroidx/fragment/app/u0;->H:Ljava/util/ArrayList;

    .line 20
    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    new-instance v6, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v6, v0, Landroidx/fragment/app/u0;->H:Ljava/util/ArrayList;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v6, v0, Landroidx/fragment/app/u0;->H:Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v7, v0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 37
    .line 38
    invoke-virtual {v7}, Landroidx/fragment/app/c1;->f()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    iget-object v6, v0, Landroidx/fragment/app/u0;->t:Landroidx/fragment/app/Fragment;

    .line 46
    .line 47
    move v9, v3

    .line 48
    const/4 v10, 0x0

    .line 49
    :goto_1
    const/4 v11, 0x1

    .line 50
    if-ge v9, v4, :cond_13

    .line 51
    .line 52
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    check-cast v12, Landroidx/fragment/app/a;

    .line 57
    .line 58
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    check-cast v13, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v13

    .line 68
    if-nez v13, :cond_d

    .line 69
    .line 70
    iget-object v13, v0, Landroidx/fragment/app/u0;->H:Ljava/util/ArrayList;

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    :goto_2
    iget-object v15, v12, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v14

    .line 79
    if-ge v8, v14, :cond_c

    .line 80
    .line 81
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    check-cast v14, Landroidx/fragment/app/d1;

    .line 86
    .line 87
    iget v3, v14, Landroidx/fragment/app/d1;->a:I

    .line 88
    .line 89
    if-eq v3, v11, :cond_b

    .line 90
    .line 91
    const/4 v11, 0x2

    .line 92
    const/16 v2, 0x9

    .line 93
    .line 94
    if-eq v3, v11, :cond_5

    .line 95
    .line 96
    const/4 v11, 0x3

    .line 97
    if-eq v3, v11, :cond_4

    .line 98
    .line 99
    const/4 v11, 0x6

    .line 100
    if-eq v3, v11, :cond_4

    .line 101
    .line 102
    const/4 v11, 0x7

    .line 103
    if-eq v3, v11, :cond_3

    .line 104
    .line 105
    const/16 v11, 0x8

    .line 106
    .line 107
    if-eq v3, v11, :cond_1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_1
    new-instance v3, Landroidx/fragment/app/d1;

    .line 111
    .line 112
    invoke-direct {v3, v6, v2}, Landroidx/fragment/app/d1;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v15, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v8, v8, 0x1

    .line 119
    .line 120
    iget-object v2, v14, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 121
    .line 122
    move-object v6, v2

    .line 123
    :cond_2
    :goto_3
    move-object/from16 v19, v7

    .line 124
    .line 125
    const/4 v1, 0x1

    .line 126
    goto/16 :goto_7

    .line 127
    .line 128
    :cond_3
    move-object/from16 v19, v7

    .line 129
    .line 130
    const/4 v1, 0x1

    .line 131
    goto/16 :goto_6

    .line 132
    .line 133
    :cond_4
    iget-object v3, v14, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 134
    .line 135
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    iget-object v3, v14, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 139
    .line 140
    if-ne v3, v6, :cond_2

    .line 141
    .line 142
    new-instance v6, Landroidx/fragment/app/d1;

    .line 143
    .line 144
    invoke-direct {v6, v3, v2}, Landroidx/fragment/app/d1;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v15, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    add-int/lit8 v8, v8, 0x1

    .line 151
    .line 152
    move-object/from16 v19, v7

    .line 153
    .line 154
    const/4 v1, 0x1

    .line 155
    const/4 v6, 0x0

    .line 156
    goto/16 :goto_7

    .line 157
    .line 158
    :cond_5
    iget-object v3, v14, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 159
    .line 160
    iget v11, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 161
    .line 162
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 163
    .line 164
    .line 165
    move-result v17

    .line 166
    const/16 v16, 0x1

    .line 167
    .line 168
    add-int/lit8 v17, v17, -0x1

    .line 169
    .line 170
    move/from16 v2, v17

    .line 171
    .line 172
    const/16 v17, 0x0

    .line 173
    .line 174
    :goto_4
    if-ltz v2, :cond_9

    .line 175
    .line 176
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v18

    .line 180
    move-object/from16 v19, v7

    .line 181
    .line 182
    move-object/from16 v7, v18

    .line 183
    .line 184
    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 185
    .line 186
    iget v1, v7, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 187
    .line 188
    if-ne v1, v11, :cond_8

    .line 189
    .line 190
    if-ne v7, v3, :cond_6

    .line 191
    .line 192
    const/4 v1, 0x1

    .line 193
    const/16 v17, 0x1

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_6
    if-ne v7, v6, :cond_7

    .line 197
    .line 198
    new-instance v1, Landroidx/fragment/app/d1;

    .line 199
    .line 200
    const/16 v6, 0x9

    .line 201
    .line 202
    invoke-direct {v1, v7, v6}, Landroidx/fragment/app/d1;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v15, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    add-int/lit8 v8, v8, 0x1

    .line 209
    .line 210
    const/4 v6, 0x0

    .line 211
    :cond_7
    new-instance v1, Landroidx/fragment/app/d1;

    .line 212
    .line 213
    move-object/from16 v18, v6

    .line 214
    .line 215
    const/4 v6, 0x3

    .line 216
    invoke-direct {v1, v7, v6}, Landroidx/fragment/app/d1;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 217
    .line 218
    .line 219
    iget v6, v14, Landroidx/fragment/app/d1;->c:I

    .line 220
    .line 221
    iput v6, v1, Landroidx/fragment/app/d1;->c:I

    .line 222
    .line 223
    iget v6, v14, Landroidx/fragment/app/d1;->e:I

    .line 224
    .line 225
    iput v6, v1, Landroidx/fragment/app/d1;->e:I

    .line 226
    .line 227
    iget v6, v14, Landroidx/fragment/app/d1;->d:I

    .line 228
    .line 229
    iput v6, v1, Landroidx/fragment/app/d1;->d:I

    .line 230
    .line 231
    iget v6, v14, Landroidx/fragment/app/d1;->f:I

    .line 232
    .line 233
    iput v6, v1, Landroidx/fragment/app/d1;->f:I

    .line 234
    .line 235
    invoke-virtual {v15, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    const/4 v1, 0x1

    .line 242
    add-int/2addr v8, v1

    .line 243
    move-object/from16 v6, v18

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_8
    const/4 v1, 0x1

    .line 247
    :goto_5
    add-int/lit8 v2, v2, -0x1

    .line 248
    .line 249
    move-object/from16 v1, p1

    .line 250
    .line 251
    move-object/from16 v7, v19

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_9
    move-object/from16 v19, v7

    .line 255
    .line 256
    const/4 v1, 0x1

    .line 257
    if-eqz v17, :cond_a

    .line 258
    .line 259
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    add-int/lit8 v8, v8, -0x1

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_a
    iput v1, v14, Landroidx/fragment/app/d1;->a:I

    .line 266
    .line 267
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_b
    move-object/from16 v19, v7

    .line 272
    .line 273
    move v1, v11

    .line 274
    :goto_6
    iget-object v2, v14, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 275
    .line 276
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    :goto_7
    add-int/2addr v8, v1

    .line 280
    move-object/from16 v2, p2

    .line 281
    .line 282
    move/from16 v3, p3

    .line 283
    .line 284
    move v11, v1

    .line 285
    move-object/from16 v7, v19

    .line 286
    .line 287
    move-object/from16 v1, p1

    .line 288
    .line 289
    goto/16 :goto_2

    .line 290
    .line 291
    :cond_c
    move-object/from16 v19, v7

    .line 292
    .line 293
    goto :goto_a

    .line 294
    :cond_d
    move-object/from16 v19, v7

    .line 295
    .line 296
    move v1, v11

    .line 297
    iget-object v2, v0, Landroidx/fragment/app/u0;->H:Ljava/util/ArrayList;

    .line 298
    .line 299
    iget-object v3, v12, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    sub-int/2addr v7, v1

    .line 306
    :goto_8
    if-ltz v7, :cond_10

    .line 307
    .line 308
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    check-cast v8, Landroidx/fragment/app/d1;

    .line 313
    .line 314
    iget v11, v8, Landroidx/fragment/app/d1;->a:I

    .line 315
    .line 316
    if-eq v11, v1, :cond_f

    .line 317
    .line 318
    const/4 v1, 0x3

    .line 319
    if-eq v11, v1, :cond_e

    .line 320
    .line 321
    packed-switch v11, :pswitch_data_0

    .line 322
    .line 323
    .line 324
    goto :goto_9

    .line 325
    :pswitch_0
    iget-object v11, v8, Landroidx/fragment/app/d1;->g:Landroidx/lifecycle/n;

    .line 326
    .line 327
    iput-object v11, v8, Landroidx/fragment/app/d1;->h:Landroidx/lifecycle/n;

    .line 328
    .line 329
    goto :goto_9

    .line 330
    :pswitch_1
    iget-object v6, v8, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 331
    .line 332
    goto :goto_9

    .line 333
    :pswitch_2
    const/4 v6, 0x0

    .line 334
    goto :goto_9

    .line 335
    :cond_e
    :pswitch_3
    iget-object v8, v8, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 336
    .line 337
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    goto :goto_9

    .line 341
    :cond_f
    const/4 v1, 0x3

    .line 342
    :pswitch_4
    iget-object v8, v8, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 343
    .line 344
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    :goto_9
    add-int/lit8 v7, v7, -0x1

    .line 348
    .line 349
    const/4 v1, 0x1

    .line 350
    goto :goto_8

    .line 351
    :cond_10
    :goto_a
    if-nez v10, :cond_12

    .line 352
    .line 353
    iget-boolean v1, v12, Landroidx/fragment/app/e1;->g:Z

    .line 354
    .line 355
    if-eqz v1, :cond_11

    .line 356
    .line 357
    goto :goto_b

    .line 358
    :cond_11
    const/4 v10, 0x0

    .line 359
    goto :goto_c

    .line 360
    :cond_12
    :goto_b
    const/4 v10, 0x1

    .line 361
    :goto_c
    add-int/lit8 v9, v9, 0x1

    .line 362
    .line 363
    move-object/from16 v1, p1

    .line 364
    .line 365
    move-object/from16 v2, p2

    .line 366
    .line 367
    move/from16 v3, p3

    .line 368
    .line 369
    move-object/from16 v7, v19

    .line 370
    .line 371
    goto/16 :goto_1

    .line 372
    .line 373
    :cond_13
    move-object/from16 v19, v7

    .line 374
    .line 375
    iget-object v1, v0, Landroidx/fragment/app/u0;->H:Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 378
    .line 379
    .line 380
    if-nez v5, :cond_16

    .line 381
    .line 382
    iget v1, v0, Landroidx/fragment/app/u0;->p:I

    .line 383
    .line 384
    const/4 v2, 0x1

    .line 385
    if-lt v1, v2, :cond_16

    .line 386
    .line 387
    move/from16 v1, p3

    .line 388
    .line 389
    :goto_d
    if-ge v1, v4, :cond_16

    .line 390
    .line 391
    move-object/from16 v2, p1

    .line 392
    .line 393
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    check-cast v3, Landroidx/fragment/app/a;

    .line 398
    .line 399
    iget-object v3, v3, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    if-eqz v5, :cond_15

    .line 410
    .line 411
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    check-cast v5, Landroidx/fragment/app/d1;

    .line 416
    .line 417
    iget-object v5, v5, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 418
    .line 419
    if-eqz v5, :cond_14

    .line 420
    .line 421
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 422
    .line 423
    if-eqz v6, :cond_14

    .line 424
    .line 425
    invoke-virtual {v0, v5}, Landroidx/fragment/app/u0;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/b1;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    move-object/from16 v6, v19

    .line 430
    .line 431
    invoke-virtual {v6, v5}, Landroidx/fragment/app/c1;->g(Landroidx/fragment/app/b1;)V

    .line 432
    .line 433
    .line 434
    goto :goto_f

    .line 435
    :cond_14
    move-object/from16 v6, v19

    .line 436
    .line 437
    :goto_f
    move-object/from16 v19, v6

    .line 438
    .line 439
    goto :goto_e

    .line 440
    :cond_15
    move-object/from16 v6, v19

    .line 441
    .line 442
    add-int/lit8 v1, v1, 0x1

    .line 443
    .line 444
    goto :goto_d

    .line 445
    :cond_16
    move-object/from16 v2, p1

    .line 446
    .line 447
    move/from16 v1, p3

    .line 448
    .line 449
    :goto_10
    const/4 v3, -0x1

    .line 450
    if-ge v1, v4, :cond_18

    .line 451
    .line 452
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    check-cast v5, Landroidx/fragment/app/a;

    .line 457
    .line 458
    move-object/from16 v6, p2

    .line 459
    .line 460
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    check-cast v7, Ljava/lang/Boolean;

    .line 465
    .line 466
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 467
    .line 468
    .line 469
    move-result v7

    .line 470
    if-eqz v7, :cond_17

    .line 471
    .line 472
    invoke-virtual {v5, v3}, Landroidx/fragment/app/a;->g(I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v5}, Landroidx/fragment/app/a;->k()V

    .line 476
    .line 477
    .line 478
    goto :goto_11

    .line 479
    :cond_17
    const/4 v3, 0x1

    .line 480
    invoke-virtual {v5, v3}, Landroidx/fragment/app/a;->g(I)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v5}, Landroidx/fragment/app/a;->j()V

    .line 484
    .line 485
    .line 486
    :goto_11
    add-int/lit8 v1, v1, 0x1

    .line 487
    .line 488
    goto :goto_10

    .line 489
    :cond_18
    move-object/from16 v6, p2

    .line 490
    .line 491
    add-int/lit8 v1, v4, -0x1

    .line 492
    .line 493
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    check-cast v1, Ljava/lang/Boolean;

    .line 498
    .line 499
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    move/from16 v5, p3

    .line 504
    .line 505
    :goto_12
    if-ge v5, v4, :cond_1d

    .line 506
    .line 507
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v7

    .line 511
    check-cast v7, Landroidx/fragment/app/a;

    .line 512
    .line 513
    if-eqz v1, :cond_1a

    .line 514
    .line 515
    iget-object v8, v7, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    .line 516
    .line 517
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 518
    .line 519
    .line 520
    move-result v8

    .line 521
    const/4 v9, 0x1

    .line 522
    sub-int/2addr v8, v9

    .line 523
    :goto_13
    if-ltz v8, :cond_1c

    .line 524
    .line 525
    iget-object v9, v7, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    .line 526
    .line 527
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v9

    .line 531
    check-cast v9, Landroidx/fragment/app/d1;

    .line 532
    .line 533
    iget-object v9, v9, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 534
    .line 535
    if-eqz v9, :cond_19

    .line 536
    .line 537
    invoke-virtual {v0, v9}, Landroidx/fragment/app/u0;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/b1;

    .line 538
    .line 539
    .line 540
    move-result-object v9

    .line 541
    invoke-virtual {v9}, Landroidx/fragment/app/b1;->j()V

    .line 542
    .line 543
    .line 544
    :cond_19
    add-int/lit8 v8, v8, -0x1

    .line 545
    .line 546
    goto :goto_13

    .line 547
    :cond_1a
    iget-object v7, v7, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    .line 548
    .line 549
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 550
    .line 551
    .line 552
    move-result-object v7

    .line 553
    :cond_1b
    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 554
    .line 555
    .line 556
    move-result v8

    .line 557
    if-eqz v8, :cond_1c

    .line 558
    .line 559
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v8

    .line 563
    check-cast v8, Landroidx/fragment/app/d1;

    .line 564
    .line 565
    iget-object v8, v8, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 566
    .line 567
    if-eqz v8, :cond_1b

    .line 568
    .line 569
    invoke-virtual {v0, v8}, Landroidx/fragment/app/u0;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/b1;

    .line 570
    .line 571
    .line 572
    move-result-object v8

    .line 573
    invoke-virtual {v8}, Landroidx/fragment/app/b1;->j()V

    .line 574
    .line 575
    .line 576
    goto :goto_14

    .line 577
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    .line 578
    .line 579
    goto :goto_12

    .line 580
    :cond_1d
    iget v5, v0, Landroidx/fragment/app/u0;->p:I

    .line 581
    .line 582
    const/4 v7, 0x1

    .line 583
    invoke-virtual {v0, v5, v7}, Landroidx/fragment/app/u0;->F(IZ)V

    .line 584
    .line 585
    .line 586
    new-instance v5, Ljava/util/HashSet;

    .line 587
    .line 588
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 589
    .line 590
    .line 591
    move/from16 v7, p3

    .line 592
    .line 593
    :goto_15
    if-ge v7, v4, :cond_20

    .line 594
    .line 595
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v8

    .line 599
    check-cast v8, Landroidx/fragment/app/a;

    .line 600
    .line 601
    iget-object v8, v8, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    .line 602
    .line 603
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 604
    .line 605
    .line 606
    move-result-object v8

    .line 607
    :cond_1e
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 608
    .line 609
    .line 610
    move-result v9

    .line 611
    if-eqz v9, :cond_1f

    .line 612
    .line 613
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v9

    .line 617
    check-cast v9, Landroidx/fragment/app/d1;

    .line 618
    .line 619
    iget-object v9, v9, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 620
    .line 621
    if-eqz v9, :cond_1e

    .line 622
    .line 623
    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 624
    .line 625
    if-eqz v9, :cond_1e

    .line 626
    .line 627
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/u0;->A()Landroidx/fragment/app/m0;

    .line 628
    .line 629
    .line 630
    move-result-object v11

    .line 631
    invoke-static {v9, v11}, Landroidx/fragment/app/t1;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/m0;)Landroidx/fragment/app/t1;

    .line 632
    .line 633
    .line 634
    move-result-object v9

    .line 635
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    goto :goto_16

    .line 639
    :cond_1f
    add-int/lit8 v7, v7, 0x1

    .line 640
    .line 641
    goto :goto_15

    .line 642
    :cond_20
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 643
    .line 644
    .line 645
    move-result-object v5

    .line 646
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 647
    .line 648
    .line 649
    move-result v7

    .line 650
    if-eqz v7, :cond_21

    .line 651
    .line 652
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v7

    .line 656
    check-cast v7, Landroidx/fragment/app/t1;

    .line 657
    .line 658
    iput-boolean v1, v7, Landroidx/fragment/app/t1;->d:Z

    .line 659
    .line 660
    invoke-virtual {v7}, Landroidx/fragment/app/t1;->h()V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v7}, Landroidx/fragment/app/t1;->c()V

    .line 664
    .line 665
    .line 666
    goto :goto_17

    .line 667
    :cond_21
    move/from16 v1, p3

    .line 668
    .line 669
    :goto_18
    if-ge v1, v4, :cond_23

    .line 670
    .line 671
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v5

    .line 675
    check-cast v5, Landroidx/fragment/app/a;

    .line 676
    .line 677
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v7

    .line 681
    check-cast v7, Ljava/lang/Boolean;

    .line 682
    .line 683
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 684
    .line 685
    .line 686
    move-result v7

    .line 687
    if-eqz v7, :cond_22

    .line 688
    .line 689
    iget v7, v5, Landroidx/fragment/app/a;->s:I

    .line 690
    .line 691
    if-ltz v7, :cond_22

    .line 692
    .line 693
    iput v3, v5, Landroidx/fragment/app/a;->s:I

    .line 694
    .line 695
    :cond_22
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 696
    .line 697
    .line 698
    add-int/lit8 v1, v1, 0x1

    .line 699
    .line 700
    goto :goto_18

    .line 701
    :cond_23
    if-eqz v10, :cond_24

    .line 702
    .line 703
    iget-object v1, v0, Landroidx/fragment/app/u0;->k:Ljava/util/ArrayList;

    .line 704
    .line 705
    if-eqz v1, :cond_24

    .line 706
    .line 707
    const/4 v8, 0x0

    .line 708
    :goto_19
    iget-object v1, v0, Landroidx/fragment/app/u0;->k:Ljava/util/ArrayList;

    .line 709
    .line 710
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 711
    .line 712
    .line 713
    move-result v1

    .line 714
    if-ge v8, v1, :cond_24

    .line 715
    .line 716
    iget-object v1, v0, Landroidx/fragment/app/u0;->k:Ljava/util/ArrayList;

    .line 717
    .line 718
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    check-cast v1, Lcom/stryker/terminal/ui/other/i;

    .line 723
    .line 724
    iget-object v1, v1, Lcom/stryker/terminal/ui/other/i;->a:Lcom/stryker/terminal/ui/other/SettingsActivity;

    .line 725
    .line 726
    invoke-static {v1}, Lcom/stryker/terminal/ui/other/SettingsActivity;->i(Lcom/stryker/terminal/ui/other/SettingsActivity;)V

    .line 727
    .line 728
    .line 729
    add-int/lit8 v8, v8, 0x1

    .line 730
    .line 731
    goto :goto_19

    .line 732
    :cond_24
    return-void

    .line 733
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final v(I)Landroidx/fragment/app/Fragment;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/c1;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    add-int/lit8 v2, v2, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget v4, v3, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 22
    .line 23
    if-ne v4, p1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroidx/fragment/app/b1;

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v3, v1, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 54
    .line 55
    iget v1, v3, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 56
    .line 57
    if-ne v1, p1, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const/4 v3, 0x0

    .line 61
    :goto_1
    return-object v3
.end method

.method public final w(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/c1;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    add-int/lit8 v2, v2, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroidx/fragment/app/b1;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v3, v1, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 58
    .line 59
    iget-object v1, v3, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const/4 v3, 0x0

    .line 69
    :goto_1
    return-object v3
.end method

.method public final x()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final y(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/u0;->r:Landroidx/fragment/app/g0;

    invoke-virtual {v0}, Landroidx/fragment/app/g0;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/u0;->r:Landroidx/fragment/app/g0;

    iget p1, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, p1}, Landroidx/fragment/app/g0;->b(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public final z()Landroidx/fragment/app/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u0;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    invoke-virtual {v0}, Landroidx/fragment/app/u0;->z()Landroidx/fragment/app/o0;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u0;->u:Landroidx/fragment/app/o0;

    return-object v0
.end method
