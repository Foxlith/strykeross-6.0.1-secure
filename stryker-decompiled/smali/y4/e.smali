.class public abstract Ly4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly4/f;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Ly4/f;)V
    .locals 1

    .line 1
    const-string v0, "map"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/e;->a:Ly4/f;

    const/4 p1, -0x1

    iput p1, p0, Ly4/e;->c:I

    invoke-virtual {p0}, Ly4/e;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    :goto_0
    iget v0, p0, Ly4/e;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Ly4/e;->a:Ly4/f;

    .line 4
    .line 5
    iget v2, v1, Ly4/f;->f:I

    .line 6
    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    iget-object v1, v1, Ly4/f;->c:[I

    .line 10
    .line 11
    aget v1, v1, v0

    .line 12
    .line 13
    if-gez v1, :cond_0

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iput v0, p0, Ly4/e;->b:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Ly4/e;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Ly4/e;->a:Ly4/f;

    .line 4
    .line 5
    iget v1, v1, Ly4/f;->f:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget v0, p0, Ly4/e;->c:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ly4/e;->a:Ly4/f;

    .line 7
    .line 8
    invoke-virtual {v0}, Ly4/f;->d()V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Ly4/e;->c:I

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ly4/f;->l(I)V

    .line 14
    .line 15
    .line 16
    iput v1, p0, Ly4/e;->c:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v1, "Call next() before removing element from the iterator."

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method
