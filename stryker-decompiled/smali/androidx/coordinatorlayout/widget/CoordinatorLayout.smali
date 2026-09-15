.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/x;
.implements Landroidx/core/view/y;


# static fields
.field static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final EVENT_NESTED_SCROLL:I = 0x1

.field static final EVENT_PRE_DRAW:I = 0x0

.field static final EVENT_VIEW_REMOVED:I = 0x2

.field static final TAG:Ljava/lang/String; = "CoordinatorLayout"

.field static final TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_ON_INTERCEPT:I = 0x0

.field private static final TYPE_ON_TOUCH:I = 0x1

.field static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field static final sConstructors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "Landroidx/coordinatorlayout/widget/c;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sRectPool:Lg0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg0/d;"
        }
    .end annotation
.end field


# instance fields
.field private mApplyWindowInsetsListener:Landroidx/core/view/a0;

.field private final mBehaviorConsumed:[I

.field private mBehaviorTouchView:Landroid/view/View;

.field private final mChildDag:Landroidx/coordinatorlayout/widget/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/coordinatorlayout/widget/j;"
        }
    .end annotation
.end field

.field private final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDisallowInterceptReset:Z

.field private mDrawStatusBarBackground:Z

.field private mIsAttachedToWindow:Z

.field private mKeylines:[I

.field private mLastInsets:Landroidx/core/view/q2;

.field private mNeedsPreDrawListener:Z

.field private final mNestedScrollingParentHelper:Landroidx/core/view/z;

.field private mNestedScrollingTarget:Landroid/view/View;

.field private final mNestedScrollingV2ConsumedCompat:[I

.field mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOnPreDrawListener:Landroidx/coordinatorlayout/widget/g;

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    new-instance v0, Landroidx/coordinatorlayout/widget/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/coordinatorlayout/widget/i;-><init>(I)V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    new-instance v0, Lg0/e;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lg0/e;-><init>(I)V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Lg0/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    const v0, 0x7f040149

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 13
    .line 14
    new-instance v1, Landroidx/coordinatorlayout/widget/j;

    .line 15
    .line 16
    invoke-direct {v1}, Landroidx/coordinatorlayout/widget/j;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/j;

    .line 20
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    new-array v2, v1, [I

    .line 37
    .line 38
    iput-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    .line 39
    .line 40
    new-array v1, v1, [I

    .line 41
    .line 42
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingV2ConsumedCompat:[I

    .line 43
    .line 44
    new-instance v1, Landroidx/core/view/z;

    .line 45
    .line 46
    invoke-direct {v1}, Landroidx/core/view/z;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/z;

    .line 50
    .line 51
    sget-object v1, Lt/a;->a:[I

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    const/16 v4, 0x1d

    .line 61
    .line 62
    if-lt v3, v4, :cond_0

    .line 63
    .line 64
    invoke-static {p0, p1, v1, p2, v0}, Landroidx/appcompat/widget/r1;->s(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_1

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 88
    .line 89
    iget-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    .line 90
    .line 91
    array-length p2, p2

    .line 92
    :goto_0
    if-ge v2, p2, :cond_1

    .line 93
    .line 94
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    .line 95
    .line 96
    aget v3, v1, v2

    .line 97
    .line 98
    int-to-float v3, v3

    .line 99
    mul-float/2addr v3, p1

    .line 100
    float-to-int v3, v3

    .line 101
    aput v3, v1, v2

    .line 102
    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    const/4 p1, 0x1

    .line 107
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j()V

    .line 117
    .line 118
    .line 119
    new-instance p2, Landroidx/coordinatorlayout/widget/e;

    .line 120
    .line 121
    invoke-direct {p2, p0}, Landroidx/coordinatorlayout/widget/e;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 122
    .line 123
    .line 124
    invoke-super {p0, p2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 125
    .line 126
    .line 127
    sget-object p2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 128
    .line 129
    invoke-static {p0}, Landroidx/core/view/k0;->c(Landroid/view/View;)I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    if-nez p2, :cond_2

    .line 134
    .line 135
    invoke-static {p0, p1}, Landroidx/core/view/k0;->s(Landroid/view/View;I)V

    .line 136
    .line 137
    .line 138
    :cond_2
    return-void
.end method

.method public static a()Landroid/graphics/Rect;
    .locals 1

    .line 1
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Lg0/d;

    invoke-interface {v0}, Lg0/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static c(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/f;II)V
    .locals 6

    .line 1
    iget v0, p3, Landroidx/coordinatorlayout/widget/f;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x11

    .line 6
    .line 7
    :cond_0
    invoke-static {v0, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget p3, p3, Landroidx/coordinatorlayout/widget/f;->d:I

    .line 12
    .line 13
    and-int/lit8 v1, p3, 0x7

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const v1, 0x800003

    .line 18
    .line 19
    .line 20
    or-int/2addr p3, v1

    .line 21
    :cond_1
    and-int/lit8 v1, p3, 0x70

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    or-int/lit8 p3, p3, 0x30

    .line 26
    .line 27
    :cond_2
    invoke-static {p3, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    and-int/lit8 p3, v0, 0x7

    .line 32
    .line 33
    and-int/lit8 v0, v0, 0x70

    .line 34
    .line 35
    and-int/lit8 v1, p0, 0x7

    .line 36
    .line 37
    and-int/lit8 p0, p0, 0x70

    .line 38
    .line 39
    const/4 v2, 0x5

    .line 40
    const/4 v3, 0x1

    .line 41
    if-eq v1, v3, :cond_4

    .line 42
    .line 43
    if-eq v1, v2, :cond_3

    .line 44
    .line 45
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    div-int/lit8 v4, v4, 0x2

    .line 58
    .line 59
    add-int/2addr v1, v4

    .line 60
    :goto_0
    const/16 v4, 0x50

    .line 61
    .line 62
    const/16 v5, 0x10

    .line 63
    .line 64
    if-eq p0, v5, :cond_6

    .line 65
    .line 66
    if-eq p0, v4, :cond_5

    .line 67
    .line 68
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_6
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    div-int/lit8 p1, p1, 0x2

    .line 81
    .line 82
    add-int/2addr p0, p1

    .line 83
    :goto_1
    if-eq p3, v3, :cond_7

    .line 84
    .line 85
    if-eq p3, v2, :cond_8

    .line 86
    .line 87
    sub-int/2addr v1, p4

    .line 88
    goto :goto_2

    .line 89
    :cond_7
    div-int/lit8 p1, p4, 0x2

    .line 90
    .line 91
    sub-int/2addr v1, p1

    .line 92
    :cond_8
    :goto_2
    if-eq v0, v5, :cond_9

    .line 93
    .line 94
    if-eq v0, v4, :cond_a

    .line 95
    .line 96
    sub-int/2addr p0, p5

    .line 97
    goto :goto_3

    .line 98
    :cond_9
    div-int/lit8 p1, p5, 0x2

    .line 99
    .line 100
    sub-int/2addr p0, p1

    .line 101
    :cond_a
    :goto_3
    add-int/2addr p4, v1

    .line 102
    add-int/2addr p5, p0

    .line 103
    invoke-virtual {p2, v1, p0, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public static h(ILandroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/f;

    .line 6
    .line 7
    iget v1, v0, Landroidx/coordinatorlayout/widget/f;->i:I

    .line 8
    .line 9
    if-eq v1, p0, :cond_0

    .line 10
    .line 11
    sub-int v1, p0, v1

    .line 12
    .line 13
    sget-object v2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 16
    .line 17
    .line 18
    iput p0, v0, Landroidx/coordinatorlayout/widget/f;->i:I

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static i(ILandroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/f;

    .line 6
    .line 7
    iget v1, v0, Landroidx/coordinatorlayout/widget/f;->j:I

    .line 8
    .line 9
    if-eq v1, p0, :cond_0

    .line 10
    .line 11
    sub-int v1, p0, v1

    .line 12
    .line 13
    sget-object v2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 16
    .line 17
    .line 18
    iput p0, v0, Landroidx/coordinatorlayout/widget/f;->j:I

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroidx/coordinatorlayout/widget/c;
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const-string v0, "."

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/16 v0, 0x2e

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ltz v1, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_3

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    :cond_3
    :goto_0
    :try_start_0
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/util/Map;

    .line 79
    .line 80
    if-nez v1, :cond_4

    .line 81
    .line 82
    new-instance v1, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception p0

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    :goto_1
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 98
    .line 99
    if-nez v0, :cond_5

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-static {p2, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const/4 v2, 0x1

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :cond_5
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    check-cast p0, Landroidx/coordinatorlayout/widget/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    return-object p0

    .line 134
    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 135
    .line 136
    const-string v0, "Could not inflate Behavior subclass "

    .line 137
    .line 138
    invoke-static {v0, p2}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    throw p1
.end method


# virtual methods
.method public addPreDrawListener()V
    .locals 2

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/g;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/coordinatorlayout/widget/g;

    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/g;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/g;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/g;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    return-void
.end method

.method public final b(Landroidx/coordinatorlayout/widget/f;Landroid/graphics/Rect;II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, p3

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, p4

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p3, v0

    add-int/2addr p4, p1

    invoke-virtual {p2, v0, p1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroidx/coordinatorlayout/widget/f;

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

.method public final d(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    const/4 v1, 0x0

    const-string v2, "CoordinatorLayout"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No keylines defined for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - attempted index lookup "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-ltz p1, :cond_2

    array-length v3, v0

    if-lt p1, v3, :cond_1

    goto :goto_1

    :cond_1
    aget p1, v0, p1

    return p1

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Keyline index "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/j;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/j;->b:Ln/k;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/List;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ge v1, v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroidx/coordinatorlayout/widget/f;

    .line 38
    .line 39
    iget-object v3, v3, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {v3, p0, v2, p1}, Landroidx/coordinatorlayout/widget/c;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method

.method public doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v2, p0, :cond_0

    .line 24
    .line 25
    move v2, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v2, v1

    .line 28
    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eq v2, p0, :cond_1

    .line 40
    .line 41
    move v2, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v2, v1

    .line 44
    :goto_1
    invoke-virtual {p0, p2, v2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    :try_start_0
    iget p2, v0, Landroid/graphics/Rect;->left:I

    .line 48
    .line 49
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 50
    .line 51
    if-gt p2, v2, :cond_2

    .line 52
    .line 53
    iget p2, v0, Landroid/graphics/Rect;->top:I

    .line 54
    .line 55
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 56
    .line 57
    if-gt p2, v2, :cond_2

    .line 58
    .line 59
    iget p2, v0, Landroid/graphics/Rect;->right:I

    .line 60
    .line 61
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 62
    .line 63
    if-lt p2, v2, :cond_2

    .line 64
    .line 65
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 66
    .line 67
    iget v2, p1, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    if-lt p2, v2, :cond_2

    .line 70
    .line 71
    move v1, v3

    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception p2

    .line 74
    goto :goto_3

    .line 75
    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 76
    .line 77
    .line 78
    sget-object p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Lg0/d;

    .line 79
    .line 80
    invoke-interface {p2, v0}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 84
    .line 85
    .line 86
    invoke-interface {p2, p1}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    return v1

    .line 90
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 91
    .line 92
    .line 93
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Lg0/d;

    .line 94
    .line 95
    invoke-interface {v1, v0}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 99
    .line 100
    .line 101
    invoke-interface {v1, p1}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    throw p2

    .line 105
    :cond_3
    return v1
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/f;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    invoke-virtual {v1, p0, p2}, Landroidx/coordinatorlayout/widget/c;->getScrimOpacity(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    cmpl-float v2, v1, v2

    .line 17
    .line 18
    if-lez v2, :cond_4

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    new-instance v2, Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 30
    .line 31
    :cond_0
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 34
    .line 35
    invoke-virtual {v0, p0, p2}, Landroidx/coordinatorlayout/widget/c;->getScrimColor(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 43
    .line 44
    const/high16 v2, 0x437f0000    # 255.0f

    .line 45
    .line 46
    mul-float/2addr v1, v2

    .line 47
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-gez v1, :cond_1

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/16 v2, 0xff

    .line 56
    .line 57
    if-le v1, v2, :cond_2

    .line 58
    .line 59
    move v1, v2

    .line 60
    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p2}, Landroid/view/View;->isOpaque()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    int-to-float v3, v1

    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    int-to-float v4, v1

    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    int-to-float v5, v1

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    int-to-float v6, v1

    .line 93
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 94
    .line 95
    move-object v2, p1

    .line 96
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    int-to-float v3, v1

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    int-to-float v4, v1

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    sub-int/2addr v1, v2

    .line 118
    int-to-float v5, v1

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    sub-int/2addr v1, v2

    .line 128
    int-to-float v6, v1

    .line 129
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 130
    .line 131
    move-object v2, p1

    .line 132
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 136
    .line 137
    .line 138
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    return p1
.end method

.method public drawableStateChanged()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final e(Landroid/view/MotionEvent;I)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget-object v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    add-int/lit8 v7, v6, -0x1

    .line 25
    .line 26
    :goto_0
    if-ltz v7, :cond_1

    .line 27
    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    move v8, v7

    .line 36
    :goto_1
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v7, v7, -0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sget-object v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 47
    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v7, 0x0

    .line 59
    move v8, v6

    .line 60
    move v9, v8

    .line 61
    move v10, v9

    .line 62
    :goto_2
    if-ge v8, v5, :cond_11

    .line 63
    .line 64
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    check-cast v11, Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    check-cast v12, Landroidx/coordinatorlayout/widget/f;

    .line 75
    .line 76
    iget-object v13, v12, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 77
    .line 78
    const/4 v14, 0x1

    .line 79
    if-nez v9, :cond_3

    .line 80
    .line 81
    if-eqz v10, :cond_7

    .line 82
    .line 83
    :cond_3
    if-eqz v3, :cond_7

    .line 84
    .line 85
    if-eqz v13, :cond_10

    .line 86
    .line 87
    if-nez v7, :cond_4

    .line 88
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v17

    .line 93
    const/16 v19, 0x3

    .line 94
    .line 95
    const/16 v20, 0x0

    .line 96
    .line 97
    const/16 v21, 0x0

    .line 98
    .line 99
    const/16 v22, 0x0

    .line 100
    .line 101
    move-wide/from16 v15, v17

    .line 102
    .line 103
    invoke-static/range {v15 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    :cond_4
    if-eqz v2, :cond_6

    .line 108
    .line 109
    if-eq v2, v14, :cond_5

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_5
    invoke-virtual {v13, v0, v11, v7}, Landroidx/coordinatorlayout/widget/c;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_7

    .line 116
    :cond_6
    invoke-virtual {v13, v0, v11, v7}, Landroidx/coordinatorlayout/widget/c;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_7

    .line 120
    :cond_7
    if-nez v9, :cond_a

    .line 121
    .line 122
    if-eqz v13, :cond_a

    .line 123
    .line 124
    if-eqz v2, :cond_9

    .line 125
    .line 126
    if-eq v2, v14, :cond_8

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_8
    invoke-virtual {v13, v0, v11, v1}, Landroidx/coordinatorlayout/widget/c;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    goto :goto_3

    .line 134
    :cond_9
    invoke-virtual {v13, v0, v11, v1}, Landroidx/coordinatorlayout/widget/c;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    :goto_3
    if-eqz v9, :cond_a

    .line 139
    .line 140
    iput-object v11, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 141
    .line 142
    :cond_a
    iget-object v10, v12, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 143
    .line 144
    if-nez v10, :cond_b

    .line 145
    .line 146
    iput-boolean v6, v12, Landroidx/coordinatorlayout/widget/f;->m:Z

    .line 147
    .line 148
    :cond_b
    iget-boolean v13, v12, Landroidx/coordinatorlayout/widget/f;->m:Z

    .line 149
    .line 150
    if-eqz v13, :cond_c

    .line 151
    .line 152
    move v10, v14

    .line 153
    goto :goto_5

    .line 154
    :cond_c
    if-eqz v10, :cond_d

    .line 155
    .line 156
    invoke-virtual {v10, v0, v11}, Landroidx/coordinatorlayout/widget/c;->blocksInteractionBelow(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    goto :goto_4

    .line 161
    :cond_d
    move v10, v6

    .line 162
    :goto_4
    or-int/2addr v10, v13

    .line 163
    iput-boolean v10, v12, Landroidx/coordinatorlayout/widget/f;->m:Z

    .line 164
    .line 165
    :goto_5
    if-eqz v10, :cond_e

    .line 166
    .line 167
    if-nez v13, :cond_e

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_e
    move v14, v6

    .line 171
    :goto_6
    if-eqz v10, :cond_f

    .line 172
    .line 173
    if-nez v14, :cond_f

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_f
    move v10, v14

    .line 177
    :cond_10
    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_11
    :goto_8
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 181
    .line 182
    .line 183
    return v9
.end method

.method public ensurePreDrawListener()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/j;

    .line 14
    .line 15
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/j;->b:Ln/k;

    .line 16
    .line 17
    iget v5, v4, Ln/k;->c:I

    .line 18
    .line 19
    move v6, v1

    .line 20
    :goto_1
    if-ge v6, v5, :cond_1

    .line 21
    .line 22
    invoke-virtual {v4, v6}, Ln/k;->j(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    check-cast v7, Ljava/util/ArrayList;

    .line 27
    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_2
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 45
    .line 46
    if-eq v1, v0, :cond_4

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addPreDrawListener()V

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->removePreDrawListener()V

    .line 55
    .line 56
    .line 57
    :cond_4
    :goto_3
    return-void
.end method

.method public final f()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/j;

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/j;->b:Ln/k;

    .line 9
    .line 10
    iget v2, v1, Ln/k;->c:I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    if-ge v4, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1, v4}, Ln/k;->j(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    check-cast v5, Ljava/util/ArrayList;

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 25
    .line 26
    .line 27
    iget-object v6, v0, Landroidx/coordinatorlayout/widget/j;->a:Lo/f;

    .line 28
    .line 29
    invoke-virtual {v6, v5}, Lo/f;->a(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v1}, Ln/k;->clear()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    move v1, v3

    .line 43
    :goto_1
    if-ge v1, v0, :cond_1b

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/f;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget v5, v4, Landroidx/coordinatorlayout/widget/f;->f:I

    .line 54
    .line 55
    const/4 v6, -0x1

    .line 56
    const/4 v7, 0x0

    .line 57
    if-ne v5, v6, :cond_2

    .line 58
    .line 59
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/f;->l:Landroid/view/View;

    .line 60
    .line 61
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/f;->k:Landroid/view/View;

    .line 62
    .line 63
    goto/16 :goto_7

    .line 64
    .line 65
    :cond_2
    iget-object v5, v4, Landroidx/coordinatorlayout/widget/f;->k:Landroid/view/View;

    .line 66
    .line 67
    if-eqz v5, :cond_8

    .line 68
    .line 69
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    iget v6, v4, Landroidx/coordinatorlayout/widget/f;->f:I

    .line 74
    .line 75
    if-eq v5, v6, :cond_3

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_3
    iget-object v5, v4, Landroidx/coordinatorlayout/widget/f;->k:Landroid/view/View;

    .line 79
    .line 80
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    :goto_2
    if-eq v6, p0, :cond_7

    .line 85
    .line 86
    if-eqz v6, :cond_6

    .line 87
    .line 88
    if-ne v6, v2, :cond_4

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    instance-of v8, v6, Landroid/view/View;

    .line 92
    .line 93
    if-eqz v8, :cond_5

    .line 94
    .line 95
    move-object v5, v6

    .line 96
    check-cast v5, Landroid/view/View;

    .line 97
    .line 98
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    goto :goto_2

    .line 103
    :cond_6
    :goto_3
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/f;->l:Landroid/view/View;

    .line 104
    .line 105
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/f;->k:Landroid/view/View;

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_7
    iput-object v5, v4, Landroidx/coordinatorlayout/widget/f;->l:Landroid/view/View;

    .line 109
    .line 110
    goto :goto_7

    .line 111
    :cond_8
    :goto_4
    iget v5, v4, Landroidx/coordinatorlayout/widget/f;->f:I

    .line 112
    .line 113
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iput-object v5, v4, Landroidx/coordinatorlayout/widget/f;->k:Landroid/view/View;

    .line 118
    .line 119
    if-eqz v5, :cond_f

    .line 120
    .line 121
    if-ne v5, p0, :cond_a

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_9

    .line 128
    .line 129
    :goto_5
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/f;->l:Landroid/view/View;

    .line 130
    .line 131
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/f;->k:Landroid/view/View;

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 135
    .line 136
    const-string v1, "View can not be anchored to the the parent CoordinatorLayout"

    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :cond_a
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    :goto_6
    if-eq v6, p0, :cond_e

    .line 147
    .line 148
    if-eqz v6, :cond_e

    .line 149
    .line 150
    if-ne v6, v2, :cond_c

    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_b

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 160
    .line 161
    const-string v1, "Anchor must not be a descendant of the anchored view"

    .line 162
    .line 163
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :cond_c
    instance-of v8, v6, Landroid/view/View;

    .line 168
    .line 169
    if-eqz v8, :cond_d

    .line 170
    .line 171
    move-object v5, v6

    .line 172
    check-cast v5, Landroid/view/View;

    .line 173
    .line 174
    :cond_d
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    goto :goto_6

    .line 179
    :cond_e
    iput-object v5, v4, Landroidx/coordinatorlayout/widget/f;->l:Landroid/view/View;

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    if-eqz v5, :cond_1a

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :goto_7
    iget-object v5, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/j;

    .line 190
    .line 191
    iget-object v5, v5, Landroidx/coordinatorlayout/widget/j;->b:Ln/k;

    .line 192
    .line 193
    invoke-virtual {v5, v2}, Ln/k;->containsKey(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-nez v6, :cond_10

    .line 198
    .line 199
    invoke-virtual {v5, v2, v7}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    :cond_10
    move v5, v3

    .line 203
    :goto_8
    if-ge v5, v0, :cond_19

    .line 204
    .line 205
    if-ne v5, v1, :cond_11

    .line 206
    .line 207
    goto/16 :goto_a

    .line 208
    .line 209
    :cond_11
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    iget-object v8, v4, Landroidx/coordinatorlayout/widget/f;->l:Landroid/view/View;

    .line 214
    .line 215
    if-eq v6, v8, :cond_13

    .line 216
    .line 217
    sget-object v8, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 218
    .line 219
    invoke-static {p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    check-cast v9, Landroidx/coordinatorlayout/widget/f;

    .line 228
    .line 229
    iget v9, v9, Landroidx/coordinatorlayout/widget/f;->g:I

    .line 230
    .line 231
    invoke-static {v9, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    if-eqz v9, :cond_12

    .line 236
    .line 237
    iget v10, v4, Landroidx/coordinatorlayout/widget/f;->h:I

    .line 238
    .line 239
    invoke-static {v10, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    and-int/2addr v8, v9

    .line 244
    if-ne v8, v9, :cond_12

    .line 245
    .line 246
    goto :goto_9

    .line 247
    :cond_12
    iget-object v8, v4, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 248
    .line 249
    if-eqz v8, :cond_17

    .line 250
    .line 251
    invoke-virtual {v8, p0, v2, v6}, Landroidx/coordinatorlayout/widget/c;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 252
    .line 253
    .line 254
    move-result v8

    .line 255
    if-eqz v8, :cond_17

    .line 256
    .line 257
    :cond_13
    :goto_9
    iget-object v8, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/j;

    .line 258
    .line 259
    iget-object v8, v8, Landroidx/coordinatorlayout/widget/j;->b:Ln/k;

    .line 260
    .line 261
    invoke-virtual {v8, v6}, Ln/k;->containsKey(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    if-nez v8, :cond_14

    .line 266
    .line 267
    iget-object v8, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/j;

    .line 268
    .line 269
    iget-object v8, v8, Landroidx/coordinatorlayout/widget/j;->b:Ln/k;

    .line 270
    .line 271
    invoke-virtual {v8, v6}, Ln/k;->containsKey(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    if-nez v9, :cond_14

    .line 276
    .line 277
    invoke-virtual {v8, v6, v7}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    :cond_14
    iget-object v8, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/j;

    .line 281
    .line 282
    iget-object v9, v8, Landroidx/coordinatorlayout/widget/j;->b:Ln/k;

    .line 283
    .line 284
    invoke-virtual {v9, v6}, Ln/k;->containsKey(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v10

    .line 288
    if-eqz v10, :cond_18

    .line 289
    .line 290
    invoke-virtual {v9, v2}, Ln/k;->containsKey(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v10

    .line 294
    if-eqz v10, :cond_18

    .line 295
    .line 296
    invoke-virtual {v9, v6, v7}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    check-cast v10, Ljava/util/ArrayList;

    .line 301
    .line 302
    if-nez v10, :cond_16

    .line 303
    .line 304
    iget-object v8, v8, Landroidx/coordinatorlayout/widget/j;->a:Lo/f;

    .line 305
    .line 306
    invoke-virtual {v8}, Lo/f;->b()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    check-cast v8, Ljava/util/ArrayList;

    .line 311
    .line 312
    if-nez v8, :cond_15

    .line 313
    .line 314
    new-instance v8, Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .line 318
    .line 319
    :cond_15
    move-object v10, v8

    .line 320
    invoke-virtual {v9, v6, v10}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    :cond_16
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    :cond_17
    :goto_a
    add-int/lit8 v5, v5, 0x1

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 330
    .line 331
    const-string v1, "All nodes must be present in the graph before being added as an edge"

    .line 332
    .line 333
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v0

    .line 337
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 338
    .line 339
    goto/16 :goto_1

    .line 340
    .line 341
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 342
    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    const-string v3, "Could not find CoordinatorLayout descendant view with id "

    .line 346
    .line 347
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    iget v4, v4, Landroidx/coordinatorlayout/widget/f;->f:I

    .line 355
    .line 356
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v3, " to anchor view "

    .line 364
    .line 365
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    throw v0

    .line 379
    :cond_1b
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 380
    .line 381
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/j;

    .line 382
    .line 383
    iget-object v2, v1, Landroidx/coordinatorlayout/widget/j;->c:Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 386
    .line 387
    .line 388
    iget-object v4, v1, Landroidx/coordinatorlayout/widget/j;->d:Ljava/util/HashSet;

    .line 389
    .line 390
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 391
    .line 392
    .line 393
    iget-object v5, v1, Landroidx/coordinatorlayout/widget/j;->b:Ln/k;

    .line 394
    .line 395
    iget v6, v5, Ln/k;->c:I

    .line 396
    .line 397
    :goto_b
    if-ge v3, v6, :cond_1c

    .line 398
    .line 399
    invoke-virtual {v5, v3}, Ln/k;->h(I)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    invoke-virtual {v1, v7, v2, v4}, Landroidx/coordinatorlayout/widget/j;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 404
    .line 405
    .line 406
    add-int/lit8 v3, v3, 0x1

    .line 407
    .line 408
    goto :goto_b

    .line 409
    :cond_1c
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 410
    .line 411
    .line 412
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 413
    .line 414
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 415
    .line 416
    .line 417
    return-void
.end method

.method public final g(Z)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroidx/coordinatorlayout/widget/f;

    .line 18
    .line 19
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 20
    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v7

    .line 27
    const/4 v9, 0x3

    .line 28
    const/4 v10, 0x0

    .line 29
    const/4 v11, 0x0

    .line 30
    const/4 v12, 0x0

    .line 31
    move-wide v5, v7

    .line 32
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v4, p0, v3, v5}, Landroidx/coordinatorlayout/widget/c;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {v4, p0, v3, v5}, Landroidx/coordinatorlayout/widget/c;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 46
    .line 47
    .line 48
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move p1, v1

    .line 52
    :goto_2
    if-ge p1, v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroidx/coordinatorlayout/widget/f;

    .line 63
    .line 64
    iput-boolean v1, v2, Landroidx/coordinatorlayout/widget/f;->m:Z

    .line 65
    .line 66
    add-int/lit8 p1, p1, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 71
    .line 72
    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 73
    .line 74
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->generateDefaultLayoutParams()Landroidx/coordinatorlayout/widget/f;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroidx/coordinatorlayout/widget/f;
    .locals 1

    .line 2
    new-instance v0, Landroidx/coordinatorlayout/widget/f;

    invoke-direct {v0}, Landroidx/coordinatorlayout/widget/f;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/coordinatorlayout/widget/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/coordinatorlayout/widget/f;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/coordinatorlayout/widget/f;
    .locals 2

    .line 3
    new-instance v0, Landroidx/coordinatorlayout/widget/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/coordinatorlayout/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/coordinatorlayout/widget/f;
    .locals 1

    .line 4
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/f;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/coordinatorlayout/widget/f;

    check-cast p1, Landroidx/coordinatorlayout/widget/f;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/f;-><init>(Landroidx/coordinatorlayout/widget/f;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/coordinatorlayout/widget/f;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/f;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Landroidx/coordinatorlayout/widget/f;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/f;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/j;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/j;->b:Ln/k;

    .line 4
    .line 5
    iget v1, v0, Ln/k;->c:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ln/k;->j(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Ljava/util/ArrayList;

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0, v3}, Ln/k;->h(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 45
    .line 46
    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    .line 54
    :cond_3
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 55
    .line 56
    return-object p1
.end method

.method public final getDependencySortedChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f()V

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDependents(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/j;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/j;->b:Ln/k;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/util/List;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 25
    .line 26
    return-object p1
.end method

.method public getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/coordinatorlayout/widget/k;->a:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Landroidx/coordinatorlayout/widget/k;->a:Ljava/lang/ThreadLocal;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/graphics/Matrix;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Landroid/graphics/Matrix;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-static {p0, p1, v1}, Landroidx/coordinatorlayout/widget/k;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Landroidx/coordinatorlayout/widget/k;->b:Ljava/lang/ThreadLocal;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/graphics/RectF;

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    new-instance v0, Landroid/graphics/RectF;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 62
    .line 63
    .line 64
    iget p1, v0, Landroid/graphics/RectF;->left:F

    .line 65
    .line 66
    const/high16 v1, 0x3f000000    # 0.5f

    .line 67
    .line 68
    add-float/2addr p1, v1

    .line 69
    float-to-int p1, p1

    .line 70
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 71
    .line 72
    add-float/2addr v2, v1

    .line 73
    float-to-int v2, v2

    .line 74
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 75
    .line 76
    add-float/2addr v3, v1

    .line 77
    float-to-int v3, v3

    .line 78
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 79
    .line 80
    add-float/2addr v0, v1

    .line 81
    float-to-int v0, v0

    .line 82
    invoke-virtual {p2, p1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/f;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, v0

    move v5, v7

    move v6, p1

    invoke-static/range {v1 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/f;II)V

    invoke-virtual {p0, v0, p4, v7, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroidx/coordinatorlayout/widget/f;Landroid/graphics/Rect;II)V

    return-void
.end method

.method public getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/coordinatorlayout/widget/f;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/coordinatorlayout/widget/f;->q:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final getLastWindowInsets()Landroidx/core/view/q2;
    .locals 1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/q2;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/z;

    .line 2
    .line 3
    iget v1, v0, Landroidx/core/view/z;->a:I

    .line 4
    .line 5
    iget v0, v0, Landroidx/core/view/z;->b:I

    .line 6
    .line 7
    or-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/f;
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/f;

    iget-boolean v1, v0, Landroidx/coordinatorlayout/widget/f;->b:Z

    if-nez v1, :cond_4

    instance-of v1, p1, Landroidx/coordinatorlayout/widget/b;

    const/4 v2, 0x1

    const-string v3, "CoordinatorLayout"

    if-eqz v1, :cond_2

    check-cast p1, Landroidx/coordinatorlayout/widget/b;

    invoke-interface {p1}, Landroidx/coordinatorlayout/widget/b;->getBehavior()Landroidx/coordinatorlayout/widget/c;

    move-result-object p1

    if-nez p1, :cond_0

    const-string v1, "Attached behavior class is null"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/f;->b(Landroidx/coordinatorlayout/widget/c;)V

    :cond_1
    :goto_0
    iput-boolean v2, v0, Landroidx/coordinatorlayout/widget/f;->b:Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    const-class v1, Landroidx/coordinatorlayout/widget/d;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/d;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroidx/coordinatorlayout/widget/d;->value()Ljava/lang/Class;

    move-result-object p1

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/c;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/f;->b(Landroidx/coordinatorlayout/widget/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Default behavior class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroidx/coordinatorlayout/widget/d;->value()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 3

    invoke-super {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 3

    invoke-super {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .locals 1

    .line 1
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    .line 9
    .line 10
    .line 11
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 13
    .line 14
    .line 15
    sget-object p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Lg0/d;

    .line 16
    .line 17
    invoke-interface {p2, v0}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 23
    .line 24
    .line 25
    sget-object p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Lg0/d;

    .line 26
    .line 27
    invoke-interface {p2, v0}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final j()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/k0;->b(Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/core/view/a0;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroidx/coordinatorlayout/widget/a;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/a;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/core/view/a0;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/core/view/a0;

    .line 21
    .line 22
    invoke-static {p0, v0}, Landroidx/core/view/q0;->u(Landroid/view/View;Landroidx/core/view/a0;)V

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x500

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    invoke-static {p0, v0}, Landroidx/core/view/q0;->u(Landroid/view/View;Landroidx/core/view/a0;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public offsetChildToAnchor(Landroid/view/View;I)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/f;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/f;->k:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v7

    .line 15
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/f;->k:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {p0, v1, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    const/4 v10, 0x0

    .line 29
    invoke-virtual {p0, p1, v10, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 33
    .line 34
    .line 35
    move-result v11

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 37
    .line 38
    .line 39
    move-result v12

    .line 40
    move v1, p2

    .line 41
    move-object v2, v7

    .line 42
    move-object v3, v9

    .line 43
    move-object v4, v0

    .line 44
    move v5, v11

    .line 45
    move v6, v12

    .line 46
    invoke-static/range {v1 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/f;II)V

    .line 47
    .line 48
    .line 49
    iget p2, v9, Landroid/graphics/Rect;->left:I

    .line 50
    .line 51
    iget v1, v8, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    if-ne p2, v1, :cond_0

    .line 54
    .line 55
    iget p2, v9, Landroid/graphics/Rect;->top:I

    .line 56
    .line 57
    iget v1, v8, Landroid/graphics/Rect;->top:I

    .line 58
    .line 59
    if-eq p2, v1, :cond_1

    .line 60
    .line 61
    :cond_0
    const/4 v10, 0x1

    .line 62
    :cond_1
    invoke-virtual {p0, v0, v9, v11, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroidx/coordinatorlayout/widget/f;Landroid/graphics/Rect;II)V

    .line 63
    .line 64
    .line 65
    iget p2, v9, Landroid/graphics/Rect;->left:I

    .line 66
    .line 67
    iget v1, v8, Landroid/graphics/Rect;->left:I

    .line 68
    .line 69
    sub-int/2addr p2, v1

    .line 70
    iget v1, v9, Landroid/graphics/Rect;->top:I

    .line 71
    .line 72
    iget v2, v8, Landroid/graphics/Rect;->top:I

    .line 73
    .line 74
    sub-int/2addr v1, v2

    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    sget-object v2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 80
    .line 81
    .line 82
    :cond_2
    if-eqz v1, :cond_3

    .line 83
    .line 84
    sget-object p2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 87
    .line 88
    .line 89
    :cond_3
    if-eqz v10, :cond_4

    .line 90
    .line 91
    iget-object p2, v0, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 92
    .line 93
    if-eqz p2, :cond_4

    .line 94
    .line 95
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/f;->k:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {p2, p0, p1, v0}, Landroidx/coordinatorlayout/widget/c;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 101
    .line 102
    .line 103
    sget-object p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Lg0/d;

    .line 104
    .line 105
    invoke-interface {p1, v7}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 109
    .line 110
    .line 111
    invoke-interface {p1, v8}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v9}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_5
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g(Z)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/g;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroidx/coordinatorlayout/widget/g;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/g;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/g;

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/g;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/q2;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 37
    .line 38
    invoke-static {p0}, Landroidx/core/view/k0;->b(Landroid/view/View;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-static {p0}, Landroidx/core/view/o0;->c(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 49
    .line 50
    return-void
.end method

.method public final onChildViewsChanged(I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    invoke-static/range {p0 .. p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const/4 v8, 0x0

    .line 30
    :goto_0
    if-ge v8, v3, :cond_1b

    .line 31
    .line 32
    iget-object v9, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    check-cast v9, Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    check-cast v10, Landroidx/coordinatorlayout/widget/f;

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    const/16 v12, 0x8

    .line 53
    .line 54
    if-ne v11, v12, :cond_1

    .line 55
    .line 56
    move v10, v3

    .line 57
    :cond_0
    :goto_1
    const/4 v14, 0x0

    .line 58
    goto/16 :goto_10

    .line 59
    .line 60
    :cond_1
    const/4 v11, 0x0

    .line 61
    :goto_2
    if-ge v11, v8, :cond_3

    .line 62
    .line 63
    iget-object v12, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    check-cast v12, Landroid/view/View;

    .line 70
    .line 71
    iget-object v13, v10, Landroidx/coordinatorlayout/widget/f;->l:Landroid/view/View;

    .line 72
    .line 73
    if-ne v13, v12, :cond_2

    .line 74
    .line 75
    invoke-virtual {v0, v9, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    .line 76
    .line 77
    .line 78
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    const/4 v11, 0x1

    .line 82
    invoke-virtual {v0, v9, v11, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 83
    .line 84
    .line 85
    iget v12, v10, Landroidx/coordinatorlayout/widget/f;->g:I

    .line 86
    .line 87
    const/16 v13, 0x30

    .line 88
    .line 89
    const/16 v14, 0x50

    .line 90
    .line 91
    const/4 v15, 0x3

    .line 92
    const/4 v11, 0x5

    .line 93
    if-eqz v12, :cond_8

    .line 94
    .line 95
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    if-nez v12, :cond_8

    .line 100
    .line 101
    iget v12, v10, Landroidx/coordinatorlayout/widget/f;->g:I

    .line 102
    .line 103
    invoke-static {v12, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    and-int/lit8 v7, v12, 0x70

    .line 108
    .line 109
    if-eq v7, v13, :cond_5

    .line 110
    .line 111
    if-eq v7, v14, :cond_4

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 117
    .line 118
    .line 119
    move-result v16

    .line 120
    iget v14, v5, Landroid/graphics/Rect;->top:I

    .line 121
    .line 122
    sub-int v14, v16, v14

    .line 123
    .line 124
    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    iget v7, v4, Landroid/graphics/Rect;->top:I

    .line 132
    .line 133
    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    .line 134
    .line 135
    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 140
    .line 141
    :goto_3
    and-int/lit8 v7, v12, 0x7

    .line 142
    .line 143
    if-eq v7, v15, :cond_7

    .line 144
    .line 145
    if-eq v7, v11, :cond_6

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_6
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 149
    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 151
    .line 152
    .line 153
    move-result v12

    .line 154
    iget v14, v5, Landroid/graphics/Rect;->left:I

    .line 155
    .line 156
    sub-int/2addr v12, v14

    .line 157
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_7
    iget v7, v4, Landroid/graphics/Rect;->left:I

    .line 165
    .line 166
    iget v12, v5, Landroid/graphics/Rect;->right:I

    .line 167
    .line 168
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 173
    .line 174
    :cond_8
    :goto_4
    iget v7, v10, Landroidx/coordinatorlayout/widget/f;->h:I

    .line 175
    .line 176
    if-eqz v7, :cond_14

    .line 177
    .line 178
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-nez v7, :cond_14

    .line 183
    .line 184
    sget-object v7, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 185
    .line 186
    invoke-static {v9}, Landroidx/core/view/n0;->c(Landroid/view/View;)Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    if-nez v7, :cond_9

    .line 191
    .line 192
    goto/16 :goto_a

    .line 193
    .line 194
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-lez v7, :cond_14

    .line 199
    .line 200
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-gtz v7, :cond_a

    .line 205
    .line 206
    goto/16 :goto_a

    .line 207
    .line 208
    :cond_a
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    check-cast v7, Landroidx/coordinatorlayout/widget/f;

    .line 213
    .line 214
    iget-object v10, v7, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 215
    .line 216
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    .line 221
    .line 222
    .line 223
    move-result-object v14

    .line 224
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 229
    .line 230
    .line 231
    move-result v15

    .line 232
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    .line 233
    .line 234
    .line 235
    move-result v13

    .line 236
    move/from16 v17, v3

    .line 237
    .line 238
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    invoke-virtual {v14, v11, v15, v13, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 243
    .line 244
    .line 245
    if-eqz v10, :cond_c

    .line 246
    .line 247
    invoke-virtual {v10, v0, v9, v12}, Landroidx/coordinatorlayout/widget/c;->getInsetDodgeRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-eqz v3, :cond_c

    .line 252
    .line 253
    invoke-virtual {v14, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-eqz v3, :cond_b

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 261
    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v3, "Rect should be within the child\'s bounds. Rect:"

    .line 265
    .line 266
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v12}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v3, " | Bounds:"

    .line 277
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v14}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw v1

    .line 296
    :cond_c
    invoke-virtual {v12, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 297
    .line 298
    .line 299
    :goto_5
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 300
    .line 301
    .line 302
    sget-object v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Lg0/d;

    .line 303
    .line 304
    invoke-interface {v3, v14}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v10

    .line 311
    if-eqz v10, :cond_e

    .line 312
    .line 313
    :cond_d
    :goto_6
    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    .line 314
    .line 315
    .line 316
    invoke-interface {v3, v12}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    goto/16 :goto_b

    .line 320
    .line 321
    :cond_e
    iget v10, v7, Landroidx/coordinatorlayout/widget/f;->h:I

    .line 322
    .line 323
    invoke-static {v10, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 324
    .line 325
    .line 326
    move-result v10

    .line 327
    and-int/lit8 v11, v10, 0x30

    .line 328
    .line 329
    const/16 v13, 0x30

    .line 330
    .line 331
    if-ne v11, v13, :cond_f

    .line 332
    .line 333
    iget v11, v12, Landroid/graphics/Rect;->top:I

    .line 334
    .line 335
    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 336
    .line 337
    sub-int/2addr v11, v13

    .line 338
    iget v13, v7, Landroidx/coordinatorlayout/widget/f;->j:I

    .line 339
    .line 340
    sub-int/2addr v11, v13

    .line 341
    iget v13, v4, Landroid/graphics/Rect;->top:I

    .line 342
    .line 343
    if-ge v11, v13, :cond_f

    .line 344
    .line 345
    sub-int/2addr v13, v11

    .line 346
    invoke-static {v13, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(ILandroid/view/View;)V

    .line 347
    .line 348
    .line 349
    const/4 v11, 0x1

    .line 350
    goto :goto_7

    .line 351
    :cond_f
    const/4 v11, 0x0

    .line 352
    :goto_7
    and-int/lit8 v13, v10, 0x50

    .line 353
    .line 354
    const/16 v14, 0x50

    .line 355
    .line 356
    if-ne v13, v14, :cond_10

    .line 357
    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 359
    .line 360
    .line 361
    move-result v13

    .line 362
    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    .line 363
    .line 364
    sub-int/2addr v13, v14

    .line 365
    iget v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 366
    .line 367
    sub-int/2addr v13, v14

    .line 368
    iget v14, v7, Landroidx/coordinatorlayout/widget/f;->j:I

    .line 369
    .line 370
    add-int/2addr v13, v14

    .line 371
    iget v14, v4, Landroid/graphics/Rect;->bottom:I

    .line 372
    .line 373
    if-ge v13, v14, :cond_10

    .line 374
    .line 375
    sub-int/2addr v13, v14

    .line 376
    invoke-static {v13, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(ILandroid/view/View;)V

    .line 377
    .line 378
    .line 379
    goto :goto_8

    .line 380
    :cond_10
    if-nez v11, :cond_11

    .line 381
    .line 382
    const/4 v11, 0x0

    .line 383
    invoke-static {v11, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(ILandroid/view/View;)V

    .line 384
    .line 385
    .line 386
    :cond_11
    :goto_8
    and-int/lit8 v11, v10, 0x3

    .line 387
    .line 388
    const/4 v13, 0x3

    .line 389
    if-ne v11, v13, :cond_12

    .line 390
    .line 391
    iget v11, v12, Landroid/graphics/Rect;->left:I

    .line 392
    .line 393
    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 394
    .line 395
    sub-int/2addr v11, v13

    .line 396
    iget v13, v7, Landroidx/coordinatorlayout/widget/f;->i:I

    .line 397
    .line 398
    sub-int/2addr v11, v13

    .line 399
    iget v13, v4, Landroid/graphics/Rect;->left:I

    .line 400
    .line 401
    if-ge v11, v13, :cond_12

    .line 402
    .line 403
    sub-int/2addr v13, v11

    .line 404
    invoke-static {v13, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h(ILandroid/view/View;)V

    .line 405
    .line 406
    .line 407
    const/4 v11, 0x1

    .line 408
    goto :goto_9

    .line 409
    :cond_12
    const/4 v11, 0x0

    .line 410
    :goto_9
    and-int/lit8 v10, v10, 0x5

    .line 411
    .line 412
    const/4 v13, 0x5

    .line 413
    if-ne v10, v13, :cond_13

    .line 414
    .line 415
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 416
    .line 417
    .line 418
    move-result v10

    .line 419
    iget v13, v12, Landroid/graphics/Rect;->right:I

    .line 420
    .line 421
    sub-int/2addr v10, v13

    .line 422
    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 423
    .line 424
    sub-int/2addr v10, v13

    .line 425
    iget v7, v7, Landroidx/coordinatorlayout/widget/f;->i:I

    .line 426
    .line 427
    add-int/2addr v10, v7

    .line 428
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 429
    .line 430
    if-ge v10, v7, :cond_13

    .line 431
    .line 432
    sub-int/2addr v10, v7

    .line 433
    invoke-static {v10, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h(ILandroid/view/View;)V

    .line 434
    .line 435
    .line 436
    goto :goto_6

    .line 437
    :cond_13
    if-nez v11, :cond_d

    .line 438
    .line 439
    const/4 v7, 0x0

    .line 440
    invoke-static {v7, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h(ILandroid/view/View;)V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_6

    .line 444
    .line 445
    :cond_14
    :goto_a
    move/from16 v17, v3

    .line 446
    .line 447
    :goto_b
    const/4 v3, 0x2

    .line 448
    if-eq v1, v3, :cond_16

    .line 449
    .line 450
    invoke-virtual {v0, v9, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v7

    .line 457
    if-eqz v7, :cond_15

    .line 458
    .line 459
    move/from16 v10, v17

    .line 460
    .line 461
    goto/16 :goto_1

    .line 462
    .line 463
    :cond_15
    invoke-virtual {v0, v9, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 464
    .line 465
    .line 466
    :cond_16
    add-int/lit8 v7, v8, 0x1

    .line 467
    .line 468
    move/from16 v10, v17

    .line 469
    .line 470
    :goto_c
    if-ge v7, v10, :cond_0

    .line 471
    .line 472
    iget-object v11, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 473
    .line 474
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v11

    .line 478
    check-cast v11, Landroid/view/View;

    .line 479
    .line 480
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 481
    .line 482
    .line 483
    move-result-object v12

    .line 484
    check-cast v12, Landroidx/coordinatorlayout/widget/f;

    .line 485
    .line 486
    iget-object v13, v12, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 487
    .line 488
    if-eqz v13, :cond_19

    .line 489
    .line 490
    invoke-virtual {v13, v0, v11, v9}, Landroidx/coordinatorlayout/widget/c;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 491
    .line 492
    .line 493
    move-result v14

    .line 494
    if-eqz v14, :cond_19

    .line 495
    .line 496
    if-nez v1, :cond_17

    .line 497
    .line 498
    iget-boolean v14, v12, Landroidx/coordinatorlayout/widget/f;->p:Z

    .line 499
    .line 500
    if-eqz v14, :cond_17

    .line 501
    .line 502
    const/4 v14, 0x0

    .line 503
    iput-boolean v14, v12, Landroidx/coordinatorlayout/widget/f;->p:Z

    .line 504
    .line 505
    const/4 v13, 0x1

    .line 506
    goto :goto_f

    .line 507
    :cond_17
    const/4 v14, 0x0

    .line 508
    if-eq v1, v3, :cond_18

    .line 509
    .line 510
    invoke-virtual {v13, v0, v11, v9}, Landroidx/coordinatorlayout/widget/c;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 511
    .line 512
    .line 513
    move-result v11

    .line 514
    :goto_d
    const/4 v13, 0x1

    .line 515
    goto :goto_e

    .line 516
    :cond_18
    invoke-virtual {v13, v0, v11, v9}, Landroidx/coordinatorlayout/widget/c;->onDependentViewRemoved(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 517
    .line 518
    .line 519
    const/4 v11, 0x1

    .line 520
    goto :goto_d

    .line 521
    :goto_e
    if-ne v1, v13, :cond_1a

    .line 522
    .line 523
    iput-boolean v11, v12, Landroidx/coordinatorlayout/widget/f;->p:Z

    .line 524
    .line 525
    goto :goto_f

    .line 526
    :cond_19
    const/4 v13, 0x1

    .line 527
    const/4 v14, 0x0

    .line 528
    :cond_1a
    :goto_f
    add-int/lit8 v7, v7, 0x1

    .line 529
    .line 530
    goto :goto_c

    .line 531
    :goto_10
    add-int/lit8 v8, v8, 0x1

    .line 532
    .line 533
    move v3, v10

    .line 534
    goto/16 :goto_0

    .line 535
    .line 536
    :cond_1b
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 537
    .line 538
    .line 539
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Lg0/d;

    .line 540
    .line 541
    invoke-interface {v1, v4}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 545
    .line 546
    .line 547
    invoke-interface {v1, v5}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 551
    .line 552
    .line 553
    invoke-interface {v1, v6}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g(Z)V

    iget-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/g;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/g;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    :cond_1
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/q2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/view/q2;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-lez v0, :cond_1

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g(Z)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e(Landroid/view/MotionEvent;I)Z

    move-result p1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g(Z)V

    :cond_2
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    sget-object p1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 p3, 0x0

    .line 14
    :goto_0
    if-ge p3, p2, :cond_3

    .line 15
    .line 16
    iget-object p4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    check-cast p4, Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result p5

    .line 28
    const/16 v0, 0x8

    .line 29
    .line 30
    if-ne p5, v0, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object p5

    .line 37
    check-cast p5, Landroidx/coordinatorlayout/widget/f;

    .line 38
    .line 39
    iget-object p5, p5, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 40
    .line 41
    if-eqz p5, :cond_1

    .line 42
    .line 43
    invoke-virtual {p5, p0, p4, p1}, Landroidx/coordinatorlayout/widget/c;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    .line 44
    .line 45
    .line 46
    move-result p5

    .line 47
    if-nez p5, :cond_2

    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0, p4, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/f;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/f;->k:Landroid/view/View;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget v2, v0, Landroidx/coordinatorlayout/widget/f;->f:I

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string p2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :try_start_0
    invoke-virtual {p0, v1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1, p2, v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 39
    .line 40
    .line 41
    iget p2, v2, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 44
    .line 45
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 46
    .line 47
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 48
    .line 49
    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 53
    .line 54
    .line 55
    sget-object p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Lg0/d;

    .line 56
    .line 57
    invoke-interface {p1, v0}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v2}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :catchall_0
    move-exception p1

    .line 69
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 70
    .line 71
    .line 72
    sget-object p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Lg0/d;

    .line 73
    .line 74
    invoke-interface {p2, v0}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 78
    .line 79
    .line 80
    invoke-interface {p2, v2}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_2
    iget v0, v0, Landroidx/coordinatorlayout/widget/f;->e:I

    .line 85
    .line 86
    if-ltz v0, :cond_9

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroidx/coordinatorlayout/widget/f;

    .line 93
    .line 94
    iget v2, v1, Landroidx/coordinatorlayout/widget/f;->c:I

    .line 95
    .line 96
    if-nez v2, :cond_3

    .line 97
    .line 98
    const v2, 0x800035

    .line 99
    .line 100
    .line 101
    :cond_3
    invoke-static {v2, p2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    and-int/lit8 v3, v2, 0x7

    .line 106
    .line 107
    and-int/lit8 v2, v2, 0x70

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    const/4 v8, 0x1

    .line 126
    if-ne p2, v8, :cond_4

    .line 127
    .line 128
    sub-int v0, v4, v0

    .line 129
    .line 130
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(I)I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    sub-int/2addr p2, v6

    .line 135
    if-eq v3, v8, :cond_6

    .line 136
    .line 137
    const/4 v0, 0x5

    .line 138
    if-eq v3, v0, :cond_5

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    add-int/2addr p2, v6

    .line 142
    goto :goto_1

    .line 143
    :cond_6
    div-int/lit8 v0, v6, 0x2

    .line 144
    .line 145
    add-int/2addr p2, v0

    .line 146
    :goto_1
    const/16 v0, 0x10

    .line 147
    .line 148
    if-eq v2, v0, :cond_8

    .line 149
    .line 150
    const/16 v0, 0x50

    .line 151
    .line 152
    if-eq v2, v0, :cond_7

    .line 153
    .line 154
    const/4 v0, 0x0

    .line 155
    goto :goto_2

    .line 156
    :cond_7
    move v0, v7

    .line 157
    goto :goto_2

    .line 158
    :cond_8
    div-int/lit8 v0, v7, 0x2

    .line 159
    .line 160
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 165
    .line 166
    add-int/2addr v2, v3

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    sub-int/2addr v4, v3

    .line 172
    sub-int/2addr v4, v6

    .line 173
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 174
    .line 175
    sub-int/2addr v4, v3

    .line 176
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 189
    .line 190
    add-int/2addr v2, v3

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    sub-int/2addr v5, v3

    .line 196
    sub-int/2addr v5, v7

    .line 197
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 198
    .line 199
    sub-int/2addr v5, v1

    .line 200
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    add-int/2addr v6, p2

    .line 209
    add-int/2addr v7, v0

    .line 210
    invoke-virtual {p1, p2, v0, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_3

    .line 214
    .line 215
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Landroidx/coordinatorlayout/widget/f;

    .line 220
    .line 221
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 230
    .line 231
    add-int/2addr v1, v2

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 237
    .line 238
    add-int/2addr v2, v3

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    sub-int/2addr v3, v4

    .line 248
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 249
    .line 250
    sub-int/2addr v3, v4

    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    sub-int/2addr v4, v5

    .line 260
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 261
    .line 262
    sub-int/2addr v4, v5

    .line 263
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 264
    .line 265
    .line 266
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/q2;

    .line 267
    .line 268
    if-eqz v1, :cond_a

    .line 269
    .line 270
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 271
    .line 272
    invoke-static {p0}, Landroidx/core/view/k0;->b(Landroid/view/View;)Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-eqz v1, :cond_a

    .line 277
    .line 278
    invoke-static {p1}, Landroidx/core/view/k0;->b(Landroid/view/View;)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-nez v1, :cond_a

    .line 283
    .line 284
    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 285
    .line 286
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/q2;

    .line 287
    .line 288
    invoke-virtual {v2}, Landroidx/core/view/q2;->b()I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    add-int/2addr v2, v1

    .line 293
    iput v2, v7, Landroid/graphics/Rect;->left:I

    .line 294
    .line 295
    iget v1, v7, Landroid/graphics/Rect;->top:I

    .line 296
    .line 297
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/q2;

    .line 298
    .line 299
    invoke-virtual {v2}, Landroidx/core/view/q2;->d()I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    add-int/2addr v2, v1

    .line 304
    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 305
    .line 306
    iget v1, v7, Landroid/graphics/Rect;->right:I

    .line 307
    .line 308
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/q2;

    .line 309
    .line 310
    invoke-virtual {v2}, Landroidx/core/view/q2;->c()I

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    sub-int/2addr v1, v2

    .line 315
    iput v1, v7, Landroid/graphics/Rect;->right:I

    .line 316
    .line 317
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 318
    .line 319
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/q2;

    .line 320
    .line 321
    invoke-virtual {v2}, Landroidx/core/view/q2;->a()I

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    sub-int/2addr v1, v2

    .line 326
    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 327
    .line 328
    :cond_a
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    iget v0, v0, Landroidx/coordinatorlayout/widget/f;->c:I

    .line 333
    .line 334
    and-int/lit8 v1, v0, 0x7

    .line 335
    .line 336
    if-nez v1, :cond_b

    .line 337
    .line 338
    const v1, 0x800003

    .line 339
    .line 340
    .line 341
    or-int/2addr v0, v1

    .line 342
    :cond_b
    and-int/lit8 v1, v0, 0x70

    .line 343
    .line 344
    if-nez v1, :cond_c

    .line 345
    .line 346
    or-int/lit8 v0, v0, 0x30

    .line 347
    .line 348
    :cond_c
    move v1, v0

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    move-object v4, v7

    .line 358
    move-object v5, v8

    .line 359
    move v6, p2

    .line 360
    invoke-static/range {v1 .. v6}, Landroidx/core/view/m;->b(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 361
    .line 362
    .line 363
    iget p2, v8, Landroid/graphics/Rect;->left:I

    .line 364
    .line 365
    iget v0, v8, Landroid/graphics/Rect;->top:I

    .line 366
    .line 367
    iget v1, v8, Landroid/graphics/Rect;->right:I

    .line 368
    .line 369
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 370
    .line 371
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 375
    .line 376
    .line 377
    sget-object p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Lg0/d;

    .line 378
    .line 379
    invoke-interface {p1, v7}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 383
    .line 384
    .line 385
    invoke-interface {p1, v8}, Lg0/d;->a(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    :goto_3
    return-void
.end method

.method public onMeasure(II)V
    .locals 30

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ensurePreDrawListener()V

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 10
    .line 11
    .line 12
    move-result v8

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 18
    .line 19
    .line 20
    move-result v9

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sget-object v2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 26
    .line 27
    invoke-static/range {p0 .. p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 28
    .line 29
    .line 30
    move-result v10

    .line 31
    const/4 v2, 0x1

    .line 32
    if-ne v10, v2, :cond_0

    .line 33
    .line 34
    move v12, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v12, 0x0

    .line 37
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 38
    .line 39
    .line 40
    move-result v13

    .line 41
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 42
    .line 43
    .line 44
    move-result v14

    .line 45
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 46
    .line 47
    .line 48
    move-result v15

    .line 49
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 50
    .line 51
    .line 52
    move-result v16

    .line 53
    add-int v17, v8, v9

    .line 54
    .line 55
    add-int v18, v0, v1

    .line 56
    .line 57
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iget-object v3, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/q2;

    .line 66
    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    invoke-static/range {p0 .. p0}, Landroidx/core/view/k0;->b(Landroid/view/View;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    move/from16 v19, v2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/16 v19, 0x0

    .line 79
    .line 80
    :goto_1
    iget-object v2, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    move v5, v0

    .line 87
    move v4, v1

    .line 88
    const/4 v2, 0x0

    .line 89
    const/4 v3, 0x0

    .line 90
    :goto_2
    if-ge v3, v6, :cond_e

    .line 91
    .line 92
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    move-object/from16 v20, v0

    .line 99
    .line 100
    check-cast v20, Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const/16 v1, 0x8

    .line 107
    .line 108
    if-ne v0, v1, :cond_2

    .line 109
    .line 110
    move/from16 v22, v3

    .line 111
    .line 112
    move/from16 v29, v6

    .line 113
    .line 114
    move/from16 v28, v8

    .line 115
    .line 116
    goto/16 :goto_8

    .line 117
    .line 118
    :cond_2
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    move-object v1, v0

    .line 123
    check-cast v1, Landroidx/coordinatorlayout/widget/f;

    .line 124
    .line 125
    iget v0, v1, Landroidx/coordinatorlayout/widget/f;->e:I

    .line 126
    .line 127
    if-ltz v0, :cond_a

    .line 128
    .line 129
    if-eqz v13, :cond_a

    .line 130
    .line 131
    invoke-virtual {v7, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(I)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    iget v11, v1, Landroidx/coordinatorlayout/widget/f;->c:I

    .line 136
    .line 137
    if-nez v11, :cond_3

    .line 138
    .line 139
    const v11, 0x800035

    .line 140
    .line 141
    .line 142
    :cond_3
    invoke-static {v11, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    and-int/lit8 v11, v11, 0x7

    .line 147
    .line 148
    move/from16 v22, v2

    .line 149
    .line 150
    const/4 v2, 0x3

    .line 151
    if-ne v11, v2, :cond_4

    .line 152
    .line 153
    if-eqz v12, :cond_5

    .line 154
    .line 155
    :cond_4
    const/4 v2, 0x5

    .line 156
    if-ne v11, v2, :cond_6

    .line 157
    .line 158
    if-eqz v12, :cond_6

    .line 159
    .line 160
    :cond_5
    sub-int v2, v14, v9

    .line 161
    .line 162
    sub-int/2addr v2, v0

    .line 163
    const/4 v0, 0x0

    .line 164
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    move v11, v0

    .line 169
    move/from16 v21, v2

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_6
    if-ne v11, v2, :cond_7

    .line 173
    .line 174
    if-eqz v12, :cond_8

    .line 175
    .line 176
    :cond_7
    const/4 v2, 0x3

    .line 177
    if-ne v11, v2, :cond_9

    .line 178
    .line 179
    if-eqz v12, :cond_9

    .line 180
    .line 181
    :cond_8
    sub-int/2addr v0, v8

    .line 182
    const/4 v11, 0x0

    .line 183
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    move/from16 v21, v0

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_9
    :goto_3
    const/4 v11, 0x0

    .line 191
    goto :goto_4

    .line 192
    :cond_a
    move/from16 v22, v2

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :goto_4
    move/from16 v21, v11

    .line 196
    .line 197
    :goto_5
    if-eqz v19, :cond_b

    .line 198
    .line 199
    invoke-static/range {v20 .. v20}, Landroidx/core/view/k0;->b(Landroid/view/View;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_b

    .line 204
    .line 205
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/q2;

    .line 206
    .line 207
    invoke-virtual {v0}, Landroidx/core/view/q2;->b()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    iget-object v2, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/q2;

    .line 212
    .line 213
    invoke-virtual {v2}, Landroidx/core/view/q2;->c()I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    add-int/2addr v2, v0

    .line 218
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/q2;

    .line 219
    .line 220
    invoke-virtual {v0}, Landroidx/core/view/q2;->d()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    iget-object v11, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/q2;

    .line 225
    .line 226
    invoke-virtual {v11}, Landroidx/core/view/q2;->a()I

    .line 227
    .line 228
    .line 229
    move-result v11

    .line 230
    add-int/2addr v11, v0

    .line 231
    sub-int v0, v14, v2

    .line 232
    .line 233
    invoke-static {v0, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    sub-int v2, v16, v11

    .line 238
    .line 239
    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    move v11, v0

    .line 244
    move/from16 v23, v2

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_b
    move/from16 v11, p1

    .line 248
    .line 249
    move/from16 v23, p2

    .line 250
    .line 251
    :goto_6
    iget-object v0, v1, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 252
    .line 253
    if-eqz v0, :cond_c

    .line 254
    .line 255
    const/16 v24, 0x0

    .line 256
    .line 257
    move-object v2, v1

    .line 258
    move-object/from16 v1, p0

    .line 259
    .line 260
    move-object/from16 v26, v2

    .line 261
    .line 262
    move/from16 v25, v22

    .line 263
    .line 264
    move-object/from16 v2, v20

    .line 265
    .line 266
    move/from16 v22, v3

    .line 267
    .line 268
    move v3, v11

    .line 269
    move/from16 v27, v4

    .line 270
    .line 271
    move/from16 v4, v21

    .line 272
    .line 273
    move/from16 v28, v8

    .line 274
    .line 275
    move v8, v5

    .line 276
    move/from16 v5, v23

    .line 277
    .line 278
    move/from16 v29, v6

    .line 279
    .line 280
    move/from16 v6, v24

    .line 281
    .line 282
    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/c;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-nez v0, :cond_d

    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_c
    move-object/from16 v26, v1

    .line 290
    .line 291
    move/from16 v27, v4

    .line 292
    .line 293
    move/from16 v29, v6

    .line 294
    .line 295
    move/from16 v28, v8

    .line 296
    .line 297
    move/from16 v25, v22

    .line 298
    .line 299
    move/from16 v22, v3

    .line 300
    .line 301
    move v8, v5

    .line 302
    :goto_7
    const/4 v5, 0x0

    .line 303
    move-object/from16 v0, p0

    .line 304
    .line 305
    move-object/from16 v1, v20

    .line 306
    .line 307
    move v2, v11

    .line 308
    move/from16 v3, v21

    .line 309
    .line 310
    move/from16 v4, v23

    .line 311
    .line 312
    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 313
    .line 314
    .line 315
    :cond_d
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    add-int v0, v0, v17

    .line 320
    .line 321
    move-object/from16 v1, v26

    .line 322
    .line 323
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 324
    .line 325
    add-int/2addr v0, v2

    .line 326
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 327
    .line 328
    add-int/2addr v0, v2

    .line 329
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    add-int v2, v2, v18

    .line 338
    .line 339
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 340
    .line 341
    add-int/2addr v2, v3

    .line 342
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 343
    .line 344
    add-int/2addr v2, v1

    .line 345
    move/from16 v1, v27

    .line 346
    .line 347
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredState()I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    move/from16 v11, v25

    .line 356
    .line 357
    invoke-static {v11, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    move v5, v0

    .line 362
    move v4, v1

    .line 363
    :goto_8
    add-int/lit8 v3, v22, 0x1

    .line 364
    .line 365
    move/from16 v8, v28

    .line 366
    .line 367
    move/from16 v6, v29

    .line 368
    .line 369
    goto/16 :goto_2

    .line 370
    .line 371
    :cond_e
    move v11, v2

    .line 372
    move v1, v4

    .line 373
    move v8, v5

    .line 374
    const/high16 v0, -0x1000000

    .line 375
    .line 376
    and-int/2addr v0, v11

    .line 377
    move/from16 v2, p1

    .line 378
    .line 379
    invoke-static {v8, v2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    shl-int/lit8 v2, v11, 0x10

    .line 384
    .line 385
    move/from16 v3, p2

    .line 386
    .line 387
    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    invoke-virtual {v7, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 392
    .line 393
    .line 394
    return-void
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/16 v5, 0x8

    .line 19
    .line 20
    if-ne v4, v5, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Landroidx/coordinatorlayout/widget/f;

    .line 28
    .line 29
    invoke-virtual {v4, v1}, Landroidx/coordinatorlayout/widget/f;->a(I)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 37
    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    move-object v5, p0

    .line 41
    move-object v7, p1

    .line 42
    move v8, p2

    .line 43
    move v9, p3

    .line 44
    move v10, p4

    .line 45
    invoke-virtual/range {v4 .. v10}, Landroidx/coordinatorlayout/widget/c;->onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    or-int/2addr v3, v4

    .line 50
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    if-eqz v3, :cond_4

    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 57
    .line 58
    .line 59
    :cond_4
    return v3
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/16 v5, 0x8

    .line 19
    .line 20
    if-ne v4, v5, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Landroidx/coordinatorlayout/widget/f;

    .line 28
    .line 29
    invoke-virtual {v4, v1}, Landroidx/coordinatorlayout/widget/f;->a(I)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 37
    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    move-object v5, p0

    .line 41
    move-object v7, p1

    .line 42
    move v8, p2

    .line 43
    move v9, p3

    .line 44
    invoke-virtual/range {v4 .. v9}, Landroidx/coordinatorlayout/widget/c;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    or-int/2addr v3, v4

    .line 49
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return v3
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 16

    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    move v0, v10

    move v11, v0

    move v12, v11

    move v13, v12

    :goto_0
    const/4 v14, 0x1

    if-ge v11, v9, :cond_5

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    move/from16 v15, p5

    goto :goto_5

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/f;

    move/from16 v15, p5

    invoke-virtual {v1, v15}, Landroidx/coordinatorlayout/widget/f;->a(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_5

    .line 2
    :cond_1
    iget-object v1, v1, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    if-eqz v1, :cond_4

    iget-object v6, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    .line 3
    aput v10, v6, v10

    aput v10, v6, v14

    move-object v0, v1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/c;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    iget-object v0, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    if-lez p2, :cond_2

    aget v0, v0, v10

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    move v12, v0

    goto :goto_2

    :cond_2
    aget v0, v0, v10

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :goto_2
    iget-object v0, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    if-lez p3, :cond_3

    aget v0, v0, v14

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_3
    move v13, v0

    goto :goto_4

    :cond_3
    aget v0, v0, v14

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    :goto_4
    move v0, v14

    :cond_4
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    aput v12, p4, v10

    aput v13, p4, v14

    if-eqz v0, :cond_6

    invoke-virtual {v8, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    :cond_6
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 8

    .line 2
    const/4 v6, 0x0

    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingV2ConsumedCompat:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 17

    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    move v0, v12

    move v13, v0

    move v14, v13

    move v15, v14

    :goto_0
    const/4 v9, 0x1

    if-ge v13, v11, :cond_5

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/f;

    move/from16 v8, p6

    invoke-virtual {v1, v8}, Landroidx/coordinatorlayout/widget/f;->a(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_5

    .line 3
    :cond_1
    iget-object v1, v1, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    if-eqz v1, :cond_4

    iget-object v7, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    .line 4
    aput v12, v7, v12

    aput v12, v7, v9

    move-object v0, v1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v16, v7

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Landroidx/coordinatorlayout/widget/c;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V

    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    if-lez p4, :cond_2

    aget v0, v0, v12

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    move v14, v0

    goto :goto_2

    :cond_2
    aget v0, v0, v12

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :goto_2
    if-lez p5, :cond_3

    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_3
    move v15, v0

    goto :goto_4

    :cond_3
    const/4 v1, 0x1

    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    aget v0, v0, v1

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    :goto_4
    move v0, v1

    :cond_4
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_5
    move v1, v9

    aget v2, p7, v12

    add-int/2addr v2, v14

    aput v2, p7, v12

    aget v2, p7, v1

    add-int/2addr v2, v15

    aput v2, p7, v1

    if-eqz v0, :cond_6

    invoke-virtual {v10, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    :cond_6
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 9

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/z;

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    .line 2
    iput p3, v0, Landroidx/core/view/z;->b:I

    goto :goto_0

    :cond_0
    iput p3, v0, Landroidx/core/view/z;->a:I

    :goto_0
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/f;

    invoke-virtual {v2, p4}, Landroidx/coordinatorlayout/widget/f;->a(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v2, v2, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    if-eqz v2, :cond_2

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    .line 5
    invoke-virtual/range {v2 .. v8}, Landroidx/coordinatorlayout/widget/c;->onNestedScrollAccepted(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .line 1
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Landroidx/coordinatorlayout/widget/h;

    .line 10
    .line 11
    invoke-virtual {p1}, Ln0/b;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Landroidx/coordinatorlayout/widget/h;->a:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-ge v1, v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/f;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 40
    .line 41
    const/4 v5, -0x1

    .line 42
    if-eq v3, v5, :cond_1

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroid/os/Parcelable;

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    invoke-virtual {v4, p0, v2, v3}, Landroidx/coordinatorlayout/widget/c;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .line 1
    new-instance v0, Landroidx/coordinatorlayout/widget/h;

    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ln0/b;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    check-cast v6, Landroidx/coordinatorlayout/widget/f;

    .line 35
    .line 36
    iget-object v6, v6, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 37
    .line 38
    const/4 v7, -0x1

    .line 39
    if-eq v5, v7, :cond_0

    .line 40
    .line 41
    if-eqz v6, :cond_0

    .line 42
    .line 43
    invoke-virtual {v6, p0, v4}, Landroidx/coordinatorlayout/widget/c;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iput-object v1, v0, Landroidx/coordinatorlayout/widget/h;->a:Landroid/util/SparseArray;

    .line 56
    .line 57
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 15

    move/from16 v7, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_0
    if-ge v10, v8, :cond_6

    move-object v12, p0

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroidx/coordinatorlayout/widget/f;

    .line 2
    iget-object v0, v13, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    const/4 v14, 0x1

    if-eqz v0, :cond_3

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 3
    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/c;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    or-int/2addr v11, v0

    if-eqz v7, :cond_2

    if-eq v7, v14, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iput-boolean v0, v13, Landroidx/coordinatorlayout/widget/f;->o:Z

    goto :goto_1

    :cond_2
    iput-boolean v0, v13, Landroidx/coordinatorlayout/widget/f;->n:Z

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_5

    if-eq v7, v14, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean v9, v13, Landroidx/coordinatorlayout/widget/f;->o:Z

    goto :goto_1

    :cond_5
    iput-boolean v9, v13, Landroidx/coordinatorlayout/widget/f;->n:Z

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_6
    move-object v12, p0

    return v11
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 7

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/z;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 2
    iput v1, v0, Landroidx/core/view/z;->b:I

    goto :goto_0

    :cond_0
    iput v1, v0, Landroidx/core/view/z;->a:I

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_5

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/coordinatorlayout/widget/f;

    invoke-virtual {v5, p2}, Landroidx/coordinatorlayout/widget/f;->a(I)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_3

    .line 4
    :cond_1
    iget-object v6, v5, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    if-eqz v6, :cond_2

    .line 5
    invoke-virtual {v6, p0, v4, p1, p2}, Landroidx/coordinatorlayout/widget/c;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    :cond_2
    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    iput-boolean v1, v5, Landroidx/coordinatorlayout/widget/f;->o:Z

    goto :goto_2

    :cond_4
    iput-boolean v1, v5, Landroidx/coordinatorlayout/widget/f;->n:Z

    .line 7
    :goto_2
    iput-boolean v1, v5, Landroidx/coordinatorlayout/widget/f;->p:Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v1, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e(Landroid/view/MotionEvent;I)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v6, v5

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v3, v5

    .line 25
    :goto_0
    iget-object v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    check-cast v6, Landroidx/coordinatorlayout/widget/f;

    .line 32
    .line 33
    iget-object v6, v6, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 34
    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    iget-object v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v6, v0, v7, v1}, Landroidx/coordinatorlayout/widget/c;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    :goto_1
    iget-object v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    if-nez v7, :cond_2

    .line 47
    .line 48
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    or-int/2addr v6, v1

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    if-eqz v3, :cond_3

    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v11

    .line 60
    const/4 v13, 0x3

    .line 61
    const/4 v14, 0x0

    .line 62
    const/4 v15, 0x0

    .line 63
    const/16 v16, 0x0

    .line 64
    .line 65
    move-wide v9, v11

    .line 66
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-super {v0, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    .line 74
    .line 75
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 76
    .line 77
    .line 78
    :cond_4
    if-eq v2, v4, :cond_5

    .line 79
    .line 80
    const/4 v1, 0x3

    .line 81
    if-ne v2, v1, :cond_6

    .line 82
    .line 83
    :cond_5
    invoke-virtual {v0, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g(Z)V

    .line 84
    .line 85
    .line 86
    :cond_6
    return v6
.end method

.method public recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/coordinatorlayout/widget/f;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/coordinatorlayout/widget/f;->q:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public removePreDrawListener()V
    .locals 2

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/g;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/g;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/f;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/c;->onRequestChildRectangleOnScreen(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j()V

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eq v0, p1, :cond_5

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_1
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 39
    .line 40
    invoke-static {p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {p1, v0}, La0/c;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move v0, v1

    .line 59
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    sget-object p1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 68
    .line 69
    invoke-static {p0}, Landroidx/core/view/k0;->k(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    :cond_5
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lx/g;->a:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lx/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public final setWindowInsets(Landroidx/core/view/q2;)Landroidx/core/view/q2;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/q2;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lg0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/q2;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/core/view/q2;->d()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-lez v2, :cond_0

    .line 20
    .line 21
    move v2, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v0

    .line 24
    :goto_0
    iput-boolean v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v1, v0

    .line 36
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p1, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/core/view/o2;->m()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :goto_2
    if-ge v0, v1, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    sget-object v3, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 59
    .line 60
    invoke-static {v2}, Landroidx/core/view/k0;->b(Landroid/view/View;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Landroidx/coordinatorlayout/widget/f;

    .line 71
    .line 72
    iget-object v3, v3, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    .line 73
    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    invoke-virtual {v3, p0, v2, p1}, Landroidx/coordinatorlayout/widget/c;->onApplyWindowInsets(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v2, p1, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroidx/core/view/o2;->m()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 93
    .line 94
    .line 95
    :cond_5
    return-object p1
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

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
