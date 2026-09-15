.class public final Landroidx/core/view/w1;
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

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p6, p0, Landroidx/core/view/w1;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/core/view/w1;->f:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/core/view/w1;->b:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/core/view/w1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p4, p0, Landroidx/core/view/w1;->d:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p5, p0, Landroidx/core/view/w1;->e:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/core/view/w1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Landroidx/core/view/w1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lx1/k;

    .line 9
    .line 10
    iget-object v0, v0, Lx1/i;->a:Ljava/lang/Object;

    .line 11
    .line 12
    instance-of v0, v0, Lx1/a;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/core/view/w1;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/util/UUID;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Landroidx/core/view/w1;->f:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lw1/t;

    .line 27
    .line 28
    iget-object v1, v1, Lw1/t;->c:Lv1/r;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lv1/r;->h(Ljava/lang/String;)Lv1/p;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget v2, v1, Lv1/p;->b:I

    .line 37
    .line 38
    invoke-static {v2}, Ll1/e;->a(I)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/core/view/w1;->f:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Lw1/t;

    .line 47
    .line 48
    iget-object v2, v2, Lw1/t;->b:Lu1/a;

    .line 49
    .line 50
    iget-object v3, p0, Landroidx/core/view/w1;->d:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Lm1/f;

    .line 53
    .line 54
    check-cast v2, Ln1/p;

    .line 55
    .line 56
    invoke-virtual {v2, v0, v3}, Ln1/p;->f(Ljava/lang/String;Lm1/f;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroidx/core/view/w1;->e:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v1}, Lv1/f;->t(Lv1/p;)Lv1/i;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Landroidx/core/view/w1;->d:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v2, Lm1/f;

    .line 70
    .line 71
    invoke-static {v0, v1, v2}, Lu1/c;->a(Landroid/content/Context;Lv1/i;Lm1/f;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Landroidx/core/view/w1;->e:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 86
    .line 87
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v1

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/core/view/w1;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Lx1/k;

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Lx1/k;->j(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :goto_1
    iget-object v1, p0, Landroidx/core/view/w1;->b:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v1, Lx1/k;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Lx1/k;->k(Ljava/lang/Throwable;)Z

    .line 107
    .line 108
    .line 109
    :goto_2
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Landroidx/core/view/w1;->b:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Landroid/view/View;

    .line 113
    .line 114
    iget-object v1, p0, Landroidx/core/view/w1;->c:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v1, Landroidx/core/view/d2;

    .line 117
    .line 118
    iget-object v2, p0, Landroidx/core/view/w1;->d:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v2, Landroidx/core/view/t1;

    .line 121
    .line 122
    invoke-static {v0, v1, v2}, Landroidx/core/view/y1;->h(Landroid/view/View;Landroidx/core/view/d2;Landroidx/core/view/t1;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Landroidx/core/view/w1;->e:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v0, Landroid/animation/ValueAnimator;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
