.class public final Landroidx/fragment/app/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/u0;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/u0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/fragment/app/m0;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/fragment/app/m0;->b:Landroidx/fragment/app/u0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/m0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/activity/result/a;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/fragment/app/m0;->b(Landroidx/activity/result/a;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, [Ljava/lang/String;

    .line 26
    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    new-array p1, p1, [I

    .line 41
    .line 42
    move v3, v1

    .line 43
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ge v3, v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_0

    .line 60
    .line 61
    move v4, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const/4 v4, -0x1

    .line 64
    :goto_1
    aput v4, p1, v3

    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/m0;->b:Landroidx/fragment/app/u0;

    .line 70
    .line 71
    iget-object v2, v1, Landroidx/fragment/app/u0;->z:Ljava/util/ArrayDeque;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Landroidx/fragment/app/q0;

    .line 78
    .line 79
    const-string v3, "FragmentManager"

    .line 80
    .line 81
    if-nez v2, :cond_2

    .line 82
    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v0, "No permissions were requested for "

    .line 86
    .line 87
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    iget-object v4, v2, Landroidx/fragment/app/q0;->a:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v1, v1, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 104
    .line 105
    invoke-virtual {v1, v4}, Landroidx/fragment/app/c1;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-nez v1, :cond_3

    .line 110
    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v0, "Permission request result delivered for unknown Fragment "

    .line 114
    .line 115
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    iget v2, v2, Landroidx/fragment/app/q0;->b:I

    .line 130
    .line 131
    invoke-virtual {v1, v2, v0, p1}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 132
    .line 133
    .line 134
    :goto_2
    return-void

    .line 135
    :pswitch_1
    check-cast p1, Landroidx/activity/result/a;

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroidx/fragment/app/m0;->b(Landroidx/activity/result/a;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroidx/activity/result/a;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/m0;->a:I

    .line 2
    .line 3
    const-string v1, "FragmentManager"

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/m0;->b:Landroidx/fragment/app/u0;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Landroidx/fragment/app/u0;->z:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/fragment/app/q0;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v0, "No Activities were started for result for "

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v3, v0, Landroidx/fragment/app/q0;->a:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v2, v2, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroidx/fragment/app/c1;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v0, "Activity result delivered for unknown Fragment "

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget v1, p1, Landroidx/activity/result/a;->a:I

    .line 67
    .line 68
    iget v0, v0, Landroidx/fragment/app/q0;->b:I

    .line 69
    .line 70
    iget-object p1, p1, Landroidx/activity/result/a;->b:Landroid/content/Intent;

    .line 71
    .line 72
    invoke-virtual {v2, v0, v1, p1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, v2, Landroidx/fragment/app/u0;->z:Ljava/util/ArrayDeque;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroidx/fragment/app/q0;

    .line 83
    .line 84
    if-nez v0, :cond_2

    .line 85
    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v0, "No IntentSenders were started for "

    .line 89
    .line 90
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    iget-object v3, v0, Landroidx/fragment/app/q0;->a:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v2, v2, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Landroidx/fragment/app/c1;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-nez v2, :cond_3

    .line 113
    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v0, "Intent Sender result delivered for unknown Fragment "

    .line 117
    .line 118
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    iget v1, p1, Landroidx/activity/result/a;->a:I

    .line 133
    .line 134
    iget v0, v0, Landroidx/fragment/app/q0;->b:I

    .line 135
    .line 136
    iget-object p1, p1, Landroidx/activity/result/a;->b:Landroid/content/Intent;

    .line 137
    .line 138
    invoke-virtual {v2, v0, v1, p1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 139
    .line 140
    .line 141
    :goto_1
    return-void

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroidx/fragment/app/Fragment;Ld0/d;)V
    .locals 3

    .line 1
    monitor-enter p2

    .line 2
    :try_start_0
    iget-boolean v0, p2, Ld0/d;->a:Z

    .line 3
    .line 4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/fragment/app/m0;->b:Landroidx/fragment/app/u0;

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/fragment/app/u0;->l:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/util/HashSet;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget p2, p1, Landroidx/fragment/app/Fragment;->mState:I

    .line 35
    .line 36
    const/4 v1, 0x5

    .line 37
    if-ge p2, v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 40
    .line 41
    .line 42
    iget-object p2, v0, Landroidx/fragment/app/u0;->n:Landroidx/fragment/app/d;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p2, v1}, Landroidx/fragment/app/d;->o(Z)V

    .line 46
    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 50
    .line 51
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 52
    .line 53
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    .line 54
    .line 55
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/b0;

    .line 56
    .line 57
    invoke-virtual {v2, p2}, Landroidx/lifecycle/b0;->e(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 61
    .line 62
    iget p2, v0, Landroidx/fragment/app/u0;->p:I

    .line 63
    .line 64
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/u0;->G(Landroidx/fragment/app/Fragment;I)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p1
.end method

.method public final d(Landroidx/fragment/app/Fragment;Ld0/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m0;->b:Landroidx/fragment/app/u0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/u0;->l:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
