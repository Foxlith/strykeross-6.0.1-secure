.class public Landroidx/transition/i0;
.super Landroidx/transition/h0;
.source "SourceFile"


# static fields
.field public static h:Z = true


# virtual methods
.method public o(ILandroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/x0;->o(ILandroid/view/View;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Landroidx/transition/i0;->h:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p1, p2}, Landroidx/appcompat/widget/r1;->k(ILandroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Landroidx/transition/i0;->h:Z

    :cond_1
    :goto_0
    return-void
.end method
