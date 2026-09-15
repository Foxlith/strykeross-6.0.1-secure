.class public Lcom/getkeepsafe/taptargetview/TapTargetSequence;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;
    }
.end annotation


# instance fields
.field private active:Z

.field private final activity:Landroid/app/Activity;

.field considerOuterCircleCanceled:Z

.field continueOnCancel:Z

.field private currentView:Lcom/getkeepsafe/taptargetview/TapTargetView;

.field private final dialog:Landroid/app/Dialog;

.field listener:Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;

.field private final tapTargetListener:Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;

.field private final targets:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/getkeepsafe/taptargetview/TapTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;

    invoke-direct {v0, p0}, Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetSequence;)V

    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->tapTargetListener:Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->activity:Landroid/app/Activity;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->dialog:Landroid/app/Dialog;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Activity is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;

    invoke-direct {v0, p0}, Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetSequence;)V

    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->tapTargetListener:Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->dialog:Landroid/app/Dialog;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->activity:Landroid/app/Activity;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given null Dialog"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cancel()Z
    .locals 3

    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->active:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->currentView:Lcom/getkeepsafe/taptargetview/TapTargetView;

    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->cancelable:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->dismiss(Z)V

    iput-boolean v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->active:Z

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->listener:Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->currentView:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v1, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->target:Lcom/getkeepsafe/taptargetview/TapTarget;

    invoke-interface {v0, v1}, Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;->onSequenceCanceled(Lcom/getkeepsafe/taptargetview/TapTarget;)V

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public considerOuterCircleCanceled(Z)Lcom/getkeepsafe/taptargetview/TapTargetSequence;
    .locals 0

    iput-boolean p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->considerOuterCircleCanceled:Z

    return-object p0
.end method

.method public continueOnCancel(Z)Lcom/getkeepsafe/taptargetview/TapTargetSequence;
    .locals 0

    iput-boolean p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->continueOnCancel:Z

    return-object p0
.end method

.method public listener(Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;)Lcom/getkeepsafe/taptargetview/TapTargetSequence;
    .locals 0

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->listener:Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;

    return-object p0
.end method

.method public showNext()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/getkeepsafe/taptargetview/TapTarget;

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->tapTargetListener:Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;

    invoke-static {v1, v0, v2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/TapTarget;Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->currentView:Lcom/getkeepsafe/taptargetview/TapTargetView;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->dialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->tapTargetListener:Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;

    invoke-static {v1, v0, v2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Dialog;Lcom/getkeepsafe/taptargetview/TapTarget;Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->currentView:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->listener:Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;->onSequenceFinish()V

    :cond_1
    :goto_1
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->active:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->active:Z

    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->showNext()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startAt(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->active:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-ltz p1, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ge p1, v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sub-int/2addr v0, p1

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eq v1, v0, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-ne v1, v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->start()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v1, "Given index "

    .line 60
    .line 61
    const-string v2, " not in sequence"

    .line 62
    .line 63
    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string v1, "Given invalid index "

    .line 74
    .line 75
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0
.end method

.method public startWith(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->active:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->id()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eq v0, p1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->id()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-ne v0, p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->start()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v1, "Given target "

    .line 57
    .line 58
    const-string v2, " not in sequence"

    .line 59
    .line 60
    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public target(Lcom/getkeepsafe/taptargetview/TapTarget;)Lcom/getkeepsafe/taptargetview/TapTargetSequence;
    .locals 1

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public targets(Ljava/util/List;)Lcom/getkeepsafe/taptargetview/TapTargetSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/getkeepsafe/taptargetview/TapTarget;",
            ">;)",
            "Lcom/getkeepsafe/taptargetview/TapTargetSequence;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs targets([Lcom/getkeepsafe/taptargetview/TapTarget;)Lcom/getkeepsafe/taptargetview/TapTargetSequence;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method
