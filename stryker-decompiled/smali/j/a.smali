.class public final Lj/a;
.super Lg/a;
.source "SourceFile"


# static fields
.field public static volatile d:Lj/a;

.field public static final e:Lf/p0;


# instance fields
.field public c:Lj/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/p0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lf/p0;-><init>(I)V

    sput-object v0, Lj/a;->e:Lf/p0;

    return-void
.end method

.method public static L()Lj/a;
    .locals 3

    .line 1
    sget-object v0, Lj/a;->d:Lj/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lj/a;->d:Lj/a;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-class v0, Lj/a;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lj/a;->d:Lj/a;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Lj/a;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lj/c;

    .line 21
    .line 22
    invoke-direct {v2}, Lj/c;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, v1, Lj/a;->c:Lj/c;

    .line 26
    .line 27
    sput-object v1, Lj/a;->d:Lj/a;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    sget-object v0, Lj/a;->d:Lj/a;

    .line 34
    .line 35
    return-object v0

    .line 36
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw v1
.end method


# virtual methods
.method public final K(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->c:Lj/c;

    invoke-virtual {v0, p1}, Lj/c;->L(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final M(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a;->c:Lj/c;

    invoke-virtual {v0, p1}, Lj/c;->N(Ljava/lang/Runnable;)V

    return-void
.end method
