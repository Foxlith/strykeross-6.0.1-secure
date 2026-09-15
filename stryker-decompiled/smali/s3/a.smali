.class public final Ls3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:D

.field public e:D

.field public f:D


# virtual methods
.method public final a(Ljava/lang/String;D)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls3/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Ls3/a;->f:D

    cmpl-double v0, p2, v0

    if-lez v0, :cond_2

    :cond_1
    iput-object p1, p0, Ls3/a;->c:Ljava/lang/String;

    iput-wide p2, p0, Ls3/a;->f:D

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;D)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ls3/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Ls3/a;->e:D

    cmpl-double v0, p2, v0

    if-lez v0, :cond_2

    :cond_1
    iput-object p1, p0, Ls3/a;->b:Ljava/lang/String;

    iput-wide p2, p0, Ls3/a;->e:D

    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/String;D)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ls3/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Ls3/a;->d:D

    cmpl-double v0, p2, v0

    if-lez v0, :cond_2

    :cond_1
    iput-object p1, p0, Ls3/a;->a:Ljava/lang/String;

    iput-wide p2, p0, Ls3/a;->d:D

    :cond_2
    return-void
.end method
