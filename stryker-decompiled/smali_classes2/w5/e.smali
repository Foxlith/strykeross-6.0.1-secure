.class public final Lw5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile o:Lw5/e;

.field public static final p:Lw5/f;

.field public static final q:Ljava/util/HashMap;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Lw5/b;

.field public final e:Lw5/g;

.field public final f:Lw5/a;

.field public final g:Landroidx/appcompat/widget/j;

.field public final h:Lw5/n;

.field public final i:Ljava/util/concurrent/ExecutorService;

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lw5/f;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lw5/f;->b:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    iput-object v1, v0, Lw5/f;->a:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    sput-object v0, Lw5/e;->p:Lw5/f;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lw5/e;->q:Ljava/util/HashMap;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lw5/b;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lw5/e;->d:Lw5/b;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lw5/e;->a:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lw5/e;->b:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lw5/e;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    new-instance v0, Lw5/g;

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, p0, v1}, Lw5/g;-><init>(Lw5/e;Landroid/os/Looper;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lw5/e;->e:Lw5/g;

    .line 42
    .line 43
    new-instance v0, Lw5/a;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lw5/a;-><init>(Lw5/e;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lw5/e;->f:Lw5/a;

    .line 49
    .line 50
    new-instance v0, Landroidx/appcompat/widget/j;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/j;-><init>(Lw5/e;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lw5/e;->g:Landroidx/appcompat/widget/j;

    .line 56
    .line 57
    sget-object v0, Lw5/e;->p:Lw5/f;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance v1, Lw5/n;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lw5/e;->h:Lw5/n;

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lw5/e;->j:Z

    .line 71
    .line 72
    iput-boolean v1, p0, Lw5/e;->k:Z

    .line 73
    .line 74
    iput-boolean v1, p0, Lw5/e;->l:Z

    .line 75
    .line 76
    iput-boolean v1, p0, Lw5/e;->m:Z

    .line 77
    .line 78
    iput-boolean v1, p0, Lw5/e;->n:Z

    .line 79
    .line 80
    iget-object v0, v0, Lw5/f;->a:Ljava/util/concurrent/ExecutorService;

    .line 81
    .line 82
    iput-object v0, p0, Lw5/e;->i:Ljava/util/concurrent/ExecutorService;

    .line 83
    .line 84
    return-void
.end method

.method public static a(Ljava/util/ArrayList;[Ljava/lang/Class;)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lw5/e;->a(Ljava/util/ArrayList;[Ljava/lang/Class;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b()Lw5/e;
    .locals 2

    .line 1
    sget-object v0, Lw5/e;->o:Lw5/e;

    if-nez v0, :cond_1

    const-class v0, Lw5/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lw5/e;->o:Lw5/e;

    if-nez v1, :cond_0

    new-instance v1, Lw5/e;

    invoke-direct {v1}, Lw5/e;-><init>()V

    sput-object v1, Lw5/e;->o:Lw5/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lw5/e;->o:Lw5/e;

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Lw5/o;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p2, Lw5/o;->b:Lw5/l;

    .line 2
    .line 3
    iget-object v0, v0, Lw5/l;->a:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    iget-object v1, p2, Lw5/o;->a:Ljava/lang/Object;

    .line 6
    .line 7
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "Unexpected exception"

    .line 23
    .line 24
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw p2

    .line 28
    :goto_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v1, p1, Lw5/k;

    .line 33
    .line 34
    iget-boolean v2, p0, Lw5/e;->j:Z

    .line 35
    .line 36
    const-string v3, "EventBus"

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "SubscriberExceptionEvent subscriber "

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p2, Lw5/o;->a:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p2, " threw an exception"

    .line 59
    .line 60
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-static {v3, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    check-cast p1, Lw5/k;

    .line 71
    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v0, "Initial event "

    .line 75
    .line 76
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p1, Lw5/k;->b:Ljava/lang/Object;

    .line 80
    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, " caused exception in "

    .line 85
    .line 86
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v0, p1, Lw5/k;->c:Ljava/lang/Object;

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iget-object p1, p1, Lw5/k;->a:Ljava/lang/Throwable;

    .line 99
    .line 100
    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_0
    if-eqz v2, :cond_1

    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v2, "Could not dispatch event: "

    .line 109
    .line 110
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, " to subscribing class "

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v2, p2, Lw5/o;->a:Ljava/lang/Object;

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .line 140
    .line 141
    :cond_1
    iget-boolean v1, p0, Lw5/e;->l:Z

    .line 142
    .line 143
    if-eqz v1, :cond_2

    .line 144
    .line 145
    new-instance v1, Lw5/k;

    .line 146
    .line 147
    iget-object p2, p2, Lw5/o;->a:Ljava/lang/Object;

    .line 148
    .line 149
    invoke-direct {v1, v0, p1, p2}, Lw5/k;-><init>(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v1}, Lw5/e;->e(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_2
    return-void
.end method

.method public final d(Lw5/i;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lw5/i;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p1, Lw5/i;->b:Lw5/o;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, p1, Lw5/i;->a:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v2, p1, Lw5/i;->b:Lw5/o;

    .line 9
    .line 10
    iput-object v2, p1, Lw5/i;->c:Lw5/i;

    .line 11
    .line 12
    sget-object v2, Lw5/i;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/16 v4, 0x2710

    .line 20
    .line 21
    if-ge v3, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-boolean p1, v1, Lw5/o;->c:Z

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lw5/e;->c(Ljava/lang/Object;Lw5/o;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p1
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lw5/e;->d:Lw5/b;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw5/d;

    iget-object v1, v0, Lw5/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, v0, Lw5/d;->b:Z

    if-nez p1, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    iput-boolean p1, v0, Lw5/d;->c:Z

    iput-boolean v3, v0, Lw5/d;->b:Z

    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lw5/e;->f(Ljava/lang/Object;Lw5/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    iput-boolean v4, v0, Lw5/d;->b:Z

    iput-boolean v4, v0, Lw5/d;->c:Z

    goto :goto_3

    :goto_2
    iput-boolean v4, v0, Lw5/d;->b:Z

    iput-boolean v4, v0, Lw5/d;->c:Z

    throw p1

    :cond_2
    :goto_3
    return-void
.end method

.method public final f(Ljava/lang/Object;Lw5/d;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lw5/e;->n:Z

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    sget-object v1, Lw5/e;->q:Ljava/util/HashMap;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/util/List;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    move-object v3, v0

    .line 26
    :goto_0
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v2, v4}, Lw5/e;->a(Ljava/util/ArrayList;[Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    sget-object v3, Lw5/e;->q:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v3, 0x0

    .line 56
    move v4, v3

    .line 57
    :goto_1
    if-ge v3, v1, :cond_3

    .line 58
    .line 59
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Ljava/lang/Class;

    .line 64
    .line 65
    invoke-virtual {p0, p1, p2, v5}, Lw5/e;->g(Ljava/lang/Object;Lw5/d;Ljava/lang/Class;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    or-int/2addr v4, v5

    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw p1

    .line 75
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lw5/e;->g(Ljava/lang/Object;Lw5/d;Ljava/lang/Class;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    :cond_3
    if-nez v4, :cond_5

    .line 80
    .line 81
    iget-boolean p2, p0, Lw5/e;->k:Z

    .line 82
    .line 83
    if-eqz p2, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    :cond_4
    iget-boolean p2, p0, Lw5/e;->m:Z

    .line 89
    .line 90
    if-eqz p2, :cond_5

    .line 91
    .line 92
    const-class p2, Lw5/h;

    .line 93
    .line 94
    if-eq v0, p2, :cond_5

    .line 95
    .line 96
    const-class p2, Lw5/k;

    .line 97
    .line 98
    if-eq v0, p2, :cond_5

    .line 99
    .line 100
    new-instance p2, Lw5/h;

    .line 101
    .line 102
    invoke-direct {p2, p0, p1}, Lw5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p2}, Lw5/e;->e(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_5
    return-void
.end method

.method public final g(Ljava/lang/Object;Lw5/d;Ljava/lang/Class;)Z
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw5/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw5/o;

    iput-object p1, p2, Lw5/d;->d:Ljava/lang/Object;

    iget-boolean v1, p2, Lw5/d;->c:Z

    invoke-virtual {p0, v0, p1, v1}, Lw5/e;->h(Lw5/o;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h(Lw5/o;Ljava/lang/Object;Z)V
    .locals 3

    .line 1
    sget-object v0, Lw5/c;->a:[I

    .line 2
    .line 3
    iget-object v1, p1, Lw5/o;->b:Lw5/l;

    .line 4
    .line 5
    iget-object v1, v1, Lw5/l;->b:Lorg/greenrobot/eventbus/ThreadMode;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v0, v2, :cond_4

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    const/4 p3, 0x4

    .line 23
    if-ne v0, p3, :cond_0

    .line 24
    .line 25
    iget-object p3, p0, Lw5/e;->g:Landroidx/appcompat/widget/j;

    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p2, p1}, Lw5/i;->a(Ljava/lang/Object;Lw5/o;)Lw5/i;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p3, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p2, Lv1/e;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Lv1/e;->a(Lw5/i;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p3, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lw5/e;

    .line 44
    .line 45
    iget-object p1, p1, Lw5/e;->i:Ljava/util/concurrent/ExecutorService;

    .line 46
    .line 47
    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_5

    .line 51
    .line 52
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    new-instance p3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v0, "Unknown thread mode: "

    .line 57
    .line 58
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p1, Lw5/o;->b:Lw5/l;

    .line 62
    .line 63
    iget-object p1, p1, Lw5/l;->b:Lorg/greenrobot/eventbus/ThreadMode;

    .line 64
    .line 65
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p2

    .line 76
    :cond_1
    if-eqz p3, :cond_3

    .line 77
    .line 78
    iget-object p3, p0, Lw5/e;->f:Lw5/a;

    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {p2, p1}, Lw5/i;->a(Ljava/lang/Object;Lw5/o;)Lw5/i;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    monitor-enter p3

    .line 88
    :try_start_0
    iget-object p2, p3, Lw5/a;->a:Lv1/e;

    .line 89
    .line 90
    invoke-virtual {p2, p1}, Lv1/e;->a(Lw5/i;)V

    .line 91
    .line 92
    .line 93
    iget-boolean p1, p3, Lw5/a;->c:Z

    .line 94
    .line 95
    if-nez p1, :cond_2

    .line 96
    .line 97
    iput-boolean v1, p3, Lw5/a;->c:Z

    .line 98
    .line 99
    iget-object p1, p3, Lw5/a;->b:Lw5/e;

    .line 100
    .line 101
    iget-object p1, p1, Lw5/e;->i:Ljava/util/concurrent/ExecutorService;

    .line 102
    .line 103
    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    :goto_0
    monitor-exit p3

    .line 110
    goto :goto_5

    .line 111
    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    throw p1

    .line 113
    :cond_3
    :goto_2
    invoke-virtual {p0, p2, p1}, Lw5/e;->c(Ljava/lang/Object;Lw5/o;)V

    .line 114
    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_4
    if-eqz p3, :cond_5

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    iget-object p3, p0, Lw5/e;->e:Lw5/g;

    .line 121
    .line 122
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {p2, p1}, Lw5/i;->a(Ljava/lang/Object;Lw5/o;)Lw5/i;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    monitor-enter p3

    .line 130
    :try_start_1
    iget-object p2, p3, Lw5/g;->a:Lv1/e;

    .line 131
    .line 132
    invoke-virtual {p2, p1}, Lv1/e;->a(Lw5/i;)V

    .line 133
    .line 134
    .line 135
    iget-boolean p1, p3, Lw5/g;->d:Z

    .line 136
    .line 137
    if-nez p1, :cond_7

    .line 138
    .line 139
    iput-boolean v1, p3, Lw5/g;->d:Z

    .line 140
    .line 141
    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_6

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_6
    new-instance p1, Landroidx/fragment/app/u;

    .line 153
    .line 154
    const-string p2, "Could not send handler message"

    .line 155
    .line 156
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1

    .line 160
    :catchall_1
    move-exception p1

    .line 161
    goto :goto_4

    .line 162
    :cond_7
    :goto_3
    monitor-exit p3

    .line 163
    goto :goto_5

    .line 164
    :goto_4
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    throw p1

    .line 166
    :goto_5
    return-void
.end method

.method public final i(Ljava/lang/Object;Lw5/l;)V
    .locals 8

    .line 1
    iget-object v0, p2, Lw5/l;->c:Ljava/lang/Class;

    .line 2
    .line 3
    new-instance v1, Lw5/o;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lw5/o;-><init>(Ljava/lang/Object;Lw5/l;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lw5/e;->a:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_a

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v4, 0x0

    .line 38
    move v5, v4

    .line 39
    :goto_1
    if-gt v5, v2, :cond_3

    .line 40
    .line 41
    if-eq v5, v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lw5/o;

    .line 48
    .line 49
    iget-object v6, v6, Lw5/o;->b:Lw5/l;

    .line 50
    .line 51
    iget v6, v6, Lw5/l;->d:I

    .line 52
    .line 53
    iget v7, p2, Lw5/l;->d:I

    .line 54
    .line 55
    if-le v7, v6, :cond_1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_2
    invoke-virtual {v3, v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v2, p0, Lw5/e;->b:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/util/List;

    .line 71
    .line 72
    if-nez v3, :cond_4

    .line 73
    .line 74
    new-instance v3, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-boolean p1, p2, Lw5/l;->e:Z

    .line 86
    .line 87
    if-eqz p1, :cond_9

    .line 88
    .line 89
    iget-object p1, p0, Lw5/e;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    .line 91
    const/4 p2, 0x1

    .line 92
    iget-boolean v2, p0, Lw5/e;->n:Z

    .line 93
    .line 94
    if-eqz v2, :cond_7

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_9

    .line 109
    .line 110
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Ljava/util/Map$Entry;

    .line 115
    .line 116
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Ljava/lang/Class;

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_5

    .line 127
    .line 128
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    if-eqz v2, :cond_5

    .line 133
    .line 134
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    if-ne v3, v5, :cond_6

    .line 143
    .line 144
    move v3, p2

    .line 145
    goto :goto_4

    .line 146
    :cond_6
    move v3, v4

    .line 147
    :goto_4
    invoke-virtual {p0, v1, v2, v3}, Lw5/e;->h(Lw5/o;Ljava/lang/Object;Z)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_9

    .line 156
    .line 157
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    if-ne v0, v2, :cond_8

    .line 166
    .line 167
    move v4, p2

    .line 168
    :cond_8
    invoke-virtual {p0, v1, p1, v4}, Lw5/e;->h(Lw5/o;Ljava/lang/Object;Z)V

    .line 169
    .line 170
    .line 171
    :cond_9
    return-void

    .line 172
    :cond_a
    new-instance p2, Landroidx/fragment/app/u;

    .line 173
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v2, "Subscriber "

    .line 177
    .line 178
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string p1, " already registered to event "

    .line 189
    .line 190
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p2
.end method

.method public final declared-synchronized j(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v0, "Subscriber to unregister was not registered before: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lw5/e;->b:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/List;

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Class;

    .line 29
    .line 30
    iget-object v2, p0, Lw5/e;->a:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/util/List;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x0

    .line 45
    move v4, v3

    .line 46
    :goto_0
    if-ge v4, v2, :cond_0

    .line 47
    .line 48
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lw5/o;

    .line 53
    .line 54
    iget-object v6, v5, Lw5/o;->a:Ljava/lang/Object;

    .line 55
    .line 56
    if-ne v6, p1, :cond_1

    .line 57
    .line 58
    iput-boolean v3, v5, Lw5/o;->c:Z

    .line 59
    .line 60
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    add-int/lit8 v4, v4, -0x1

    .line 64
    .line 65
    add-int/lit8 v2, v2, -0x1

    .line 66
    .line 67
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    iget-object v0, p0, Lw5/e;->b:Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const-string v1, "EventBus"

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    :goto_1
    monitor-exit p0

    .line 100
    return-void

    .line 101
    :goto_2
    monitor-exit p0

    .line 102
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventBus[indexCount=0, eventInheritance="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lw5/e;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
