.class public final synthetic Lcom/google/android/material/search/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/search/SearchViewAnimationHelper;

.field public final synthetic b:F

.field public final synthetic c:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;FLandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/l;->a:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iput p2, p0, Lcom/google/android/material/search/l;->b:F

    iput-object p3, p0, Lcom/google/android/material/search/l;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/search/l;->b:F

    iget-object v1, p0, Lcom/google/android/material/search/l;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/material/search/l;->a:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v2, v0, v1, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->b(Lcom/google/android/material/search/SearchViewAnimationHelper;FLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method
