.class public final synthetic Lcom/google/android/material/search/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/a0;
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/search/SearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/search/i;->a:Lcom/google/android/material/search/SearchView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/i;->a:Lcom/google/android/material/search/SearchView;

    invoke-static {v0, p1, p2}, Lcom/google/android/material/search/SearchView;->e(Lcom/google/android/material/search/SearchView;Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;

    move-result-object p1

    return-object p1
.end method

.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/q2;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/q2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/search/i;->a:Lcom/google/android/material/search/SearchView;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/material/search/SearchView;->a(Lcom/google/android/material/search/SearchView;Landroid/view/View;Landroidx/core/view/q2;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/q2;

    move-result-object p1

    return-object p1
.end method
