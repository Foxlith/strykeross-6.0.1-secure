.class public final Lq1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/r;


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/job/JobScheduler;

.field public final c:Ln1/a0;

.field public final d:Lq1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SystemJobScheduler"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lq1/c;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln1/a0;)V
    .locals 2

    .line 1
    const-string v0, "jobscheduler"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 8
    .line 9
    new-instance v1, Lq1/b;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Lq1/b;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lq1/c;->a:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p2, p0, Lq1/c;->c:Ln1/a0;

    .line 20
    .line 21
    iput-object v0, p0, Lq1/c;->b:Landroid/app/job/JobScheduler;

    .line 22
    .line 23
    iput-object v1, p0, Lq1/c;->d:Lq1/b;

    .line 24
    .line 25
    return-void
.end method

.method public static b(Landroid/app/job/JobScheduler;I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Exception while trying to cancel job (%d)"

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lq1/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p0}, Lm1/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v1

    sget-object v2, Lq1/c;->e:Ljava/lang/String;

    const-string v3, "getAllPendingJobs() is not reliable on this device."

    invoke-virtual {v1, v2, v3, p1}, Lm1/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static d(Landroid/app/job/JobInfo;)Lv1/i;
    .locals 3

    .line 1
    const-string v0, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EXTRA_WORK_SPEC_GENERATION"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Lv1/i;

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lv1/i;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lq1/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lq1/c;->b:Landroid/app/job/JobScheduler;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lq1/c;->c(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/app/job/JobInfo;

    .line 34
    .line 35
    invoke-static {v3}, Lq1/c;->d(Landroid/app/job/JobInfo;)Lv1/i;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    iget-object v4, v4, Lv1/i;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move-object v0, v2

    .line 62
    :goto_1
    if-eqz v0, :cond_5

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-static {v1, v2}, Lq1/c;->b(Landroid/app/job/JobScheduler;I)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    iget-object v0, p0, Lq1/c;->c:Ln1/a0;

    .line 95
    .line 96
    iget-object v0, v0, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->s()Lv1/h;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v1, v0, Lv1/h;->a:Ljava/lang/Object;

    .line 103
    .line 104
    move-object v2, v1

    .line 105
    check-cast v2, Ly0/w;

    .line 106
    .line 107
    invoke-virtual {v2}, Ly0/w;->b()V

    .line 108
    .line 109
    .line 110
    iget-object v3, v0, Lv1/h;->d:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v3, Landroidx/appcompat/view/menu/d;

    .line 113
    .line 114
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/d;->c()Lc1/h;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const/4 v4, 0x1

    .line 119
    if-nez p1, :cond_4

    .line 120
    .line 121
    invoke-interface {v3, v4}, Lc1/f;->h(I)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_4
    invoke-interface {v3, v4, p1}, Lc1/f;->d(ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :goto_3
    invoke-virtual {v2}, Ly0/w;->c()V

    .line 129
    .line 130
    .line 131
    :try_start_0
    invoke-interface {v3}, Lc1/h;->e()I

    .line 132
    .line 133
    .line 134
    check-cast v1, Ly0/w;

    .line 135
    .line 136
    invoke-virtual {v1}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ly0/w;->k()V

    .line 140
    .line 141
    .line 142
    iget-object p1, v0, Lv1/h;->d:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p1, Landroidx/appcompat/view/menu/d;

    .line 145
    .line 146
    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :catchall_0
    move-exception p1

    .line 151
    invoke-virtual {v2}, Ly0/w;->k()V

    .line 152
    .line 153
    .line 154
    iget-object v0, v0, Lv1/h;->d:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v0, Landroidx/appcompat/view/menu/d;

    .line 157
    .line 158
    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :cond_5
    :goto_4
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final varargs f([Lv1/p;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lq1/c;->c:Ln1/a0;

    .line 2
    .line 3
    iget-object v1, v0, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 4
    .line 5
    new-instance v2, Lw1/i;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, v1, v3}, Lw1/i;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 9
    .line 10
    .line 11
    array-length v4, p1

    .line 12
    :goto_0
    if-ge v3, v4, :cond_4

    .line 13
    .line 14
    aget-object v5, p1, v3

    .line 15
    .line 16
    invoke-virtual {v1}, Ly0/w;->c()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    iget-object v7, v5, Lv1/p;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v6, v7}, Lv1/r;->h(Ljava/lang/String;)Lv1/p;

    .line 26
    .line 27
    .line 28
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const-string v7, "Skipping scheduling "

    .line 30
    .line 31
    sget-object v8, Lq1/c;->e:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v9, v5, Lv1/p;->a:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v6, :cond_0

    .line 36
    .line 37
    :try_start_1
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v7, " because it\'s no longer in the DB"

    .line 53
    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v5, v8, v6}, Lm1/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-virtual {v1}, Ly0/w;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ly0/w;->k()V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_4

    .line 73
    :cond_0
    :try_start_2
    iget v6, v6, Lv1/p;->b:I

    .line 74
    .line 75
    const/4 v10, 0x1

    .line 76
    if-eq v6, v10, :cond_1

    .line 77
    .line 78
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v7, " because it is no longer enqueued"

    .line 94
    .line 95
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v5, v8, v6}, Lm1/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    invoke-static {v5}, Lv1/f;->t(Lv1/p;)Lv1/i;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->s()Lv1/h;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v7, v6}, Lv1/h;->m(Lv1/i;)Lv1/g;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    if-eqz v7, :cond_2

    .line 119
    .line 120
    iget v8, v7, Lv1/g;->c:I

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    iget-object v8, v0, Ln1/a0;->d:Lm1/b;

    .line 124
    .line 125
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object v8, v0, Ln1/a0;->d:Lm1/b;

    .line 129
    .line 130
    iget v8, v8, Lm1/b;->g:I

    .line 131
    .line 132
    new-instance v9, Lw1/h;

    .line 133
    .line 134
    invoke-direct {v9, v2, v8}, Lw1/h;-><init>(Lw1/i;I)V

    .line 135
    .line 136
    .line 137
    iget-object v8, v2, Lw1/i;->a:Landroidx/work/impl/WorkDatabase;

    .line 138
    .line 139
    invoke-virtual {v8, v9}, Ly0/w;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    const-string v9, "workDatabase.runInTransa\u2026            id\n        })"

    .line 144
    .line 145
    invoke-static {v8, v9}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    check-cast v8, Ljava/lang/Number;

    .line 149
    .line 150
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    :goto_2
    if-nez v7, :cond_3

    .line 155
    .line 156
    new-instance v7, Lv1/g;

    .line 157
    .line 158
    iget-object v9, v6, Lv1/i;->a:Ljava/lang/String;

    .line 159
    .line 160
    iget v6, v6, Lv1/i;->b:I

    .line 161
    .line 162
    invoke-direct {v7, v9, v6, v8}, Lv1/g;-><init>(Ljava/lang/String;II)V

    .line 163
    .line 164
    .line 165
    iget-object v6, v0, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 166
    .line 167
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->s()Lv1/h;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {v6, v7}, Lv1/h;->n(Lv1/g;)V

    .line 172
    .line 173
    .line 174
    :cond_3
    invoke-virtual {p0, v5, v8}, Lq1/c;->g(Lv1/p;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :goto_4
    invoke-virtual {v1}, Ly0/w;->k()V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :cond_4
    return-void
.end method

.method public final g(Lv1/p;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v3, v1, Lq1/c;->b:Landroid/app/job/JobScheduler;

    .line 6
    .line 7
    sget-object v4, Lq1/c;->e:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, v1, Lq1/c;->d:Lq1/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v5, v2, Lv1/p;->j:Lm1/d;

    .line 15
    .line 16
    new-instance v6, Landroid/os/PersistableBundle;

    .line 17
    .line 18
    invoke-direct {v6}, Landroid/os/PersistableBundle;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v7, "EXTRA_WORK_SPEC_ID"

    .line 22
    .line 23
    iget-object v8, v2, Lv1/p;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v7, "EXTRA_WORK_SPEC_GENERATION"

    .line 29
    .line 30
    iget v9, v2, Lv1/p;->t:I

    .line 31
    .line 32
    invoke-virtual {v6, v7, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    const-string v7, "EXTRA_IS_PERIODIC"

    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Lv1/p;->d()Z

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    invoke-virtual {v6, v7, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    new-instance v7, Landroid/app/job/JobInfo$Builder;

    .line 45
    .line 46
    iget-object v0, v0, Lq1/b;->a:Landroid/content/ComponentName;

    .line 47
    .line 48
    move/from16 v9, p2

    .line 49
    .line 50
    invoke-direct {v7, v9, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v0, v5, Lm1/d;->b:Z

    .line 54
    .line 55
    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-boolean v7, v5, Lm1/d;->c:Z

    .line 60
    .line 61
    invoke-virtual {v0, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, v6}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    const/4 v10, 0x2

    .line 72
    const/4 v11, 0x1

    .line 73
    const/16 v13, 0x1e

    .line 74
    .line 75
    const/16 v14, 0x1a

    .line 76
    .line 77
    iget v15, v5, Lm1/d;->a:I

    .line 78
    .line 79
    if-lt v6, v13, :cond_0

    .line 80
    .line 81
    const/4 v13, 0x6

    .line 82
    if-ne v15, v13, :cond_0

    .line 83
    .line 84
    new-instance v13, Landroid/net/NetworkRequest$Builder;

    .line 85
    .line 86
    invoke-direct {v13}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 87
    .line 88
    .line 89
    const/16 v15, 0x19

    .line 90
    .line 91
    invoke-virtual {v13, v15}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    invoke-virtual {v13}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    invoke-static {v0, v13}, Landroidx/core/view/j;->r(Landroid/app/job/JobInfo$Builder;Landroid/net/NetworkRequest;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_0
    invoke-static {v15}, Lo/i;->c(I)I

    .line 104
    .line 105
    .line 106
    move-result v13

    .line 107
    if-eqz v13, :cond_5

    .line 108
    .line 109
    if-eq v13, v11, :cond_3

    .line 110
    .line 111
    if-eq v13, v10, :cond_4

    .line 112
    .line 113
    const/4 v12, 0x3

    .line 114
    if-eq v13, v12, :cond_6

    .line 115
    .line 116
    const/4 v12, 0x4

    .line 117
    if-eq v13, v12, :cond_1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    if-lt v6, v14, :cond_2

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    :goto_0
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    invoke-static {v15}, Ll1/e;->D(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    :cond_3
    move v12, v11

    .line 134
    goto :goto_1

    .line 135
    :cond_4
    move v12, v10

    .line 136
    goto :goto_1

    .line 137
    :cond_5
    const/4 v12, 0x0

    .line 138
    :cond_6
    :goto_1
    invoke-virtual {v0, v12}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 139
    .line 140
    .line 141
    :goto_2
    if-nez v7, :cond_8

    .line 142
    .line 143
    iget v7, v2, Lv1/p;->l:I

    .line 144
    .line 145
    if-ne v7, v10, :cond_7

    .line 146
    .line 147
    const/4 v7, 0x0

    .line 148
    goto :goto_3

    .line 149
    :cond_7
    move v7, v11

    .line 150
    :goto_3
    iget-wide v12, v2, Lv1/p;->m:J

    .line 151
    .line 152
    invoke-virtual {v0, v12, v13, v7}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 153
    .line 154
    .line 155
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lv1/p;->a()J

    .line 156
    .line 157
    .line 158
    move-result-wide v12

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 160
    .line 161
    .line 162
    move-result-wide v16

    .line 163
    sub-long v12, v12, v16

    .line 164
    .line 165
    const-wide/16 v14, 0x0

    .line 166
    .line 167
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 168
    .line 169
    .line 170
    move-result-wide v12

    .line 171
    const/16 v10, 0x1c

    .line 172
    .line 173
    if-gt v6, v10, :cond_9

    .line 174
    .line 175
    :goto_4
    invoke-virtual {v0, v12, v13}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_9
    cmp-long v6, v12, v14

    .line 180
    .line 181
    if-lez v6, :cond_a

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_a
    iget-boolean v6, v2, Lv1/p;->q:Z

    .line 185
    .line 186
    if-nez v6, :cond_b

    .line 187
    .line 188
    invoke-static {v0}, Landroidx/core/view/j;->q(Landroid/app/job/JobInfo$Builder;)V

    .line 189
    .line 190
    .line 191
    :cond_b
    :goto_5
    iget-object v6, v5, Lm1/d;->h:Ljava/util/Set;

    .line 192
    .line 193
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    xor-int/2addr v10, v11

    .line 198
    if-eqz v10, :cond_d

    .line 199
    .line 200
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    if-eqz v10, :cond_c

    .line 209
    .line 210
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    check-cast v10, Lm1/c;

    .line 215
    .line 216
    iget-boolean v7, v10, Lm1/c;->b:Z

    .line 217
    .line 218
    new-instance v11, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 219
    .line 220
    iget-object v10, v10, Lm1/c;->a:Landroid/net/Uri;

    .line 221
    .line 222
    invoke-direct {v11, v10, v7}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v11}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    .line 226
    .line 227
    .line 228
    const/4 v11, 0x1

    .line 229
    goto :goto_6

    .line 230
    :cond_c
    iget-wide v6, v5, Lm1/d;->f:J

    .line 231
    .line 232
    invoke-virtual {v0, v6, v7}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 233
    .line 234
    .line 235
    iget-wide v6, v5, Lm1/d;->g:J

    .line 236
    .line 237
    invoke-virtual {v0, v6, v7}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 238
    .line 239
    .line 240
    :cond_d
    const/4 v6, 0x0

    .line 241
    invoke-virtual {v0, v6}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 242
    .line 243
    .line 244
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 245
    .line 246
    const/16 v7, 0x1a

    .line 247
    .line 248
    if-lt v6, v7, :cond_e

    .line 249
    .line 250
    iget-boolean v7, v5, Lm1/d;->d:Z

    .line 251
    .line 252
    invoke-static {v0, v7}, Lq1/a;->h(Landroid/app/job/JobInfo$Builder;Z)V

    .line 253
    .line 254
    .line 255
    iget-boolean v5, v5, Lm1/d;->e:Z

    .line 256
    .line 257
    invoke-static {v0, v5}, Lq1/a;->n(Landroid/app/job/JobInfo$Builder;Z)V

    .line 258
    .line 259
    .line 260
    :cond_e
    iget v5, v2, Lv1/p;->k:I

    .line 261
    .line 262
    if-lez v5, :cond_f

    .line 263
    .line 264
    const/4 v5, 0x1

    .line 265
    goto :goto_7

    .line 266
    :cond_f
    const/4 v5, 0x0

    .line 267
    :goto_7
    cmp-long v7, v12, v14

    .line 268
    .line 269
    if-lez v7, :cond_10

    .line 270
    .line 271
    const/4 v7, 0x1

    .line 272
    goto :goto_8

    .line 273
    :cond_10
    const/4 v7, 0x0

    .line 274
    :goto_8
    const/16 v10, 0x1f

    .line 275
    .line 276
    if-lt v6, v10, :cond_11

    .line 277
    .line 278
    iget-boolean v6, v2, Lv1/p;->q:Z

    .line 279
    .line 280
    if-eqz v6, :cond_11

    .line 281
    .line 282
    if-nez v5, :cond_11

    .line 283
    .line 284
    if-nez v7, :cond_11

    .line 285
    .line 286
    invoke-static {v0}, Landroidx/core/view/d;->i(Landroid/app/job/JobInfo$Builder;)V

    .line 287
    .line 288
    .line 289
    :cond_11
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-nez v0, :cond_12

    .line 305
    .line 306
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    new-instance v5, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    const-string v6, "Unable to schedule work ID "

    .line 316
    .line 317
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    invoke-virtual {v0, v4, v5}, Lm1/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-boolean v0, v2, Lv1/p;->q:Z

    .line 331
    .line 332
    if-eqz v0, :cond_12

    .line 333
    .line 334
    iget v0, v2, Lv1/p;->r:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .line 336
    const/4 v5, 0x1

    .line 337
    if-ne v0, v5, :cond_12

    .line 338
    .line 339
    const/4 v5, 0x0

    .line 340
    :try_start_1
    iput-boolean v5, v2, Lv1/p;->q:Z

    .line 341
    .line 342
    const-string v0, "Scheduling a non-expedited job (work ID %s)"

    .line 343
    .line 344
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    invoke-virtual/range {p0 .. p2}, Lq1/c;->g(Lv1/p;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    .line 360
    .line 361
    goto :goto_a

    .line 362
    :catchall_0
    move-exception v0

    .line 363
    goto :goto_9

    .line 364
    :catch_0
    move-exception v0

    .line 365
    goto :goto_b

    .line 366
    :catch_1
    move-exception v0

    .line 367
    const/4 v5, 0x0

    .line 368
    goto :goto_b

    .line 369
    :goto_9
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    new-instance v5, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    const-string v6, "Unable to schedule "

    .line 376
    .line 377
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v3, v4, v2, v0}, Lm1/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    .line 389
    .line 390
    :cond_12
    :goto_a
    return-void

    .line 391
    :goto_b
    iget-object v2, v1, Lq1/c;->a:Landroid/content/Context;

    .line 392
    .line 393
    invoke-static {v2, v3}, Lq1/c;->c(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    if-eqz v2, :cond_13

    .line 398
    .line 399
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 400
    .line 401
    .line 402
    move-result v12

    .line 403
    goto :goto_c

    .line 404
    :cond_13
    move v12, v5

    .line 405
    :goto_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    iget-object v5, v1, Lq1/c;->c:Ln1/a0;

    .line 414
    .line 415
    iget-object v6, v5, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 416
    .line 417
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    invoke-virtual {v6}, Lv1/r;->e()Ljava/util/ArrayList;

    .line 422
    .line 423
    .line 424
    move-result-object v6

    .line 425
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 426
    .line 427
    .line 428
    move-result v6

    .line 429
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    iget-object v7, v5, Ln1/a0;->d:Lm1/b;

    .line 434
    .line 435
    iget v7, v7, Lm1/b;->h:I

    .line 436
    .line 437
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    filled-new-array {v3, v6, v7}, [Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    const-string v6, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d."

    .line 446
    .line 447
    invoke-static {v2, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    invoke-virtual {v3, v4, v2}, Lm1/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 459
    .line 460
    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    .line 462
    .line 463
    iget-object v0, v5, Ln1/a0;->d:Lm1/b;

    .line 464
    .line 465
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    throw v3
.end method
