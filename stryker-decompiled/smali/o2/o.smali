.class public final Lo2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/g;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo2/o;->a:Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)V
    .locals 1

    .line 1
    new-instance v0, Lo2/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lo2/n;-><init>(Lo2/o;Ljava/lang/String;J)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->v:I

    .line 7
    .line 8
    iget-object p1, p0, Lo2/o;->a:Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->f(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string v0, "stryker"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "login"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "Kernel panic"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string v0, "error"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :cond_0
    sget-object v0, Ln2/e;->a:Ln2/e;

    .line 36
    .line 37
    sget v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->v:I

    .line 38
    .line 39
    iget-object v1, p0, Lo2/o;->a:Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;

    .line 40
    .line 41
    invoke-virtual {v1, v0, p1}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->e(Ln2/e;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    sget-object v0, Ln2/e;->c:Ln2/e;

    .line 2
    .line 3
    sget v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->v:I

    .line 4
    .line 5
    iget-object v1, p0, Lo2/o;->a:Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;

    .line 6
    .line 7
    const-string v2, "Guest is up"

    .line 8
    .line 9
    invoke-virtual {v1, v0, v2}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->e(Ln2/e;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Ln2/e;->d:Ln2/e;

    .line 2
    .line 3
    const-string v1, "Boot: "

    .line 4
    .line 5
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->v:I

    .line 10
    .line 11
    iget-object v1, p0, Lo2/o;->a:Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;

    .line 12
    .line 13
    invoke-virtual {v1, v0, p1}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->e(Ln2/e;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
