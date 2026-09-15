.class public Landroidx/core/view/o2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroidx/core/view/q2;


# instance fields
.field public final a:Landroidx/core/view/q2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/q0;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lf/q0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroidx/core/view/i2;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/core/view/i2;->b()Landroidx/core/view/q2;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/core/view/o2;->a()Landroidx/core/view/q2;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/core/view/o2;->b()Landroidx/core/view/q2;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/core/view/o2;->c()Landroidx/core/view/q2;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Landroidx/core/view/o2;->b:Landroidx/core/view/q2;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/q2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/o2;->a:Landroidx/core/view/q2;

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/view/q2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/o2;->a:Landroidx/core/view/q2;

    return-object v0
.end method

.method public b()Landroidx/core/view/q2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/o2;->a:Landroidx/core/view/q2;

    return-object v0
.end method

.method public c()Landroidx/core/view/q2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/o2;->a:Landroidx/core/view/q2;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e()Landroidx/core/view/l;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/core/view/o2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/core/view/o2;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/core/view/o2;->n()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Landroidx/core/view/o2;->n()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ne v1, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/core/view/o2;->m()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Landroidx/core/view/o2;->m()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v1, v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/core/view/o2;->j()Lz/f;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Landroidx/core/view/o2;->j()Lz/f;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v1, v3}, Lg0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/core/view/o2;->h()Lz/f;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1}, Landroidx/core/view/o2;->h()Lz/f;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v1, v3}, Lg0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/core/view/o2;->e()Landroidx/core/view/l;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1}, Landroidx/core/view/o2;->e()Landroidx/core/view/l;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Lg0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move v0, v2

    .line 77
    :goto_0
    return v0
.end method

.method public f(I)Lz/f;
    .locals 0

    .line 1
    sget-object p1, Lz/f;->e:Lz/f;

    return-object p1
.end method

.method public g()Lz/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/o2;->j()Lz/f;

    move-result-object v0

    return-object v0
.end method

.method public h()Lz/f;
    .locals 1

    .line 1
    sget-object v0, Lz/f;->e:Lz/f;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/o2;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/core/view/o2;->m()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Landroidx/core/view/o2;->j()Lz/f;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Landroidx/core/view/o2;->h()Lz/f;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p0}, Landroidx/core/view/o2;->e()Landroidx/core/view/l;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lg0/b;->b([Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0
.end method

.method public i()Lz/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/o2;->j()Lz/f;

    move-result-object v0

    return-object v0
.end method

.method public j()Lz/f;
    .locals 1

    .line 1
    sget-object v0, Lz/f;->e:Lz/f;

    return-object v0
.end method

.method public k()Lz/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/o2;->j()Lz/f;

    move-result-object v0

    return-object v0
.end method

.method public l(IIII)Landroidx/core/view/q2;
    .locals 0

    .line 1
    sget-object p1, Landroidx/core/view/o2;->b:Landroidx/core/view/q2;

    return-object p1
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public o([Lz/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method public p(Landroidx/core/view/q2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public q(Lz/f;)V
    .locals 0

    .line 1
    return-void
.end method
