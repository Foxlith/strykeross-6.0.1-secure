.class public final Lj2/m;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ContextWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lj2/m;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lj2/m;->b:Landroid/content/ContextWrapper;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lj2/m;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lj2/m;->b:Landroid/content/ContextWrapper;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lcom/zalexdev/stryker/vnc/VNCService;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/zalexdev/stryker/vnc/VNCService;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v1, Lcom/zalexdev/stryker/vnc/VNCService;->d:Lv/z;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "Running VNC Server on localhost:"

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, v1, Lcom/zalexdev/stryker/vnc/VNCService;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iput-object v2, v0, Lv/z;->f:Ljava/lang/CharSequence;

    .line 42
    .line 43
    iget-object v0, v1, Lcom/zalexdev/stryker/vnc/VNCService;->d:Lv/z;

    .line 44
    .line 45
    invoke-virtual {v0}, Lv/z;->a()Landroid/app/Notification;

    .line 46
    .line 47
    .line 48
    const-string v0, "notification"

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/app/NotificationManager;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/zalexdev/stryker/vnc/VNCService;->d:Lv/z;

    .line 57
    .line 58
    invoke-virtual {v1}, Lv/z;->a()Landroid/app/Notification;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/16 v2, 0x21

    .line 63
    .line 64
    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void

    .line 68
    :pswitch_0
    check-cast v1, Lcom/zalexdev/stryker/MainActivity;

    .line 69
    .line 70
    iget-boolean v0, v1, Lcom/zalexdev/stryker/MainActivity;->i:Z

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/zalexdev/stryker/MainActivity;->j()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iput-boolean v2, v1, Lcom/zalexdev/stryker/MainActivity;->i:Z

    .line 77
    .line 78
    if-eq v0, v2, :cond_1

    .line 79
    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    new-instance v0, Lj2/l;

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    invoke-direct {v0, p0, v2}, Lj2/l;-><init>(Lj2/m;I)V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    if-eq v0, v2, :cond_2

    .line 93
    .line 94
    new-instance v0, Lj2/l;

    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    invoke-direct {v0, p0, v2}, Lj2/l;-><init>(Lj2/m;I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    :goto_1
    return-void

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
