.class public Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;
.super Lcom/google/android/material/appbar/AppBarLayout$ChildScrollEffect;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompressChildScrollEffect"
.end annotation


# static fields
.field private static final COMPRESS_DISTANCE_FACTOR:F = 0.3f


# instance fields
.field private final ghostRect:Landroid/graphics/Rect;

.field private final relativeRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$ChildScrollEffect;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->relativeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->ghostRect:Landroid/graphics/Rect;

    return-void
.end method

.method private static updateRelativeRect(Landroid/graphics/Rect;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p2, p0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2, p0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result p1

    neg-int p1, p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->relativeRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->updateRelativeRect(Landroid/graphics/Rect;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->relativeRect:Landroid/graphics/Rect;

    .line 7
    .line 8
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 9
    .line 10
    int-to-float p1, p1

    .line 11
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    sub-float/2addr p1, p3

    .line 16
    const/4 p3, 0x0

    .line 17
    cmpg-float v0, p1, p3

    .line 18
    .line 19
    if-gtz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->relativeRect:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-float v0, v0

    .line 28
    div-float v0, p1, v0

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/high16 v1, 0x3f800000    # 1.0f

    .line 35
    .line 36
    invoke-static {v0, p3, v1}, Lv1/f;->i(FFF)F

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    neg-float p1, p1

    .line 41
    sub-float p3, v1, p3

    .line 42
    .line 43
    mul-float/2addr p3, p3

    .line 44
    sub-float/2addr v1, p3

    .line 45
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->relativeRect:Landroid/graphics/Rect;

    .line 46
    .line 47
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    int-to-float p3, p3

    .line 52
    const v0, 0x3e99999a    # 0.3f

    .line 53
    .line 54
    .line 55
    mul-float/2addr p3, v0

    .line 56
    mul-float/2addr p3, v1

    .line 57
    sub-float/2addr p1, p3

    .line 58
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 59
    .line 60
    .line 61
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->ghostRect:Landroid/graphics/Rect;

    .line 62
    .line 63
    invoke-virtual {p2, p3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 64
    .line 65
    .line 66
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->ghostRect:Landroid/graphics/Rect;

    .line 67
    .line 68
    neg-float p1, p1

    .line 69
    float-to-int p1, p1

    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p3, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->ghostRect:Landroid/graphics/Rect;

    .line 75
    .line 76
    sget-object p3, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 77
    .line 78
    invoke-static {p2, p1}, Landroidx/core/view/m0;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    sget-object p1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    invoke-static {p2, p1}, Landroidx/core/view/m0;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void
.end method
