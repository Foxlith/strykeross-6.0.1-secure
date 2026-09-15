.class public final synthetic Ln1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/d;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/v;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lc1/c;)Lc1/e;
    .locals 12

    .line 1
    iget-object v1, p0, Ln1/v;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "$context"

    .line 4
    .line 5
    invoke-static {v1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p1, Lc1/c;->b:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "callback"

    .line 11
    .line 12
    iget-object v3, p1, Lc1/c;->c:Landroidx/fragment/app/t0;

    .line 13
    .line 14
    invoke-static {v3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Lc1/c;

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    move v4, v5

    .line 30
    invoke-direct/range {v0 .. v5}, Lc1/c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/t0;ZZ)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ld1/g;

    .line 34
    .line 35
    iget-object v7, p1, Lc1/c;->a:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v8, p1, Lc1/c;->b:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v9, p1, Lc1/c;->c:Landroidx/fragment/app/t0;

    .line 40
    .line 41
    iget-boolean v10, p1, Lc1/c;->d:Z

    .line 42
    .line 43
    iget-boolean v11, p1, Lc1/c;->e:Z

    .line 44
    .line 45
    move-object v6, v0

    .line 46
    invoke-direct/range {v6 .. v11}, Ld1/g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/t0;ZZ)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string v0, "Must set a non-null database name to a configuration that uses the no backup directory."

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method
