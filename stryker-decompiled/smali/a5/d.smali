.class public final La5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5/j;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:La5/j;

.field public final b:La5/h;


# direct methods
.method public constructor <init>(La5/h;La5/j;)V
    .locals 1

    .line 1
    const-string v0, "left"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La5/d;->a:La5/j;

    iput-object p1, p0, La5/d;->b:La5/h;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    if-eq p0, p1, :cond_7

    .line 2
    .line 3
    instance-of v0, p1, La5/d;

    .line 4
    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    check-cast p1, La5/d;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    move-object v1, p1

    .line 14
    move v2, v0

    .line 15
    :goto_0
    iget-object v1, v1, La5/d;->a:La5/j;

    .line 16
    .line 17
    instance-of v3, v1, La5/d;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    check-cast v1, La5/d;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move-object v1, v4

    .line 26
    :goto_1
    if-nez v1, :cond_5

    .line 27
    .line 28
    move-object v1, p0

    .line 29
    :goto_2
    iget-object v1, v1, La5/d;->a:La5/j;

    .line 30
    .line 31
    instance-of v3, v1, La5/d;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    check-cast v1, La5/d;

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_1
    move-object v1, v4

    .line 39
    :goto_3
    if-nez v1, :cond_4

    .line 40
    .line 41
    if-ne v2, v0, :cond_6

    .line 42
    .line 43
    move-object v0, p0

    .line 44
    :goto_4
    iget-object v1, v0, La5/d;->b:La5/h;

    .line 45
    .line 46
    invoke-interface {v1}, La5/h;->getKey()La5/i;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p1, v2}, La5/d;->get(La5/i;)La5/h;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    goto :goto_5

    .line 61
    :cond_2
    iget-object v0, v0, La5/d;->a:La5/j;

    .line 62
    .line 63
    instance-of v1, v0, La5/d;

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    check-cast v0, La5/d;

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_3
    const-string v1, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    .line 71
    .line 72
    invoke-static {v0, v1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    check-cast v0, La5/h;

    .line 76
    .line 77
    invoke-interface {v0}, La5/h;->getKey()La5/i;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p1, v1}, La5/d;->get(La5/i;)La5/h;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1, v0}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    goto :goto_6

    .line 92
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    :goto_5
    const/4 p1, 0x0

    .line 99
    goto :goto_7

    .line 100
    :cond_7
    :goto_6
    const/4 p1, 0x1

    .line 101
    :goto_7
    return p1
.end method

.method public final fold(Ljava/lang/Object;Lj5/p;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, La5/d;->a:La5/j;

    invoke-interface {v0, p1, p2}, La5/j;->fold(Ljava/lang/Object;Lj5/p;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, La5/d;->b:La5/h;

    invoke-interface {p2, p1, v0}, Lj5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(La5/i;)La5/h;
    .locals 2

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    iget-object v1, v0, La5/d;->b:La5/h;

    invoke-interface {v1, p1}, La5/j;->get(La5/i;)La5/h;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, La5/d;->a:La5/j;

    instance-of v1, v0, La5/d;

    if-eqz v1, :cond_1

    check-cast v0, La5/d;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, La5/j;->get(La5/i;)La5/h;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, La5/d;->a:La5/j;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, La5/d;->b:La5/h;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final minusKey(La5/i;)La5/j;
    .locals 3

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La5/d;->b:La5/h;

    invoke-interface {v0, p1}, La5/j;->get(La5/i;)La5/h;

    move-result-object v1

    iget-object v2, p0, La5/d;->a:La5/j;

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v2, p1}, La5/j;->minusKey(La5/i;)La5/j;

    move-result-object p1

    if-ne p1, v2, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    sget-object v1, La5/k;->a:La5/k;

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, La5/d;

    invoke-direct {v1, v0, p1}, La5/d;-><init>(La5/h;La5/j;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, La5/c;->b:La5/c;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, La5/d;->fold(Ljava/lang/Object;Lj5/p;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
