.class public abstract Landroidx/transition/g0;
.super Landroidx/transition/f0;
.source "SourceFile"


# static fields
.field public static e:Z = true

.field public static f:Z = true


# virtual methods
.method public t(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/transition/g0;->e:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Landroidx/appcompat/widget/r1;->w(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Landroidx/transition/g0;->e:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public u(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/transition/g0;->f:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Landroidx/appcompat/widget/r1;->p(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Landroidx/transition/g0;->f:Z

    :cond_0
    :goto_0
    return-void
.end method
