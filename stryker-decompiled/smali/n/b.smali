.class public final Ln/b;
.super Ln/k;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public h:Ln/a;


# direct methods
.method public constructor <init>(Ln/b;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ln/k;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget v0, p1, Ln/k;->c:I

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ln/k;->b(I)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Ln/k;->c:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p1, Ln/k;->a:[I

    .line 19
    .line 20
    iget-object v3, p0, Ln/k;->a:[I

    .line 21
    .line 22
    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p1, Ln/k;->b:[Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v1, p0, Ln/k;->b:[Ljava/lang/Object;

    .line 28
    .line 29
    shl-int/lit8 v3, v0, 0x1

    .line 30
    .line 31
    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    iput v0, p0, Ln/k;->c:I

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Ln/k;->h(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1, v2}, Ln/k;->j(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {p0, v1, v3}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Ln/b;->h:Ln/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ln/a;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Ln/a;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ln/b;->h:Ln/a;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Ln/b;->h:Ln/a;

    .line 14
    .line 15
    iget-object v2, v0, Landroidx/appcompat/view/menu/d;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Ln/h;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    new-instance v2, Ln/h;

    .line 22
    .line 23
    invoke-direct {v2, v0, v1}, Ln/h;-><init>(Landroidx/appcompat/view/menu/d;I)V

    .line 24
    .line 25
    .line 26
    iput-object v2, v0, Landroidx/appcompat/view/menu/d;->a:Ljava/lang/Object;

    .line 27
    .line 28
    :cond_1
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->a:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ln/h;

    .line 31
    .line 32
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Ln/b;->h:Ln/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ln/a;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Ln/a;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ln/b;->h:Ln/a;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Ln/b;->h:Ln/a;

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/appcompat/view/menu/d;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Ln/h;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    new-instance v1, Ln/h;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, v0, v2}, Ln/h;-><init>(Landroidx/appcompat/view/menu/d;I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Landroidx/appcompat/view/menu/d;->b:Ljava/lang/Object;

    .line 28
    .line 29
    :cond_1
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Ln/h;

    .line 32
    .line 33
    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    .line 1
    iget v0, p0, Ln/k;->c:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ln/k;->b(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Ln/b;->h:Ln/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ln/a;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Ln/a;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ln/b;->h:Ln/a;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Ln/b;->h:Ln/a;

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/appcompat/view/menu/d;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Ln/j;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    new-instance v1, Ln/j;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Ln/j;-><init>(Landroidx/appcompat/view/menu/d;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Landroidx/appcompat/view/menu/d;->c:Ljava/lang/Object;

    .line 27
    .line 28
    :cond_1
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ln/j;

    .line 31
    .line 32
    return-object v0
.end method
