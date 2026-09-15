.class public final Landroidx/appcompat/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/q1;


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Landroidx/appcompat/widget/ActionBarContextView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionBarContextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/a;->c:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/a;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/a;->a:Z

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a;->c:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Landroidx/appcompat/widget/ActionBarContextView;->a(Landroidx/appcompat/widget/ActionBarContextView;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/a;->a:Z

    return-void
.end method

.method public final onAnimationEnd()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/a;->c:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/ActionBarContextView;->f:Landroidx/core/view/p1;

    iget v1, p0, Landroidx/appcompat/widget/a;->b:I

    invoke-static {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->b(Landroidx/appcompat/widget/ActionBarContextView;I)V

    return-void
.end method
