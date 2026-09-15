.class public final Ly4/i;
.super Lx4/h;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Ly4/i;


# instance fields
.field public final a:Ly4/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ly4/i;

    .line 2
    .line 3
    sget-object v1, Ly4/f;->m:Ly4/f;

    .line 4
    .line 5
    sget-object v1, Ly4/f;->m:Ly4/f;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ly4/i;-><init>(Ly4/f;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Ly4/i;->b:Ly4/i;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ly4/f;

    invoke-direct {v0}, Ly4/f;-><init>()V

    invoke-direct {p0, v0}, Ly4/i;-><init>(Ly4/f;)V

    return-void
.end method

.method public constructor <init>(Ly4/f;)V
    .locals 1

    .line 2
    const-string v0, "backing"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lx4/h;-><init>()V

    iput-object p1, p0, Ly4/i;->a:Ly4/f;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/i;->a:Ly4/f;

    .line 2
    .line 3
    iget v0, v0, Ly4/f;->h:I

    .line 4
    .line 5
    return v0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/i;->a:Ly4/f;

    invoke-virtual {v0, p1}, Ly4/f;->a(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 1
    const-string v0, "elements"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly4/i;->a:Ly4/f;

    invoke-virtual {v0}, Ly4/f;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/i;->a:Ly4/f;

    invoke-virtual {v0}, Ly4/f;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/i;->a:Ly4/f;

    invoke-virtual {v0, p1}, Ly4/f;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/i;->a:Ly4/f;

    invoke-virtual {v0}, Ly4/f;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    iget-object v0, p0, Ly4/i;->a:Ly4/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ly4/c;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v0, v2}, Ly4/c;-><init>(Ly4/f;I)V

    .line 10
    .line 11
    .line 12
    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/i;->a:Ly4/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly4/f;->d()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ly4/f;->h(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Ly4/f;->l(I)V

    .line 14
    .line 15
    .line 16
    if-ltz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 21
    :goto_1
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    .line 1
    const-string v0, "elements"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly4/i;->a:Ly4/f;

    invoke-virtual {v0}, Ly4/f;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    .line 1
    const-string v0, "elements"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly4/i;->a:Ly4/f;

    invoke-virtual {v0}, Ly4/f;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
