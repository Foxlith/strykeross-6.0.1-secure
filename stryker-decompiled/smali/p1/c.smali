.class public final Lp1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/lang/Object;

.field public final d:Lv1/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "CommandHandler"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lp1/c;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lv1/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lp1/c;->d:Lv1/k;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lp1/c;->b:Ljava/util/HashMap;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public static c(Landroid/content/Intent;)Lv1/i;
    .locals 4

    .line 1
    new-instance v0, Lv1/i;

    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_WORKSPEC_GENERATION"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lv1/i;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static d(Landroid/content/Intent;Lv1/i;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lv1/i;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "KEY_WORKSPEC_ID"

    .line 4
    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    const-string v0, "KEY_WORKSPEC_GENERATION"

    .line 9
    .line 10
    iget p1, p1, Lv1/i;->b:I

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;ILp1/j;)V
    .locals 9

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 1
    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp1/e;

    iget-object v0, p0, Lp1/c;->a:Landroid/content/Context;

    invoke-direct {p1, v0, p2, p3}, Lp1/e;-><init>(Landroid/content/Context;ILp1/j;)V

    .line 2
    iget-object p2, p3, Lp1/j;->e:Ln1/a0;

    .line 3
    iget-object p2, p2, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 4
    invoke-virtual {p2}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    move-result-object p2

    invoke-virtual {p2}, Lv1/r;->e()Ljava/util/ArrayList;

    move-result-object p2

    sget v0, Lp1/d;->a:I

    .line 5
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    move v4, v1

    move v5, v4

    move v6, v5

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv1/p;

    iget-object v7, v7, Lv1/p;->j:Lm1/d;

    .line 6
    iget-boolean v8, v7, Lm1/d;->d:Z

    or-int/2addr v1, v8

    .line 7
    iget-boolean v8, v7, Lm1/d;->b:Z

    or-int/2addr v4, v8

    iget-boolean v8, v7, Lm1/d;->e:Z

    or-int/2addr v5, v8

    iget v7, v7, Lm1/d;->a:I

    if-eq v7, v2, :cond_1

    move v7, v2

    goto :goto_0

    :cond_1
    move v7, v3

    :goto_0
    or-int/2addr v6, v7

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    :cond_2
    sget v0, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->a:I

    .line 8
    new-instance v0, Landroid/content/Intent;

    const-string v2, "androidx.work.impl.background.systemalarm.UpdateProxies"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lp1/e;->a:Landroid/content/Context;

    const-class v7, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;

    invoke-direct {v2, v3, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_NETWORK_STATE_PROXY_ENABLED"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p1, Lp1/e;->c:Lr1/c;

    .line 10
    invoke-virtual {v0, p2}, Lr1/c;->b(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv1/p;

    iget-object v6, v2, Lv1/p;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lv1/p;->a()J

    move-result-wide v7

    cmp-long v7, v4, v7

    if-ltz v7, :cond_3

    invoke-virtual {v2}, Lv1/p;->c()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, v6}, Lr1/c;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv1/p;

    iget-object v2, v1, Lv1/p;->a:Ljava/lang/String;

    invoke-static {v1}, Lv1/f;->t(Lv1/p;)Lv1/i;

    move-result-object v1

    .line 11
    new-instance v2, Landroid/content/Intent;

    const-class v4, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "ACTION_DELAY_MET"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2, v1}, Lp1/c;->d(Landroid/content/Intent;Lv1/i;)V

    .line 12
    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object v1, p3, Lp1/j;->b:Ly1/b;

    iget-object v1, v1, Ly1/b;->c:Ly1/a;

    .line 14
    new-instance v4, Lb/d;

    iget v5, p1, Lp1/e;->b:I

    invoke-direct {v4, p3, v2, v5}, Lb/d;-><init>(Ljava/lang/Object;Landroid/content/Intent;I)V

    invoke-virtual {v1, v4}, Ly1/a;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lr1/c;->c()V

    goto/16 :goto_e

    :cond_7
    const-string v1, "ACTION_RESCHEDULE"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16
    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object p1, p3, Lp1/j;->e:Ln1/a0;

    .line 18
    invoke-virtual {p1}, Ln1/a0;->O()V

    goto/16 :goto_e

    .line 19
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "KEY_WORKSPEC_ID"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_17

    .line 20
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    goto/16 :goto_d

    :cond_9
    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    goto/16 :goto_d

    :cond_a
    const-string v1, "ACTION_SCHEDULE_WORK"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 22
    invoke-static {p1}, Lp1/c;->c(Landroid/content/Intent;)Lv1/i;

    move-result-object p1

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v0

    invoke-virtual {p1}, Lv1/i;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iget-object v0, p3, Lp1/j;->e:Ln1/a0;

    .line 24
    iget-object v0, v0, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 25
    invoke-virtual {v0}, Ly0/w;->c()V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    move-result-object v1

    .line 26
    iget-object v2, p1, Lv1/i;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {v1, v2}, Lv1/r;->h(Ljava/lang/String;)Lv1/p;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Skipping scheduling "

    sget-object v3, Lp1/c;->e:Ljava/lang/String;

    if-nez v1, :cond_b

    :try_start_1
    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " because it\'s no longer in the DB"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p2, v3, p1}, Lm1/n;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :goto_4
    invoke-virtual {v0}, Ly0/w;->k()V

    goto/16 :goto_e

    :catchall_0
    move-exception p1

    goto :goto_6

    .line 29
    :cond_b
    :try_start_2
    iget v4, v1, Lv1/p;->b:I

    invoke-static {v4}, Ll1/e;->a(I)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "because it is finished."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_c
    invoke-virtual {v1}, Lv1/p;->a()J

    move-result-wide v2

    invoke-virtual {v1}, Lv1/p;->c()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v4, p0, Lp1/c;->a:Landroid/content/Context;

    if-nez v1, :cond_d

    :try_start_3
    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object p2

    invoke-virtual {p1}, Lv1/i;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v0, p1, v2, v3}, Lp1/b;->b(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lv1/i;J)V

    goto :goto_5

    :cond_d
    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v1

    invoke-virtual {p1}, Lv1/i;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v0, p1, v2, v3}, Lp1/b;->b(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lv1/i;J)V

    .line 30
    new-instance p1, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {p1, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    iget-object v1, p3, Lp1/j;->b:Ly1/b;

    .line 32
    iget-object v1, v1, Ly1/b;->c:Ly1/a;

    .line 33
    new-instance v2, Lb/d;

    invoke-direct {v2, p3, p1, p2}, Lb/d;-><init>(Ljava/lang/Object;Landroid/content/Intent;I)V

    invoke-virtual {v1, v2}, Ly1/a;->execute(Ljava/lang/Runnable;)V

    :goto_5
    invoke-virtual {v0}, Ly0/w;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 34
    :goto_6
    invoke-virtual {v0}, Ly0/w;->k()V

    .line 35
    throw p1

    :cond_e
    const-string v1, "ACTION_DELAY_MET"

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lp1/c;->c:Ljava/lang/Object;

    .line 37
    monitor-enter v1

    :try_start_4
    invoke-static {p1}, Lp1/c;->c(Landroid/content/Intent;)Lv1/i;

    move-result-object p1

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v0

    invoke-virtual {p1}, Lv1/i;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lp1/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Lp1/g;

    iget-object v2, p0, Lp1/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lp1/c;->d:Lv1/k;

    invoke-virtual {v3, p1}, Lv1/k;->f(Lv1/i;)Ln1/t;

    move-result-object v3

    invoke-direct {v0, v2, p2, p3, v3}, Lp1/g;-><init>(Landroid/content/Context;ILp1/j;Ln1/t;)V

    iget-object p2, p0, Lp1/c;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lp1/g;->e()V

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_8

    :cond_f
    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object p2

    invoke-virtual {p1}, Lv1/i;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_7
    monitor-exit v1

    goto/16 :goto_e

    :goto_8
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_10
    const-string p2, "ACTION_STOP_WORK"

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "KEY_WORKSPEC_ID"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "KEY_WORKSPEC_GENERATION"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    iget-object v4, p0, Lp1/c;->d:Lv1/k;

    if-eqz v1, :cond_11

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lv1/i;

    invoke-direct {v1, p2, p1}, Lv1/i;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v1}, Lv1/k;->e(Lv1/i;)Ln1/t;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    invoke-virtual {v4, p2}, Lv1/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_12
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln1/t;

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    iget-object v0, p3, Lp1/j;->e:Ln1/a0;

    .line 41
    iget-object v1, v0, Ln1/a0;->f:Ly1/b;

    .line 42
    new-instance v4, Lw1/p;

    invoke-direct {v4, v0, p2, v3}, Lw1/p;-><init>(Ln1/a0;Ln1/t;Z)V

    invoke-virtual {v1, v4}, Ly1/b;->a(Ljava/lang/Runnable;)V

    .line 43
    iget-object v0, p3, Lp1/j;->e:Ln1/a0;

    iget-object v0, v0, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 44
    iget-object v1, p2, Ln1/t;->a:Lv1/i;

    .line 45
    sget v4, Lp1/b;->a:I

    .line 46
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->s()Lv1/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lv1/h;->m(Lv1/i;)Lv1/g;

    move-result-object v4

    if-eqz v4, :cond_14

    iget v4, v4, Lv1/g;->c:I

    iget-object v5, p0, Lp1/c;->a:Landroid/content/Context;

    invoke-static {v5, v1, v4}, Lp1/b;->a(Landroid/content/Context;Lv1/i;I)V

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v4

    invoke-virtual {v1}, Lv1/i;->toString()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    iget-object v4, v0, Lv1/h;->a:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Ly0/w;

    invoke-virtual {v5}, Ly0/w;->b()V

    iget-object v6, v0, Lv1/h;->c:Ljava/lang/Object;

    check-cast v6, Landroidx/appcompat/view/menu/d;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/d;->c()Lc1/h;

    move-result-object v6

    iget-object v7, v1, Lv1/i;->a:Ljava/lang/String;

    if-nez v7, :cond_13

    invoke-interface {v6, v2}, Lc1/f;->h(I)V

    goto :goto_b

    :cond_13
    invoke-interface {v6, v2, v7}, Lc1/f;->d(ILjava/lang/String;)V

    :goto_b
    iget v1, v1, Lv1/i;->b:I

    int-to-long v7, v1

    const/4 v1, 0x2

    invoke-interface {v6, v1, v7, v8}, Lc1/f;->m(IJ)V

    invoke-virtual {v5}, Ly0/w;->c()V

    :try_start_5
    invoke-interface {v6}, Lc1/h;->e()I

    check-cast v4, Ly0/w;

    invoke-virtual {v4}, Ly0/w;->o()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 48
    invoke-virtual {v5}, Ly0/w;->k()V

    .line 49
    iget-object v0, v0, Lv1/h;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/d;

    invoke-virtual {v0, v6}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    goto :goto_c

    :catchall_2
    move-exception p1

    .line 50
    invoke-virtual {v5}, Ly0/w;->k()V

    .line 51
    iget-object p2, v0, Lv1/h;->c:Ljava/lang/Object;

    check-cast p2, Landroidx/appcompat/view/menu/d;

    invoke-virtual {p2, v6}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    throw p1

    .line 52
    :cond_14
    :goto_c
    iget-object p2, p2, Ln1/t;->a:Lv1/i;

    invoke-virtual {p3, p2, v3}, Lp1/j;->b(Lv1/i;Z)V

    goto/16 :goto_a

    :cond_15
    const-string p2, "ACTION_EXECUTION_COMPLETED"

    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 54
    invoke-static {p1}, Lp1/c;->c(Landroid/content/Intent;)Lv1/i;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "KEY_NEEDS_RESCHEDULE"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2, p3}, Lp1/c;->b(Lv1/i;Z)V

    goto :goto_e

    .line 55
    :cond_16
    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object p2

    sget-object p3, Lp1/c;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring intent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lm1/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_17
    :goto_d
    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object p1

    sget-object p2, Lp1/c;->e:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Invalid request for "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , requires KEY_WORKSPEC_ID ."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lm1/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_e
    return-void
.end method

.method public final b(Lv1/i;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp1/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lp1/c;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp1/g;

    iget-object v2, p0, Lp1/c;->d:Lv1/k;

    invoke-virtual {v2, p1}, Lv1/k;->e(Lv1/i;)Ln1/t;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lp1/g;->f(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
