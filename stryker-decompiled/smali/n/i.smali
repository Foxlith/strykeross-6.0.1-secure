.class public final Ln/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public final synthetic d:Landroidx/appcompat/view/menu/d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/i;->d:Landroidx/appcompat/view/menu/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln/i;->c:Z

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/d;->g()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ln/i;->a:I

    const/4 p1, -0x1

    iput p1, p0, Ln/i;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Ln/i;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    instance-of v0, p1, Ljava/util/Map$Entry;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v2, p0, Ln/i;->b:I

    .line 18
    .line 19
    iget-object v3, p0, Ln/i;->d:Landroidx/appcompat/view/menu/d;

    .line 20
    .line 21
    invoke-virtual {v3, v2, v1}, Landroidx/appcompat/view/menu/d;->e(II)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget v0, p0, Ln/i;->b:I

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/view/menu/d;->e(II)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eq p1, v0, :cond_2

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    :cond_2
    move v1, v2

    .line 57
    :cond_3
    return v1

    .line 58
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v0, "This container does not support retaining Map.Entry objects"

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-boolean v0, p0, Ln/i;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ln/i;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Ln/i;->d:Landroidx/appcompat/view/menu/d;

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/view/menu/d;->e(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-boolean v0, p0, Ln/i;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ln/i;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Ln/i;->d:Landroidx/appcompat/view/menu/d;

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/view/menu/d;->e(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Ln/i;->b:I

    iget v1, p0, Ln/i;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Ln/i;->c:Z

    if-eqz v0, :cond_2

    iget v0, p0, Ln/i;->b:I

    iget-object v1, p0, Ln/i;->d:Landroidx/appcompat/view/menu/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/view/menu/d;->e(II)Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Ln/i;->b:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/view/menu/d;->e(II)Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln/i;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Ln/i;->b:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    add-int/2addr v0, v1

    .line 11
    iput v0, p0, Ln/i;->b:I

    .line 12
    .line 13
    iput-boolean v1, p0, Ln/i;->c:Z

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln/i;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln/i;->d:Landroidx/appcompat/view/menu/d;

    iget v1, p0, Ln/i;->b:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/d;->k(I)V

    iget v0, p0, Ln/i;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ln/i;->b:I

    iget v0, p0, Ln/i;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ln/i;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln/i;->c:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln/i;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln/i;->d:Landroidx/appcompat/view/menu/d;

    iget v1, p0, Ln/i;->b:I

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/d;->l(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ln/i;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ln/i;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
