.class Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 2
    .line 3
    iput p2, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/q2;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/core/view/q2;->d()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v0

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    move v2, v0

    .line 23
    :goto_1
    if-ge v2, v1, :cond_3

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    .line 36
    .line 37
    invoke-static {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget v6, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 42
    .line 43
    const/4 v7, 0x1

    .line 44
    if-eq v6, v7, :cond_2

    .line 45
    .line 46
    const/4 v3, 0x2

    .line 47
    if-eq v6, v3, :cond_1

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    neg-int v3, p2

    .line 51
    int-to-float v3, v3

    .line 52
    iget v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 53
    .line 54
    mul-float/2addr v3, v4

    .line 55
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    :goto_2
    invoke-virtual {v5, v3}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_2
    neg-int v4, p2

    .line 64
    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 65
    .line 66
    invoke-virtual {v6, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-static {v4, v0, v3}, Lv1/f;->j(III)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    goto :goto_2

    .line 75
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 84
    .line 85
    iget-object v1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    if-lez p1, :cond_4

    .line 90
    .line 91
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 92
    .line 93
    invoke-static {v0}, Landroidx/core/view/k0;->k(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 103
    .line 104
    sget-object v2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 105
    .line 106
    invoke-static {v1}, Landroidx/core/view/k0;->d(Landroid/view/View;)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    sub-int v1, v0, v1

    .line 111
    .line 112
    sub-int/2addr v1, p1

    .line 113
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    sub-int/2addr v0, p1

    .line 120
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 123
    .line 124
    int-to-float v0, v0

    .line 125
    int-to-float v2, v1

    .line 126
    div-float/2addr v0, v2

    .line 127
    const/high16 v3, 0x3f800000    # 1.0f

    .line 128
    .line 129
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setFadeModeStartFraction(F)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 137
    .line 138
    iget-object v0, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 139
    .line 140
    iget p1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    .line 141
    .line 142
    add-int/2addr p1, v1

    .line 143
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCurrentOffsetY(I)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 147
    .line 148
    iget-object p1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 149
    .line 150
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    int-to-float p2, p2

    .line 155
    div-float/2addr p2, v2

    .line 156
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 157
    .line 158
    .line 159
    return-void
.end method
