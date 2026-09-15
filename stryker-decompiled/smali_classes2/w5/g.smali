.class public final Lw5/g;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Lv1/e;

.field public final b:I

.field public final c:Lw5/e;

.field public d:Z


# direct methods
.method public constructor <init>(Lw5/e;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lw5/g;->c:Lw5/e;

    const/16 p1, 0xa

    iput p1, p0, Lw5/g;->b:I

    new-instance p1, Lv1/e;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/g;->a:Lv1/e;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    :cond_0
    iget-object v2, p0, Lw5/g;->a:Lv1/e;

    .line 7
    .line 8
    invoke-virtual {v2}, Lv1/e;->i()Lw5/i;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v2, p0, Lw5/g;->a:Lv1/e;

    .line 16
    .line 17
    invoke-virtual {v2}, Lv1/e;->i()Lw5/i;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    iput-boolean p1, p0, Lw5/g;->d:Z

    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :try_start_2
    monitor-exit p0

    .line 30
    goto :goto_1

    .line 31
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    :try_start_3
    throw v0

    .line 33
    :catchall_1
    move-exception v0

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    :goto_1
    iget-object v3, p0, Lw5/g;->c:Lw5/e;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Lw5/e;->d(Lw5/i;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    sub-long/2addr v2, v0

    .line 45
    iget v4, p0, Lw5/g;->b:I

    .line 46
    .line 47
    int-to-long v4, v4

    .line 48
    cmp-long v2, v2, v4

    .line 49
    .line 50
    if-ltz v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 57
    .line 58
    .line 59
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lw5/g;->d:Z

    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    :try_start_4
    new-instance v0, Landroidx/fragment/app/u;

    .line 67
    .line 68
    const-string v1, "Could not send handler message"

    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    :goto_2
    iput-boolean p1, p0, Lw5/g;->d:Z

    .line 75
    .line 76
    throw v0
.end method
