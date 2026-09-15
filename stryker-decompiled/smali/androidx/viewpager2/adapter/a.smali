.class public final Landroidx/viewpager2/adapter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Landroid/widget/FrameLayout;

.field public final synthetic b:Landroidx/viewpager2/adapter/f;

.field public final synthetic c:Landroidx/viewpager2/adapter/e;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/e;Landroid/widget/FrameLayout;Landroidx/viewpager2/adapter/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/viewpager2/adapter/e;

    iput-object p2, p0, Landroidx/viewpager2/adapter/a;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/viewpager2/adapter/f;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Landroidx/viewpager2/adapter/a;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/viewpager2/adapter/e;

    iget-object p2, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/viewpager2/adapter/f;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/adapter/e;->e(Landroidx/viewpager2/adapter/f;)V

    :cond_0
    return-void
.end method
