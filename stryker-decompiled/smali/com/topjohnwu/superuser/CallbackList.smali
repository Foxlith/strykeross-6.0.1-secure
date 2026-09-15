.class public abstract Lcom/topjohnwu/superuser/CallbackList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected mBase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/topjohnwu/superuser/internal/UiThreadHandler;->executor:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/topjohnwu/superuser/CallbackList;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/topjohnwu/superuser/internal/UiThreadHandler;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0, p1}, Lcom/topjohnwu/superuser/CallbackList;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/topjohnwu/superuser/CallbackList;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/CallbackList;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/topjohnwu/superuser/CallbackList;->mBase:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/topjohnwu/superuser/CallbackList;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/topjohnwu/superuser/CallbackList;->lambda$add$0(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$add$0(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/CallbackList;->onAddElement(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/topjohnwu/superuser/CallbackList;->mBase:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/topjohnwu/superuser/CallbackList;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lf/n0;

    const/16 v1, 0xa

    invoke-direct {v0, p0, p2, v1}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/topjohnwu/superuser/CallbackList;->mBase:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public abstract onAddElement(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/topjohnwu/superuser/CallbackList;->mBase:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/topjohnwu/superuser/CallbackList;->mBase:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/CallbackList;->mBase:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method
