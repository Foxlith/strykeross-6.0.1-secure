.class Lcom/google/android/material/behavior/SwipeDismissBehavior$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh0/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;->updateAccessibilityActions(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Lh0/o;)Z
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p2, :cond_5

    .line 9
    .line 10
    sget-object p2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    invoke-static {p1}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne p2, v1, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 21
    .line 22
    iget p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    :cond_1
    if-ne p2, v1, :cond_3

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    neg-int p2, p2

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 43
    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 50
    .line 51
    iget-object p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    .line 52
    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    invoke-interface {p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    return v1

    .line 59
    :cond_5
    return v0
.end method
