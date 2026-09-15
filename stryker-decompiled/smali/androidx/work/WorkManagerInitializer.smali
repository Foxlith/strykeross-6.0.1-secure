.class public final Landroidx/work/WorkManagerInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf1/b;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WrkMgrInitializer"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ld1/h;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lm1/b;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lm1/b;-><init>(Ld1/h;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Ln1/a0;->o:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v2, Ln1/a0;->m:Ln1/a0;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    sget-object v3, Ln1/a0;->n:Ln1/a0;

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    .line 33
    .line 34
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sget-object v3, Ln1/a0;->n:Ln1/a0;

    .line 47
    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    new-instance v3, Ln1/a0;

    .line 51
    .line 52
    new-instance v4, Ly1/b;

    .line 53
    .line 54
    iget-object v5, v1, Lm1/b;->b:Ljava/util/concurrent/ExecutorService;

    .line 55
    .line 56
    invoke-direct {v4, v5}, Ly1/b;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v3, v2, v1, v4}, Ln1/a0;-><init>(Landroid/content/Context;Lm1/b;Ly1/b;)V

    .line 60
    .line 61
    .line 62
    sput-object v3, Ln1/a0;->n:Ln1/a0;

    .line 63
    .line 64
    :cond_2
    sget-object v1, Ln1/a0;->n:Ln1/a0;

    .line 65
    .line 66
    sput-object v1, Ln1/a0;->m:Ln1/a0;

    .line 67
    .line 68
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {p1}, Ln1/a0;->M(Landroid/content/Context;)Ln1/a0;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p1
.end method
