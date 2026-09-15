.class public final Lkotlinx/coroutines/scheduling/d;
.super Lkotlinx/coroutines/scheduling/g;
.source "SourceFile"


# static fields
.field public static final c:Lkotlinx/coroutines/scheduling/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlinx/coroutines/scheduling/d;

    .line 2
    .line 3
    sget v1, Lkotlinx/coroutines/scheduling/j;->b:I

    .line 4
    .line 5
    sget v2, Lkotlinx/coroutines/scheduling/j;->c:I

    .line 6
    .line 7
    sget-wide v3, Lkotlinx/coroutines/scheduling/j;->d:J

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlinx/coroutines/scheduling/g;-><init>(IIJ)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lkotlinx/coroutines/scheduling/d;->c:Lkotlinx/coroutines/scheduling/d;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
