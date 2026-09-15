.class public final Lcom/nambimobile/widgets/efab/ResourcesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getThemeColorAccent(Landroid/content/Context;)I
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/util/TypedValue;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    const v3, 0x1010435

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget v0, Lcom/nambimobile/widgets/efab/R$color;->colorAccent:I

    .line 29
    .line 30
    sget-object v1, Lx/g;->a:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {p0, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    :goto_0
    return p0
.end method
