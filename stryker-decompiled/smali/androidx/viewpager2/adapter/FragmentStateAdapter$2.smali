.class Landroidx/viewpager2/adapter/FragmentStateAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:Landroidx/viewpager2/adapter/f;

.field public final synthetic b:Landroidx/viewpager2/adapter/e;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/e;Landroidx/viewpager2/adapter/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->b:Landroidx/viewpager2/adapter/e;

    iput-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->a:Landroidx/viewpager2/adapter/f;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->b:Landroidx/viewpager2/adapter/e;

    .line 2
    .line 3
    iget-object v0, p2, Landroidx/viewpager2/adapter/e;->b:Landroidx/fragment/app/u0;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/u0;->E()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-interface {p1}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->a:Landroidx/viewpager2/adapter/f;

    .line 20
    .line 21
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 22
    .line 23
    check-cast v0, Landroid/widget/FrameLayout;

    .line 24
    .line 25
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/core/view/n0;->b(Landroid/view/View;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroidx/viewpager2/adapter/e;->e(Landroidx/viewpager2/adapter/f;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method
