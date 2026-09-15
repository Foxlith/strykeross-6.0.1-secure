.class public Lcom/google/android/material/search/SearchView$Behavior;
.super Landroidx/coordinatorlayout/widget/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/search/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/c;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/search/SearchView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchView$Behavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/search/SearchView;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/search/SearchView;Landroid/view/View;)Z
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/material/search/SearchView;->isSetupWithSearchBar()Z

    move-result p1

    if-nez p1, :cond_0

    instance-of p1, p3, Lcom/google/android/material/search/SearchBar;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p2, p3}, Lcom/google/android/material/search/SearchView;->setupWithSearchBar(Lcom/google/android/material/search/SearchBar;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
