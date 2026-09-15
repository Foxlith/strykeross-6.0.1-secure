.class public Lde/mrapp/android/util/view/ScrimInsetsLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/util/view/ScrimInsetsLayout$Callback;
    }
.end annotation


# instance fields
.field private callback:Lde/mrapp/android/util/view/ScrimInsetsLayout$Callback;

.field private insetDrawable:Landroid/graphics/drawable/Drawable;

.field private insets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lde/mrapp/android/util/view/ScrimInsetsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Lde/mrapp/android/util/view/ScrimInsetsLayout;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lde/mrapp/android/util/view/ScrimInsetsLayout;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/util/view/ScrimInsetsLayout;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insets:Landroid/graphics/Rect;

    iput-object v0, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->callback:Lde/mrapp/android/util/view/ScrimInsetsLayout$Callback;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/util/view/ScrimInsetsLayout;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private notifyOnInsetsChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->callback:Lde/mrapp/android/util/view/ScrimInsetsLayout$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lde/mrapp/android/util/view/ScrimInsetsLayout$Callback;->onInsetsChanged(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private obtainInsetForeground(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 1
    sget v0, Lde/mrapp/android/util/R$styleable;->ScrimInsetsLayout_insetDrawable:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    sget v0, Lde/mrapp/android/util/R$styleable;->ScrimInsetsLayout_insetDrawable:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lde/mrapp/android/util/view/ScrimInsetsLayout;->setInsetDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget v0, Lde/mrapp/android/util/R$color;->scrim_insets_layout_insets_drawable_default_value:I

    .line 27
    .line 28
    sget-object v1, Lx/g;->a:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {p1, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p1}, Lde/mrapp/android/util/view/ScrimInsetsLayout;->setInsetColor(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0, v0}, Lde/mrapp/android/util/view/ScrimInsetsLayout;->setInsetColor(I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/util/R$styleable;->ScrimInsetsLayout:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/util/view/ScrimInsetsLayout;->obtainInsetForeground(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insets:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insetDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insetDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insetDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v5, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insetDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insets:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insetDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int v5, v0, v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    invoke-virtual {v3, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insets:Landroid/graphics/Rect;

    .line 7
    .line 8
    iget-object v0, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insetDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 20
    .line 21
    invoke-static {p0}, Landroidx/core/view/k0;->k(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lde/mrapp/android/util/view/ScrimInsetsLayout;->notifyOnInsetsChanged(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    return v1
.end method

.method public final getInsetDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insetDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getInsets()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insetDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insetDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public final setCallback(Lde/mrapp/android/util/view/ScrimInsetsLayout$Callback;)V
    .locals 0

    iput-object p1, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->callback:Lde/mrapp/android/util/view/ScrimInsetsLayout$Callback;

    return-void
.end method

.method public final setInsetColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lde/mrapp/android/util/view/ScrimInsetsLayout;->setInsetDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setInsetDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lde/mrapp/android/util/view/ScrimInsetsLayout;->insetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
