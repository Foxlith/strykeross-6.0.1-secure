.class public final synthetic Lo2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf4/h;
.implements Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;
.implements Lcom/zalexdev/stryker/wpair/FastPairExploit$ResultCallback;
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo2/d;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lo2/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lo2/d;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lo2/d;->a:Ljava/lang/Object;

    .line 3
    .line 4
    move-object v10, v1

    .line 5
    check-cast v10, Lcom/zalexdev/stryker/appintro/slides/Slide3;

    .line 6
    .line 7
    iget-object v1, v0, Lo2/d;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, [J

    .line 10
    .line 11
    iget-object v2, v0, Lo2/d;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, [I

    .line 14
    .line 15
    sget v3, Lcom/zalexdev/stryker/appintro/slides/Slide3;->z:I

    .line 16
    .line 17
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    const/4 v11, 0x0

    .line 25
    aget-wide v5, v1, v11

    .line 26
    .line 27
    sub-long v5, v3, v5

    .line 28
    .line 29
    const-wide/16 v7, 0xc8

    .line 30
    .line 31
    cmp-long v5, v5, v7

    .line 32
    .line 33
    if-gez v5, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    aput-wide v3, v1, v11

    .line 37
    .line 38
    iget-wide v5, v10, Lcom/zalexdev/stryker/appintro/slides/Slide3;->x:J

    .line 39
    .line 40
    sub-long v8, v3, v5

    .line 41
    .line 42
    const-wide/16 v3, 0x0

    .line 43
    .line 44
    cmp-long v1, p3, v3

    .line 45
    .line 46
    if-lez v1, :cond_2

    .line 47
    .line 48
    const-wide/16 v3, 0x64

    .line 49
    .line 50
    mul-long/2addr v3, p1

    .line 51
    div-long v3, v3, p3

    .line 52
    .line 53
    long-to-int v12, v3

    .line 54
    aget v1, v2, v11

    .line 55
    .line 56
    if-ne v12, v1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    aput v12, v2, v11

    .line 60
    .line 61
    new-instance v13, Lo2/e;

    .line 62
    .line 63
    move-object v1, v13

    .line 64
    move-object v2, v10

    .line 65
    move v3, v12

    .line 66
    move-wide v4, p1

    .line 67
    move-wide/from16 v6, p3

    .line 68
    .line 69
    invoke-direct/range {v1 .. v9}, Lo2/e;-><init>(Lcom/zalexdev/stryker/appintro/slides/Slide3;IJJJ)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v10, v13}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v10, Lcom/zalexdev/stryker/appintro/slides/Slide3;->v:Lv/z;

    .line 76
    .line 77
    const/16 v2, 0x64

    .line 78
    .line 79
    invoke-virtual {v1, v2, v12, v11}, Lv/z;->f(IIZ)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v10, Lcom/zalexdev/stryker/appintro/slides/Slide3;->w:Landroid/app/NotificationManager;

    .line 83
    .line 84
    iget-object v2, v10, Lcom/zalexdev/stryker/appintro/slides/Slide3;->v:Lv/z;

    .line 85
    .line 86
    invoke-virtual {v2}, Lv/z;->a()Landroid/app/Notification;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const/16 v3, 0x22

    .line 91
    .line 92
    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    new-instance v1, Lo2/f;

    .line 97
    .line 98
    move-object v2, v1

    .line 99
    move-object v3, v10

    .line 100
    move-wide v4, p1

    .line 101
    move-wide v6, v8

    .line 102
    invoke-direct/range {v2 .. v7}, Lo2/f;-><init>(Lcom/zalexdev/stryker/appintro/slides/Slide3;JJ)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v10, v1}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j(Ljava/lang/Runnable;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void
.end method

.method public final head(Lorg/jsoup/nodes/Node;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo2/d;->a:Ljava/lang/Object;

    check-cast v0, Lorg/jsoup/select/Evaluator;

    iget-object v1, p0, Lo2/d;->b:Ljava/lang/Object;

    check-cast v1, Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lo2/d;->c:Ljava/lang/Object;

    check-cast v2, Lorg/jsoup/select/Elements;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/jsoup/select/Collector;->a(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;Lorg/jsoup/nodes/Node;I)V

    return-void
.end method

.method public final onResult(Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo2/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wpair/FastPairExploit$ProgressCallback;

    iget-object v1, p0, Lo2/d;->b:Ljava/lang/Object;

    check-cast v1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    iget-object v2, p0, Lo2/d;->c:Ljava/lang/Object;

    check-cast v2, Lcom/zalexdev/stryker/wpair/FastPairExploit$ResultCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/zalexdev/stryker/wpair/FastPairExploit;->b(Lcom/zalexdev/stryker/wpair/FastPairExploit$ProgressCallback;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Lcom/zalexdev/stryker/wpair/FastPairExploit$ResultCallback;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V

    return-void
.end method

.method public final onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo2/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wpair/FastPairExploit$ProgressCallback;

    iget-object v1, p0, Lo2/d;->b:Ljava/lang/Object;

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairExploit$ResultCallback;

    iget-object v2, p0, Lo2/d;->c:Ljava/lang/Object;

    check-cast v2, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$Success;

    invoke-static {v0, v1, v2, p1}, Lcom/zalexdev/stryker/wpair/FastPairExploit;->e(Lcom/zalexdev/stryker/wpair/FastPairExploit$ProgressCallback;Lcom/zalexdev/stryker/wpair/FastPairExploit$ResultCallback;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$Success;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    return-void
.end method
