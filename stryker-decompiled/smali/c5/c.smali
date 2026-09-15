.class public abstract Lc5/c;
.super Lc5/a;
.source "SourceFile"


# instance fields
.field private final _context:La5/j;

.field private transient intercepted:La5/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La5/e;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La5/e;La5/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc5/a;-><init>(La5/e;)V

    iput-object p2, p0, Lc5/c;->_context:La5/j;

    return-void
.end method


# virtual methods
.method public getContext()La5/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/c;->_context:La5/j;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final intercepted()La5/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La5/e;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/c;->intercepted:La5/e;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lc5/c;->getContext()La5/j;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, La5/f;->a:La5/f;

    .line 10
    .line 11
    invoke-interface {v0, v1}, La5/j;->get(La5/i;)La5/h;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, La5/g;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast v0, Lr5/e;

    .line 20
    .line 21
    new-instance v1, Lt5/a;

    .line 22
    .line 23
    invoke-direct {v1, v0, p0}, Lt5/a;-><init>(Lr5/e;La5/e;)V

    .line 24
    .line 25
    .line 26
    move-object v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v0, p0

    .line 29
    :goto_0
    iput-object v0, p0, Lc5/c;->intercepted:La5/e;

    .line 30
    .line 31
    :cond_1
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc5/c;->intercepted:La5/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lc5/c;->getContext()La5/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, La5/f;->a:La5/f;

    .line 12
    .line 13
    invoke-interface {v1, v2}, La5/j;->get(La5/i;)La5/h;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Li5/a;->m(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    check-cast v1, La5/g;

    .line 21
    .line 22
    check-cast v0, Lt5/a;

    .line 23
    .line 24
    :cond_0
    sget-object v0, Lc5/b;->a:Lc5/b;

    .line 25
    .line 26
    iput-object v0, p0, Lc5/c;->intercepted:La5/e;

    .line 27
    .line 28
    return-void
.end method
