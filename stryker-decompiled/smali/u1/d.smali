.class public final Lu1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lu1/d;->a:I

    iput-object p1, p0, Lu1/d;->e:Ljava/lang/Object;

    iput p2, p0, Lu1/d;->b:I

    iput-object p3, p0, Lu1/d;->d:Ljava/lang/Object;

    iput p4, p0, Lu1/d;->c:I

    return-void
.end method

.method public constructor <init>(Ls3/g;IILjava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lu1/d;->a:I

    iput-object p1, p0, Lu1/d;->e:Ljava/lang/Object;

    iput p2, p0, Lu1/d;->b:I

    iput p3, p0, Lu1/d;->c:I

    iput-object p4, p0, Lu1/d;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lu1/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget v0, p0, Lu1/d;->b:I

    .line 7
    .line 8
    :goto_0
    iget v1, p0, Lu1/d;->c:I

    .line 9
    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lu1/d;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ls3/g;

    .line 15
    .line 16
    iget-boolean v1, v1, Ls3/b;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    :try_start_1
    iget-object v1, p0, Lu1/d;->e:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ls3/g;

    .line 24
    .line 25
    iget-object v1, v1, Ls3/b;->a:Ly0/p;

    .line 26
    .line 27
    iget-object v1, v1, Ly0/p;->j:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lf/u0;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lf/u0;->a(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    const/4 v1, 0x0

    .line 37
    :goto_1
    :try_start_2
    iget-object v2, p0, Lu1/d;->e:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Ls3/g;

    .line 40
    .line 41
    invoke-static {v2, v1}, Ls3/g;->h(Ls3/g;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lu1/d;->e:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Ls3/g;

    .line 47
    .line 48
    iget-object v1, v1, Ls3/g;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_1
    :catchall_0
    :cond_1
    :goto_2
    iget-object v0, p0, Lu1/d;->d:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    .line 66
    iget v1, p0, Lu1/d;->c:I

    .line 67
    .line 68
    iget-object v2, p0, Lu1/d;->d:Ljava/lang/Object;

    .line 69
    .line 70
    iget v3, p0, Lu1/d;->b:I

    .line 71
    .line 72
    iget-object v4, p0, Lu1/d;->e:Ljava/lang/Object;

    .line 73
    .line 74
    const/16 v5, 0x1f

    .line 75
    .line 76
    if-lt v0, v5, :cond_2

    .line 77
    .line 78
    check-cast v4, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 79
    .line 80
    check-cast v2, Landroid/app/Notification;

    .line 81
    .line 82
    invoke-static {v4, v3, v2, v1}, Lu1/f;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_2
    const/16 v5, 0x1d

    .line 87
    .line 88
    check-cast v4, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 89
    .line 90
    check-cast v2, Landroid/app/Notification;

    .line 91
    .line 92
    if-lt v0, v5, :cond_3

    .line 93
    .line 94
    invoke-static {v4, v3, v2, v1}, Lu1/e;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_3
    invoke-virtual {v4, v3, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 99
    .line 100
    .line 101
    :goto_3
    return-void

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
