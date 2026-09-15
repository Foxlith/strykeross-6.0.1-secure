.class public final Landroidx/core/view/x2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld/d;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance p2, Landroidx/core/view/w2;

    .line 1
    invoke-static {p1}, Landroidx/core/view/z1;->l(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/core/view/w2;-><init>(Landroid/view/WindowInsetsController;)V

    iput-object p1, p2, Landroidx/core/view/w2;->f:Landroid/view/Window;

    iput-object p2, p0, Landroidx/core/view/x2;->a:Ld/d;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 2
    new-instance v0, Landroidx/core/view/u2;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/core/view/s2;-><init>(Landroid/view/Window;Landroid/view/View;)V

    :goto_0
    iput-object v0, p0, Landroidx/core/view/x2;->a:Ld/d;

    goto :goto_1

    .line 4
    :cond_1
    new-instance v0, Landroidx/core/view/t2;

    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/core/view/s2;-><init>(Landroid/view/Window;Landroid/view/View;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsController;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/view/w2;

    invoke-direct {v0, p1}, Landroidx/core/view/w2;-><init>(Landroid/view/WindowInsetsController;)V

    iput-object v0, p0, Landroidx/core/view/x2;->a:Ld/d;

    return-void
.end method
