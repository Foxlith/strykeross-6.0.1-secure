.class public final Landroidx/lifecycle/p0;
.super Landroidx/lifecycle/w0;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/v0;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Landroidx/lifecycle/u0;

.field public final c:Landroid/os/Bundle;

.field public final d:Landroidx/lifecycle/o;

.field public final e:Lb1/d;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lb1/f;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p2}, Lb1/f;->getSavedStateRegistry()Lb1/d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/lifecycle/p0;->e:Lb1/d;

    .line 14
    .line 15
    invoke-interface {p2}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iput-object p2, p0, Landroidx/lifecycle/p0;->d:Landroidx/lifecycle/o;

    .line 20
    .line 21
    iput-object p3, p0, Landroidx/lifecycle/p0;->c:Landroid/os/Bundle;

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/lifecycle/p0;->a:Landroid/app/Application;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    sget-object p2, Landroidx/lifecycle/u0;->e:Landroidx/lifecycle/u0;

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    new-instance p2, Landroidx/lifecycle/u0;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Landroidx/lifecycle/u0;-><init>(Landroid/app/Application;)V

    .line 34
    .line 35
    .line 36
    sput-object p2, Landroidx/lifecycle/u0;->e:Landroidx/lifecycle/u0;

    .line 37
    .line 38
    :cond_0
    sget-object p1, Landroidx/lifecycle/u0;->e:Landroidx/lifecycle/u0;

    .line 39
    .line 40
    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance p1, Landroidx/lifecycle/u0;

    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    invoke-direct {p1, p2}, Landroidx/lifecycle/u0;-><init>(Landroid/app/Application;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/p0;->b:Landroidx/lifecycle/u0;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/s0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/p0;->b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/s0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/s0;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/p0;->d:Landroidx/lifecycle/o;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    const-class v0, Landroidx/lifecycle/a;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/lifecycle/p0;->a:Landroid/app/Application;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    sget-object v1, Landroidx/lifecycle/q0;->a:Ljava/util/List;

    .line 18
    .line 19
    :goto_0
    invoke-static {p1, v1}, Landroidx/lifecycle/q0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    sget-object v1, Landroidx/lifecycle/q0;->b:Ljava/util/List;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    if-nez v1, :cond_3

    .line 28
    .line 29
    iget-object p2, p0, Landroidx/lifecycle/p0;->a:Landroid/app/Application;

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    iget-object p2, p0, Landroidx/lifecycle/p0;->b:Landroidx/lifecycle/u0;

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    sget-object p2, Landroidx/lifecycle/t0;->c:Landroidx/lifecycle/t0;

    .line 41
    .line 42
    if-nez p2, :cond_2

    .line 43
    .line 44
    new-instance p2, Landroidx/lifecycle/t0;

    .line 45
    .line 46
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object p2, Landroidx/lifecycle/t0;->c:Landroidx/lifecycle/t0;

    .line 50
    .line 51
    :cond_2
    sget-object p2, Landroidx/lifecycle/t0;->c:Landroidx/lifecycle/t0;

    .line 52
    .line 53
    invoke-static {p2}, Li5/a;->m(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Landroidx/lifecycle/t0;->a(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :goto_2
    return-object p1

    .line 61
    :cond_3
    iget-object v2, p0, Landroidx/lifecycle/p0;->e:Lb1/d;

    .line 62
    .line 63
    iget-object v3, p0, Landroidx/lifecycle/p0;->d:Landroidx/lifecycle/o;

    .line 64
    .line 65
    iget-object v4, p0, Landroidx/lifecycle/p0;->c:Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-virtual {v2, p2}, Lb1/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    sget-object v6, Landroidx/lifecycle/k0;->f:[Ljava/lang/Class;

    .line 72
    .line 73
    invoke-static {v5, v4}, Ld/d;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/k0;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    new-instance v5, Landroidx/lifecycle/SavedStateHandleController;

    .line 78
    .line 79
    invoke-direct {v5, p2, v4}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/k0;)V

    .line 80
    .line 81
    .line 82
    const/4 v6, 0x1

    .line 83
    iput-boolean v6, v5, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    .line 84
    .line 85
    invoke-virtual {v3, v5}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 86
    .line 87
    .line 88
    iget-object v6, v4, Landroidx/lifecycle/k0;->e:Landroidx/lifecycle/j0;

    .line 89
    .line 90
    invoke-virtual {v2, p2, v6}, Lb1/d;->c(Ljava/lang/String;Lb1/c;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v3, v2}, Landroidx/lifecycle/k;->l(Landroidx/lifecycle/o;Lb1/d;)V

    .line 94
    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-object p2, p0, Landroidx/lifecycle/p0;->a:Landroid/app/Application;

    .line 99
    .line 100
    if-eqz p2, :cond_4

    .line 101
    .line 102
    filled-new-array {p2, v4}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {p1, v1, p2}, Landroidx/lifecycle/q0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/s0;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    goto :goto_3

    .line 111
    :cond_4
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-static {p1, v1, p2}, Landroidx/lifecycle/q0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/s0;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :goto_3
    const-string p2, "androidx.lifecycle.savedstate.vm.tag"

    .line 120
    .line 121
    iget-object v0, p1, Landroidx/lifecycle/s0;->a:Ljava/util/HashMap;

    .line 122
    .line 123
    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p1, Landroidx/lifecycle/s0;->a:Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-nez v1, :cond_5

    .line 131
    .line 132
    iget-object v2, p1, Landroidx/lifecycle/s0;->a:Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-virtual {v2, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :catchall_0
    move-exception p1

    .line 139
    goto :goto_6

    .line 140
    :cond_5
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    if-nez v1, :cond_6

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_6
    move-object v5, v1

    .line 145
    :goto_5
    iget-boolean p2, p1, Landroidx/lifecycle/s0;->c:Z

    .line 146
    .line 147
    if-eqz p2, :cond_7

    .line 148
    .line 149
    invoke-static {v5}, Landroidx/lifecycle/s0;->a(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_7
    return-object p1

    .line 153
    :goto_6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    throw p1

    .line 155
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 156
    .line 157
    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    .line 158
    .line 159
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p1
.end method

.method public final c(Ljava/lang/Class;Lu0/d;)Landroidx/lifecycle/s0;
    .locals 3

    .line 1
    sget-object v0, Landroidx/lifecycle/t0;->b:Landroidx/lifecycle/t0;

    .line 2
    .line 3
    iget-object v1, p2, Lu0/b;->a:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    sget-object v2, Landroidx/lifecycle/k;->a:Landroidx/lifecycle/t0;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    sget-object v2, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/t0;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    sget-object v0, Landroidx/lifecycle/t0;->a:Landroidx/lifecycle/t0;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/app/Application;

    .line 36
    .line 37
    const-class v1, Landroidx/lifecycle/a;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    sget-object v2, Landroidx/lifecycle/q0;->a:Ljava/util/List;

    .line 48
    .line 49
    :goto_0
    invoke-static {p1, v2}, Landroidx/lifecycle/q0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    sget-object v2, Landroidx/lifecycle/q0;->b:Ljava/util/List;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_1
    if-nez v2, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/lifecycle/p0;->b:Landroidx/lifecycle/u0;

    .line 60
    .line 61
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/u0;->c(Ljava/lang/Class;Lu0/d;)Landroidx/lifecycle/s0;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    :cond_1
    if-eqz v1, :cond_2

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-static {p2}, Landroidx/lifecycle/k;->f(Lu0/d;)Landroidx/lifecycle/k0;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-static {p1, v2, p2}, Landroidx/lifecycle/q0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/s0;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/k;->f(Lu0/d;)Landroidx/lifecycle/k0;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {p1, v2, p2}, Landroidx/lifecycle/q0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/s0;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/p0;->d:Landroidx/lifecycle/o;

    .line 97
    .line 98
    if-eqz p2, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/p0;->b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/s0;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :goto_2
    return-object p1

    .line 105
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    .line 108
    .line 109
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1
.end method
