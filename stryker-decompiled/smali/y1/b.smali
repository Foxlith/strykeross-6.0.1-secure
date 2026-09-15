.class public final Ly1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw1/o;

.field public final b:Landroid/os/Handler;

.field public final c:Ly1/a;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ly1/b;->b:Landroid/os/Handler;

    new-instance v0, Ly1/a;

    invoke-direct {v0, p0}, Ly1/a;-><init>(Ly1/b;)V

    iput-object v0, p0, Ly1/b;->c:Ly1/a;

    new-instance v0, Lw1/o;

    invoke-direct {v0, p1}, Lw1/o;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Ly1/b;->a:Lw1/o;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/b;->a:Lw1/o;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lw1/o;->execute(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
