.class public final Lcom/zalexdev/stryker/ota/UpdateWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final g()Lm1/l;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lm1/m;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Li5/a;->v0(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lm1/k;

    .line 7
    .line 8
    sget-object v1, Lm1/e;->c:Lm1/e;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lm1/k;-><init>(Lm1/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :catch_0
    new-instance v0, Lm1/j;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
