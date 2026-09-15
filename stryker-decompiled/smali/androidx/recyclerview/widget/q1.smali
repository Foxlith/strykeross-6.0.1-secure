.class public final Landroidx/recyclerview/widget/q1;
.super Landroidx/core/view/c;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/recyclerview/widget/r1;

.field public final b:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/r1;)V
    .locals 1

    invoke-direct {p0}, Landroidx/core/view/c;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/q1;->b:Ljava/util/WeakHashMap;

    iput-object p1, p0, Landroidx/recyclerview/widget/q1;->a:Landroidx/recyclerview/widget/r1;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/c;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Lh0/l;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/core/view/c;->getAccessibilityNodeProvider(Landroid/view/View;)Lh0/l;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/core/view/c;->getAccessibilityNodeProvider(Landroid/view/View;)Lh0/l;

    move-result-object p1

    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->a:Landroidx/recyclerview/widget/r1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/r1;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/recyclerview/widget/r1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/r1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/w0;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Lh0/h;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    :goto_0
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/c;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/c;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/c;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->a:Landroidx/recyclerview/widget/r1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/r1;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroidx/recyclerview/widget/r1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/q1;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/c;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Landroidx/core/view/c;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/c;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v0, v0, Landroidx/recyclerview/widget/r1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/w0;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/c;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/c;->sendAccessibilityEvent(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->sendAccessibilityEvent(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/c;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method
