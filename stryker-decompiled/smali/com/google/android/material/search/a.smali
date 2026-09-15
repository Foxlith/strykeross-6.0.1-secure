.class public final synthetic Lcom/google/android/material/search/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh0/d;
.implements Lcom/google/android/material/animation/AnimatableView$Listener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/search/a;->a:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final onTouchExplorationStateChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/search/SearchBar;

    invoke-static {v0, p1}, Lcom/google/android/material/search/SearchBar;->q(Lcom/google/android/material/search/SearchBar;Z)V

    return-void
.end method
