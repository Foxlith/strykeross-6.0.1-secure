.class public abstract Landroidx/transition/n0;
.super Landroidx/transition/u;
.source "SourceFile"


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/n0;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/transition/u;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroidx/transition/n0;->mMode:I

    return-void
.end method

.method public static e(Landroidx/transition/c0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/transition/c0;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p0, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "android:visibility:visibility"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/transition/c0;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v2, "android:visibility:parent"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object p0, p0, Landroidx/transition/c0;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const-string p0, "android:visibility:screenLocation"

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static f(Landroidx/transition/c0;Landroidx/transition/c0;)Landroidx/transition/m0;
    .locals 8

    .line 1
    new-instance v0, Landroidx/transition/m0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Landroidx/transition/m0;->a:Z

    .line 8
    .line 9
    iput-boolean v1, v0, Landroidx/transition/m0;->b:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, -0x1

    .line 13
    const-string v4, "android:visibility:parent"

    .line 14
    .line 15
    const-string v5, "android:visibility:visibility"

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object v6, p0, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    check-cast v7, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    iput v7, v0, Landroidx/transition/m0;->c:I

    .line 38
    .line 39
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Landroid/view/ViewGroup;

    .line 44
    .line 45
    iput-object v6, v0, Landroidx/transition/m0;->e:Landroid/view/ViewGroup;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iput v3, v0, Landroidx/transition/m0;->c:I

    .line 49
    .line 50
    iput-object v2, v0, Landroidx/transition/m0;->e:Landroid/view/ViewGroup;

    .line 51
    .line 52
    :goto_0
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object v6, p1, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_1

    .line 61
    .line 62
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iput v2, v0, Landroidx/transition/m0;->d:I

    .line 73
    .line 74
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Landroid/view/ViewGroup;

    .line 79
    .line 80
    :goto_1
    iput-object v2, v0, Landroidx/transition/m0;->f:Landroid/view/ViewGroup;

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    iput v3, v0, Landroidx/transition/m0;->d:I

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :goto_2
    const/4 v2, 0x1

    .line 87
    if-eqz p0, :cond_6

    .line 88
    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    iget p0, v0, Landroidx/transition/m0;->c:I

    .line 92
    .line 93
    iget p1, v0, Landroidx/transition/m0;->d:I

    .line 94
    .line 95
    if-ne p0, p1, :cond_2

    .line 96
    .line 97
    iget-object v3, v0, Landroidx/transition/m0;->e:Landroid/view/ViewGroup;

    .line 98
    .line 99
    iget-object v4, v0, Landroidx/transition/m0;->f:Landroid/view/ViewGroup;

    .line 100
    .line 101
    if-ne v3, v4, :cond_2

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_2
    if-eq p0, p1, :cond_4

    .line 105
    .line 106
    if-nez p0, :cond_3

    .line 107
    .line 108
    :goto_3
    iput-boolean v1, v0, Landroidx/transition/m0;->b:Z

    .line 109
    .line 110
    :goto_4
    iput-boolean v2, v0, Landroidx/transition/m0;->a:Z

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_3
    if-nez p1, :cond_8

    .line 114
    .line 115
    :goto_5
    iput-boolean v2, v0, Landroidx/transition/m0;->b:Z

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_4
    iget-object p0, v0, Landroidx/transition/m0;->f:Landroid/view/ViewGroup;

    .line 119
    .line 120
    if-nez p0, :cond_5

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_5
    iget-object p0, v0, Landroidx/transition/m0;->e:Landroid/view/ViewGroup;

    .line 124
    .line 125
    if-nez p0, :cond_8

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_6
    if-nez p0, :cond_7

    .line 129
    .line 130
    iget p0, v0, Landroidx/transition/m0;->d:I

    .line 131
    .line 132
    if-nez p0, :cond_7

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_7
    if-nez p1, :cond_8

    .line 136
    .line 137
    iget p0, v0, Landroidx/transition/m0;->c:I

    .line 138
    .line 139
    if-nez p0, :cond_8

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_8
    :goto_6
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/c0;)V
    .locals 0

    invoke-static {p1}, Landroidx/transition/n0;->e(Landroidx/transition/c0;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/c0;)V
    .locals 0

    invoke-static {p1}, Landroidx/transition/n0;->e(Landroidx/transition/c0;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/c0;Landroidx/transition/c0;)Landroid/animation/Animator;
    .locals 8

    invoke-static {p2, p3}, Landroidx/transition/n0;->f(Landroidx/transition/c0;Landroidx/transition/c0;)Landroidx/transition/m0;

    move-result-object v0

    iget-boolean v1, v0, Landroidx/transition/m0;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/transition/m0;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/transition/m0;->f:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, v0, Landroidx/transition/m0;->b:Z

    if-eqz v1, :cond_1

    iget v5, v0, Landroidx/transition/m0;->c:I

    iget v7, v0, Landroidx/transition/m0;->d:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/transition/n0;->onAppear(Landroid/view/ViewGroup;Landroidx/transition/c0;ILandroidx/transition/c0;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_1
    iget v3, v0, Landroidx/transition/m0;->c:I

    iget v5, v0, Landroidx/transition/m0;->d:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/n0;->onDisappear(Landroid/view/ViewGroup;Landroidx/transition/c0;ILandroidx/transition/c0;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Landroidx/transition/n0;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/transition/n0;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroidx/transition/c0;Landroidx/transition/c0;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p2, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    const-string v2, "android:visibility:visibility"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-static {p1, p2}, Landroidx/transition/n0;->f(Landroidx/transition/c0;Landroidx/transition/c0;)Landroidx/transition/m0;

    move-result-object p1

    iget-boolean p2, p1, Landroidx/transition/m0;->a:Z

    if-eqz p2, :cond_3

    iget p2, p1, Landroidx/transition/m0;->c:I

    if-eqz p2, :cond_2

    iget p1, p1, Landroidx/transition/m0;->d:I

    if-nez p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public isVisible(Landroidx/transition/c0;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p1, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    const-string v1, "android:visibility:visibility"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "android:visibility:parent"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public abstract onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/c0;Landroidx/transition/c0;)Landroid/animation/Animator;
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroidx/transition/c0;ILandroidx/transition/c0;I)Landroid/animation/Animator;
    .locals 2

    .line 1
    iget p3, p0, Landroidx/transition/n0;->mMode:I

    const/4 p5, 0x1

    and-int/2addr p3, p5

    const/4 v0, 0x0

    if-ne p3, p5, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p3, p4, Landroidx/transition/c0;->b:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    const/4 p5, 0x0

    invoke-virtual {p0, p3, p5}, Landroidx/transition/u;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/c0;

    move-result-object v1

    invoke-virtual {p0, p3, p5}, Landroidx/transition/u;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/c0;

    move-result-object p3

    invoke-static {v1, p3}, Landroidx/transition/n0;->f(Landroidx/transition/c0;Landroidx/transition/c0;)Landroidx/transition/m0;

    move-result-object p3

    iget-boolean p3, p3, Landroidx/transition/m0;->a:Z

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    iget-object p3, p4, Landroidx/transition/c0;->b:Landroid/view/View;

    invoke-virtual {p0, p1, p3, p2, p4}, Landroidx/transition/n0;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/c0;Landroidx/transition/c0;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public abstract onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/c0;Landroidx/transition/c0;)Landroid/animation/Animator;
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroidx/transition/c0;ILandroidx/transition/c0;I)Landroid/animation/Animator;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    iget v5, v0, Landroidx/transition/n0;->mMode:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    const/4 v7, 0x0

    if-eq v5, v6, :cond_0

    return-object v7

    :cond_0
    if-nez v2, :cond_1

    return-object v7

    :cond_1
    iget-object v5, v2, Landroidx/transition/c0;->b:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v8, v3, Landroidx/transition/c0;->b:Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v8, v7

    :goto_0
    const v9, 0x7f0a0552

    invoke-virtual {v5, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const/4 v12, 0x1

    if-eqz v10, :cond_3

    goto/16 :goto_c

    :cond_3
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x4

    if-ne v4, v10, :cond_5

    goto :goto_1

    :cond_5
    if-ne v5, v8, :cond_6

    :goto_1
    move-object v10, v8

    const/4 v13, 0x0

    move-object v8, v7

    goto :goto_3

    :cond_6
    move-object v8, v7

    move-object v10, v8

    move v13, v12

    goto :goto_3

    :cond_7
    :goto_2
    if-eqz v8, :cond_6

    move-object v10, v7

    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_13

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_8

    move-object/from16 v18, v10

    goto/16 :goto_a

    :cond_8
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    instance-of v13, v13, Landroid/view/View;

    if-eqz v13, :cond_13

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v0, v13, v12}, Landroidx/transition/u;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/c0;

    move-result-object v14

    invoke-virtual {v0, v13, v12}, Landroidx/transition/u;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/c0;

    move-result-object v15

    invoke-static {v14, v15}, Landroidx/transition/n0;->f(Landroidx/transition/c0;Landroidx/transition/c0;)Landroidx/transition/m0;

    move-result-object v14

    iget-boolean v14, v14, Landroidx/transition/m0;->a:Z

    if-nez v14, :cond_11

    sget-boolean v8, Landroidx/transition/b0;->a:Z

    .line 1
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v13}, Landroid/view/View;->getScrollX()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v13}, Landroid/view/View;->getScrollY()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v8, v14, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 2
    sget-object v13, Landroidx/transition/e0;->a:Landroidx/transition/i0;

    invoke-virtual {v13, v5, v8}, Landroidx/transition/g0;->t(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 3
    invoke-virtual {v13, v1, v8}, Landroidx/transition/g0;->u(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 4
    new-instance v13, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/4 v7, 0x0

    invoke-direct {v13, v7, v7, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v8, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v7, v13, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v14, v13, Landroid/graphics/RectF;->top:F

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    iget v15, v13, Landroid/graphics/RectF;->right:F

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    iget v9, v13, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    sget-boolean v11, Landroidx/transition/b0;->a:Z

    if-eqz v11, :cond_a

    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v11

    xor-int/2addr v11, v12

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v16

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    :goto_4
    const/16 v16, 0x0

    :goto_5
    sget-boolean v17, Landroidx/transition/b0;->b:Z

    if-eqz v17, :cond_c

    if-eqz v11, :cond_c

    if-nez v16, :cond_b

    move-object/from16 v18, v10

    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_b
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Landroid/view/ViewGroup;

    invoke-virtual {v12, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v16

    move-object/from16 v18, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    move/from16 v10, v16

    goto :goto_6

    :cond_c
    move-object/from16 v18, v10

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-lez v4, :cond_e

    if-lez v3, :cond_e

    mul-int v2, v4, v3

    int-to-float v2, v2

    const/high16 v16, 0x49800000    # 1048576.0f

    div-float v2, v16, v2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v2, v4

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v13, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v13, v13, Landroid/graphics/RectF;->top:F

    neg-float v13, v13

    invoke-virtual {v8, v4, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v8, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    sget-boolean v0, Landroidx/transition/b0;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v0}, Landroidx/core/view/j;->d(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7

    :cond_d
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    :goto_7
    if-eqz v17, :cond_f

    if-eqz v11, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    invoke-virtual {v12, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_f
    :goto_8
    if-eqz v0, :cond_10

    .line 6
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_10
    sub-int v0, v15, v7

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sub-int v3, v9, v14

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6, v7, v14, v15, v9}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    move-object v10, v6

    :goto_9
    move-object/from16 v7, v18

    const/4 v12, 0x0

    goto :goto_c

    :cond_11
    move-object/from16 v18, v10

    .line 7
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_12

    const/4 v2, -0x1

    if-eq v0, v2, :cond_12

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroidx/transition/u;->mCanRemoveViews:Z

    if-eqz v2, :cond_14

    :goto_a
    move-object v10, v5

    goto :goto_9

    :cond_12
    move-object/from16 v0, p0

    goto :goto_b

    :cond_13
    move-object/from16 v18, v10

    :cond_14
    :goto_b
    move-object v10, v8

    goto :goto_9

    :goto_c
    move-object/from16 v2, p2

    if-eqz v10, :cond_18

    if-nez v12, :cond_15

    iget-object v3, v2, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    const-string v4, "android:visibility:screenLocation"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x0

    aget v6, v3, v4

    const/4 v7, 0x1

    aget v3, v3, v7

    const/4 v8, 0x2

    new-array v8, v8, [I

    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v8, v4

    sub-int/2addr v6, v4

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v6, v4

    invoke-virtual {v10, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    aget v4, v8, v7

    sub-int/2addr v3, v4

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v10, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v10}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_15
    move-object/from16 v3, p4

    .line 10
    invoke-virtual {v0, v1, v10, v2, v3}, Landroidx/transition/n0;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/c0;Landroidx/transition/c0;)Landroid/animation/Animator;

    move-result-object v2

    if-nez v12, :cond_17

    if-nez v2, :cond_16

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v10}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_d

    :cond_16
    const v3, 0x7f0a0552

    .line 13
    invoke-virtual {v5, v3, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v3, Landroidx/transition/k0;

    invoke-direct {v3, v0, v1, v10, v5}, Landroidx/transition/k0;-><init>(Landroidx/transition/n0;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroidx/transition/u;->addListener(Landroidx/transition/t;)Landroidx/transition/u;

    :cond_17
    :goto_d
    return-object v2

    :cond_18
    move-object/from16 v3, p4

    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    .line 14
    sget-object v5, Landroidx/transition/e0;->a:Landroidx/transition/i0;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroidx/transition/i0;->o(ILandroid/view/View;)V

    .line 15
    invoke-virtual {v0, v1, v7, v2, v3}, Landroidx/transition/n0;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/c0;Landroidx/transition/c0;)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_19

    new-instance v2, Landroidx/transition/l0;

    move/from16 v3, p5

    invoke-direct {v2, v7, v3}, Landroidx/transition/l0;-><init>(Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 16
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 17
    invoke-virtual {v0, v2}, Landroidx/transition/u;->addListener(Landroidx/transition/t;)Landroidx/transition/u;

    goto :goto_e

    .line 18
    :cond_19
    invoke-virtual {v5, v4, v7}, Landroidx/transition/i0;->o(ILandroid/view/View;)V

    :goto_e
    return-object v1

    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method public setMode(I)V
    .locals 1

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    iput p1, p0, Landroidx/transition/n0;->mMode:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
