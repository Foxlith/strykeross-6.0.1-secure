.class public abstract Landroidx/transition/f0;
.super Landroidx/fragment/app/x0;
.source "SourceFile"


# static fields
.field public static d:Z = true


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroidx/fragment/app/x0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public r(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/transition/f0;->d:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/widget/r1;->a(Landroid/view/View;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/transition/f0;->d:Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    return p1
.end method

.method public s(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/transition/f0;->d:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Landroidx/appcompat/widget/r1;->n(Landroid/view/View;F)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/transition/f0;->d:Z

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
