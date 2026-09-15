.class public final Lp2/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static n:Lp2/r;


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:J

.field public final c:Ljava/util/ArrayList;

.field public final d:[I

.field public e:Z

.field public f:I

.field public g:Ljava/lang/CharSequence;

.field public volatile h:Z

.field public volatile i:Z

.field public volatile j:Z

.field public k:Lp2/j;

.field public l:Landroid/content/Context;

.field public m:Ll4/l;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lp2/r;->a:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lp2/r;->b:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp2/r;->c:Ljava/util/ArrayList;

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lp2/r;->d:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp2/r;->e:Z

    const/4 v0, 0x0

    iput v0, p0, Lp2/r;->f:I

    const-string v1, ""

    iput-object v1, p0, Lp2/r;->g:Ljava/lang/CharSequence;

    move v1, v0

    :goto_0
    iget-object v2, p0, Lp2/r;->d:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized d()Lp2/r;
    .locals 2

    .line 1
    const-class v0, Lp2/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp2/r;->n:Lp2/r;

    if-nez v1, :cond_0

    new-instance v1, Lp2/r;

    invoke-direct {v1}, Lp2/r;-><init>()V

    sput-object v1, Lp2/r;->n:Lp2/r;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lp2/r;->n:Lp2/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ln2/e;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ln2/f;

    invoke-direct {v0, p1, p2}, Ln2/f;-><init>(Ln2/e;Ljava/lang/String;)V

    iget-object p1, p0, Lp2/r;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 v1, 0x258

    if-le p2, v1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lp2/r;->a:Landroid/os/Handler;

    new-instance p2, Lf/n0;

    const/16 v1, 0x16

    invoke-direct {p2, p0, v0, v1}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(II)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lp2/r;->d:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aput p2, v0, p1

    :cond_0
    iget-object v0, p0, Lp2/r;->a:Landroid/os/Handler;

    new-instance v1, Lp2/p;

    invoke-direct {v1, p0, p1, p2}, Lp2/p;-><init>(Lp2/r;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lp2/r;->g:Ljava/lang/CharSequence;

    iget-object v0, p0, Lp2/r;->a:Landroid/os/Handler;

    new-instance v1, Lf/n0;

    const/16 v2, 0x15

    invoke-direct {v1, p0, p1, v2}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp2/r;->l:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method
