.class public final Lkotlinx/coroutines/scheduling/c;
.super Lr5/s;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final b:Lkotlinx/coroutines/scheduling/c;

.field public static final c:Lt5/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlinx/coroutines/scheduling/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lr5/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/coroutines/scheduling/c;->b:Lkotlinx/coroutines/scheduling/c;

    .line 7
    .line 8
    sget-object v0, Lkotlinx/coroutines/scheduling/k;->b:Lkotlinx/coroutines/scheduling/k;

    .line 9
    .line 10
    sget v1, Lt5/j;->a:I

    .line 11
    .line 12
    const/16 v2, 0x40

    .line 13
    .line 14
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v2

    .line 18
    :goto_0
    const/16 v2, 0xc

    .line 19
    .line 20
    const-string v3, "kotlinx.coroutines.io.parallelism"

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v3, v1, v4, v4, v2}, Li5/a;->e1(Ljava/lang/String;IIII)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    if-lt v1, v2, :cond_1

    .line 32
    .line 33
    new-instance v2, Lt5/c;

    .line 34
    .line 35
    invoke-direct {v2, v0, v1}, Lt5/c;-><init>(Lkotlinx/coroutines/scheduling/k;I)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Lkotlinx/coroutines/scheduling/c;->c:Lt5/c;

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string v0, "Expected positive parallelism level, but got "

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1, v0}, Li5/a;->Z0(Ljava/io/Serializable;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method


# virtual methods
.method public final close()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be invoked on Dispatchers.IO"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, La5/k;->a:La5/k;

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/scheduling/c;->i(La5/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i(La5/j;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/c;->c:Lt5/c;

    invoke-virtual {v0, p1, p2}, Lt5/c;->i(La5/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.IO"

    return-object v0
.end method
