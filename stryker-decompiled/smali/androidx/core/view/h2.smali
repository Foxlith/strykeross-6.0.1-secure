.class public final Landroidx/core/view/h2;
.super Landroidx/core/view/g2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/view/g2;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/q2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/core/view/g2;-><init>(Landroidx/core/view/q2;)V

    return-void
.end method


# virtual methods
.method public c(ILz/f;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/core/view/p2;->a(I)I

    move-result p1

    invoke-virtual {p2}, Lz/f;->d()Landroid/graphics/Insets;

    move-result-object p2

    iget-object v0, p0, Landroidx/core/view/g2;->c:Landroid/view/WindowInsets$Builder;

    invoke-static {v0, p1, p2}, Landroidx/core/view/z1;->o(Landroid/view/WindowInsets$Builder;ILandroid/graphics/Insets;)V

    return-void
.end method
