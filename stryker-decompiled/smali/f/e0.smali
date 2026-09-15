.class public abstract Lf/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lf/d0;

.field public final synthetic b:Lf/h0;


# direct methods
.method public constructor <init>(Lf/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/e0;->b:Lf/h0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/e0;->a:Lf/d0;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lf/e0;->b:Lf/h0;

    iget-object v1, v1, Lf/h0;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lf/e0;->a:Lf/d0;

    :cond_0
    return-void
.end method

.method public abstract b()I
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/e0;->a()V

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    check-cast v0, Lf/c0;

    .line 6
    .line 7
    iget v0, v0, Lf/c0;->c:I

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/content/IntentFilter;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "android.intent.action.TIME_SET"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "android.intent.action.TIME_TICK"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lf/e0;->a:Lf/d0;

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    new-instance v1, Lf/d0;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-direct {v1, p0, v2}, Lf/d0;-><init>(Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lf/e0;->a:Lf/d0;

    .line 61
    .line 62
    :cond_1
    iget-object v1, p0, Lf/e0;->b:Lf/h0;

    .line 63
    .line 64
    iget-object v1, v1, Lf/h0;->k:Landroid/content/Context;

    .line 65
    .line 66
    iget-object v2, p0, Lf/e0;->a:Lf/d0;

    .line 67
    .line 68
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
