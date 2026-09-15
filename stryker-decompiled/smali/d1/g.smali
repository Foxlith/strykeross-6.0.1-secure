.class public final Ld1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/e;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Landroidx/fragment/app/t0;

.field public final d:Z

.field public final e:Z

.field public final f:Lw4/f;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/t0;ZZ)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Ld1/g;->a:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Ld1/g;->b:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p3, p0, Ld1/g;->c:Landroidx/fragment/app/t0;

    .line 19
    .line 20
    iput-boolean p4, p0, Ld1/g;->d:Z

    .line 21
    .line 22
    iput-boolean p5, p0, Ld1/g;->e:Z

    .line 23
    .line 24
    new-instance p1, Landroidx/lifecycle/m0;

    .line 25
    .line 26
    const/4 p2, 0x2

    .line 27
    invoke-direct {p1, p0, p2}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    new-instance p2, Lw4/f;

    .line 31
    .line 32
    invoke-direct {p2, p1}, Lw4/f;-><init>(Lj5/a;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Ld1/g;->f:Lw4/f;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld1/g;->f:Lw4/f;

    .line 2
    .line 3
    iget-object v0, v0, Lw4/f;->b:Ljava/lang/Object;

    .line 4
    .line 5
    sget-object v1, Lw4/g;->a:Lw4/g;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ld1/g;->i()Ld1/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ld1/f;->close()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final i()Ld1/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/g;->f:Lw4/f;

    invoke-virtual {v0}, Lw4/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/f;

    return-object v0
.end method

.method public final q()Lc1/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld1/g;->i()Ld1/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld1/f;->i(Z)Lc1/b;

    move-result-object v0

    return-object v0
.end method

.method public final setWriteAheadLoggingEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld1/g;->f:Lw4/f;

    .line 2
    .line 3
    iget-object v0, v0, Lw4/f;->b:Ljava/lang/Object;

    .line 4
    .line 5
    sget-object v1, Lw4/g;->a:Lw4/g;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ld1/g;->i()Ld1/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "sQLiteOpenHelper"

    .line 14
    .line 15
    invoke-static {v0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-boolean p1, p0, Ld1/g;->g:Z

    .line 22
    .line 23
    return-void
.end method
