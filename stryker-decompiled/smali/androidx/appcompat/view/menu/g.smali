.class public final Landroidx/appcompat/view/menu/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, Landroidx/appcompat/view/menu/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->e:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/appcompat/view/menu/g;->b:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p4, p0, Landroidx/appcompat/view/menu/g;->d:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/g;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/appcompat/view/menu/g;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/appcompat/view/menu/g;->d:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    :try_start_0
    move-object v0, v2

    .line 14
    check-cast v0, Landroid/content/Intent;

    .line 15
    .line 16
    const-string v5, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    .line 17
    .line 18
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    move-object v5, v2

    .line 23
    check-cast v5, Landroid/content/Intent;

    .line 24
    .line 25
    const-string v6, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    .line 26
    .line 27
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    move-object v6, v2

    .line 32
    check-cast v6, Landroid/content/Intent;

    .line 33
    .line 34
    const-string v7, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    .line 35
    .line 36
    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    check-cast v2, Landroid/content/Intent;

    .line 41
    .line 42
    const-string v7, "KEY_NETWORK_STATE_PROXY_ENABLED"

    .line 43
    .line 44
    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sget v7, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->a:I

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-object v2, v3

    .line 58
    check-cast v2, Landroid/content/Context;

    .line 59
    .line 60
    const-class v7, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryNotLowProxy;

    .line 61
    .line 62
    invoke-static {v2, v7, v0}, Lw1/m;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 63
    .line 64
    .line 65
    move-object v0, v3

    .line 66
    check-cast v0, Landroid/content/Context;

    .line 67
    .line 68
    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy;

    .line 69
    .line 70
    invoke-static {v0, v2, v5}, Lw1/m;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 71
    .line 72
    .line 73
    move-object v0, v3

    .line 74
    check-cast v0, Landroid/content/Context;

    .line 75
    .line 76
    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$StorageNotLowProxy;

    .line 77
    .line 78
    invoke-static {v0, v2, v6}, Lw1/m;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 79
    .line 80
    .line 81
    check-cast v3, Landroid/content/Context;

    .line 82
    .line 83
    const-class v0, Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy;

    .line 84
    .line 85
    invoke-static {v3, v0, v1}, Lw1/m;->a(Landroid/content/Context;Ljava/lang/Class;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    check-cast v4, Landroid/content/BroadcastReceiver$PendingResult;

    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    check-cast v4, Landroid/content/BroadcastReceiver$PendingResult;

    .line 96
    .line 97
    invoke-virtual {v4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :pswitch_0
    check-cast v2, Landroidx/fragment/app/n1;

    .line 102
    .line 103
    check-cast v3, Landroid/view/View;

    .line 104
    .line 105
    check-cast v4, Landroid/graphics/Rect;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {v4, v3}, Landroidx/fragment/app/n1;->g(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :pswitch_1
    check-cast v2, Landroidx/appcompat/view/menu/h;

    .line 115
    .line 116
    if-eqz v2, :cond_0

    .line 117
    .line 118
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->e:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, Lf/q0;

    .line 121
    .line 122
    iget-object v5, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v5, Landroidx/appcompat/view/menu/i;

    .line 125
    .line 126
    const/4 v6, 0x1

    .line 127
    iput-boolean v6, v5, Landroidx/appcompat/view/menu/i;->B:Z

    .line 128
    .line 129
    iget-object v2, v2, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/o;

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/o;->close(Z)V

    .line 132
    .line 133
    .line 134
    iget-object v0, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v0, Landroidx/appcompat/view/menu/i;

    .line 137
    .line 138
    iput-boolean v1, v0, Landroidx/appcompat/view/menu/i;->B:Z

    .line 139
    .line 140
    :cond_0
    check-cast v3, Landroid/view/MenuItem;

    .line 141
    .line 142
    invoke-interface {v3}, Landroid/view/MenuItem;->isEnabled()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_1

    .line 147
    .line 148
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_1

    .line 153
    .line 154
    check-cast v4, Landroidx/appcompat/view/menu/o;

    .line 155
    .line 156
    const/4 v0, 0x4

    .line 157
    invoke-virtual {v4, v3, v0}, Landroidx/appcompat/view/menu/o;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 158
    .line 159
    .line 160
    :cond_1
    return-void

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
