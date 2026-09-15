.class public abstract La5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5/h;


# instance fields
.field private final key:La5/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La5/i;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La5/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/a;->key:La5/i;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lj5/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lj5/p;",
            ")TR;"
        }
    .end annotation

    .line 1
    const-string v0, "operation"

    .line 2
    .line 3
    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p1, p0}, Lj5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public get(La5/i;)La5/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "La5/h;",
            ">(",
            "La5/i;",
            ")TE;"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, La5/h;->getKey()La5/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    move-object p1, p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return-object p1
.end method

.method public getKey()La5/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La5/i;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La5/a;->key:La5/i;

    return-object v0
.end method

.method public minusKey(La5/i;)La5/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La5/i;",
            ")",
            "La5/j;"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, La5/h;->getKey()La5/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    sget-object p1, La5/k;->a:La5/k;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p1, p0

    .line 20
    :goto_0
    return-object p1
.end method

.method public plus(La5/j;)La5/j;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, La5/k;->a:La5/k;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    move-object p1, p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, La5/c;->c:La5/c;

    .line 13
    .line 14
    invoke-interface {p1, p0, v0}, La5/j;->fold(Ljava/lang/Object;Lj5/p;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, La5/j;

    .line 19
    .line 20
    :goto_0
    return-object p1
.end method
