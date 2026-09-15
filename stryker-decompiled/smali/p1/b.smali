.class public abstract Lp1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "Alarms"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lv1/i;I)V
    .locals 3

    .line 1
    const-string v0, "alarm"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/AlarmManager;

    .line 8
    .line 9
    sget-object v1, Lp1/c;->e:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 12
    .line 13
    const-class v2, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 14
    .line 15
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "ACTION_DELAY_MET"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-static {v1, p1}, Lp1/c;->d(Landroid/content/Intent;Lv1/i;)V

    .line 24
    .line 25
    .line 26
    const/high16 v2, 0x24000000

    .line 27
    .line 28
    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1}, Lv1/i;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lv1/i;J)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->s()Lv1/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lv1/h;->m(Lv1/i;)Lv1/g;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/high16 v2, 0xc000000

    .line 10
    .line 11
    const-string v3, "ACTION_DELAY_MET"

    .line 12
    .line 13
    const-class v4, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 14
    .line 15
    const-string v5, "alarm"

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget p1, v1, Lv1/g;->c:I

    .line 21
    .line 22
    invoke-static {p0, p2, p1}, Lp1/b;->a(Landroid/content/Context;Lv1/i;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/app/AlarmManager;

    .line 30
    .line 31
    sget-object v1, Lp1/c;->e:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v1, Landroid/content/Intent;

    .line 34
    .line 35
    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-static {v1, p2}, Lp1/c;->d(Landroid/content/Intent;Lv1/i;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, p1, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-static {v0, v6, p3, p4, p0}, Lp1/a;->a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Lw1/i;

    .line 55
    .line 56
    invoke-direct {v1, p1, v6}, Lw1/i;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lw1/g;

    .line 60
    .line 61
    invoke-direct {p1, v1}, Lw1/g;-><init>(Lw1/i;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v1, Lw1/i;->a:Landroidx/work/impl/WorkDatabase;

    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ly0/w;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v1, "workDatabase.runInTransa\u2026ANAGER_ID_KEY)\n        })"

    .line 71
    .line 72
    invoke-static {p1, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    check-cast p1, Ljava/lang/Number;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    new-instance v1, Lv1/g;

    .line 82
    .line 83
    iget-object v7, p2, Lv1/i;->a:Ljava/lang/String;

    .line 84
    .line 85
    iget v8, p2, Lv1/i;->b:I

    .line 86
    .line 87
    invoke-direct {v1, v7, v8, p1}, Lv1/g;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lv1/h;->n(Lv1/g;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/app/AlarmManager;

    .line 98
    .line 99
    sget-object v1, Lp1/c;->e:Ljava/lang/String;

    .line 100
    .line 101
    new-instance v1, Landroid/content/Intent;

    .line 102
    .line 103
    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    invoke-static {v1, p2}, Lp1/c;->d(Landroid/content/Intent;Lv1/i;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p0, p1, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-eqz v0, :cond_1

    .line 117
    .line 118
    invoke-static {v0, v6, p3, p4, p0}, Lp1/a;->a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 119
    .line 120
    .line 121
    :cond_1
    :goto_0
    return-void
.end method
