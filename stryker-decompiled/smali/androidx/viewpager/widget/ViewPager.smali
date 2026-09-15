.class public Landroidx/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static final J:[I

.field public static final K:Landroidx/customview/widget/f;


# instance fields
.field public final A:Landroid/widget/EdgeEffect;

.field public B:Z

.field public C:Z

.field public D:I

.field public E:Ljava/util/ArrayList;

.field public F:Lj1/f;

.field public G:Ljava/util/ArrayList;

.field public final H:Landroidx/activity/d;

.field public I:I

.field public final a:Ljava/util/ArrayList;

.field public final b:Lj1/c;

.field public final c:Landroid/graphics/Rect;

.field public d:Landroid/os/Parcelable;

.field public final e:Landroid/widget/Scroller;

.field public f:I

.field public g:Landroid/graphics/drawable/Drawable;

.field public final h:F

.field public final i:F

.field public j:I

.field public k:Z

.field public l:Z

.field public m:I

.field public n:Z

.field public p:Z

.field public final q:I

.field public r:I

.field public final s:I

.field public t:F

.field public u:F

.field public v:F

.field public w:I

.field public x:Landroid/view/VelocityTracker;

.field public final y:I

.field public final z:Landroid/widget/EdgeEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x10100b3

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->J:[I

    new-instance v0, Landroidx/customview/widget/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/customview/widget/f;-><init>(I)V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->K:Landroidx/customview/widget/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p1, Lj1/c;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->b:Lj1/c;

    .line 17
    .line 18
    new-instance p1, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->c:Landroid/graphics/Rect;

    .line 24
    .line 25
    const p1, -0x800001

    .line 26
    .line 27
    .line 28
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->h:F

    .line 29
    .line 30
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 31
    .line 32
    .line 33
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->i:F

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->m:I

    .line 37
    .line 38
    const/4 p2, -0x1

    .line 39
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    .line 40
    .line 41
    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->B:Z

    .line 42
    .line 43
    new-instance p2, Landroidx/activity/d;

    .line 44
    .line 45
    const/16 v0, 0xd

    .line 46
    .line 47
    invoke-direct {p2, p0, v0}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->H:Landroidx/activity/d;

    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->I:I

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 56
    .line 57
    .line 58
    const/high16 p2, 0x40000

    .line 59
    .line 60
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    new-instance v0, Landroid/widget/Scroller;

    .line 71
    .line 72
    sget-object v1, Landroidx/viewpager/widget/ViewPager;->K:Landroidx/customview/widget/f;

    .line 73
    .line 74
    invoke-direct {v0, p2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 78
    .line 79
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->s:I

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 100
    .line 101
    .line 102
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 103
    .line 104
    invoke-direct {v0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->z:Landroid/widget/EdgeEffect;

    .line 108
    .line 109
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 110
    .line 111
    invoke-direct {v0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->A:Landroid/widget/EdgeEffect;

    .line 115
    .line 116
    const/high16 p2, 0x40000000    # 2.0f

    .line 117
    .line 118
    mul-float/2addr p2, v1

    .line 119
    float-to-int p2, p2

    .line 120
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->y:I

    .line 121
    .line 122
    const/high16 p2, 0x41800000    # 16.0f

    .line 123
    .line 124
    mul-float/2addr v1, p2

    .line 125
    float-to-int p2, v1

    .line 126
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->q:I

    .line 127
    .line 128
    new-instance p2, Lw0/n;

    .line 129
    .line 130
    invoke-direct {p2, p0, p1}, Lw0/n;-><init>(Ljava/lang/Object;I)V

    .line 131
    .line 132
    .line 133
    invoke-static {p0, p2}, Landroidx/core/view/c1;->o(Landroid/view/View;Landroidx/core/view/c;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p0}, Landroidx/core/view/k0;->c(Landroid/view/View;)I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-nez p2, :cond_0

    .line 141
    .line 142
    invoke-static {p0, p1}, Landroidx/core/view/k0;->s(Landroid/view/View;I)V

    .line 143
    .line 144
    .line 145
    :cond_0
    new-instance p1, Lv1/e;

    .line 146
    .line 147
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 148
    .line 149
    .line 150
    iput-object p0, p1, Lv1/e;->b:Ljava/lang/Object;

    .line 151
    .line 152
    new-instance p2, Landroid/graphics/Rect;

    .line 153
    .line 154
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object p2, p1, Lv1/e;->a:Ljava/lang/Object;

    .line 158
    .line 159
    invoke-static {p0, p1}, Landroidx/core/view/q0;->u(Landroid/view/View;Landroidx/core/view/a0;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public static b(Landroid/view/View;IIIZ)Z
    .locals 9

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_0
    if-ltz v4, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int v6, p2, v2

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    if-lt v6, v7, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v6, v7, :cond_0

    add-int v7, p3, v3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v5, p1, v6, v7, v1}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;IIIZ)Z

    move-result v5

    if-eqz v5, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    neg-int p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private getClientWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->l:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->l:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    if-ne v2, p0, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ViewPager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :goto_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x11

    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_7

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->c:Landroid/graphics/Rect;

    if-ne p1, v4, :cond_6

    invoke-virtual {p0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->d(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v2, v0}, Landroidx/viewpager/widget/ViewPager;->d(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-lt v4, v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v3

    goto :goto_4

    :cond_6
    const/16 v4, 0x42

    if-ne p1, v4, :cond_7

    invoke-virtual {p0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->d(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v2, v0}, Landroidx/viewpager/widget/ViewPager;->d(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-gt v4, v2, :cond_5

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_8
    return v3
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_5

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public final addTouchables(Ljava/util/ArrayList;)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    :cond_0
    move-object v0, p3

    .line 12
    check-cast v0, Lj1/d;

    .line 13
    .line 14
    iget-boolean v1, v0, Lj1/d;->a:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-class v3, Lj1/b;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_0
    or-int/2addr v1, v2

    .line 32
    iput-boolean v1, v0, Lj1/d;->a:Z

    .line 33
    .line 34
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "Cannot add pager decor view during layout"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
.end method

.method public final c(Z)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->I:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v3

    .line 11
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-direct {p0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    xor-int/2addr v1, v2

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 45
    .line 46
    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-ne v1, v4, :cond_1

    .line 51
    .line 52
    if-eq v2, v5, :cond_2

    .line 53
    .line 54
    :cond_1
    invoke-virtual {p0, v4, v5}, Landroid/view/View;->scrollTo(II)V

    .line 55
    .line 56
    .line 57
    if-eq v4, v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->h(I)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ge v3, v2, :cond_3

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lj1/c;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    if-eqz v0, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->H:Landroidx/activity/d;

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    sget-object p1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 89
    .line 90
    invoke-static {p0, v0}, Landroidx/core/view/k0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    invoke-virtual {v0}, Landroidx/activity/d;->run()V

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_2
    return-void
.end method

.method public final canScrollHorizontally(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lj1/d;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final computeScroll()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ne v0, v2, :cond_0

    .line 39
    .line 40
    if-eq v1, v3, :cond_1

    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->scrollTo(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->h(I)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->scrollTo(II)V

    .line 58
    .line 59
    .line 60
    :cond_1
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 61
    .line 62
    invoke-static {p0}, Landroidx/core/view/k0;->k(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->c(Z)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final d(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_6

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v3, 0x15

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-eq v0, v3, :cond_4

    .line 23
    .line 24
    const/16 v3, 0x16

    .line 25
    .line 26
    if-eq v0, v3, :cond_2

    .line 27
    .line 28
    const/16 v3, 0x3d

    .line 29
    .line 30
    if-eq v0, v3, :cond_0

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->a(I)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_6

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->a(I)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    const/16 p1, 0x42

    .line 63
    .line 64
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->a(I)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    const/16 p1, 0x11

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :goto_1
    if-eqz p1, :cond_6

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_6
    :goto_2
    move v1, v2

    .line 83
    :cond_7
    :goto_3
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->z:Landroid/widget/EdgeEffect;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->A:Landroid/widget/EdgeEffect;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->z:Landroid/widget/EdgeEffect;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sub-int/2addr v1, v2

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    sub-int/2addr v1, v2

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/high16 v3, 0x43870000    # 270.0f

    .line 53
    .line 54
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 55
    .line 56
    .line 57
    neg-int v3, v1

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    add-int/2addr v4, v3

    .line 63
    int-to-float v3, v4

    .line 64
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->h:F

    .line 65
    .line 66
    int-to-float v5, v2

    .line 67
    mul-float/2addr v4, v5

    .line 68
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->z:Landroid/widget/EdgeEffect;

    .line 72
    .line 73
    invoke-virtual {v3, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->z:Landroid/widget/EdgeEffect;

    .line 77
    .line 78
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const/4 v1, 0x0

    .line 87
    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->A:Landroid/widget/EdgeEffect;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_2

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    sub-int/2addr v3, v4

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    sub-int/2addr v3, v4

    .line 117
    const/high16 v4, 0x42b40000    # 90.0f

    .line 118
    .line 119
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    neg-int v4, v4

    .line 127
    int-to-float v4, v4

    .line 128
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->i:F

    .line 129
    .line 130
    const/high16 v6, 0x3f800000    # 1.0f

    .line 131
    .line 132
    add-float/2addr v5, v6

    .line 133
    neg-float v5, v5

    .line 134
    int-to-float v6, v2

    .line 135
    mul-float/2addr v5, v6

    .line 136
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 137
    .line 138
    .line 139
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->A:Landroid/widget/EdgeEffect;

    .line 140
    .line 141
    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 142
    .line 143
    .line 144
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->A:Landroid/widget/EdgeEffect;

    .line 145
    .line 146
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    or-int/2addr v1, v2

    .line 151
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 152
    .line 153
    .line 154
    :cond_2
    if-eqz v1, :cond_3

    .line 155
    .line 156
    sget-object p1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 157
    .line 158
    invoke-static {p0}, Landroidx/core/view/k0;->k(Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    :cond_3
    :goto_1
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj1/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0
.end method

.method public final f(I)Lj1/c;
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj1/c;

    iget v2, v1, Lj1/c;->a:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g(IFI)V
    .locals 12

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->D:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-lez v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    move v7, v1

    .line 28
    :goto_0
    if-ge v7, v6, :cond_5

    .line 29
    .line 30
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    check-cast v9, Lj1/d;

    .line 39
    .line 40
    iget-boolean v10, v9, Lj1/d;->a:Z

    .line 41
    .line 42
    if-nez v10, :cond_0

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_0
    iget v9, v9, Lj1/d;->b:I

    .line 46
    .line 47
    and-int/lit8 v9, v9, 0x7

    .line 48
    .line 49
    if-eq v9, v2, :cond_3

    .line 50
    .line 51
    const/4 v10, 0x3

    .line 52
    if-eq v9, v10, :cond_2

    .line 53
    .line 54
    const/4 v10, 0x5

    .line 55
    if-eq v9, v10, :cond_1

    .line 56
    .line 57
    move v9, v3

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    sub-int v9, v5, v4

    .line 60
    .line 61
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    sub-int/2addr v9, v10

    .line 66
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    add-int/2addr v4, v10

    .line 71
    :goto_1
    move v11, v9

    .line 72
    move v9, v3

    .line 73
    move v3, v11

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    add-int/2addr v9, v3

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    sub-int v9, v5, v9

    .line 86
    .line 87
    div-int/lit8 v9, v9, 0x2

    .line 88
    .line 89
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    goto :goto_1

    .line 94
    :goto_2
    add-int/2addr v3, v0

    .line 95
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    sub-int/2addr v3, v10

    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    invoke-virtual {v8, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 103
    .line 104
    .line 105
    :cond_4
    move v3, v9

    .line 106
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->F:Lj1/f;

    .line 110
    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    invoke-interface {v0, p1, p2, p3}, Lj1/f;->onPageScrolled(IFI)V

    .line 114
    .line 115
    .line 116
    :cond_6
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->E:Ljava/util/ArrayList;

    .line 117
    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    :goto_4
    if-ge v1, v0, :cond_8

    .line 125
    .line 126
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->E:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    check-cast v3, Lj1/f;

    .line 133
    .line 134
    if-eqz v3, :cond_7

    .line 135
    .line 136
    invoke-interface {v3, p1, p2, p3}, Lj1/f;->onPageScrolled(IFI)V

    .line 137
    .line 138
    .line 139
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_8
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->C:Z

    .line 143
    .line 144
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lj1/d;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Lj1/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v2, Landroidx/viewpager/widget/ViewPager;->J:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Lj1/d;->b:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Lj1/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public getCurrentItem()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->m:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    return v0
.end method

.method public final h(I)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, "onPageScrolled did not call superclass implementation"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    if-nez v2, :cond_2

    .line 14
    .line 15
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->B:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return v5

    .line 20
    :cond_0
    iput-boolean v5, v0, Landroidx/viewpager/widget/ViewPager;->C:Z

    .line 21
    .line 22
    invoke-virtual {v0, v5, v4, v5}, Landroidx/viewpager/widget/ViewPager;->g(IFI)V

    .line 23
    .line 24
    .line 25
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->C:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return v5

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v1

    .line 36
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-lez v2, :cond_3

    .line 41
    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    int-to-float v6, v6

    .line 47
    int-to-float v7, v2

    .line 48
    div-float/2addr v6, v7

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    move v6, v4

    .line 51
    :goto_0
    if-lez v2, :cond_4

    .line 52
    .line 53
    iget v7, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 54
    .line 55
    int-to-float v7, v7

    .line 56
    int-to-float v2, v2

    .line 57
    div-float/2addr v7, v2

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    move v7, v4

    .line 60
    :goto_1
    const/4 v2, 0x1

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v9, -0x1

    .line 63
    move v12, v2

    .line 64
    move v13, v4

    .line 65
    move v10, v5

    .line 66
    move-object v11, v8

    .line 67
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v14

    .line 71
    if-ge v10, v14, :cond_a

    .line 72
    .line 73
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v14

    .line 77
    check-cast v14, Lj1/c;

    .line 78
    .line 79
    if-nez v12, :cond_6

    .line 80
    .line 81
    iget v15, v14, Lj1/c;->a:I

    .line 82
    .line 83
    add-int/2addr v9, v2

    .line 84
    if-ne v15, v9, :cond_5

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_5
    add-float/2addr v13, v4

    .line 88
    add-float/2addr v13, v7

    .line 89
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->b:Lj1/c;

    .line 90
    .line 91
    iput v13, v1, Lj1/c;->b:F

    .line 92
    .line 93
    iput v9, v1, Lj1/c;->a:I

    .line 94
    .line 95
    throw v8

    .line 96
    :cond_6
    :goto_3
    iget v13, v14, Lj1/c;->b:F

    .line 97
    .line 98
    add-float v9, v13, v4

    .line 99
    .line 100
    add-float/2addr v9, v7

    .line 101
    if-nez v12, :cond_7

    .line 102
    .line 103
    cmpl-float v12, v6, v13

    .line 104
    .line 105
    if-ltz v12, :cond_a

    .line 106
    .line 107
    :cond_7
    cmpg-float v9, v6, v9

    .line 108
    .line 109
    if-ltz v9, :cond_9

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    sub-int/2addr v9, v2

    .line 116
    if-ne v10, v9, :cond_8

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_8
    iget v9, v14, Lj1/c;->a:I

    .line 120
    .line 121
    add-int/lit8 v10, v10, 0x1

    .line 122
    .line 123
    move v12, v5

    .line 124
    move-object v11, v14

    .line 125
    goto :goto_2

    .line 126
    :cond_9
    :goto_4
    move-object v11, v14

    .line 127
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iget v6, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 132
    .line 133
    add-int v7, v1, v6

    .line 134
    .line 135
    int-to-float v6, v6

    .line 136
    int-to-float v1, v1

    .line 137
    div-float/2addr v6, v1

    .line 138
    iget v8, v11, Lj1/c;->a:I

    .line 139
    .line 140
    move/from16 v9, p1

    .line 141
    .line 142
    int-to-float v9, v9

    .line 143
    div-float/2addr v9, v1

    .line 144
    iget v1, v11, Lj1/c;->b:F

    .line 145
    .line 146
    sub-float/2addr v9, v1

    .line 147
    add-float/2addr v4, v6

    .line 148
    div-float/2addr v9, v4

    .line 149
    int-to-float v1, v7

    .line 150
    mul-float/2addr v1, v9

    .line 151
    float-to-int v1, v1

    .line 152
    iput-boolean v5, v0, Landroidx/viewpager/widget/ViewPager;->C:Z

    .line 153
    .line 154
    invoke-virtual {v0, v8, v9, v1}, Landroidx/viewpager/widget/ViewPager;->g(IFI)V

    .line 155
    .line 156
    .line 157
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->C:Z

    .line 158
    .line 159
    if-eqz v1, :cond_b

    .line 160
    .line 161
    return v2

    .line 162
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 163
    .line 164
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v1
.end method

.method public final i(IIII)V
    .locals 1

    .line 1
    if-lez p2, :cond_1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result p3

    mul-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->f(I)Lj1/c;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p2, p2, Lj1/c;->b:F

    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->i:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->c(Z)V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->B:Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->H:Landroidx/activity/d;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    if-lez p1, :cond_0

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, 0x3

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eq v0, v3, :cond_14

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v0, v3, :cond_0

    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-boolean v5, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    return v3

    .line 25
    :cond_1
    iget-boolean v5, p0, Landroidx/viewpager/widget/ViewPager;->p:Z

    .line 26
    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    return v4

    .line 30
    :cond_2
    const/4 v5, 0x2

    .line 31
    if-eqz v0, :cond_f

    .line 32
    .line 33
    if-eq v0, v5, :cond_5

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    if-eq v0, v1, :cond_3

    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    .line 49
    .line 50
    if-ne v1, v2, :cond_12

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    move v4, v3

    .line 55
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    .line 60
    .line 61
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    .line 66
    .line 67
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->x:Landroid/view/VelocityTracker;

    .line 68
    .line 69
    if-eqz v0, :cond_12

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_5
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    .line 77
    .line 78
    if-ne v0, v2, :cond_6

    .line 79
    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    .line 91
    .line 92
    sub-float v5, v2, v5

    .line 93
    .line 94
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->v:F

    .line 103
    .line 104
    sub-float v7, v0, v7

    .line 105
    .line 106
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    const/4 v8, 0x0

    .line 111
    cmpl-float v9, v5, v8

    .line 112
    .line 113
    if-eqz v9, :cond_9

    .line 114
    .line 115
    iget v10, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    .line 116
    .line 117
    iget v11, p0, Landroidx/viewpager/widget/ViewPager;->r:I

    .line 118
    .line 119
    int-to-float v11, v11

    .line 120
    cmpg-float v11, v10, v11

    .line 121
    .line 122
    if-gez v11, :cond_7

    .line 123
    .line 124
    if-gtz v9, :cond_9

    .line 125
    .line 126
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    iget v12, p0, Landroidx/viewpager/widget/ViewPager;->r:I

    .line 131
    .line 132
    sub-int/2addr v11, v12

    .line 133
    int-to-float v11, v11

    .line 134
    cmpl-float v10, v10, v11

    .line 135
    .line 136
    if-lez v10, :cond_8

    .line 137
    .line 138
    cmpg-float v8, v5, v8

    .line 139
    .line 140
    if-gez v8, :cond_8

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_8
    float-to-int v5, v5

    .line 144
    float-to-int v8, v2

    .line 145
    float-to-int v0, v0

    .line 146
    invoke-static {p0, v5, v8, v0, v4}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;IIIZ)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_9

    .line 151
    .line 152
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    .line 153
    .line 154
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->p:Z

    .line 155
    .line 156
    return v4

    .line 157
    :cond_9
    :goto_0
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->s:I

    .line 158
    .line 159
    int-to-float v0, v0

    .line 160
    cmpl-float v5, v6, v0

    .line 161
    .line 162
    if-lez v5, :cond_c

    .line 163
    .line 164
    const/high16 v5, 0x3f000000    # 0.5f

    .line 165
    .line 166
    mul-float/2addr v6, v5

    .line 167
    cmpl-float v5, v6, v7

    .line 168
    .line 169
    if-lez v5, :cond_c

    .line 170
    .line 171
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eqz v0, :cond_a

    .line 178
    .line 179
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 180
    .line 181
    .line 182
    :cond_a
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 183
    .line 184
    .line 185
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->u:F

    .line 186
    .line 187
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->s:I

    .line 188
    .line 189
    int-to-float v5, v5

    .line 190
    if-lez v9, :cond_b

    .line 191
    .line 192
    add-float/2addr v0, v5

    .line 193
    goto :goto_1

    .line 194
    :cond_b
    sub-float/2addr v0, v5

    .line 195
    :goto_1
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    .line 196
    .line 197
    invoke-direct {p0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_c
    cmpl-float v0, v7, v0

    .line 202
    .line 203
    if-lez v0, :cond_d

    .line 204
    .line 205
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->p:Z

    .line 206
    .line 207
    :cond_d
    :goto_2
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 208
    .line 209
    if-nez v0, :cond_e

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_e
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    .line 213
    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 215
    .line 216
    .line 217
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Lj1/c;

    .line 227
    .line 228
    invoke-static {p1, v3}, Landroid/support/v4/media/session/a;->j(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    check-cast p1, Lj1/c;

    .line 233
    .line 234
    iget v0, v0, Lj1/c;->a:I

    .line 235
    .line 236
    iget p1, p1, Lj1/c;->a:I

    .line 237
    .line 238
    throw v1

    .line 239
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->u:F

    .line 244
    .line 245
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    .line 246
    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->v:F

    .line 252
    .line 253
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    .line 258
    .line 259
    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->p:Z

    .line 260
    .line 261
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 262
    .line 263
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 264
    .line 265
    .line 266
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->I:I

    .line 267
    .line 268
    if-ne v0, v5, :cond_11

    .line 269
    .line 270
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 271
    .line 272
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 277
    .line 278
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    sub-int/2addr v0, v1

    .line 283
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->y:I

    .line 288
    .line 289
    if-le v0, v1, :cond_11

    .line 290
    .line 291
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 292
    .line 293
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 294
    .line 295
    .line 296
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 297
    .line 298
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    if-eqz v0, :cond_10

    .line 303
    .line 304
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 305
    .line 306
    .line 307
    :cond_10
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 308
    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_11
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->c(Z)V

    .line 312
    .line 313
    .line 314
    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 315
    .line 316
    :cond_12
    :goto_3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->x:Landroid/view/VelocityTracker;

    .line 317
    .line 318
    if-nez v0, :cond_13

    .line 319
    .line 320
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->x:Landroid/view/VelocityTracker;

    .line 325
    .line 326
    :cond_13
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->x:Landroid/view/VelocityTracker;

    .line 327
    .line 328
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 329
    .line 330
    .line 331
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 332
    .line 333
    return p1

    .line 334
    :cond_14
    :goto_4
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    .line 335
    .line 336
    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 337
    .line 338
    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->p:Z

    .line 339
    .line 340
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->x:Landroid/view/VelocityTracker;

    .line 341
    .line 342
    if-eqz p1, :cond_15

    .line 343
    .line 344
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 345
    .line 346
    .line 347
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->x:Landroid/view/VelocityTracker;

    .line 348
    .line 349
    :cond_15
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->z:Landroid/widget/EdgeEffect;

    .line 350
    .line 351
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 352
    .line 353
    .line 354
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->A:Landroid/widget/EdgeEffect;

    .line 355
    .line 356
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 357
    .line 358
    .line 359
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->z:Landroid/widget/EdgeEffect;

    .line 360
    .line 361
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    if-nez p1, :cond_16

    .line 366
    .line 367
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->A:Landroid/widget/EdgeEffect;

    .line 368
    .line 369
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 370
    .line 371
    .line 372
    :cond_16
    return v4
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int v2, p4, p2

    .line 8
    .line 9
    sub-int v3, p5, p3

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x0

    .line 33
    :goto_0
    const/16 v12, 0x8

    .line 34
    .line 35
    if-ge v10, v1, :cond_7

    .line 36
    .line 37
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v14

    .line 45
    if-eq v14, v12, :cond_6

    .line 46
    .line 47
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    check-cast v12, Lj1/d;

    .line 52
    .line 53
    iget-boolean v14, v12, Lj1/d;->a:Z

    .line 54
    .line 55
    if-eqz v14, :cond_6

    .line 56
    .line 57
    iget v12, v12, Lj1/d;->b:I

    .line 58
    .line 59
    and-int/lit8 v14, v12, 0x7

    .line 60
    .line 61
    and-int/lit8 v12, v12, 0x70

    .line 62
    .line 63
    const/4 v15, 0x1

    .line 64
    if-eq v14, v15, :cond_2

    .line 65
    .line 66
    const/4 v15, 0x3

    .line 67
    if-eq v14, v15, :cond_1

    .line 68
    .line 69
    const/4 v15, 0x5

    .line 70
    if-eq v14, v15, :cond_0

    .line 71
    .line 72
    move v14, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    sub-int v14, v2, v6

    .line 75
    .line 76
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    .line 78
    .line 79
    move-result v15

    .line 80
    sub-int/2addr v14, v15

    .line 81
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    .line 83
    .line 84
    move-result v15

    .line 85
    add-int/2addr v6, v15

    .line 86
    :goto_1
    move/from16 v17, v14

    .line 87
    .line 88
    move v14, v4

    .line 89
    move/from16 v4, v17

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    add-int/2addr v14, v4

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    sub-int v14, v2, v14

    .line 103
    .line 104
    div-int/lit8 v14, v14, 0x2

    .line 105
    .line 106
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    goto :goto_1

    .line 111
    :goto_2
    const/16 v15, 0x10

    .line 112
    .line 113
    if-eq v12, v15, :cond_5

    .line 114
    .line 115
    const/16 v15, 0x30

    .line 116
    .line 117
    if-eq v12, v15, :cond_4

    .line 118
    .line 119
    const/16 v15, 0x50

    .line 120
    .line 121
    if-eq v12, v15, :cond_3

    .line 122
    .line 123
    move v12, v5

    .line 124
    goto :goto_4

    .line 125
    :cond_3
    sub-int v12, v3, v7

    .line 126
    .line 127
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 128
    .line 129
    .line 130
    move-result v15

    .line 131
    sub-int/2addr v12, v15

    .line 132
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    add-int/2addr v7, v15

    .line 137
    :goto_3
    move/from16 v17, v12

    .line 138
    .line 139
    move v12, v5

    .line 140
    move/from16 v5, v17

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    add-int/2addr v12, v5

    .line 148
    goto :goto_4

    .line 149
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    sub-int v12, v3, v12

    .line 154
    .line 155
    div-int/lit8 v12, v12, 0x2

    .line 156
    .line 157
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    goto :goto_3

    .line 162
    :goto_4
    add-int/2addr v4, v8

    .line 163
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 164
    .line 165
    .line 166
    move-result v15

    .line 167
    add-int/2addr v15, v4

    .line 168
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 169
    .line 170
    .line 171
    move-result v16

    .line 172
    add-int v9, v16, v5

    .line 173
    .line 174
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    .line 175
    .line 176
    .line 177
    add-int/lit8 v11, v11, 0x1

    .line 178
    .line 179
    move v5, v12

    .line 180
    move v4, v14

    .line 181
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_7
    const/4 v2, 0x0

    .line 186
    :goto_5
    if-ge v2, v1, :cond_9

    .line 187
    .line 188
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eq v4, v12, :cond_8

    .line 197
    .line 198
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    check-cast v3, Lj1/d;

    .line 203
    .line 204
    iget-boolean v3, v3, Lj1/d;->a:Z

    .line 205
    .line 206
    if-nez v3, :cond_8

    .line 207
    .line 208
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    .line 209
    .line 210
    .line 211
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_9
    iput v11, v0, Landroidx/viewpager/widget/ViewPager;->D:I

    .line 215
    .line 216
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->B:Z

    .line 217
    .line 218
    if-eqz v1, :cond_b

    .line 219
    .line 220
    const/4 v1, 0x0

    .line 221
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->f(I)Lj1/c;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    if-eqz v1, :cond_a

    .line 226
    .line 227
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    int-to-float v2, v2

    .line 232
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->h:F

    .line 233
    .line 234
    iget v1, v1, Lj1/c;->b:F

    .line 235
    .line 236
    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->i:F

    .line 237
    .line 238
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    mul-float/2addr v1, v2

    .line 247
    float-to-int v1, v1

    .line 248
    :goto_6
    const/4 v2, 0x0

    .line 249
    goto :goto_7

    .line 250
    :cond_a
    const/4 v1, 0x0

    .line 251
    goto :goto_6

    .line 252
    :goto_7
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->c(Z)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->h(I)Z

    .line 259
    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_b
    const/4 v2, 0x0

    .line 263
    :goto_8
    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->B:Z

    .line 264
    .line 265
    return-void
.end method

.method public final onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p2, p1, 0xa

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->q:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->r:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    const/16 v3, 0x8

    const/high16 v4, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_c

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v3, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lj1/d;

    if-eqz v3, :cond_b

    iget-boolean v6, v3, Lj1/d;->a:Z

    if-eqz v6, :cond_b

    iget v6, v3, Lj1/d;->b:I

    and-int/lit8 v7, v6, 0x7

    and-int/lit8 v6, v6, 0x70

    const/16 v8, 0x30

    const/4 v9, 0x1

    if-eq v6, v8, :cond_1

    const/16 v8, 0x50

    if-ne v6, v8, :cond_0

    goto :goto_1

    :cond_0
    move v6, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v6, v9

    :goto_2
    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    const/4 v8, 0x5

    if-ne v7, v8, :cond_2

    goto :goto_3

    :cond_2
    move v9, v0

    :cond_3
    :goto_3
    const/high16 v7, -0x80000000

    if-eqz v6, :cond_4

    move v8, v7

    move v7, v4

    goto :goto_4

    :cond_4
    if-eqz v9, :cond_5

    move v8, v4

    goto :goto_4

    :cond_5
    move v8, v7

    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    :goto_5
    move v7, v4

    goto :goto_6

    :cond_6
    move v10, p1

    goto :goto_5

    :cond_7
    move v10, p1

    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_7

    :cond_8
    move v3, p2

    goto :goto_7

    :cond_9
    move v3, p2

    move v4, v8

    :goto_7
    invoke-static {v10, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v5, v7, v3}, Landroid/view/View;->measure(II)V

    if-eqz v6, :cond_a

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    goto :goto_8

    :cond_a
    if-eqz v9, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_c
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->j:I

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_9
    if-ge v0, p2, :cond_f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lj1/d;

    if-eqz v2, :cond_d

    iget-boolean v5, v2, Lj1/d;->a:Z

    if-nez v5, :cond_e

    :cond_d
    int-to-float v5, p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    mul-float/2addr v5, v2

    float-to-int v2, v5

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->j:I

    invoke-virtual {v1, v2, v5}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    move v1, p2

    move p2, v0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    const/4 p1, -0x1

    move v1, p1

    :goto_0
    if-eq p2, v1, :cond_2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    :cond_1
    add-int/2addr p2, p1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lj1/g;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lj1/g;

    invoke-virtual {p1}, Ln0/b;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lj1/g;->b:Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->d:Landroid/os/Parcelable;

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lj1/g;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ln0/b;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, v1, Lj1/g;->a:I

    .line 12
    .line 13
    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    invoke-virtual {p0, p1, p3, p2, p2}, Landroidx/viewpager/widget/ViewPager;->i(IIII)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    :cond_0
    return v1
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Lj1/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->G:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->G:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj1/e;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3, p1}, Lj1/e;->onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Lj1/a;Lj1/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested offscreen page limit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to 1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->m:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->m:I

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lj1/f;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->F:Lj1/f;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/ViewPager;->i(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lx/g;->a:Ljava/lang/Object;

    .line 1
    invoke-static {v0, p1}, Lx/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScrollState(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->I:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->I:I

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->F:Lj1/f;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lj1/f;->onPageScrollStateChanged(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->E:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_3

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->E:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lj1/f;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-interface {v2, p1}, Lj1/f;->onPageScrollStateChanged(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
