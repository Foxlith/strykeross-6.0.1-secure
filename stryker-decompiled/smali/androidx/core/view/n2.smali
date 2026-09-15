.class public final Landroidx/core/view/n2;
.super Landroidx/core/view/m2;
.source "SourceFile"


# static fields
.field public static final q:Landroidx/core/view/q2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/core/view/z1;->h()Landroid/view/WindowInsets;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Landroidx/core/view/q2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/q2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Landroidx/core/view/n2;->q:Landroidx/core/view/q2;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/q2;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/view/m2;-><init>(Landroidx/core/view/q2;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public f(I)Lz/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/j2;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Landroidx/core/view/p2;->a(I)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/view/z1;->f(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Lz/f;->c(Landroid/graphics/Insets;)Lz/f;

    move-result-object p1

    return-object p1
.end method
