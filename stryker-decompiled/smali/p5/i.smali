.class public abstract Lp5/i;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/lang/Object;La5/e;)V
.end method

.method public final b(Landroidx/core/view/h1;La5/e;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/core/view/h1;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lp5/h;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sget-object v2, Lw4/h;->a:Lw4/h;

    .line 13
    .line 14
    sget-object v3, Lb5/a;->a:Lb5/a;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    move-object p1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object p1, v0, Lp5/h;->c:Ljava/util/Iterator;

    .line 21
    .line 22
    const/4 p1, 0x2

    .line 23
    iput p1, v0, Lp5/h;->a:I

    .line 24
    .line 25
    iput-object p2, v0, Lp5/h;->d:La5/e;

    .line 26
    .line 27
    const-string p1, "frame"

    .line 28
    .line 29
    invoke-static {p2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object p1, v3

    .line 33
    :goto_0
    if-ne p1, v3, :cond_1

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    return-object v2
.end method
