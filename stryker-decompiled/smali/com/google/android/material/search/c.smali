.class public final synthetic Lcom/google/android/material/search/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/search/c;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iput-object p1, p0, Lcom/google/android/material/search/c;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/c;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/search/c;->b:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->c(Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
