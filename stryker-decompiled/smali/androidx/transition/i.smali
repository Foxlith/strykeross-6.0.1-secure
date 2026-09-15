.class public final Landroidx/transition/i;
.super Landroidx/transition/n0;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/n0;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/transition/n0;->setMode(I)V

    return-void
.end method


# virtual methods
.method public final captureStartValues(Landroidx/transition/c0;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/n0;->captureStartValues(Landroidx/transition/c0;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/transition/c0;->b:Landroid/view/View;

    .line 7
    .line 8
    sget-object v1, Landroidx/transition/e0;->a:Landroidx/transition/i0;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroidx/transition/f0;->r(Landroid/view/View;)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "android:fade:transitionAlpha"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final g(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 1
    cmpl-float v0, p1, p2

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    sget-object v0, Landroidx/transition/e0;->a:Landroidx/transition/i0;

    .line 8
    .line 9
    invoke-virtual {v0, p3, p1}, Landroidx/transition/f0;->s(Landroid/view/View;F)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Landroidx/transition/e0;->b:Landroidx/transition/c;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [F

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    aput p2, v0, v1

    .line 19
    .line 20
    invoke-static {p3, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Landroidx/recyclerview/widget/p;

    .line 25
    .line 26
    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/p;-><init>(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    .line 31
    .line 32
    new-instance p2, Landroidx/transition/h;

    .line 33
    .line 34
    invoke-direct {p2, p0, p3, v1}, Landroidx/transition/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p2}, Landroidx/transition/u;->addListener(Landroidx/transition/t;)Landroidx/transition/u;

    .line 38
    .line 39
    .line 40
    return-object p1
.end method

.method public final onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/c0;Landroidx/transition/c0;)Landroid/animation/Animator;
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    iget-object p3, p3, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    .line 5
    .line 6
    const-string p4, "android:fade:transitionAlpha"

    .line 7
    .line 8
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    check-cast p3, Ljava/lang/Float;

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p3, p1

    .line 22
    :goto_0
    const/high16 p4, 0x3f800000    # 1.0f

    .line 23
    .line 24
    cmpl-float v0, p3, p4

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move p1, p3

    .line 30
    :goto_1
    invoke-virtual {p0, p1, p4, p2}, Landroidx/transition/i;->g(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public final onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/c0;Landroidx/transition/c0;)Landroid/animation/Animator;
    .locals 0

    .line 1
    sget-object p1, Landroidx/transition/e0;->a:Landroidx/transition/i0;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    iget-object p1, p3, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    .line 9
    .line 10
    const-string p3, "android:fade:transitionAlpha"

    .line 11
    .line 12
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Float;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    .line 27
    :goto_0
    const/4 p3, 0x0

    .line 28
    invoke-virtual {p0, p1, p3, p2}, Landroidx/transition/i;->g(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method
