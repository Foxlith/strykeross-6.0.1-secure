.class public final Landroidx/fragment/app/h;
.super Landroidx/fragment/app/i;
.source "SourceFile"


# instance fields
.field public c:Z

.field public d:Z

.field public e:Landroidx/fragment/app/d0;


# virtual methods
.method public final c(Landroid/content/Context;)Landroidx/fragment/app/d0;
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/h;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/fragment/app/h;->e:Landroidx/fragment/app/d0;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/s1;

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    iget v0, v0, Landroidx/fragment/app/s1;->a:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    move v0, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-boolean v2, p0, Landroidx/fragment/app/h;->c:Z

    .line 22
    .line 23
    invoke-static {p1, v1, v0, v2}, Landroidx/fragment/app/f0;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/d0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/fragment/app/h;->e:Landroidx/fragment/app/d0;

    .line 28
    .line 29
    iput-boolean v3, p0, Landroidx/fragment/app/h;->d:Z

    .line 30
    .line 31
    return-object p1
.end method
