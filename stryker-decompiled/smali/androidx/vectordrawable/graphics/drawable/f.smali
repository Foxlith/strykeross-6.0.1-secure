.class public final Landroidx/vectordrawable/graphics/drawable/f;
.super Landroidx/vectordrawable/graphics/drawable/g;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field public final b:Landroidx/vectordrawable/graphics/drawable/d;

.field public final c:Landroid/content/Context;

.field public d:Landroidx/appcompat/widget/d;

.field public e:Ljava/util/ArrayList;

.field public final f:Lg/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->d:Landroidx/appcompat/widget/d;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Ljava/util/ArrayList;

    .line 8
    .line 9
    new-instance v0, Lg/b;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lg/b;-><init>(Landroidx/vectordrawable/graphics/drawable/f;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->f:Lg/b;

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/f;->c:Landroid/content/Context;

    .line 17
    .line 18
    new-instance p1, Landroidx/vectordrawable/graphics/drawable/d;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, La0/b;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final canApplyTheme()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, La0/b;->b(Landroid/graphics/drawable/Drawable;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    invoke-virtual {v1, p1}, Landroidx/vectordrawable/graphics/drawable/p;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, v0, Landroidx/vectordrawable/graphics/drawable/d;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, La0/a;->a(Landroid/graphics/drawable/Drawable;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/p;->getAlpha()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, La0/b;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/p;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/vectordrawable/graphics/drawable/e;

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/vectordrawable/graphics/drawable/e;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/p;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/p;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/p;->getOpacity()I

    move-result v0

    return v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/vectordrawable/graphics/drawable/f;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 9

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1, p2, p3, p4}, La0/b;->d(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :goto_0
    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    if-eq v0, v2, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_8

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "animated-vector"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    sget-object v0, Landroidx/vectordrawable/graphics/drawable/a;->e:[I

    invoke-static {p1, p4, p3, v0}, Lv1/f;->K(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_3

    .line 4
    new-instance v7, Landroidx/vectordrawable/graphics/drawable/p;

    invoke-direct {v7}, Landroidx/vectordrawable/graphics/drawable/p;-><init>()V

    sget-object v8, Ly/r;->a:Ljava/lang/ThreadLocal;

    .line 5
    invoke-static {p1, v4, p4}, Ly/j;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v7, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    .line 6
    new-instance v4, Landroidx/vectordrawable/graphics/drawable/o;

    iget-object v8, v7, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v8

    invoke-direct {v4, v8}, Landroidx/vectordrawable/graphics/drawable/o;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-boolean v6, v7, Landroidx/vectordrawable/graphics/drawable/p;->f:Z

    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/f;->f:Lg/b;

    .line 7
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v4, v3, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    iput-object v7, v3, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_4
    const-string v4, "target"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroidx/vectordrawable/graphics/drawable/a;->f:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v7, p0, Landroidx/vectordrawable/graphics/drawable/f;->c:Landroid/content/Context;

    if-eqz v7, :cond_6

    .line 8
    invoke-static {v7, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v6

    .line 9
    iget-object v7, v3, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    .line 10
    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/n;

    .line 11
    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/n;->b:Landroidx/vectordrawable/graphics/drawable/m;

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/m;->o:Ln/b;

    .line 12
    invoke-virtual {v7, v4, v5}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 13
    invoke-virtual {v6, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v5, v3, Landroidx/vectordrawable/graphics/drawable/d;->c:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Landroidx/vectordrawable/graphics/drawable/d;->c:Ljava/util/ArrayList;

    new-instance v5, Ln/b;

    .line 14
    invoke-direct {v5}, Ln/k;-><init>()V

    .line 15
    iput-object v5, v3, Landroidx/vectordrawable/graphics/drawable/d;->d:Ln/b;

    :cond_5
    iget-object v5, v3, Landroidx/vectordrawable/graphics/drawable/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/d;->d:Ln/b;

    invoke-virtual {v3, v6, v4}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 16
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Context can\'t be null when inflating animators"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_0

    .line 17
    :cond_8
    iget-object p1, v3, Landroidx/vectordrawable/graphics/drawable/d;->b:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_9

    .line 18
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, v3, Landroidx/vectordrawable/graphics/drawable/d;->b:Landroid/animation/AnimatorSet;

    :cond_9
    iget-object p1, v3, Landroidx/vectordrawable/graphics/drawable/d;->b:Landroid/animation/AnimatorSet;

    iget-object p2, v3, Landroidx/vectordrawable/graphics/drawable/d;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, La0/a;->d(Landroid/graphics/drawable/Drawable;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/p;->isAutoMirrored()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final isRunning()Z
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/p;->isStateful()Z

    move-result v0

    return v0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onLevelChange(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1
.end method

.method public final onStateChange([I)Z
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/g;->setState([I)Z

    move-result p1

    return p1
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/p;->setAlpha(I)V

    return-void
.end method

.method public final setAutoMirrored(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, La0/a;->e(Landroid/graphics/drawable/Drawable;Z)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/p;->setAutoMirrored(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/p;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final setTint(I)V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lv1/f;->R(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/p;->setTint(I)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lv1/f;->S(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/p;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lv1/f;->T(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/p;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->a:Landroidx/vectordrawable/graphics/drawable/p;

    invoke-virtual {v0, p1, p2}, Landroidx/vectordrawable/graphics/drawable/p;->setVisible(ZZ)Z

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public final start()V
    .locals 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/d;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->b:Landroidx/vectordrawable/graphics/drawable/d;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/d;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method
