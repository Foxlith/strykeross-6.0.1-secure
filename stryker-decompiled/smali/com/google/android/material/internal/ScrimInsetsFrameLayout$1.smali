.class Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/ScrimInsetsFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p1, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroidx/core/view/q2;->b()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p2}, Landroidx/core/view/q2;->d()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p2}, Landroidx/core/view/q2;->c()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p2}, Landroidx/core/view/q2;->a()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onInsetsChanged(Landroidx/core/view/q2;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    .line 43
    .line 44
    iget-object p2, p2, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 45
    .line 46
    invoke-virtual {p2}, Landroidx/core/view/o2;->j()Lz/f;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v1, Lz/f;->e:Lz/f;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lz/f;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x1

    .line 57
    xor-int/2addr v0, v1

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v1, 0x0

    .line 68
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    .line 72
    .line 73
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 74
    .line 75
    invoke-static {p1}, Landroidx/core/view/k0;->k(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Landroidx/core/view/o2;->c()Landroidx/core/view/q2;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1
.end method
