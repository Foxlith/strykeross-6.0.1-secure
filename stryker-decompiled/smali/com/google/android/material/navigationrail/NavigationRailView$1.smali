.class Lcom/google/android/material/navigationrail/NavigationRailView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigationrail/NavigationRailView;->applyWindowInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/navigationrail/NavigationRailView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigationrail/NavigationRailView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView$1;->this$0:Lcom/google/android/material/navigationrail/NavigationRailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/q2;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/q2;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView$1;->this$0:Lcom/google/android/material/navigationrail/NavigationRailView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$000(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$100(Lcom/google/android/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x7

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    .line 15
    .line 16
    iget-object v2, p2, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroidx/core/view/o2;->f(I)Lz/f;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget v2, v2, Lz/f;->b:I

    .line 23
    .line 24
    add-int/2addr v0, v2

    .line 25
    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView$1;->this$0:Lcom/google/android/material/navigationrail/NavigationRailView;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$200(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v0, v2}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$100(Lcom/google/android/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 40
    .line 41
    iget-object v2, p2, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroidx/core/view/o2;->f(I)Lz/f;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget v1, v1, Lz/f;->d:I

    .line 48
    .line 49
    add-int/2addr v0, v1

    .line 50
    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 51
    .line 52
    :cond_1
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 53
    .line 54
    invoke-static {p1}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x1

    .line 59
    if-ne v0, v1, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v1, 0x0

    .line 63
    :goto_0
    invoke-virtual {p2}, Landroidx/core/view/q2;->b()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p2}, Landroidx/core/view/q2;->c()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iget v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    move v0, v2

    .line 76
    :cond_3
    add-int/2addr v3, v0

    .line 77
    iput v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 78
    .line 79
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    return-object p2
.end method
