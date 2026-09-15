.class Lorg/apache/commons/net/nntp/ThreadContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field child:Lorg/apache/commons/net/nntp/ThreadContainer;

.field next:Lorg/apache/commons/net/nntp/ThreadContainer;

.field parent:Lorg/apache/commons/net/nntp/ThreadContainer;

.field threadable:Lorg/apache/commons/net/nntp/Threadable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    move-result p1

    return p1
.end method

.method public flush()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no threadable in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v2, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    :goto_1
    invoke-interface {v1, v2}, Lorg/apache/commons/net/nntp/Threadable;->setChild(Lorg/apache/commons/net/nntp/Threadable;)V

    :cond_3
    iget-object v1, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/commons/net/nntp/ThreadContainer;->flush()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :cond_4
    iget-object v1, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v2, :cond_5

    move-object v2, v0

    goto :goto_2

    :cond_5
    iget-object v2, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    :goto_2
    invoke-interface {v1, v2}, Lorg/apache/commons/net/nntp/Threadable;->setNext(Lorg/apache/commons/net/nntp/Threadable;)V

    :cond_6
    iget-object v1, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/apache/commons/net/nntp/ThreadContainer;->flush()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :cond_7
    iput-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    return-void
.end method

.method public reverseChildren()V
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_1
    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/apache/commons/net/nntp/ThreadContainer;->reverseChildren()V

    iget-object v3, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_2

    :cond_2
    return-void
.end method
