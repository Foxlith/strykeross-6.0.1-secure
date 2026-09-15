.class public final Ld/f;
.super Ld/a;
.source "SourceFile"


# virtual methods
.method public final a(Landroidx/activity/h;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 1

    .line 1
    check-cast p2, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "context"

    .line 4
    .line 5
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "input"

    .line 9
    .line 10
    invoke-static {p2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object p2
.end method

.method public final c(Landroid/content/Intent;I)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Landroidx/activity/result/a;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/activity/result/a;-><init>(Landroid/content/Intent;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
