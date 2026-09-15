.class public abstract Lkotlinx/coroutines/scheduling/g;
.super Lr5/s;
.source "SourceFile"


# instance fields
.field public final b:Lkotlinx/coroutines/scheduling/b;


# direct methods
.method public constructor <init>(IIJ)V
    .locals 7

    .line 1
    const-string v5, "DefaultDispatcher"

    .line 2
    .line 3
    invoke-direct {p0}, Lr5/e;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v6, Lkotlinx/coroutines/scheduling/b;

    .line 7
    .line 8
    move-object v0, v6

    .line 9
    move v1, p1

    .line 10
    move v2, p2

    .line 11
    move-wide v3, p3

    .line 12
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/b;-><init>(IIJLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v6, p0, Lkotlinx/coroutines/scheduling/g;->b:Lkotlinx/coroutines/scheduling/b;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final i(La5/j;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/g;->b:Lkotlinx/coroutines/scheduling/b;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/b;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 4
    .line 5
    sget-object v0, Lkotlinx/coroutines/scheduling/j;->f:Landroidx/fragment/app/x0;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/scheduling/b;->s(Ljava/lang/Runnable;Landroidx/fragment/app/x0;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
