.class public final Lu1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/b;
.implements Ln1/c;


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field public final a:Ln1/a0;

.field public final b:Ly1/b;

.field public final c:Ljava/lang/Object;

.field public d:Lv1/i;

.field public final e:Ljava/util/LinkedHashMap;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashSet;

.field public final h:Lr1/c;

.field public i:Lu1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SystemFgDispatcher"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu1/c;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lu1/c;->c:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {p1}, Ln1/a0;->M(Landroid/content/Context;)Ln1/a0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lu1/c;->a:Ln1/a0;

    .line 16
    .line 17
    iget-object v0, p1, Ln1/a0;->f:Ly1/b;

    .line 18
    .line 19
    iput-object v0, p0, Lu1/c;->b:Ly1/b;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lu1/c;->d:Lv1/i;

    .line 23
    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lu1/c;->e:Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    new-instance v0, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lu1/c;->g:Ljava/util/HashSet;

    .line 37
    .line 38
    new-instance v0, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lu1/c;->f:Ljava/util/HashMap;

    .line 44
    .line 45
    new-instance v0, Lr1/c;

    .line 46
    .line 47
    iget-object v1, p1, Ln1/a0;->l:Lv1/m;

    .line 48
    .line 49
    invoke-direct {v0, v1, p0}, Lr1/c;-><init>(Lv1/m;Lr1/b;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lu1/c;->h:Lr1/c;

    .line 53
    .line 54
    iget-object p1, p1, Ln1/a0;->h:Ln1/p;

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ln1/p;->a(Ln1/c;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static a(Landroid/content/Context;Lv1/i;Lm1/f;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "ACTION_NOTIFY"

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    iget p0, p2, Lm1/f;->a:I

    .line 14
    .line 15
    const-string v1, "KEY_NOTIFICATION_ID"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string p0, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 21
    .line 22
    iget v1, p2, Lm1/f;->b:I

    .line 23
    .line 24
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string p0, "KEY_NOTIFICATION"

    .line 28
    .line 29
    iget-object p2, p2, Lm1/f;->c:Landroid/app/Notification;

    .line 30
    .line 31
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const-string p0, "KEY_WORKSPEC_ID"

    .line 35
    .line 36
    iget-object p2, p1, Lv1/i;->a:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string p0, "KEY_GENERATION"

    .line 42
    .line 43
    iget p1, p1, Lv1/i;->b:I

    .line 44
    .line 45
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public static e(Landroid/content/Context;Lv1/i;Lm1/f;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "ACTION_START_FOREGROUND"

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p0, "KEY_WORKSPEC_ID"

    .line 14
    .line 15
    iget-object v1, p1, Lv1/i;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string p0, "KEY_GENERATION"

    .line 21
    .line 22
    iget p1, p1, Lv1/i;->b:I

    .line 23
    .line 24
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget p0, p2, Lm1/f;->a:I

    .line 28
    .line 29
    const-string p1, "KEY_NOTIFICATION_ID"

    .line 30
    .line 31
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const-string p0, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 35
    .line 36
    iget p1, p2, Lm1/f;->b:I

    .line 37
    .line 38
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string p0, "KEY_NOTIFICATION"

    .line 42
    .line 43
    iget-object p1, p2, Lm1/f;->c:Landroid/app/Notification;

    .line 44
    .line 45
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    return-object v0
.end method


# virtual methods
.method public final b(Lv1/i;Z)V
    .locals 7

    .line 1
    iget-object p2, p0, Lu1/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    iget-object v0, p0, Lu1/c;->f:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lv1/p;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lu1/c;->g:Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lu1/c;->h:Lr1/c;

    .line 23
    .line 24
    iget-object v1, p0, Lu1/c;->g:Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lr1/c;->b(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_0
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object p2, p0, Lu1/c;->e:Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Lm1/f;

    .line 41
    .line 42
    iget-object v0, p0, Lu1/c;->d:Lv1/i;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lv1/i;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lu1/c;->e:Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-lez v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lu1/c;->e:Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Ljava/util/Map$Entry;

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lv1/i;

    .line 86
    .line 87
    iput-object v0, p0, Lu1/c;->d:Lv1/i;

    .line 88
    .line 89
    iget-object v0, p0, Lu1/c;->i:Lu1/b;

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lm1/f;

    .line 98
    .line 99
    iget-object v1, p0, Lu1/c;->i:Lu1/b;

    .line 100
    .line 101
    iget v2, v0, Lm1/f;->a:I

    .line 102
    .line 103
    iget v3, v0, Lm1/f;->b:I

    .line 104
    .line 105
    iget-object v4, v0, Lm1/f;->c:Landroid/app/Notification;

    .line 106
    .line 107
    check-cast v1, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 108
    .line 109
    iget-object v5, v1, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    .line 110
    .line 111
    new-instance v6, Lu1/d;

    .line 112
    .line 113
    invoke-direct {v6, v1, v2, v4, v3}, Lu1/d;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lu1/c;->i:Lu1/b;

    .line 120
    .line 121
    iget v0, v0, Lm1/f;->a:I

    .line 122
    .line 123
    check-cast v1, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 124
    .line 125
    iget-object v2, v1, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    .line 126
    .line 127
    new-instance v3, Ll1/r;

    .line 128
    .line 129
    invoke-direct {v3, v1, v0}, Ll1/r;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    .line 134
    .line 135
    :cond_2
    iget-object v0, p0, Lu1/c;->i:Lu1/b;

    .line 136
    .line 137
    if-eqz p2, :cond_3

    .line 138
    .line 139
    if-eqz v0, :cond_3

    .line 140
    .line 141
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {p1}, Lv1/i;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    iget p1, p2, Lm1/f;->a:I

    .line 152
    .line 153
    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 154
    .line 155
    iget-object p2, v0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    .line 156
    .line 157
    new-instance v1, Ll1/r;

    .line 158
    .line 159
    invoke-direct {v1, v0, p1}, Ll1/r;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    .line 164
    .line 165
    :cond_3
    return-void

    .line 166
    :goto_2
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    throw p1
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lv1/p;

    .line 22
    .line 23
    iget-object v1, v0, Lv1/p;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lv1/f;->t(Lv1/p;)Lv1/i;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lu1/c;->a:Ln1/a0;

    .line 37
    .line 38
    iget-object v2, v1, Ln1/a0;->f:Ly1/b;

    .line 39
    .line 40
    new-instance v3, Lw1/p;

    .line 41
    .line 42
    new-instance v4, Ln1/t;

    .line 43
    .line 44
    invoke-direct {v4, v0}, Ln1/t;-><init>(Lv1/i;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-direct {v3, v1, v4, v0}, Lw1/p;-><init>(Ln1/a0;Ln1/t;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ly1/b;->a(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Landroid/content/Intent;)V
    .locals 8

    .line 1
    const-string v0, "KEY_NOTIFICATION_ID"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 9
    .line 10
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, "KEY_WORKSPEC_ID"

    .line 15
    .line 16
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "KEY_GENERATION"

    .line 21
    .line 22
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    new-instance v5, Lv1/i;

    .line 27
    .line 28
    invoke-direct {v5, v3, v4}, Lv1/i;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    const-string v3, "KEY_NOTIFICATION"

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/app/Notification;

    .line 38
    .line 39
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object v3, p0, Lu1/c;->i:Lu1/b;

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    new-instance v3, Lm1/f;

    .line 53
    .line 54
    invoke-direct {v3, v0, v2, p1}, Lm1/f;-><init>(IILandroid/app/Notification;)V

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Lu1/c;->e:Ljava/util/LinkedHashMap;

    .line 58
    .line 59
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-object v3, p0, Lu1/c;->d:Lv1/i;

    .line 63
    .line 64
    if-nez v3, :cond_0

    .line 65
    .line 66
    iput-object v5, p0, Lu1/c;->d:Lv1/i;

    .line 67
    .line 68
    iget-object v1, p0, Lu1/c;->i:Lu1/b;

    .line 69
    .line 70
    check-cast v1, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 71
    .line 72
    iget-object v3, v1, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    .line 73
    .line 74
    new-instance v4, Lu1/d;

    .line 75
    .line 76
    invoke-direct {v4, v1, v0, p1, v2}, Lu1/d;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    iget-object v3, p0, Lu1/c;->i:Lu1/b;

    .line 84
    .line 85
    check-cast v3, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 86
    .line 87
    iget-object v5, v3, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    .line 88
    .line 89
    new-instance v6, Lb/d;

    .line 90
    .line 91
    const/4 v7, 0x7

    .line 92
    invoke-direct {v6, v3, v0, p1, v7}, Lb/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 101
    .line 102
    const/16 v0, 0x1d

    .line 103
    .line 104
    if-lt p1, v0, :cond_2

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    .line 120
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lm1/f;

    .line 131
    .line 132
    iget v0, v0, Lm1/f;->b:I

    .line 133
    .line 134
    or-int/2addr v1, v0

    .line 135
    goto :goto_0

    .line 136
    :cond_1
    iget-object p1, p0, Lu1/c;->d:Lv1/i;

    .line 137
    .line 138
    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Lm1/f;

    .line 143
    .line 144
    if-eqz p1, :cond_2

    .line 145
    .line 146
    iget-object v0, p0, Lu1/c;->i:Lu1/b;

    .line 147
    .line 148
    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 149
    .line 150
    iget-object v2, v0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    .line 151
    .line 152
    new-instance v3, Lu1/d;

    .line 153
    .line 154
    iget v4, p1, Lm1/f;->a:I

    .line 155
    .line 156
    iget-object p1, p1, Lm1/f;->c:Landroid/app/Notification;

    .line 157
    .line 158
    invoke-direct {v3, v0, v4, p1, v1}, Lu1/d;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    .line 163
    .line 164
    :cond_2
    :goto_1
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lu1/c;->i:Lu1/b;

    .line 3
    .line 4
    iget-object v0, p0, Lu1/c;->c:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lu1/c;->h:Lr1/c;

    .line 8
    .line 9
    invoke-virtual {v1}, Lr1/c;->c()V

    .line 10
    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Lu1/c;->a:Ln1/a0;

    .line 14
    .line 15
    iget-object v0, v0, Ln1/a0;->h:Ln1/p;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ln1/p;->e(Ln1/c;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method
