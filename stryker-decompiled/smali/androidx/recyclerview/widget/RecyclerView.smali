.class public Landroidx/recyclerview/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/v;


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field static final ALLOW_THREAD_GAP_WORK:Z

.field static final DEBUG:Z = false

.field private static final DECELERATION_RATE:F

.field static final DEFAULT_ORIENTATION:I = 0x1

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FLING_DESTRETCH_FACTOR:F = 4.0f

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final FOREVER_NS:J = 0x7fffffffffffffffL

.field public static final HORIZONTAL:I = 0x0

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final INFLEXION:F = 0.35f

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field static final POST_UPDATES_ON_ANIMATION:Z

.field private static final SCROLL_FRICTION:F = 0.015f

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final UNDEFINED_DURATION:I = -0x80000000

.field static final VERBOSE_TRACING:Z = false

.field public static final VERTICAL:I = 0x1

.field static final sDefaultEdgeEffectFactory:Landroidx/recyclerview/widget/m1;

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mAccessibilityDelegate:Landroidx/recyclerview/widget/r1;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAdapter:Landroidx/recyclerview/widget/k0;

.field mAdapterHelper:Landroidx/recyclerview/widget/b;

.field mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mChildDrawingOrderCallback:Landroidx/recyclerview/widget/n0;

.field mChildHelper:Landroidx/recyclerview/widget/e;

.field mClipToPadding:Z

.field mDataSetHasChangedAfterLayout:Z

.field mDispatchItemsChangedEvent:Z

.field private mDispatchScrollCounter:I

.field private mEatenAccessibilityChangeFlags:I

.field private mEdgeEffectFactory:Landroidx/recyclerview/widget/o0;

.field mEnableFastScroller:Z

.field mFirstLayoutComplete:Z

.field mGapWorker:Landroidx/recyclerview/widget/u;

.field mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptRequestLayoutDepth:I

.field private mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/a1;

.field mIsAttached:Z

.field mItemAnimator:Landroidx/recyclerview/widget/r0;

.field private mItemAnimatorListener:Landroidx/recyclerview/widget/p0;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/s0;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastAutoMeasureNonExactMeasuredHeight:I

.field private mLastAutoMeasureNonExactMeasuredWidth:I

.field private mLastAutoMeasureSkippedDueToExact:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Landroidx/recyclerview/widget/w0;

.field private mLayoutOrScrollCounter:I

.field mLayoutSuppressed:Z

.field mLayoutWasDefered:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Landroidx/recyclerview/widget/g1;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/y0;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Landroidx/recyclerview/widget/z0;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/a1;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/p1;",
            ">;"
        }
    .end annotation
.end field

.field mPendingSavedState:Landroidx/recyclerview/widget/h1;

.field private final mPhysicalCoef:F

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Landroidx/recyclerview/widget/s;

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Landroidx/recyclerview/widget/e1;

.field mRecyclerListener:Landroidx/recyclerview/widget/f1;

.field final mRecyclerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/f1;",
            ">;"
        }
    .end annotation
.end field

.field final mReusableIntPair:[I

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private mScaledHorizontalScrollFactor:F

.field private mScaledVerticalScrollFactor:F

.field private mScrollListener:Landroidx/recyclerview/widget/b1;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/b1;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroidx/core/view/w;

.field final mState:Landroidx/recyclerview/widget/l1;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Landroidx/recyclerview/widget/o1;

.field private final mViewInfoProcessCallback:Landroidx/recyclerview/widget/f2;

.field final mViewInfoStore:Landroidx/recyclerview/widget/g2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const v0, 0x1010436

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 9
    .line 10
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    div-double/2addr v0, v2

    .line 29
    double-to-float v0, v0

    .line 30
    sput v0, Landroidx/recyclerview/widget/RecyclerView;->DECELERATION_RATE:F

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    sput-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 37
    .line 38
    sput-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 39
    .line 40
    sput-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 41
    .line 42
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 43
    .line 44
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    new-array v2, v2, [Ljava/lang/Class;

    .line 48
    .line 49
    const-class v3, Landroid/content/Context;

    .line 50
    .line 51
    aput-object v3, v2, v0

    .line 52
    .line 53
    const-class v0, Landroid/util/AttributeSet;

    .line 54
    .line 55
    aput-object v0, v2, v1

    .line 56
    .line 57
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 58
    .line 59
    const/4 v3, 0x2

    .line 60
    aput-object v0, v2, v3

    .line 61
    .line 62
    const/4 v3, 0x3

    .line 63
    aput-object v0, v2, v3

    .line 64
    .line 65
    sput-object v2, Landroidx/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 66
    .line 67
    new-instance v0, Landroidx/customview/widget/f;

    .line 68
    .line 69
    invoke-direct {v0, v1}, Landroidx/customview/widget/f;-><init>(I)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 73
    .line 74
    new-instance v0, Landroidx/recyclerview/widget/m1;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->sDefaultEdgeEffectFactory:Landroidx/recyclerview/widget/m1;

    .line 80
    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const v0, 0x7f0403fe

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroidx/recyclerview/widget/g1;

    invoke-direct {v0, v7}, Landroidx/recyclerview/widget/g1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/g1;

    new-instance v0, Landroidx/recyclerview/widget/e1;

    invoke-direct {v0, v7}, Landroidx/recyclerview/widget/e1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    new-instance v0, Landroidx/recyclerview/widget/g2;

    invoke-direct {v0}, Landroidx/recyclerview/widget/g2;-><init>()V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    new-instance v0, Landroidx/recyclerview/widget/h0;

    const/4 v11, 0x0

    invoke-direct {v0, v7, v11}, Landroidx/recyclerview/widget/h0;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sDefaultEdgeEffectFactory:Landroidx/recyclerview/widget/m1;

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/o0;

    new-instance v0, Landroidx/recyclerview/widget/l;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v12, 0x0

    iput-object v12, v0, Landroidx/recyclerview/widget/r0;->a:Landroidx/recyclerview/widget/p0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/r0;->b:Ljava/util/ArrayList;

    const-wide/16 v1, 0x78

    iput-wide v1, v0, Landroidx/recyclerview/widget/r0;->c:J

    iput-wide v1, v0, Landroidx/recyclerview/widget/r0;->d:J

    const-wide/16 v1, 0xfa

    iput-wide v1, v0, Landroidx/recyclerview/widget/r0;->e:J

    iput-wide v1, v0, Landroidx/recyclerview/widget/r0;->f:J

    const/4 v13, 0x1

    iput-boolean v13, v0, Landroidx/recyclerview/widget/l;->g:Z

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/l;->h:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/l;->i:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/l;->j:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/l;->k:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/l;->l:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/l;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/l;->n:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/l;->o:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/l;->p:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/l;->q:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/l;->r:Ljava/util/ArrayList;

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v0, -0x1

    iput v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    const/4 v1, 0x1

    iput v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    iput v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    iput-boolean v13, v7, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 4
    new-instance v1, Landroidx/recyclerview/widget/o1;

    invoke-direct {v1, v7}, Landroidx/recyclerview/widget/o1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/o1;

    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/recyclerview/widget/s;

    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v12

    :goto_0
    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/s;

    .line 6
    new-instance v1, Landroidx/recyclerview/widget/l1;

    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v0, v1, Landroidx/recyclerview/widget/l1;->a:I

    iput v11, v1, Landroidx/recyclerview/widget/l1;->b:I

    iput v11, v1, Landroidx/recyclerview/widget/l1;->c:I

    iput v13, v1, Landroidx/recyclerview/widget/l1;->d:I

    iput v11, v1, Landroidx/recyclerview/widget/l1;->e:I

    iput-boolean v11, v1, Landroidx/recyclerview/widget/l1;->f:Z

    iput-boolean v11, v1, Landroidx/recyclerview/widget/l1;->g:Z

    iput-boolean v11, v1, Landroidx/recyclerview/widget/l1;->h:Z

    iput-boolean v11, v1, Landroidx/recyclerview/widget/l1;->i:Z

    iput-boolean v11, v1, Landroidx/recyclerview/widget/l1;->j:Z

    iput-boolean v11, v1, Landroidx/recyclerview/widget/l1;->k:Z

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 8
    new-instance v1, Landroidx/recyclerview/widget/i0;

    invoke-direct {v1, v7}, Landroidx/recyclerview/widget/i0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/p0;

    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    const/4 v14, 0x2

    new-array v1, v14, [I

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    new-array v1, v14, [I

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    new-array v1, v14, [I

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    new-array v1, v14, [I

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    new-instance v1, Landroidx/recyclerview/widget/h0;

    invoke-direct {v1, v7, v13}, Landroidx/recyclerview/widget/h0;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    new-instance v1, Landroidx/recyclerview/widget/i0;

    invoke-direct {v1, v7}, Landroidx/recyclerview/widget/i0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Landroidx/recyclerview/widget/f2;

    invoke-virtual {v7, v13}, Landroid/view/View;->setScrollContainer(Z)V

    invoke-virtual {v7, v13}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    sget-object v4, Landroidx/core/view/f1;->a:Ljava/lang/reflect/Method;

    .line 9
    invoke-static {v1}, Landroidx/core/view/d1;->a(Landroid/view/ViewConfiguration;)F

    move-result v4

    goto :goto_1

    :cond_1
    invoke-static {v1, v8}, Landroidx/core/view/f1;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v4

    :goto_1
    iput v4, v7, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    if-lt v2, v3, :cond_2

    .line 10
    invoke-static {v1}, Landroidx/core/view/d1;->b(Landroid/view/ViewConfiguration;)F

    move-result v4

    goto :goto_2

    :cond_2
    invoke-static {v1, v8}, Landroidx/core/view/f1;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v4

    :goto_2
    iput v4, v7, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 11
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, v7, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v1, v4

    const v4, 0x43c10b3d

    mul-float/2addr v1, v4

    const v4, 0x3f570a3d    # 0.84f

    mul-float/2addr v1, v4

    iput v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mPhysicalCoef:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    if-ne v1, v14, :cond_3

    move v1, v13

    goto :goto_3

    :cond_3
    move v1, v11

    :goto_3
    invoke-virtual {v7, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/p0;

    .line 12
    iput-object v4, v1, Landroidx/recyclerview/widget/r0;->a:Landroidx/recyclerview/widget/p0;

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->initAdapterManager()V

    .line 14
    new-instance v1, Landroidx/recyclerview/widget/e;

    new-instance v4, Landroidx/recyclerview/widget/i0;

    invoke-direct {v4, v7}, Landroidx/recyclerview/widget/i0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v1, v4}, Landroidx/recyclerview/widget/e;-><init>(Landroidx/recyclerview/widget/i0;)V

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 15
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    const/16 v15, 0x8

    if-lt v2, v3, :cond_4

    .line 16
    invoke-static/range {p0 .. p0}, Landroidx/core/view/t0;->b(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    if-lt v2, v3, :cond_5

    .line 17
    invoke-static {v7, v15}, Landroidx/core/view/t0;->l(Landroid/view/View;I)V

    .line 18
    :cond_5
    invoke-static/range {p0 .. p0}, Landroidx/core/view/k0;->c(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_6

    .line 19
    invoke-static {v7, v13}, Landroidx/core/view/k0;->s(Landroid/view/View;I)V

    .line 20
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v1, Landroidx/recyclerview/widget/r1;

    invoke-direct {v1, v7}, Landroidx/recyclerview/widget/r1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/r1;)V

    sget-object v3, Lx0/a;->a:[I

    invoke-virtual {v8, v9, v3, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v6

    move-object v12, v6

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroidx/core/view/c1;->n(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v14, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ne v2, v0, :cond_7

    const/high16 v0, 0x40000

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_7
    invoke-virtual {v12, v13, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    const/4 v0, 0x3

    invoke-virtual {v12, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mEnableFastScroller:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_8

    const/4 v2, 0x6

    invoke-virtual {v12, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    const/4 v4, 0x7

    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v12, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    const/4 v6, 0x5

    invoke-virtual {v12, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v7, v2, v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    :cond_8
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    const-string v2, ": Could not instantiate the LayoutManager: "

    if-eqz v1, :cond_c

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 22
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_9
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 23
    :goto_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_9

    :catch_2
    move-exception v0

    goto/16 :goto_a

    :catch_3
    move-exception v0

    goto/16 :goto_b

    :catch_4
    move-exception v0

    goto/16 :goto_c

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    :goto_6
    invoke-static {v1, v11, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Landroidx/recyclerview/widget/w0;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v5, Landroidx/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v11

    aput-object v9, v3, v13

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v12, v3

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v3, v0

    :try_start_2
    new-array v0, v11, [Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v12, 0x0

    :goto_7
    :try_start_3
    invoke-virtual {v5, v13}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/w0;

    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    goto/16 :goto_d

    :catch_6
    move-exception v0

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Error creating LayoutManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_8
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Class is not a LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_9
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Cannot access non-public constructor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :goto_b
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :goto_c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Unable to find LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_c
    :goto_d
    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 24
    invoke-virtual {v8, v9, v3, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v0

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroidx/core/view/c1;->n(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    invoke-virtual {v0, v11, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    const v0, 0x7f0a02fb

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v7, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$000(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic access$100(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    return-void
.end method

.method public static synthetic access$200(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public static clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/p1;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/p1;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/view/View;

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    iput-object v1, p0, Landroidx/recyclerview/widget/p1;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method

.method public static e(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I
    .locals 4

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    if-lez p0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    neg-int p2, p0

    int-to-float p2, p2

    mul-float/2addr p2, v2

    int-to-float v1, p3

    div-float/2addr p2, v1

    neg-int p3, p3

    int-to-float p3, p3

    div-float/2addr p3, v2

    invoke-static {p1, p2, v0}, Lg/a;->w(Landroid/widget/EdgeEffect;FF)F

    move-result p2

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-eq p2, p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    :cond_0
    sub-int/2addr p0, p2

    return p0

    :cond_1
    if-gez p0, :cond_3

    if-eqz p2, :cond_3

    invoke-static {p2}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_3

    int-to-float p1, p0

    mul-float/2addr p1, v2

    int-to-float p3, p3

    div-float/2addr p1, p3

    div-float/2addr p3, v2

    invoke-static {p2, p1, v0}, Lg/a;->w(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    mul-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eq p1, p0, :cond_2

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->finish()V

    :cond_2
    sub-int/2addr p0, p1

    :cond_3
    return p0
.end method

.method public static findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 4

    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    return-object p0

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/x0;

    iget-object p0, p0, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    return-object p0
.end method

.method public static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/x0;

    iget-object v1, v0, Landroidx/recyclerview/widget/x0;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getScrollingChildHelper()Landroidx/core/view/w;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/w;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/core/view/w;

    invoke-direct {v0, p0}, Landroidx/core/view/w;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/w;

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/w;

    return-object v0
.end method


# virtual methods
.method public absorbGlows(II)V
    .locals 2

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 15
    .line 16
    neg-int v1, p1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-lez p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 53
    .line 54
    neg-int v1, p2

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    if-lez p2, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 73
    .line 74
    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 78
    .line 79
    if-eqz p2, :cond_5

    .line 80
    .line 81
    :cond_4
    sget-object p1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 82
    .line 83
    invoke-static {p0}, Landroidx/core/view/k0;->k(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/recyclerview/widget/w0;->onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/s0;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/s0;I)V

    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/s0;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-eqz v0, :cond_0

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    :cond_1
    if-gez p2, :cond_2

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/y0;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnItemTouchListener(Landroidx/recyclerview/widget/a1;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollListener(Landroidx/recyclerview/widget/b1;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRecyclerListener(Landroidx/recyclerview/widget/f1;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "\'listener\' arg cannot be null."

    invoke-static {v1, v0}, Lv1/f;->e(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateAppearance(Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/q0;Landroidx/recyclerview/widget/q0;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/p1;->setIsRecyclable(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroidx/recyclerview/widget/l;

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget v3, p2, Landroidx/recyclerview/widget/q0;->a:I

    .line 16
    .line 17
    iget v5, p3, Landroidx/recyclerview/widget/q0;->a:I

    .line 18
    .line 19
    if-ne v3, v5, :cond_0

    .line 20
    .line 21
    iget v0, p2, Landroidx/recyclerview/widget/q0;->b:I

    .line 22
    .line 23
    iget v2, p3, Landroidx/recyclerview/widget/q0;->b:I

    .line 24
    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    :cond_0
    iget v4, p2, Landroidx/recyclerview/widget/q0;->b:I

    .line 28
    .line 29
    iget v6, p3, Landroidx/recyclerview/widget/q0;->b:I

    .line 30
    .line 31
    move-object v2, p1

    .line 32
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/l;->g(Landroidx/recyclerview/widget/p1;IIII)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/l;->l(Landroidx/recyclerview/widget/p1;)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 43
    .line 44
    const/4 p3, 0x0

    .line 45
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 46
    .line 47
    .line 48
    iget-object p2, v1, Landroidx/recyclerview/widget/l;->i:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public animateDisappearance(Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/q0;Landroidx/recyclerview/widget/q0;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/p1;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/p1;->setIsRecyclable(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Landroidx/recyclerview/widget/l;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget v3, p2, Landroidx/recyclerview/widget/q0;->a:I

    .line 17
    .line 18
    iget v4, p2, Landroidx/recyclerview/widget/q0;->b:I

    .line 19
    .line 20
    iget-object p2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 21
    .line 22
    if-nez p3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    move v5, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget v0, p3, Landroidx/recyclerview/widget/q0;->a:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    if-nez p3, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    :goto_2
    move v6, p3

    .line 40
    goto :goto_3

    .line 41
    :cond_1
    iget p3, p3, Landroidx/recyclerview/widget/q0;->b:I

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :goto_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-nez p3, :cond_3

    .line 49
    .line 50
    if-ne v3, v5, :cond_2

    .line 51
    .line 52
    if-eq v4, v6, :cond_3

    .line 53
    .line 54
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    add-int/2addr p3, v5

    .line 59
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr v0, v6

    .line 64
    invoke-virtual {p2, v5, v6, p3, v0}, Landroid/view/View;->layout(IIII)V

    .line 65
    .line 66
    .line 67
    move-object v2, p1

    .line 68
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/l;->g(Landroidx/recyclerview/widget/p1;IIII)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_3
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/l;->l(Landroidx/recyclerview/widget/p1;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, v1, Landroidx/recyclerview/widget/l;->h:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :goto_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 84
    .line 85
    .line 86
    :cond_4
    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    invoke-static {p1}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p0, p1}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 33
    .line 34
    if-lez p1, :cond_2

    .line 35
    .line 36
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v1, ""

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v0}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v0, "RecyclerView"

    .line 53
    .line 54
    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    .line 55
    .line 56
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/p1;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getUnmodifiedPayloads()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v0, Landroidx/recyclerview/widget/l;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-boolean v0, v0, Landroidx/recyclerview/widget/l;->g:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isInvalid()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 34
    :goto_1
    return p1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/x0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    check-cast p1, Landroidx/recyclerview/widget/x0;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/w0;->checkLayoutParams(Landroidx/recyclerview/widget/x0;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clearOldPositions()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/e;->g(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p1;->clearOldPosition()V

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 34
    .line 35
    iget-object v2, v0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    move v4, v1

    .line 42
    :goto_1
    if-ge v4, v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Landroidx/recyclerview/widget/p1;

    .line 49
    .line 50
    invoke-virtual {v5}, Landroidx/recyclerview/widget/p1;->clearOldPosition()V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v2, v0, Landroidx/recyclerview/widget/e1;->a:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    move v4, v1

    .line 63
    :goto_2
    if-ge v4, v3, :cond_3

    .line 64
    .line 65
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Landroidx/recyclerview/widget/p1;

    .line 70
    .line 71
    invoke-virtual {v5}, Landroidx/recyclerview/widget/p1;->clearOldPosition()V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    iget-object v2, v0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 78
    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    :goto_3
    if-ge v1, v2, :cond_4

    .line 86
    .line 87
    iget-object v3, v0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Landroidx/recyclerview/widget/p1;

    .line 94
    .line 95
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p1;->clearOldPosition()V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->computeHorizontalScrollExtent(Landroidx/recyclerview/widget/l1;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->computeHorizontalScrollOffset(Landroidx/recyclerview/widget/l1;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->computeHorizontalScrollRange(Landroidx/recyclerview/widget/l1;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->computeVerticalScrollExtent(Landroidx/recyclerview/widget/l1;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/l1;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->computeVerticalScrollRange(Landroidx/recyclerview/widget/l1;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public considerReleasingGlowsOnScroll(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-lez p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    if-gez p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    or-int/2addr v0, p1

    .line 50
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    if-lez p2, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    or-int/2addr v0, p1

    .line 74
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    if-gez p2, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    or-int/2addr v0, p1

    .line 98
    :cond_3
    if-eqz v0, :cond_4

    .line 99
    .line 100
    sget-object p1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 101
    .line 102
    invoke-static {p0}, Landroidx/core/view/k0;->k(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    return-void
.end method

.method public consumeFlingInHorizontalStretch(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->e(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    move-result p1

    return p1
.end method

.method public consumeFlingInVerticalStretch(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->e(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    move-result p1

    return p1
.end method

.method public consumePendingUpdateOperations()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2
    .line 3
    const-string v1, "RV FullInvalidate"

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->g()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 23
    .line 24
    iget v2, v0, Landroidx/recyclerview/widget/b;->f:I

    .line 25
    .line 26
    and-int/lit8 v3, v2, 0x4

    .line 27
    .line 28
    if-eqz v3, :cond_7

    .line 29
    .line 30
    and-int/lit8 v2, v2, 0xb

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_2
    sget v0, Ld0/l;->a:I

    .line 36
    .line 37
    const-string v0, "RV PartialInvalidate"

    .line 38
    .line 39
    invoke-static {v0}, Ld0/k;->a(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->j()V

    .line 51
    .line 52
    .line 53
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 54
    .line 55
    if-nez v0, :cond_6

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->e()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v1, 0x0

    .line 64
    :goto_0
    if-ge v1, v0, :cond_5

    .line 65
    .line 66
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/e;->d(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    invoke-virtual {v2}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/p1;->isUpdated()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->b()V

    .line 101
    .line 102
    .line 103
    :cond_6
    :goto_2
    const/4 v0, 0x1

    .line 104
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 108
    .line 109
    .line 110
    :goto_3
    invoke-static {}, Ld0/k;->b()V

    .line 111
    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_7
    :goto_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->g()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    sget v0, Ld0/l;->a:I

    .line 121
    .line 122
    invoke-static {v1}, Ld0/k;->a(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_8
    :goto_5
    return-void

    .line 130
    :cond_9
    :goto_6
    sget v0, Ld0/l;->a:I

    .line 131
    .line 132
    invoke-static {v1}, Ld0/k;->a(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Ld0/k;->b()V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/p1;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, p0, :cond_0

    .line 9
    .line 10
    move v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/e1;->m(Landroidx/recyclerview/widget/p1;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isTmpDetached()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v3, -0x1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v0, v3, v1, v2}, Landroidx/recyclerview/widget/e;->b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    if-nez v1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 42
    .line 43
    invoke-virtual {p1, v0, v3, v2}, Landroidx/recyclerview/widget/e;->a(Landroid/view/View;IZ)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 48
    .line 49
    iget-object v1, p1, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/i0;

    .line 50
    .line 51
    iget-object v1, v1, Landroidx/recyclerview/widget/i0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-ltz v1, :cond_3

    .line 58
    .line 59
    iget-object v2, p1, Landroidx/recyclerview/widget/e;->b:Landroidx/recyclerview/widget/d;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/d;->h(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/e;->i(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void

    .line 68
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "view is not a child, cannot hide "

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public defaultOnMeasure(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    invoke-static {p0}, Landroidx/core/view/k0;->e(Landroid/view/View;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/w0;->chooseSize(III)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    invoke-static {p0}, Landroidx/core/view/k0;->d(Landroid/view/View;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {p2, v1, v0}, Landroidx/recyclerview/widget/w0;->chooseSize(III)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public dispatchChildAttached(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/k0;->onViewAttachedToWindow(Landroidx/recyclerview/widget/p1;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    :goto_0
    if-ltz v0, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/recyclerview/widget/y0;

    .line 36
    .line 37
    check-cast v1, Ll1/h;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroidx/recyclerview/widget/x0;

    .line 47
    .line 48
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 49
    .line 50
    const/4 v3, -0x1

    .line 51
    if-ne v2, v3, :cond_1

    .line 52
    .line 53
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 54
    .line 55
    if-ne v1, v3, :cond_1

    .line 56
    .line 57
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v0, "Pages must fill the whole ViewPager2 (use match_parent)"

    .line 63
    .line 64
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_2
    return-void
.end method

.method public dispatchChildDetached(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/k0;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/p1;)V

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/y0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchLayout()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 4
    .line 5
    const-string v2, "RecyclerView"

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, "No adapter attached; skipping layout"

    .line 10
    .line 11
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string v1, "No layout manager attached; skipping layout"

    .line 20
    .line 21
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    iput-boolean v3, v1, Landroidx/recyclerview/widget/l1;->i:Z

    .line 29
    .line 30
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-ne v1, v5, :cond_2

    .line 42
    .line 43
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eq v1, v5, :cond_3

    .line 50
    .line 51
    :cond_2
    move v1, v4

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    move v1, v3

    .line 54
    :goto_0
    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 55
    .line 56
    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    .line 57
    .line 58
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    .line 59
    .line 60
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 61
    .line 62
    iget v5, v5, Landroidx/recyclerview/widget/l1;->d:I

    .line 63
    .line 64
    if-ne v5, v4, :cond_4

    .line 65
    .line 66
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->f()V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/w0;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->g()V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 79
    .line 80
    iget-object v6, v5, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-nez v6, :cond_5

    .line 87
    .line 88
    iget-object v5, v5, Landroidx/recyclerview/widget/b;->b:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-nez v5, :cond_5

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    if-nez v1, :cond_7

    .line 98
    .line 99
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->getWidth()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-ne v1, v5, :cond_7

    .line 110
    .line 111
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->getHeight()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eq v1, v5, :cond_6

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/w0;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_7
    :goto_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 131
    .line 132
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/w0;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->g()V

    .line 136
    .line 137
    .line 138
    :goto_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 139
    .line 140
    const/4 v5, 0x4

    .line 141
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/l1;->a(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 148
    .line 149
    .line 150
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 151
    .line 152
    iput v4, v1, Landroidx/recyclerview/widget/l1;->d:I

    .line 153
    .line 154
    iget-boolean v1, v1, Landroidx/recyclerview/widget/l1;->j:Z

    .line 155
    .line 156
    const/4 v6, 0x0

    .line 157
    if-eqz v1, :cond_21

    .line 158
    .line 159
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 160
    .line 161
    invoke-virtual {v1}, Landroidx/recyclerview/widget/e;->e()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    sub-int/2addr v1, v4

    .line 166
    :goto_3
    if-ltz v1, :cond_16

    .line 167
    .line 168
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 169
    .line 170
    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/e;->d(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-virtual {v7}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-eqz v8, :cond_8

    .line 183
    .line 184
    goto/16 :goto_9

    .line 185
    .line 186
    :cond_8
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/p1;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v8

    .line 190
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 191
    .line 192
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    new-instance v10, Landroidx/recyclerview/widget/q0;

    .line 196
    .line 197
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/q0;->a(Landroidx/recyclerview/widget/p1;)V

    .line 201
    .line 202
    .line 203
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 204
    .line 205
    iget-object v11, v11, Landroidx/recyclerview/widget/g2;->b:Ln/e;

    .line 206
    .line 207
    invoke-virtual {v11, v6, v8, v9}, Ln/e;->d(Ljava/lang/Long;J)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    check-cast v11, Landroidx/recyclerview/widget/p1;

    .line 212
    .line 213
    if-eqz v11, :cond_14

    .line 214
    .line 215
    invoke-virtual {v11}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 216
    .line 217
    .line 218
    move-result v12

    .line 219
    if-nez v12, :cond_14

    .line 220
    .line 221
    iget-object v12, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 222
    .line 223
    iget-object v12, v12, Landroidx/recyclerview/widget/g2;->a:Ln/k;

    .line 224
    .line 225
    invoke-virtual {v12, v11, v6}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v12

    .line 229
    check-cast v12, Landroidx/recyclerview/widget/e2;

    .line 230
    .line 231
    if-eqz v12, :cond_9

    .line 232
    .line 233
    iget v12, v12, Landroidx/recyclerview/widget/e2;->a:I

    .line 234
    .line 235
    and-int/2addr v12, v4

    .line 236
    if-eqz v12, :cond_9

    .line 237
    .line 238
    move v12, v4

    .line 239
    goto :goto_4

    .line 240
    :cond_9
    move v12, v3

    .line 241
    :goto_4
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 242
    .line 243
    iget-object v13, v13, Landroidx/recyclerview/widget/g2;->a:Ln/k;

    .line 244
    .line 245
    invoke-virtual {v13, v7, v6}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v13

    .line 249
    check-cast v13, Landroidx/recyclerview/widget/e2;

    .line 250
    .line 251
    if-eqz v13, :cond_a

    .line 252
    .line 253
    iget v13, v13, Landroidx/recyclerview/widget/e2;->a:I

    .line 254
    .line 255
    and-int/2addr v13, v4

    .line 256
    if-eqz v13, :cond_a

    .line 257
    .line 258
    move v13, v4

    .line 259
    goto :goto_5

    .line 260
    :cond_a
    move v13, v3

    .line 261
    :goto_5
    if-eqz v12, :cond_b

    .line 262
    .line 263
    if-ne v11, v7, :cond_b

    .line 264
    .line 265
    goto/16 :goto_8

    .line 266
    .line 267
    :cond_b
    iget-object v14, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 268
    .line 269
    invoke-virtual {v14, v11, v5}, Landroidx/recyclerview/widget/g2;->b(Landroidx/recyclerview/widget/p1;I)Landroidx/recyclerview/widget/q0;

    .line 270
    .line 271
    .line 272
    move-result-object v14

    .line 273
    iget-object v15, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 274
    .line 275
    invoke-virtual {v15, v7, v10}, Landroidx/recyclerview/widget/g2;->a(Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/q0;)V

    .line 276
    .line 277
    .line 278
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 279
    .line 280
    const/16 v15, 0x8

    .line 281
    .line 282
    invoke-virtual {v10, v7, v15}, Landroidx/recyclerview/widget/g2;->b(Landroidx/recyclerview/widget/p1;I)Landroidx/recyclerview/widget/q0;

    .line 283
    .line 284
    .line 285
    move-result-object v10

    .line 286
    if-nez v14, :cond_10

    .line 287
    .line 288
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 289
    .line 290
    invoke-virtual {v10}, Landroidx/recyclerview/widget/e;->e()I

    .line 291
    .line 292
    .line 293
    move-result v10

    .line 294
    move v12, v3

    .line 295
    :goto_6
    if-ge v12, v10, :cond_f

    .line 296
    .line 297
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 298
    .line 299
    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/e;->d(I)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object v13

    .line 303
    invoke-static {v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 304
    .line 305
    .line 306
    move-result-object v13

    .line 307
    if-ne v13, v7, :cond_c

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_c
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/p1;)J

    .line 311
    .line 312
    .line 313
    move-result-wide v14

    .line 314
    cmp-long v14, v14, v8

    .line 315
    .line 316
    if-nez v14, :cond_e

    .line 317
    .line 318
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 319
    .line 320
    const-string v2, " \n View Holder 2:"

    .line 321
    .line 322
    if-eqz v1, :cond_d

    .line 323
    .line 324
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eqz v1, :cond_d

    .line 329
    .line 330
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 331
    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v4, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    .line 335
    .line 336
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-static {v0, v3}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw v1

    .line 356
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 357
    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    const-string v4, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    .line 361
    .line 362
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-static {v0, v3}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw v1

    .line 382
    :cond_e
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 383
    .line 384
    goto :goto_6

    .line 385
    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string v9, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    .line 388
    .line 389
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    const-string v9, " cannot be found but it is necessary for "

    .line 396
    .line 397
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v7

    .line 407
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v7

    .line 414
    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    goto :goto_9

    .line 418
    :cond_10
    invoke-virtual {v11, v3}, Landroidx/recyclerview/widget/p1;->setIsRecyclable(Z)V

    .line 419
    .line 420
    .line 421
    if-eqz v12, :cond_11

    .line 422
    .line 423
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/p1;)V

    .line 424
    .line 425
    .line 426
    :cond_11
    if-eq v11, v7, :cond_13

    .line 427
    .line 428
    if-eqz v13, :cond_12

    .line 429
    .line 430
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/p1;)V

    .line 431
    .line 432
    .line 433
    :cond_12
    iput-object v7, v11, Landroidx/recyclerview/widget/p1;->mShadowedHolder:Landroidx/recyclerview/widget/p1;

    .line 434
    .line 435
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/p1;)V

    .line 436
    .line 437
    .line 438
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 439
    .line 440
    invoke-virtual {v8, v11}, Landroidx/recyclerview/widget/e1;->m(Landroidx/recyclerview/widget/p1;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/p1;->setIsRecyclable(Z)V

    .line 444
    .line 445
    .line 446
    iput-object v11, v7, Landroidx/recyclerview/widget/p1;->mShadowingHolder:Landroidx/recyclerview/widget/p1;

    .line 447
    .line 448
    :cond_13
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 449
    .line 450
    invoke-virtual {v8, v11, v7, v14, v10}, Landroidx/recyclerview/widget/r0;->a(Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/q0;Landroidx/recyclerview/widget/q0;)Z

    .line 451
    .line 452
    .line 453
    move-result v7

    .line 454
    if-eqz v7, :cond_15

    .line 455
    .line 456
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 457
    .line 458
    .line 459
    goto :goto_9

    .line 460
    :cond_14
    :goto_8
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 461
    .line 462
    invoke-virtual {v8, v7, v10}, Landroidx/recyclerview/widget/g2;->a(Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/q0;)V

    .line 463
    .line 464
    .line 465
    :cond_15
    :goto_9
    add-int/lit8 v1, v1, -0x1

    .line 466
    .line 467
    goto/16 :goto_3

    .line 468
    .line 469
    :cond_16
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 470
    .line 471
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Landroidx/recyclerview/widget/f2;

    .line 472
    .line 473
    iget-object v1, v1, Landroidx/recyclerview/widget/g2;->a:Ln/k;

    .line 474
    .line 475
    iget v5, v1, Ln/k;->c:I

    .line 476
    .line 477
    sub-int/2addr v5, v4

    .line 478
    :goto_a
    if-ltz v5, :cond_21

    .line 479
    .line 480
    invoke-virtual {v1, v5}, Ln/k;->h(I)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v7

    .line 484
    move-object v9, v7

    .line 485
    check-cast v9, Landroidx/recyclerview/widget/p1;

    .line 486
    .line 487
    invoke-virtual {v1, v5}, Ln/k;->i(I)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v7

    .line 491
    check-cast v7, Landroidx/recyclerview/widget/e2;

    .line 492
    .line 493
    iget v8, v7, Landroidx/recyclerview/widget/e2;->a:I

    .line 494
    .line 495
    and-int/lit8 v10, v8, 0x3

    .line 496
    .line 497
    const/4 v11, 0x3

    .line 498
    if-ne v10, v11, :cond_17

    .line 499
    .line 500
    :goto_b
    move-object v8, v2

    .line 501
    check-cast v8, Landroidx/recyclerview/widget/i0;

    .line 502
    .line 503
    iget-object v8, v8, Landroidx/recyclerview/widget/i0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 504
    .line 505
    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 506
    .line 507
    iget-object v9, v9, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 508
    .line 509
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 510
    .line 511
    invoke-virtual {v10, v9, v8}, Landroidx/recyclerview/widget/w0;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/e1;)V

    .line 512
    .line 513
    .line 514
    goto/16 :goto_d

    .line 515
    .line 516
    :cond_17
    and-int/lit8 v10, v8, 0x1

    .line 517
    .line 518
    if-eqz v10, :cond_19

    .line 519
    .line 520
    iget-object v8, v7, Landroidx/recyclerview/widget/e2;->b:Landroidx/recyclerview/widget/q0;

    .line 521
    .line 522
    if-nez v8, :cond_18

    .line 523
    .line 524
    goto :goto_b

    .line 525
    :cond_18
    iget-object v10, v7, Landroidx/recyclerview/widget/e2;->c:Landroidx/recyclerview/widget/q0;

    .line 526
    .line 527
    move-object v11, v2

    .line 528
    check-cast v11, Landroidx/recyclerview/widget/i0;

    .line 529
    .line 530
    iget-object v11, v11, Landroidx/recyclerview/widget/i0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 531
    .line 532
    iget-object v12, v11, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 533
    .line 534
    invoke-virtual {v12, v9}, Landroidx/recyclerview/widget/e1;->m(Landroidx/recyclerview/widget/p1;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v11, v9, v8, v10}, Landroidx/recyclerview/widget/RecyclerView;->animateDisappearance(Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/q0;Landroidx/recyclerview/widget/q0;)V

    .line 538
    .line 539
    .line 540
    goto/16 :goto_d

    .line 541
    .line 542
    :cond_19
    and-int/lit8 v10, v8, 0xe

    .line 543
    .line 544
    const/16 v11, 0xe

    .line 545
    .line 546
    if-ne v10, v11, :cond_1a

    .line 547
    .line 548
    iget-object v8, v7, Landroidx/recyclerview/widget/e2;->b:Landroidx/recyclerview/widget/q0;

    .line 549
    .line 550
    iget-object v10, v7, Landroidx/recyclerview/widget/e2;->c:Landroidx/recyclerview/widget/q0;

    .line 551
    .line 552
    move-object v11, v2

    .line 553
    check-cast v11, Landroidx/recyclerview/widget/i0;

    .line 554
    .line 555
    iget-object v11, v11, Landroidx/recyclerview/widget/i0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 556
    .line 557
    invoke-virtual {v11, v9, v8, v10}, Landroidx/recyclerview/widget/RecyclerView;->animateAppearance(Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/q0;Landroidx/recyclerview/widget/q0;)V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_d

    .line 561
    .line 562
    :cond_1a
    and-int/lit8 v10, v8, 0xc

    .line 563
    .line 564
    const/16 v11, 0xc

    .line 565
    .line 566
    if-ne v10, v11, :cond_1e

    .line 567
    .line 568
    iget-object v8, v7, Landroidx/recyclerview/widget/e2;->b:Landroidx/recyclerview/widget/q0;

    .line 569
    .line 570
    iget-object v10, v7, Landroidx/recyclerview/widget/e2;->c:Landroidx/recyclerview/widget/q0;

    .line 571
    .line 572
    move-object v11, v2

    .line 573
    check-cast v11, Landroidx/recyclerview/widget/i0;

    .line 574
    .line 575
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/p1;->setIsRecyclable(Z)V

    .line 579
    .line 580
    .line 581
    iget-object v14, v11, Landroidx/recyclerview/widget/i0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 582
    .line 583
    iget-boolean v11, v14, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 584
    .line 585
    if-eqz v11, :cond_1b

    .line 586
    .line 587
    iget-object v11, v14, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 588
    .line 589
    invoke-virtual {v11, v9, v9, v8, v10}, Landroidx/recyclerview/widget/r0;->a(Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/q0;Landroidx/recyclerview/widget/q0;)Z

    .line 590
    .line 591
    .line 592
    move-result v8

    .line 593
    if-eqz v8, :cond_20

    .line 594
    .line 595
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 596
    .line 597
    .line 598
    goto :goto_d

    .line 599
    :cond_1b
    iget-object v11, v14, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 600
    .line 601
    check-cast v11, Landroidx/recyclerview/widget/l;

    .line 602
    .line 603
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 604
    .line 605
    .line 606
    iget v12, v8, Landroidx/recyclerview/widget/q0;->a:I

    .line 607
    .line 608
    iget v13, v10, Landroidx/recyclerview/widget/q0;->a:I

    .line 609
    .line 610
    if-ne v12, v13, :cond_1d

    .line 611
    .line 612
    iget v15, v8, Landroidx/recyclerview/widget/q0;->b:I

    .line 613
    .line 614
    iget v4, v10, Landroidx/recyclerview/widget/q0;->b:I

    .line 615
    .line 616
    if-eq v15, v4, :cond_1c

    .line 617
    .line 618
    goto :goto_c

    .line 619
    :cond_1c
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/r0;->c(Landroidx/recyclerview/widget/p1;)V

    .line 620
    .line 621
    .line 622
    goto :goto_d

    .line 623
    :cond_1d
    :goto_c
    iget v4, v8, Landroidx/recyclerview/widget/q0;->b:I

    .line 624
    .line 625
    iget v15, v10, Landroidx/recyclerview/widget/q0;->b:I

    .line 626
    .line 627
    move-object v8, v11

    .line 628
    move v10, v12

    .line 629
    move v11, v4

    .line 630
    move v12, v13

    .line 631
    move v13, v15

    .line 632
    invoke-virtual/range {v8 .. v13}, Landroidx/recyclerview/widget/l;->g(Landroidx/recyclerview/widget/p1;IIII)Z

    .line 633
    .line 634
    .line 635
    move-result v4

    .line 636
    if-eqz v4, :cond_20

    .line 637
    .line 638
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 639
    .line 640
    .line 641
    goto :goto_d

    .line 642
    :cond_1e
    and-int/lit8 v4, v8, 0x4

    .line 643
    .line 644
    if-eqz v4, :cond_1f

    .line 645
    .line 646
    iget-object v4, v7, Landroidx/recyclerview/widget/e2;->b:Landroidx/recyclerview/widget/q0;

    .line 647
    .line 648
    move-object v8, v2

    .line 649
    check-cast v8, Landroidx/recyclerview/widget/i0;

    .line 650
    .line 651
    iget-object v8, v8, Landroidx/recyclerview/widget/i0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 652
    .line 653
    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 654
    .line 655
    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/e1;->m(Landroidx/recyclerview/widget/p1;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v8, v9, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->animateDisappearance(Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/q0;Landroidx/recyclerview/widget/q0;)V

    .line 659
    .line 660
    .line 661
    goto :goto_d

    .line 662
    :cond_1f
    and-int/lit8 v4, v8, 0x8

    .line 663
    .line 664
    if-eqz v4, :cond_20

    .line 665
    .line 666
    iget-object v4, v7, Landroidx/recyclerview/widget/e2;->b:Landroidx/recyclerview/widget/q0;

    .line 667
    .line 668
    iget-object v8, v7, Landroidx/recyclerview/widget/e2;->c:Landroidx/recyclerview/widget/q0;

    .line 669
    .line 670
    move-object v10, v2

    .line 671
    check-cast v10, Landroidx/recyclerview/widget/i0;

    .line 672
    .line 673
    iget-object v10, v10, Landroidx/recyclerview/widget/i0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 674
    .line 675
    invoke-virtual {v10, v9, v4, v8}, Landroidx/recyclerview/widget/RecyclerView;->animateAppearance(Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/q0;Landroidx/recyclerview/widget/q0;)V

    .line 676
    .line 677
    .line 678
    :cond_20
    :goto_d
    iput v3, v7, Landroidx/recyclerview/widget/e2;->a:I

    .line 679
    .line 680
    iput-object v6, v7, Landroidx/recyclerview/widget/e2;->b:Landroidx/recyclerview/widget/q0;

    .line 681
    .line 682
    iput-object v6, v7, Landroidx/recyclerview/widget/e2;->c:Landroidx/recyclerview/widget/q0;

    .line 683
    .line 684
    sget-object v4, Landroidx/recyclerview/widget/e2;->d:Lo/f;

    .line 685
    .line 686
    invoke-virtual {v4, v7}, Lo/f;->a(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    add-int/lit8 v5, v5, -0x1

    .line 690
    .line 691
    const/4 v4, 0x1

    .line 692
    goto/16 :goto_a

    .line 693
    .line 694
    :cond_21
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 695
    .line 696
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 697
    .line 698
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/w0;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/e1;)V

    .line 699
    .line 700
    .line 701
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 702
    .line 703
    iget v2, v1, Landroidx/recyclerview/widget/l1;->e:I

    .line 704
    .line 705
    iput v2, v1, Landroidx/recyclerview/widget/l1;->b:I

    .line 706
    .line 707
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 708
    .line 709
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 710
    .line 711
    iput-boolean v3, v1, Landroidx/recyclerview/widget/l1;->j:Z

    .line 712
    .line 713
    iput-boolean v3, v1, Landroidx/recyclerview/widget/l1;->k:Z

    .line 714
    .line 715
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 716
    .line 717
    iput-boolean v3, v1, Landroidx/recyclerview/widget/w0;->mRequestedSimpleAnimations:Z

    .line 718
    .line 719
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 720
    .line 721
    iget-object v1, v1, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 722
    .line 723
    if-eqz v1, :cond_22

    .line 724
    .line 725
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 726
    .line 727
    .line 728
    :cond_22
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 729
    .line 730
    iget-boolean v2, v1, Landroidx/recyclerview/widget/w0;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 731
    .line 732
    if-eqz v2, :cond_23

    .line 733
    .line 734
    iput v3, v1, Landroidx/recyclerview/widget/w0;->mPrefetchMaxCountObserved:I

    .line 735
    .line 736
    iput-boolean v3, v1, Landroidx/recyclerview/widget/w0;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 737
    .line 738
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 739
    .line 740
    invoke-virtual {v1}, Landroidx/recyclerview/widget/e1;->n()V

    .line 741
    .line 742
    .line 743
    :cond_23
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 744
    .line 745
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 746
    .line 747
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/w0;->onLayoutCompleted(Landroidx/recyclerview/widget/l1;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 754
    .line 755
    .line 756
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 757
    .line 758
    iget-object v2, v1, Landroidx/recyclerview/widget/g2;->a:Ln/k;

    .line 759
    .line 760
    invoke-virtual {v2}, Ln/k;->clear()V

    .line 761
    .line 762
    .line 763
    iget-object v1, v1, Landroidx/recyclerview/widget/g2;->b:Ln/e;

    .line 764
    .line 765
    invoke-virtual {v1}, Ln/e;->a()V

    .line 766
    .line 767
    .line 768
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 769
    .line 770
    aget v2, v1, v3

    .line 771
    .line 772
    const/4 v4, 0x1

    .line 773
    aget v5, v1, v4

    .line 774
    .line 775
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->i([I)V

    .line 776
    .line 777
    .line 778
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 779
    .line 780
    aget v7, v1, v3

    .line 781
    .line 782
    if-ne v7, v2, :cond_24

    .line 783
    .line 784
    aget v1, v1, v4

    .line 785
    .line 786
    if-eq v1, v5, :cond_25

    .line 787
    .line 788
    :cond_24
    invoke-virtual {v0, v3, v3}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 789
    .line 790
    .line 791
    :cond_25
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 792
    .line 793
    const-wide/16 v4, -0x1

    .line 794
    .line 795
    const/4 v2, -0x1

    .line 796
    if-eqz v1, :cond_35

    .line 797
    .line 798
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 799
    .line 800
    if-eqz v1, :cond_35

    .line 801
    .line 802
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    .line 803
    .line 804
    .line 805
    move-result v1

    .line 806
    if-eqz v1, :cond_35

    .line 807
    .line 808
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 809
    .line 810
    .line 811
    move-result v1

    .line 812
    const/high16 v7, 0x60000

    .line 813
    .line 814
    if-eq v1, v7, :cond_35

    .line 815
    .line 816
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 817
    .line 818
    .line 819
    move-result v1

    .line 820
    const/high16 v7, 0x20000

    .line 821
    .line 822
    if-ne v1, v7, :cond_26

    .line 823
    .line 824
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    .line 825
    .line 826
    .line 827
    move-result v1

    .line 828
    if-eqz v1, :cond_26

    .line 829
    .line 830
    goto/16 :goto_14

    .line 831
    .line 832
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    .line 833
    .line 834
    .line 835
    move-result v1

    .line 836
    if-nez v1, :cond_29

    .line 837
    .line 838
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 839
    .line 840
    .line 841
    move-result-object v1

    .line 842
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    .line 843
    .line 844
    if-eqz v7, :cond_28

    .line 845
    .line 846
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 847
    .line 848
    .line 849
    move-result-object v7

    .line 850
    if-eqz v7, :cond_27

    .line 851
    .line 852
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    .line 853
    .line 854
    .line 855
    move-result v7

    .line 856
    if-nez v7, :cond_28

    .line 857
    .line 858
    :cond_27
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 859
    .line 860
    invoke-virtual {v1}, Landroidx/recyclerview/widget/e;->e()I

    .line 861
    .line 862
    .line 863
    move-result v1

    .line 864
    if-nez v1, :cond_29

    .line 865
    .line 866
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 867
    .line 868
    .line 869
    goto/16 :goto_14

    .line 870
    .line 871
    :cond_28
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 872
    .line 873
    iget-object v7, v7, Landroidx/recyclerview/widget/e;->c:Ljava/util/ArrayList;

    .line 874
    .line 875
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 876
    .line 877
    .line 878
    move-result v1

    .line 879
    if-nez v1, :cond_29

    .line 880
    .line 881
    goto/16 :goto_14

    .line 882
    .line 883
    :cond_29
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 884
    .line 885
    iget-wide v7, v1, Landroidx/recyclerview/widget/l1;->m:J

    .line 886
    .line 887
    cmp-long v1, v7, v4

    .line 888
    .line 889
    if-eqz v1, :cond_2a

    .line 890
    .line 891
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 892
    .line 893
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    .line 894
    .line 895
    .line 896
    move-result v1

    .line 897
    if-eqz v1, :cond_2a

    .line 898
    .line 899
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 900
    .line 901
    iget-wide v7, v1, Landroidx/recyclerview/widget/l1;->m:J

    .line 902
    .line 903
    invoke-virtual {v0, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/p1;

    .line 904
    .line 905
    .line 906
    move-result-object v1

    .line 907
    goto :goto_e

    .line 908
    :cond_2a
    move-object v1, v6

    .line 909
    :goto_e
    if-eqz v1, :cond_2c

    .line 910
    .line 911
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 912
    .line 913
    iget-object v8, v1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 914
    .line 915
    iget-object v7, v7, Landroidx/recyclerview/widget/e;->c:Ljava/util/ArrayList;

    .line 916
    .line 917
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 918
    .line 919
    .line 920
    move-result v7

    .line 921
    if-nez v7, :cond_2c

    .line 922
    .line 923
    iget-object v7, v1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 924
    .line 925
    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    .line 926
    .line 927
    .line 928
    move-result v7

    .line 929
    if-nez v7, :cond_2b

    .line 930
    .line 931
    goto :goto_f

    .line 932
    :cond_2b
    iget-object v6, v1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 933
    .line 934
    goto :goto_13

    .line 935
    :cond_2c
    :goto_f
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 936
    .line 937
    invoke-virtual {v1}, Landroidx/recyclerview/widget/e;->e()I

    .line 938
    .line 939
    .line 940
    move-result v1

    .line 941
    if-lez v1, :cond_33

    .line 942
    .line 943
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 944
    .line 945
    iget v7, v1, Landroidx/recyclerview/widget/l1;->l:I

    .line 946
    .line 947
    if-eq v7, v2, :cond_2d

    .line 948
    .line 949
    move v3, v7

    .line 950
    :cond_2d
    invoke-virtual {v1}, Landroidx/recyclerview/widget/l1;->b()I

    .line 951
    .line 952
    .line 953
    move-result v1

    .line 954
    move v7, v3

    .line 955
    :goto_10
    if-ge v7, v1, :cond_30

    .line 956
    .line 957
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 958
    .line 959
    .line 960
    move-result-object v8

    .line 961
    if-nez v8, :cond_2e

    .line 962
    .line 963
    goto :goto_11

    .line 964
    :cond_2e
    iget-object v9, v8, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 965
    .line 966
    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    .line 967
    .line 968
    .line 969
    move-result v9

    .line 970
    if-eqz v9, :cond_2f

    .line 971
    .line 972
    iget-object v6, v8, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 973
    .line 974
    goto :goto_13

    .line 975
    :cond_2f
    add-int/lit8 v7, v7, 0x1

    .line 976
    .line 977
    goto :goto_10

    .line 978
    :cond_30
    :goto_11
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 979
    .line 980
    .line 981
    move-result v1

    .line 982
    const/4 v3, 0x1

    .line 983
    sub-int/2addr v1, v3

    .line 984
    :goto_12
    if-ltz v1, :cond_33

    .line 985
    .line 986
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 987
    .line 988
    .line 989
    move-result-object v3

    .line 990
    if-nez v3, :cond_31

    .line 991
    .line 992
    goto :goto_13

    .line 993
    :cond_31
    iget-object v7, v3, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 994
    .line 995
    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    .line 996
    .line 997
    .line 998
    move-result v7

    .line 999
    if-eqz v7, :cond_32

    .line 1000
    .line 1001
    iget-object v6, v3, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 1002
    .line 1003
    goto :goto_13

    .line 1004
    :cond_32
    add-int/lit8 v1, v1, -0x1

    .line 1005
    .line 1006
    goto :goto_12

    .line 1007
    :cond_33
    :goto_13
    if-eqz v6, :cond_35

    .line 1008
    .line 1009
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 1010
    .line 1011
    iget v1, v1, Landroidx/recyclerview/widget/l1;->n:I

    .line 1012
    .line 1013
    int-to-long v7, v1

    .line 1014
    cmp-long v3, v7, v4

    .line 1015
    .line 1016
    if-eqz v3, :cond_34

    .line 1017
    .line 1018
    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    if-eqz v1, :cond_34

    .line 1023
    .line 1024
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    .line 1025
    .line 1026
    .line 1027
    move-result v3

    .line 1028
    if-eqz v3, :cond_34

    .line 1029
    .line 1030
    move-object v6, v1

    .line 1031
    :cond_34
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 1032
    .line 1033
    .line 1034
    :cond_35
    :goto_14
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 1035
    .line 1036
    iput-wide v4, v1, Landroidx/recyclerview/widget/l1;->m:J

    .line 1037
    .line 1038
    iput v2, v1, Landroidx/recyclerview/widget/l1;->l:I

    .line 1039
    .line 1040
    iput v2, v1, Landroidx/recyclerview/widget/l1;->n:I

    .line 1041
    .line 1042
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/w;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/w;->b(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/w;

    move-result-object v0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/w;->c(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/w;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/w;->c(II[I[II)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedScroll(IIII[II[I)V
    .locals 8

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/w;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    .line 1
    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/w;->d(IIII[II[I)Z

    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 8

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/w;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2
    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/w;->d(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 8

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/w;

    move-result-object v0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 3
    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/w;->d(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public dispatchOnScrollStateChanged(I)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/w0;->onScrollStateChanged(I)V

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/b1;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/b1;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/b1;

    invoke-virtual {v1, p0, p1}, Landroidx/recyclerview/widget/b1;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dispatchOnScrolled(II)V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int v2, v0, p1

    sub-int v3, v1, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->onScrollChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/b1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Landroidx/recyclerview/widget/b1;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/b1;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/recyclerview/widget/b1;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    return-void
.end method

.method public dispatchPendingImportantForAccessibilityChanges()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/recyclerview/widget/p1;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-ne v2, p0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget v2, v1, Landroidx/recyclerview/widget/p1;->mPendingAccessibilityState:I

    .line 35
    .line 36
    const/4 v3, -0x1

    .line 37
    if-eq v2, v3, :cond_1

    .line 38
    .line 39
    iget-object v4, v1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 40
    .line 41
    sget-object v5, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 42
    .line 43
    invoke-static {v4, v2}, Landroidx/core/view/k0;->s(Landroid/view/View;I)V

    .line 44
    .line 45
    .line 46
    iput v3, v1, Landroidx/recyclerview/widget/p1;->mPendingAccessibilityState:I

    .line 47
    .line 48
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_0

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroidx/recyclerview/widget/s0;

    .line 21
    .line 22
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 23
    .line 24
    invoke-virtual {v3, p1, p0, v4}, Landroidx/recyclerview/widget/s0;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v3, v1

    .line 55
    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    .line 56
    .line 57
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    neg-int v4, v4

    .line 65
    add-int/2addr v4, v3

    .line 66
    int-to-float v3, v4

    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    move v3, v2

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    move v3, v1

    .line 84
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    move v3, v1

    .line 89
    :goto_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_6

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 104
    .line 105
    if-eqz v4, :cond_4

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    int-to-float v4, v4

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    int-to-float v5, v5

    .line 117
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 121
    .line 122
    if-eqz v4, :cond_5

    .line 123
    .line 124
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_5

    .line 129
    .line 130
    move v4, v2

    .line 131
    goto :goto_4

    .line 132
    :cond_5
    move v4, v1

    .line 133
    :goto_4
    or-int/2addr v3, v4

    .line 134
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 135
    .line 136
    .line 137
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 138
    .line 139
    if-eqz v0, :cond_9

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_9

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 156
    .line 157
    if-eqz v5, :cond_7

    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    goto :goto_5

    .line 164
    :cond_7
    move v5, v1

    .line 165
    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    .line 166
    .line 167
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 168
    .line 169
    .line 170
    int-to-float v5, v5

    .line 171
    neg-int v4, v4

    .line 172
    int-to-float v4, v4

    .line 173
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    .line 175
    .line 176
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 177
    .line 178
    if-eqz v4, :cond_8

    .line 179
    .line 180
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_8

    .line 185
    .line 186
    move v4, v2

    .line 187
    goto :goto_6

    .line 188
    :cond_8
    move v4, v1

    .line 189
    :goto_6
    or-int/2addr v3, v4

    .line 190
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 191
    .line 192
    .line 193
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 194
    .line 195
    if-eqz v0, :cond_c

    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_c

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    const/high16 v4, 0x43340000    # 180.0f

    .line 208
    .line 209
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 210
    .line 211
    .line 212
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 213
    .line 214
    if-eqz v4, :cond_a

    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    neg-int v4, v4

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    add-int/2addr v5, v4

    .line 226
    int-to-float v4, v5

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    neg-int v5, v5

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    add-int/2addr v6, v5

    .line 237
    int-to-float v5, v6

    .line 238
    :goto_7
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 239
    .line 240
    .line 241
    goto :goto_8

    .line 242
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    neg-int v4, v4

    .line 247
    int-to-float v4, v4

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    neg-int v5, v5

    .line 253
    int-to-float v5, v5

    .line 254
    goto :goto_7

    .line 255
    :goto_8
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 256
    .line 257
    if-eqz v4, :cond_b

    .line 258
    .line 259
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-eqz v4, :cond_b

    .line 264
    .line 265
    move v1, v2

    .line 266
    :cond_b
    or-int/2addr v3, v1

    .line 267
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 268
    .line 269
    .line 270
    :cond_c
    if-nez v3, :cond_d

    .line 271
    .line 272
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 273
    .line 274
    if-eqz p1, :cond_d

    .line 275
    .line 276
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    if-lez p1, :cond_d

    .line 283
    .line 284
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 285
    .line 286
    invoke-virtual {p1}, Landroidx/recyclerview/widget/r0;->f()Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-eqz p1, :cond_d

    .line 291
    .line 292
    goto :goto_9

    .line 293
    :cond_d
    if-eqz v3, :cond_e

    .line 294
    .line 295
    :goto_9
    sget-object p1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 296
    .line 297
    invoke-static {p0}, Landroidx/core/view/k0;->k(Landroid/view/View;)V

    .line 298
    .line 299
    .line 300
    :cond_e
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public ensureBottomGlow()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/o0;

    .line 7
    .line 8
    check-cast v0, Landroidx/recyclerview/widget/m1;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 23
    .line 24
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    sub-int/2addr v1, v2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    sub-int/2addr v1, v2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sub-int/2addr v2, v3

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    sub-int/2addr v2, v3

    .line 56
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    goto :goto_0

    .line 69
    :goto_1
    return-void
.end method

.method public ensureLeftGlow()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/o0;

    .line 7
    .line 8
    check-cast v0, Landroidx/recyclerview/widget/m1;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 23
    .line 24
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    sub-int/2addr v1, v2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    sub-int/2addr v1, v2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sub-int/2addr v2, v3

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    sub-int/2addr v2, v3

    .line 56
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    goto :goto_0

    .line 69
    :goto_1
    return-void
.end method

.method public ensureRightGlow()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/o0;

    .line 7
    .line 8
    check-cast v0, Landroidx/recyclerview/widget/m1;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 23
    .line 24
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    sub-int/2addr v1, v2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    sub-int/2addr v1, v2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sub-int/2addr v2, v3

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    sub-int/2addr v2, v3

    .line 56
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    goto :goto_0

    .line 69
    :goto_1
    return-void
.end method

.method public ensureTopGlow()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/o0;

    .line 7
    .line 8
    check-cast v0, Landroidx/recyclerview/widget/m1;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 23
    .line 24
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    sub-int/2addr v1, v2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    sub-int/2addr v1, v2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sub-int/2addr v2, v3

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    sub-int/2addr v2, v3

    .line 56
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    goto :goto_0

    .line 69
    :goto_1
    return-void
.end method

.method public exceptionLabel()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/l1;->a(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Landroidx/recyclerview/widget/l1;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-boolean v2, v0, Landroidx/recyclerview/widget/l1;->i:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 21
    .line 22
    iget-object v3, v0, Landroidx/recyclerview/widget/g2;->a:Ln/k;

    .line 23
    .line 24
    invoke-virtual {v3}, Ln/k;->clear()V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Landroidx/recyclerview/widget/g2;->b:Ln/e;

    .line 28
    .line 29
    invoke-virtual {v0}, Ln/e;->a()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->l()V

    .line 36
    .line 37
    .line 38
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object v0, v3

    .line 59
    :goto_0
    if-nez v0, :cond_1

    .line 60
    .line 61
    move-object v0, v3

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_1
    const/4 v4, -0x1

    .line 68
    const-wide/16 v5, -0x1

    .line 69
    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 73
    .line 74
    iput-wide v5, v0, Landroidx/recyclerview/widget/l1;->m:J

    .line 75
    .line 76
    iput v4, v0, Landroidx/recyclerview/widget/l1;->l:I

    .line 77
    .line 78
    iput v4, v0, Landroidx/recyclerview/widget/l1;->n:I

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_2
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 82
    .line 83
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 84
    .line 85
    invoke-virtual {v8}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->getItemId()J

    .line 92
    .line 93
    .line 94
    move-result-wide v5

    .line 95
    :cond_3
    iput-wide v5, v7, Landroidx/recyclerview/widget/l1;->m:J

    .line 96
    .line 97
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 98
    .line 99
    iget-boolean v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 100
    .line 101
    if-eqz v6, :cond_4

    .line 102
    .line 103
    move v6, v4

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_5

    .line 110
    .line 111
    iget v6, v0, Landroidx/recyclerview/widget/p1;->mOldPosition:I

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->getAbsoluteAdapterPosition()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    :goto_2
    iput v6, v5, Landroidx/recyclerview/widget/l1;->l:I

    .line 119
    .line 120
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 121
    .line 122
    iget-object v0, v0, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 123
    .line 124
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-nez v7, :cond_7

    .line 133
    .line 134
    instance-of v7, v0, Landroid/view/ViewGroup;

    .line 135
    .line 136
    if-eqz v7, :cond_7

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_7

    .line 143
    .line 144
    check-cast v0, Landroid/view/ViewGroup;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-eq v7, v4, :cond_6

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_7
    iput v6, v5, Landroidx/recyclerview/widget/l1;->n:I

    .line 158
    .line 159
    :goto_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 160
    .line 161
    iget-boolean v4, v0, Landroidx/recyclerview/widget/l1;->j:Z

    .line 162
    .line 163
    if-eqz v4, :cond_8

    .line 164
    .line 165
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 166
    .line 167
    if-eqz v4, :cond_8

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_8
    move v1, v2

    .line 171
    :goto_5
    iput-boolean v1, v0, Landroidx/recyclerview/widget/l1;->h:Z

    .line 172
    .line 173
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 174
    .line 175
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 176
    .line 177
    iget-boolean v1, v0, Landroidx/recyclerview/widget/l1;->k:Z

    .line 178
    .line 179
    iput-boolean v1, v0, Landroidx/recyclerview/widget/l1;->g:Z

    .line 180
    .line 181
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 182
    .line 183
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    iput v1, v0, Landroidx/recyclerview/widget/l1;->e:I

    .line 188
    .line 189
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 190
    .line 191
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->i([I)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 195
    .line 196
    iget-boolean v0, v0, Landroidx/recyclerview/widget/l1;->j:Z

    .line 197
    .line 198
    if-eqz v0, :cond_c

    .line 199
    .line 200
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 201
    .line 202
    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->e()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    move v1, v2

    .line 207
    :goto_6
    if-ge v1, v0, :cond_c

    .line 208
    .line 209
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 210
    .line 211
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/e;->d(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-virtual {v4}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    if-nez v5, :cond_b

    .line 224
    .line 225
    invoke-virtual {v4}, Landroidx/recyclerview/widget/p1;->isInvalid()Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_9

    .line 230
    .line 231
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 232
    .line 233
    invoke-virtual {v5}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-nez v5, :cond_9

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_9
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 241
    .line 242
    invoke-static {v4}, Landroidx/recyclerview/widget/r0;->b(Landroidx/recyclerview/widget/p1;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4}, Landroidx/recyclerview/widget/p1;->getUnmodifiedPayloads()Ljava/util/List;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    new-instance v5, Landroidx/recyclerview/widget/q0;

    .line 252
    .line 253
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/q0;->a(Landroidx/recyclerview/widget/p1;)V

    .line 257
    .line 258
    .line 259
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 260
    .line 261
    iget-object v6, v6, Landroidx/recyclerview/widget/g2;->a:Ln/k;

    .line 262
    .line 263
    invoke-virtual {v6, v4, v3}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    check-cast v7, Landroidx/recyclerview/widget/e2;

    .line 268
    .line 269
    if-nez v7, :cond_a

    .line 270
    .line 271
    invoke-static {}, Landroidx/recyclerview/widget/e2;->a()Landroidx/recyclerview/widget/e2;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    invoke-virtual {v6, v4, v7}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    :cond_a
    iput-object v5, v7, Landroidx/recyclerview/widget/e2;->b:Landroidx/recyclerview/widget/q0;

    .line 279
    .line 280
    iget v5, v7, Landroidx/recyclerview/widget/e2;->a:I

    .line 281
    .line 282
    or-int/lit8 v5, v5, 0x4

    .line 283
    .line 284
    iput v5, v7, Landroidx/recyclerview/widget/e2;->a:I

    .line 285
    .line 286
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 287
    .line 288
    iget-boolean v5, v5, Landroidx/recyclerview/widget/l1;->h:Z

    .line 289
    .line 290
    if-eqz v5, :cond_b

    .line 291
    .line 292
    invoke-virtual {v4}, Landroidx/recyclerview/widget/p1;->isUpdated()Z

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    if-eqz v5, :cond_b

    .line 297
    .line 298
    invoke-virtual {v4}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    if-nez v5, :cond_b

    .line 303
    .line 304
    invoke-virtual {v4}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    if-nez v5, :cond_b

    .line 309
    .line 310
    invoke-virtual {v4}, Landroidx/recyclerview/widget/p1;->isInvalid()Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    if-nez v5, :cond_b

    .line 315
    .line 316
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/p1;)J

    .line 317
    .line 318
    .line 319
    move-result-wide v5

    .line 320
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 321
    .line 322
    iget-object v7, v7, Landroidx/recyclerview/widget/g2;->b:Ln/e;

    .line 323
    .line 324
    invoke-virtual {v7, v4, v5, v6}, Ln/e;->f(Ljava/lang/Object;J)V

    .line 325
    .line 326
    .line 327
    :cond_b
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 328
    .line 329
    goto :goto_6

    .line 330
    :cond_c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 331
    .line 332
    iget-boolean v0, v0, Landroidx/recyclerview/widget/l1;->k:Z

    .line 333
    .line 334
    const/4 v1, 0x2

    .line 335
    if-eqz v0, :cond_11

    .line 336
    .line 337
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->saveOldPositions()V

    .line 338
    .line 339
    .line 340
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 341
    .line 342
    iget-boolean v4, v0, Landroidx/recyclerview/widget/l1;->f:Z

    .line 343
    .line 344
    iput-boolean v2, v0, Landroidx/recyclerview/widget/l1;->f:Z

    .line 345
    .line 346
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 347
    .line 348
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 349
    .line 350
    invoke-virtual {v5, v6, v0}, Landroidx/recyclerview/widget/w0;->onLayoutChildren(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)V

    .line 351
    .line 352
    .line 353
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 354
    .line 355
    iput-boolean v4, v0, Landroidx/recyclerview/widget/l1;->f:Z

    .line 356
    .line 357
    move v0, v2

    .line 358
    :goto_8
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 359
    .line 360
    invoke-virtual {v4}, Landroidx/recyclerview/widget/e;->e()I

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    if-ge v0, v4, :cond_11

    .line 365
    .line 366
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 367
    .line 368
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/e;->d(I)Landroid/view/View;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    invoke-virtual {v4}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 377
    .line 378
    .line 379
    move-result v5

    .line 380
    if-eqz v5, :cond_d

    .line 381
    .line 382
    goto :goto_9

    .line 383
    :cond_d
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 384
    .line 385
    iget-object v5, v5, Landroidx/recyclerview/widget/g2;->a:Ln/k;

    .line 386
    .line 387
    invoke-virtual {v5, v4, v3}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    check-cast v5, Landroidx/recyclerview/widget/e2;

    .line 392
    .line 393
    if-eqz v5, :cond_e

    .line 394
    .line 395
    iget v5, v5, Landroidx/recyclerview/widget/e2;->a:I

    .line 396
    .line 397
    and-int/lit8 v5, v5, 0x4

    .line 398
    .line 399
    if-eqz v5, :cond_e

    .line 400
    .line 401
    goto :goto_9

    .line 402
    :cond_e
    invoke-static {v4}, Landroidx/recyclerview/widget/r0;->b(Landroidx/recyclerview/widget/p1;)V

    .line 403
    .line 404
    .line 405
    const/16 v5, 0x2000

    .line 406
    .line 407
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/p1;->hasAnyOfTheFlags(I)Z

    .line 408
    .line 409
    .line 410
    move-result v5

    .line 411
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 412
    .line 413
    invoke-virtual {v4}, Landroidx/recyclerview/widget/p1;->getUnmodifiedPayloads()Ljava/util/List;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    new-instance v6, Landroidx/recyclerview/widget/q0;

    .line 420
    .line 421
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/q0;->a(Landroidx/recyclerview/widget/p1;)V

    .line 425
    .line 426
    .line 427
    if-eqz v5, :cond_f

    .line 428
    .line 429
    invoke-virtual {p0, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/q0;)V

    .line 430
    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_f
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 434
    .line 435
    iget-object v5, v5, Landroidx/recyclerview/widget/g2;->a:Ln/k;

    .line 436
    .line 437
    invoke-virtual {v5, v4, v3}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    check-cast v7, Landroidx/recyclerview/widget/e2;

    .line 442
    .line 443
    if-nez v7, :cond_10

    .line 444
    .line 445
    invoke-static {}, Landroidx/recyclerview/widget/e2;->a()Landroidx/recyclerview/widget/e2;

    .line 446
    .line 447
    .line 448
    move-result-object v7

    .line 449
    invoke-virtual {v5, v4, v7}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    :cond_10
    iget v4, v7, Landroidx/recyclerview/widget/e2;->a:I

    .line 453
    .line 454
    or-int/2addr v4, v1

    .line 455
    iput v4, v7, Landroidx/recyclerview/widget/e2;->a:I

    .line 456
    .line 457
    iput-object v6, v7, Landroidx/recyclerview/widget/e2;->b:Landroidx/recyclerview/widget/q0;

    .line 458
    .line 459
    :goto_9
    add-int/lit8 v0, v0, 0x1

    .line 460
    .line 461
    goto :goto_8

    .line 462
    :cond_11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearOldPositions()V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 469
    .line 470
    .line 471
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 472
    .line 473
    iput v1, v0, Landroidx/recyclerview/widget/l1;->d:I

    .line 474
    .line 475
    return-void
.end method

.method public final fillRemainingScrollValues(Landroidx/recyclerview/widget/l1;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/o1;

    iget-object v0, v0, Landroidx/recyclerview/widget/o1;->c:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/e;->d(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpg-float v2, p1, v4

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/p1;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;
    .locals 5

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->h()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/e;->g(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/p1;)I

    move-result v4

    if-ne v4, p1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    iget-object v4, v3, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/e;->k(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public findViewHolderForItemId(J)Landroidx/recyclerview/widget/p1;
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->h()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/e;->g(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/p1;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    iget-object v4, v3, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/e;->k(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/p1;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/p1;

    move-result-object p1

    return-object p1
.end method

.method public findViewHolderForPosition(I)Landroidx/recyclerview/widget/p1;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/p1;

    move-result-object p1

    return-object p1
.end method

.method public findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/p1;
    .locals 5

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->h()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/e;->g(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_0

    iget v4, v3, Landroidx/recyclerview/widget/p1;->mPosition:I

    if-eq v4, p1, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    iget-object v4, v3, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/e;->k(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public fling(II)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "RecyclerView"

    .line 9
    .line 10
    const-string v3, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 11
    .line 12
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    .line 38
    .line 39
    if-ge v4, v5, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move/from16 v4, p1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    :goto_0
    move v4, v2

    .line 46
    :goto_1
    if-eqz v3, :cond_5

    .line 47
    .line 48
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    .line 53
    .line 54
    if-ge v5, v6, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    move/from16 v5, p2

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_5
    :goto_2
    move v5, v2

    .line 61
    :goto_3
    if-nez v4, :cond_6

    .line 62
    .line 63
    if-nez v5, :cond_6

    .line 64
    .line 65
    return v2

    .line 66
    :cond_6
    const/4 v6, 0x0

    .line 67
    if-eqz v4, :cond_9

    .line 68
    .line 69
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 70
    .line 71
    if-eqz v7, :cond_8

    .line 72
    .line 73
    invoke-static {v7}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    cmpl-float v7, v7, v6

    .line 78
    .line 79
    if-eqz v7, :cond_8

    .line 80
    .line 81
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 82
    .line 83
    neg-int v8, v4

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    invoke-virtual {v0, v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->r(Landroid/widget/EdgeEffect;II)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_7

    .line 93
    .line 94
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 95
    .line 96
    invoke-virtual {v4, v8}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 97
    .line 98
    .line 99
    :goto_4
    move v4, v2

    .line 100
    :cond_7
    move v7, v4

    .line 101
    move v4, v2

    .line 102
    goto :goto_5

    .line 103
    :cond_8
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 104
    .line 105
    if-eqz v7, :cond_9

    .line 106
    .line 107
    invoke-static {v7}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    cmpl-float v7, v7, v6

    .line 112
    .line 113
    if-eqz v7, :cond_9

    .line 114
    .line 115
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 116
    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    invoke-virtual {v0, v7, v4, v8}, Landroidx/recyclerview/widget/RecyclerView;->r(Landroid/widget/EdgeEffect;II)Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_7

    .line 126
    .line 127
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 128
    .line 129
    invoke-virtual {v7, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_9
    move v7, v2

    .line 134
    :goto_5
    if-eqz v5, :cond_c

    .line 135
    .line 136
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 137
    .line 138
    if-eqz v8, :cond_b

    .line 139
    .line 140
    invoke-static {v8}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    cmpl-float v8, v8, v6

    .line 145
    .line 146
    if-eqz v8, :cond_b

    .line 147
    .line 148
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 149
    .line 150
    neg-int v9, v5

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    invoke-virtual {v0, v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->r(Landroid/widget/EdgeEffect;II)Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-eqz v8, :cond_a

    .line 160
    .line 161
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 162
    .line 163
    invoke-virtual {v5, v9}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 164
    .line 165
    .line 166
    :goto_6
    move v5, v2

    .line 167
    :cond_a
    move v8, v2

    .line 168
    goto :goto_7

    .line 169
    :cond_b
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 170
    .line 171
    if-eqz v8, :cond_c

    .line 172
    .line 173
    invoke-static {v8}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    cmpl-float v8, v8, v6

    .line 178
    .line 179
    if-eqz v8, :cond_c

    .line 180
    .line 181
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 182
    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    invoke-virtual {v0, v8, v5, v9}, Landroidx/recyclerview/widget/RecyclerView;->r(Landroid/widget/EdgeEffect;II)Z

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    if-eqz v8, :cond_a

    .line 192
    .line 193
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 194
    .line 195
    invoke-virtual {v8, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 196
    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_c
    move v8, v5

    .line 200
    move v5, v2

    .line 201
    :goto_7
    if-nez v7, :cond_d

    .line 202
    .line 203
    if-eqz v5, :cond_e

    .line 204
    .line 205
    :cond_d
    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 206
    .line 207
    neg-int v10, v9

    .line 208
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 217
    .line 218
    neg-int v10, v9

    .line 219
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/o1;

    .line 228
    .line 229
    invoke-virtual {v9, v7, v5}, Landroidx/recyclerview/widget/o1;->a(II)V

    .line 230
    .line 231
    .line 232
    :cond_e
    if-nez v4, :cond_11

    .line 233
    .line 234
    if-nez v8, :cond_11

    .line 235
    .line 236
    if-nez v7, :cond_f

    .line 237
    .line 238
    if-eqz v5, :cond_10

    .line 239
    .line 240
    :cond_f
    const/4 v2, 0x1

    .line 241
    :cond_10
    return v2

    .line 242
    :cond_11
    int-to-float v5, v4

    .line 243
    int-to-float v7, v8

    .line 244
    invoke-virtual {v0, v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    .line 245
    .line 246
    .line 247
    move-result v10

    .line 248
    if-nez v10, :cond_31

    .line 249
    .line 250
    if-nez v1, :cond_13

    .line 251
    .line 252
    if-eqz v3, :cond_12

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_12
    move v10, v2

    .line 256
    goto :goto_9

    .line 257
    :cond_13
    :goto_8
    const/4 v10, 0x1

    .line 258
    :goto_9
    invoke-virtual {v0, v5, v7, v10}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 259
    .line 260
    .line 261
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/z0;

    .line 262
    .line 263
    if-eqz v5, :cond_2e

    .line 264
    .line 265
    check-cast v5, Landroidx/recyclerview/widget/g0;

    .line 266
    .line 267
    iget-object v7, v5, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 268
    .line 269
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    if-nez v7, :cond_14

    .line 274
    .line 275
    :goto_a
    goto/16 :goto_18

    .line 276
    .line 277
    :cond_14
    iget-object v11, v5, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 278
    .line 279
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 280
    .line 281
    .line 282
    move-result-object v11

    .line 283
    if-nez v11, :cond_15

    .line 284
    .line 285
    goto :goto_a

    .line 286
    :cond_15
    iget-object v11, v5, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 287
    .line 288
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    .line 289
    .line 290
    .line 291
    move-result v11

    .line 292
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 293
    .line 294
    .line 295
    move-result v12

    .line 296
    if-gt v12, v11, :cond_16

    .line 297
    .line 298
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 299
    .line 300
    .line 301
    move-result v12

    .line 302
    if-le v12, v11, :cond_2e

    .line 303
    .line 304
    :cond_16
    instance-of v11, v7, Landroidx/recyclerview/widget/j1;

    .line 305
    .line 306
    if-nez v11, :cond_17

    .line 307
    .line 308
    goto :goto_a

    .line 309
    :cond_17
    if-nez v11, :cond_18

    .line 310
    .line 311
    const/4 v13, 0x0

    .line 312
    goto :goto_b

    .line 313
    :cond_18
    new-instance v13, Landroidx/recyclerview/widget/f0;

    .line 314
    .line 315
    iget-object v14, v5, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 316
    .line 317
    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 318
    .line 319
    .line 320
    move-result-object v14

    .line 321
    invoke-direct {v13, v5, v14}, Landroidx/recyclerview/widget/f0;-><init>(Landroidx/recyclerview/widget/g0;Landroid/content/Context;)V

    .line 322
    .line 323
    .line 324
    :goto_b
    if-nez v13, :cond_19

    .line 325
    .line 326
    goto :goto_a

    .line 327
    :cond_19
    invoke-virtual {v7}, Landroidx/recyclerview/widget/w0;->getItemCount()I

    .line 328
    .line 329
    .line 330
    move-result v14

    .line 331
    if-nez v14, :cond_1c

    .line 332
    .line 333
    :goto_c
    move/from16 v18, v1

    .line 334
    .line 335
    :cond_1a
    :goto_d
    const/4 v0, -0x1

    .line 336
    :cond_1b
    :goto_e
    const/4 v1, -0x1

    .line 337
    goto/16 :goto_16

    .line 338
    .line 339
    :cond_1c
    invoke-virtual {v7}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    .line 340
    .line 341
    .line 342
    move-result v16

    .line 343
    if-eqz v16, :cond_1d

    .line 344
    .line 345
    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/g0;->g(Landroidx/recyclerview/widget/w0;)Landroidx/recyclerview/widget/e0;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    goto :goto_f

    .line 350
    :cond_1d
    invoke-virtual {v7}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    .line 351
    .line 352
    .line 353
    move-result v16

    .line 354
    if-eqz v16, :cond_1e

    .line 355
    .line 356
    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/g0;->f(Landroidx/recyclerview/widget/w0;)Landroidx/recyclerview/widget/e0;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    goto :goto_f

    .line 361
    :cond_1e
    const/4 v5, 0x0

    .line 362
    :goto_f
    if-nez v5, :cond_1f

    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_1f
    invoke-virtual {v7}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 366
    .line 367
    .line 368
    move-result v12

    .line 369
    const/high16 v16, -0x80000000

    .line 370
    .line 371
    const v17, 0x7fffffff

    .line 372
    .line 373
    .line 374
    move v0, v2

    .line 375
    move/from16 v6, v16

    .line 376
    .line 377
    move/from16 v9, v17

    .line 378
    .line 379
    const/4 v2, 0x0

    .line 380
    const/4 v15, 0x0

    .line 381
    :goto_10
    if-ge v0, v12, :cond_23

    .line 382
    .line 383
    move/from16 v17, v12

    .line 384
    .line 385
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 386
    .line 387
    .line 388
    move-result-object v12

    .line 389
    move/from16 v18, v1

    .line 390
    .line 391
    if-nez v12, :cond_20

    .line 392
    .line 393
    goto :goto_11

    .line 394
    :cond_20
    invoke-static {v12, v5}, Landroidx/recyclerview/widget/g0;->c(Landroid/view/View;Landroidx/recyclerview/widget/e0;)I

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-gtz v1, :cond_21

    .line 399
    .line 400
    if-le v1, v6, :cond_21

    .line 401
    .line 402
    move v6, v1

    .line 403
    move-object v15, v12

    .line 404
    :cond_21
    if-ltz v1, :cond_22

    .line 405
    .line 406
    if-ge v1, v9, :cond_22

    .line 407
    .line 408
    move v9, v1

    .line 409
    move-object v2, v12

    .line 410
    :cond_22
    :goto_11
    add-int/lit8 v0, v0, 0x1

    .line 411
    .line 412
    move/from16 v12, v17

    .line 413
    .line 414
    move/from16 v1, v18

    .line 415
    .line 416
    goto :goto_10

    .line 417
    :cond_23
    move/from16 v18, v1

    .line 418
    .line 419
    invoke-virtual {v7}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-eqz v0, :cond_25

    .line 424
    .line 425
    if-lez v4, :cond_24

    .line 426
    .line 427
    :goto_12
    const/4 v0, 0x1

    .line 428
    goto :goto_13

    .line 429
    :cond_24
    const/4 v0, 0x0

    .line 430
    goto :goto_13

    .line 431
    :cond_25
    if-lez v8, :cond_24

    .line 432
    .line 433
    goto :goto_12

    .line 434
    :goto_13
    if-eqz v0, :cond_26

    .line 435
    .line 436
    if-eqz v2, :cond_26

    .line 437
    .line 438
    invoke-virtual {v7, v2}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    goto :goto_e

    .line 443
    :cond_26
    if-nez v0, :cond_27

    .line 444
    .line 445
    if-eqz v15, :cond_27

    .line 446
    .line 447
    invoke-virtual {v7, v15}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    goto :goto_e

    .line 452
    :cond_27
    if-eqz v0, :cond_28

    .line 453
    .line 454
    move-object v2, v15

    .line 455
    :cond_28
    if-nez v2, :cond_29

    .line 456
    .line 457
    goto :goto_d

    .line 458
    :cond_29
    invoke-virtual {v7, v2}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    invoke-virtual {v7}, Landroidx/recyclerview/widget/w0;->getItemCount()I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    if-eqz v11, :cond_2b

    .line 467
    .line 468
    move-object v5, v7

    .line 469
    check-cast v5, Landroidx/recyclerview/widget/j1;

    .line 470
    .line 471
    const/4 v6, 0x1

    .line 472
    sub-int/2addr v2, v6

    .line 473
    invoke-interface {v5, v2}, Landroidx/recyclerview/widget/j1;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    if-eqz v2, :cond_2b

    .line 478
    .line 479
    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 480
    .line 481
    const/4 v6, 0x0

    .line 482
    cmpg-float v5, v5, v6

    .line 483
    .line 484
    if-ltz v5, :cond_2a

    .line 485
    .line 486
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 487
    .line 488
    cmpg-float v2, v2, v6

    .line 489
    .line 490
    if-gez v2, :cond_2b

    .line 491
    .line 492
    :cond_2a
    const/4 v6, 0x1

    .line 493
    goto :goto_14

    .line 494
    :cond_2b
    const/4 v6, 0x0

    .line 495
    :goto_14
    if-ne v6, v0, :cond_2c

    .line 496
    .line 497
    const/4 v6, -0x1

    .line 498
    goto :goto_15

    .line 499
    :cond_2c
    const/4 v6, 0x1

    .line 500
    :goto_15
    add-int v0, v1, v6

    .line 501
    .line 502
    if-ltz v0, :cond_1a

    .line 503
    .line 504
    if-lt v0, v14, :cond_1b

    .line 505
    .line 506
    goto/16 :goto_d

    .line 507
    .line 508
    :goto_16
    if-ne v0, v1, :cond_2d

    .line 509
    .line 510
    :goto_17
    const/4 v0, 0x1

    .line 511
    goto :goto_19

    .line 512
    :cond_2d
    invoke-virtual {v13, v0}, Landroidx/recyclerview/widget/k1;->setTargetPosition(I)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v7, v13}, Landroidx/recyclerview/widget/w0;->startSmoothScroll(Landroidx/recyclerview/widget/k1;)V

    .line 516
    .line 517
    .line 518
    const/4 v0, 0x1

    .line 519
    return v0

    .line 520
    :cond_2e
    :goto_18
    move/from16 v18, v1

    .line 521
    .line 522
    goto :goto_17

    .line 523
    :goto_19
    if-eqz v10, :cond_30

    .line 524
    .line 525
    if-eqz v3, :cond_2f

    .line 526
    .line 527
    or-int/lit8 v1, v18, 0x2

    .line 528
    .line 529
    move-object/from16 v2, p0

    .line 530
    .line 531
    goto :goto_1a

    .line 532
    :cond_2f
    move-object/from16 v2, p0

    .line 533
    .line 534
    move/from16 v1, v18

    .line 535
    .line 536
    :goto_1a
    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 537
    .line 538
    .line 539
    iget v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 540
    .line 541
    neg-int v3, v1

    .line 542
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 547
    .line 548
    .line 549
    move-result v1

    .line 550
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 551
    .line 552
    neg-int v4, v3

    .line 553
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/o1;

    .line 562
    .line 563
    invoke-virtual {v4, v1, v3}, Landroidx/recyclerview/widget/o1;->a(II)V

    .line 564
    .line 565
    .line 566
    return v0

    .line 567
    :cond_30
    move-object/from16 v2, p0

    .line 568
    .line 569
    :goto_1b
    const/4 v0, 0x0

    .line 570
    goto :goto_1c

    .line 571
    :cond_31
    move-object v2, v0

    .line 572
    goto :goto_1b

    .line 573
    :goto_1c
    return v0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 17

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
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 8
    .line 9
    invoke-virtual {v3, v1, v2}, Landroidx/recyclerview/widget/w0;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 33
    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    move v3, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v3, v5

    .line 39
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const/16 v7, 0x11

    .line 44
    .line 45
    const/16 v9, 0x21

    .line 46
    .line 47
    const/4 v11, 0x0

    .line 48
    const/4 v12, 0x2

    .line 49
    if-eqz v3, :cond_e

    .line 50
    .line 51
    if-eq v2, v12, :cond_2

    .line 52
    .line 53
    if-ne v2, v4, :cond_e

    .line 54
    .line 55
    :cond_2
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 56
    .line 57
    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_5

    .line 62
    .line 63
    if-ne v2, v12, :cond_3

    .line 64
    .line 65
    const/16 v3, 0x82

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move v3, v9

    .line 69
    :goto_1
    invoke-virtual {v6, v0, v1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    if-nez v13, :cond_4

    .line 74
    .line 75
    move v13, v4

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    move v13, v5

    .line 78
    :goto_2
    sget-boolean v14, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 79
    .line 80
    if-eqz v14, :cond_6

    .line 81
    .line 82
    move v2, v3

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    move v13, v5

    .line 85
    :cond_6
    :goto_3
    if-nez v13, :cond_b

    .line 86
    .line 87
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 88
    .line 89
    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_b

    .line 94
    .line 95
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 96
    .line 97
    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->getLayoutDirection()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-ne v3, v4, :cond_7

    .line 102
    .line 103
    move v3, v4

    .line 104
    goto :goto_4

    .line 105
    :cond_7
    move v3, v5

    .line 106
    :goto_4
    if-ne v2, v12, :cond_8

    .line 107
    .line 108
    move v13, v4

    .line 109
    goto :goto_5

    .line 110
    :cond_8
    move v13, v5

    .line 111
    :goto_5
    xor-int/2addr v3, v13

    .line 112
    if-eqz v3, :cond_9

    .line 113
    .line 114
    const/16 v3, 0x42

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_9
    move v3, v7

    .line 118
    :goto_6
    invoke-virtual {v6, v0, v1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    if-nez v13, :cond_a

    .line 123
    .line 124
    move v13, v4

    .line 125
    goto :goto_7

    .line 126
    :cond_a
    move v13, v5

    .line 127
    :goto_7
    sget-boolean v14, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 128
    .line 129
    if-eqz v14, :cond_b

    .line 130
    .line 131
    move v2, v3

    .line 132
    :cond_b
    if-eqz v13, :cond_d

    .line 133
    .line 134
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 135
    .line 136
    .line 137
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    if-nez v3, :cond_c

    .line 142
    .line 143
    return-object v11

    .line 144
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 145
    .line 146
    .line 147
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 148
    .line 149
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 150
    .line 151
    iget-object v14, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 152
    .line 153
    invoke-virtual {v3, v1, v2, v13, v14}, Landroidx/recyclerview/widget/w0;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 157
    .line 158
    .line 159
    :cond_d
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    goto :goto_8

    .line 164
    :cond_e
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    if-nez v6, :cond_10

    .line 169
    .line 170
    if-eqz v3, :cond_10

    .line 171
    .line 172
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 173
    .line 174
    .line 175
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    if-nez v3, :cond_f

    .line 180
    .line 181
    return-object v11

    .line 182
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 183
    .line 184
    .line 185
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 186
    .line 187
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 188
    .line 189
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 190
    .line 191
    invoke-virtual {v3, v1, v2, v6, v13}, Landroidx/recyclerview/widget/w0;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 196
    .line 197
    .line 198
    goto :goto_8

    .line 199
    :cond_10
    move-object v3, v6

    .line 200
    :goto_8
    if-eqz v3, :cond_12

    .line 201
    .line 202
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-nez v6, :cond_12

    .line 207
    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    if-nez v4, :cond_11

    .line 213
    .line 214
    invoke-super {v0, v1, v2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    return-object v1

    .line 219
    :cond_11
    invoke-virtual {v0, v3, v11}, Landroidx/recyclerview/widget/RecyclerView;->o(Landroid/view/View;Landroid/view/View;)V

    .line 220
    .line 221
    .line 222
    return-object v1

    .line 223
    :cond_12
    if-eqz v3, :cond_26

    .line 224
    .line 225
    if-eq v3, v0, :cond_26

    .line 226
    .line 227
    if-ne v3, v1, :cond_13

    .line 228
    .line 229
    goto/16 :goto_c

    .line 230
    .line 231
    :cond_13
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    if-nez v6, :cond_14

    .line 236
    .line 237
    goto/16 :goto_c

    .line 238
    .line 239
    :cond_14
    if-nez v1, :cond_15

    .line 240
    .line 241
    goto/16 :goto_d

    .line 242
    .line 243
    :cond_15
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    if-nez v6, :cond_16

    .line 248
    .line 249
    goto/16 :goto_d

    .line 250
    .line 251
    :cond_16
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 252
    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 254
    .line 255
    .line 256
    move-result v11

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    invoke-virtual {v6, v5, v5, v11, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 262
    .line 263
    .line 264
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 265
    .line 266
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 267
    .line 268
    .line 269
    move-result v11

    .line 270
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    invoke-virtual {v6, v5, v5, v11, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 275
    .line 276
    .line 277
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 278
    .line 279
    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 280
    .line 281
    .line 282
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 283
    .line 284
    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 285
    .line 286
    .line 287
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 288
    .line 289
    invoke-virtual {v6}, Landroidx/recyclerview/widget/w0;->getLayoutDirection()I

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    if-ne v6, v4, :cond_17

    .line 294
    .line 295
    const/4 v6, -0x1

    .line 296
    goto :goto_9

    .line 297
    :cond_17
    move v6, v4

    .line 298
    :goto_9
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 299
    .line 300
    iget v14, v13, Landroid/graphics/Rect;->left:I

    .line 301
    .line 302
    iget-object v15, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 303
    .line 304
    iget v5, v15, Landroid/graphics/Rect;->left:I

    .line 305
    .line 306
    if-lt v14, v5, :cond_18

    .line 307
    .line 308
    iget v11, v13, Landroid/graphics/Rect;->right:I

    .line 309
    .line 310
    if-gt v11, v5, :cond_19

    .line 311
    .line 312
    :cond_18
    iget v11, v13, Landroid/graphics/Rect;->right:I

    .line 313
    .line 314
    iget v10, v15, Landroid/graphics/Rect;->right:I

    .line 315
    .line 316
    if-ge v11, v10, :cond_19

    .line 317
    .line 318
    move v5, v4

    .line 319
    goto :goto_a

    .line 320
    :cond_19
    iget v10, v13, Landroid/graphics/Rect;->right:I

    .line 321
    .line 322
    iget v11, v15, Landroid/graphics/Rect;->right:I

    .line 323
    .line 324
    if-gt v10, v11, :cond_1a

    .line 325
    .line 326
    if-lt v14, v11, :cond_1b

    .line 327
    .line 328
    :cond_1a
    if-le v14, v5, :cond_1b

    .line 329
    .line 330
    const/4 v5, -0x1

    .line 331
    goto :goto_a

    .line 332
    :cond_1b
    const/4 v5, 0x0

    .line 333
    :goto_a
    iget v10, v13, Landroid/graphics/Rect;->top:I

    .line 334
    .line 335
    iget v11, v15, Landroid/graphics/Rect;->top:I

    .line 336
    .line 337
    if-lt v10, v11, :cond_1c

    .line 338
    .line 339
    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 340
    .line 341
    if-gt v14, v11, :cond_1d

    .line 342
    .line 343
    :cond_1c
    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 344
    .line 345
    iget v8, v15, Landroid/graphics/Rect;->bottom:I

    .line 346
    .line 347
    if-ge v14, v8, :cond_1d

    .line 348
    .line 349
    move/from16 v16, v4

    .line 350
    .line 351
    goto :goto_b

    .line 352
    :cond_1d
    iget v8, v13, Landroid/graphics/Rect;->bottom:I

    .line 353
    .line 354
    iget v13, v15, Landroid/graphics/Rect;->bottom:I

    .line 355
    .line 356
    if-gt v8, v13, :cond_1e

    .line 357
    .line 358
    if-lt v10, v13, :cond_1f

    .line 359
    .line 360
    :cond_1e
    if-le v10, v11, :cond_1f

    .line 361
    .line 362
    const/16 v16, -0x1

    .line 363
    .line 364
    goto :goto_b

    .line 365
    :cond_1f
    const/16 v16, 0x0

    .line 366
    .line 367
    :goto_b
    if-eq v2, v4, :cond_25

    .line 368
    .line 369
    if-eq v2, v12, :cond_24

    .line 370
    .line 371
    if-eq v2, v7, :cond_23

    .line 372
    .line 373
    if-eq v2, v9, :cond_22

    .line 374
    .line 375
    const/16 v4, 0x42

    .line 376
    .line 377
    if-eq v2, v4, :cond_21

    .line 378
    .line 379
    const/16 v4, 0x82

    .line 380
    .line 381
    if-ne v2, v4, :cond_20

    .line 382
    .line 383
    if-lez v16, :cond_26

    .line 384
    .line 385
    goto :goto_d

    .line 386
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 387
    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    const-string v4, "Invalid direction: "

    .line 391
    .line 392
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-static {v0, v3}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v1

    .line 406
    :cond_21
    if-lez v5, :cond_26

    .line 407
    .line 408
    goto :goto_d

    .line 409
    :cond_22
    if-gez v16, :cond_26

    .line 410
    .line 411
    goto :goto_d

    .line 412
    :cond_23
    if-gez v5, :cond_26

    .line 413
    .line 414
    goto :goto_d

    .line 415
    :cond_24
    if-gtz v16, :cond_27

    .line 416
    .line 417
    if-nez v16, :cond_26

    .line 418
    .line 419
    mul-int/2addr v5, v6

    .line 420
    if-lez v5, :cond_26

    .line 421
    .line 422
    goto :goto_d

    .line 423
    :cond_25
    if-ltz v16, :cond_27

    .line 424
    .line 425
    if-nez v16, :cond_26

    .line 426
    .line 427
    mul-int/2addr v5, v6

    .line 428
    if-gez v5, :cond_26

    .line 429
    .line 430
    goto :goto_d

    .line 431
    :cond_26
    :goto_c
    invoke-super {v0, v1, v2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    :cond_27
    :goto_d
    return-object v3
.end method

.method public final g()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/l1;->a(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->c()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/l1;->e:I

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/l1;->c:I

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/h1;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->canRestoreState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/h1;

    iget-object v0, v0, Landroidx/recyclerview/widget/h1;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/w0;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/h1;

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/l1;->g:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/w0;->onLayoutChildren(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/l1;->f:Z

    iget-boolean v2, v0, Landroidx/recyclerview/widget/l1;->j:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Landroidx/recyclerview/widget/l1;->j:Z

    const/4 v2, 0x4

    iput v2, v0, Landroidx/recyclerview/widget/l1;->d:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->generateDefaultLayoutParams()Landroidx/recyclerview/widget/x0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "RecyclerView has no LayoutManager"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v1}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/w0;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/x0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/w0;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/x0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p0, v0}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    return-object v0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/k0;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    return-object v0
.end method

.method public getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/p1;)I
    .locals 7

    .line 1
    const/16 v0, 0x20c

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/p1;->hasAnyOfTheFlags(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-nez v0, :cond_9

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isBound()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 18
    .line 19
    iget p1, p1, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/recyclerview/widget/b;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v2, :cond_8

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Landroidx/recyclerview/widget/a;

    .line 35
    .line 36
    iget v5, v4, Landroidx/recyclerview/widget/a;->a:I

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    if-eq v5, v6, :cond_6

    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    if-eq v5, v6, :cond_4

    .line 43
    .line 44
    const/16 v6, 0x8

    .line 45
    .line 46
    if-eq v5, v6, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget v5, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 50
    .line 51
    if-ne v5, p1, :cond_2

    .line 52
    .line 53
    iget p1, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    if-ge v5, p1, :cond_3

    .line 57
    .line 58
    add-int/lit8 p1, p1, -0x1

    .line 59
    .line 60
    :cond_3
    iget v4, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 61
    .line 62
    if-gt v4, p1, :cond_7

    .line 63
    .line 64
    add-int/lit8 p1, p1, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    iget v5, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 68
    .line 69
    if-gt v5, p1, :cond_7

    .line 70
    .line 71
    iget v4, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 72
    .line 73
    add-int/2addr v5, v4

    .line 74
    if-le v5, p1, :cond_5

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    sub-int/2addr p1, v4

    .line 78
    goto :goto_1

    .line 79
    :cond_6
    iget v5, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 80
    .line 81
    if-gt v5, p1, :cond_7

    .line 82
    .line 83
    iget v4, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 84
    .line 85
    add-int/2addr p1, v4

    .line 86
    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_8
    move v1, p1

    .line 90
    :cond_9
    :goto_2
    return v1
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->getBaseline()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getChangedHolderKey(Landroidx/recyclerview/widget/p1;)J
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getItemId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroidx/recyclerview/widget/p1;->mPosition:I

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 0

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getAbsoluteAdapterPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getChildDrawingOrder(II)I
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p1

    return p1
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getItemId()J

    move-result-wide v1

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 0

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/p1;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object p1

    return-object p1
.end method

.method public getClipToPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Landroidx/recyclerview/widget/r1;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/r1;

    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getEdgeEffectFactory()Landroidx/recyclerview/widget/o0;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/o0;

    return-object v0
.end method

.method public getItemAnimator()Landroidx/recyclerview/widget/r0;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    return-object v0
.end method

.method public getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/x0;

    .line 6
    .line 7
    iget-boolean v1, v0, Landroidx/recyclerview/widget/x0;->c:Z

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/recyclerview/widget/x0;->b:Landroid/graphics/Rect;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 15
    .line 16
    iget-boolean v1, v1, Landroidx/recyclerview/widget/l1;->g:Z

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-object v1, v0, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p1;->isUpdated()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v1, v0, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p1;->isInvalid()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    :cond_1
    return-object v2

    .line 37
    :cond_2
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    move v4, v1

    .line 48
    :goto_0
    if-ge v4, v3, :cond_3

    .line 49
    .line 50
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-virtual {v5, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 53
    .line 54
    .line 55
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Landroidx/recyclerview/widget/s0;

    .line 62
    .line 63
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 64
    .line 65
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 66
    .line 67
    invoke-virtual {v5, v6, p1, p0, v7}, Landroidx/recyclerview/widget/s0;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;)V

    .line 68
    .line 69
    .line 70
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 71
    .line 72
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 73
    .line 74
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 75
    .line 76
    add-int/2addr v5, v7

    .line 77
    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 78
    .line 79
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 80
    .line 81
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 82
    .line 83
    add-int/2addr v5, v7

    .line 84
    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 85
    .line 86
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 87
    .line 88
    iget v7, v6, Landroid/graphics/Rect;->right:I

    .line 89
    .line 90
    add-int/2addr v5, v7

    .line 91
    iput v5, v2, Landroid/graphics/Rect;->right:I

    .line 92
    .line 93
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 94
    .line 95
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 96
    .line 97
    add-int/2addr v5, v6

    .line 98
    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 99
    .line 100
    add-int/lit8 v4, v4, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    iput-boolean v1, v0, Landroidx/recyclerview/widget/x0;->c:Z

    .line 104
    .line 105
    return-object v2
.end method

.method public getItemDecorationAt(I)Landroidx/recyclerview/widget/s0;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/s0;

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is an invalid index for size "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItemDecorationCount()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/w0;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method public getNanoTime()J
    .locals 2

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()Landroidx/recyclerview/widget/z0;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/z0;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public getRecycledViewPool()Landroidx/recyclerview/widget/d1;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e1;->c()Landroidx/recyclerview/widget/d1;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public final h(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/a1;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/a1;->b(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/a1;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public hasFixedSize()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/w;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Landroidx/core/view/w;->f(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/w;->f(I)Z

    move-result p1

    return p1
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final i([I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->e()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    aput v0, p1, v2

    aput v0, p1, v1

    return-void

    :cond_0
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    move v5, v2

    :goto_0
    if-ge v5, v0, :cond_4

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/e;->d(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    move-result v6

    if-ge v6, v3, :cond_2

    move v3, v6

    :cond_2
    if-le v6, v4, :cond_3

    move v4, v6

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    aput v3, p1, v2

    aput v4, p1, v1

    return-void
.end method

.method public initAdapterManager()V
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/b;

    new-instance v1, Landroidx/recyclerview/widget/i0;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/i0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/b;-><init>(Landroidx/recyclerview/widget/i0;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    return-void
.end method

.method public initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Landroidx/recyclerview/widget/r;

    .line 18
    .line 19
    const v2, 0x7f0700a9

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    const v2, 0x7f0700ab

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    const v2, 0x7f0700aa

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    move-object v2, p0

    .line 41
    move-object v3, p1

    .line 42
    move-object v4, p2

    .line 43
    move-object v5, p3

    .line 44
    move-object v6, p4

    .line 45
    invoke-direct/range {v1 .. v9}, Landroidx/recyclerview/widget/r;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string p3, "Trying to set fast scroller without both required drawables."

    .line 54
    .line 55
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p2}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-eqz v0, :cond_1

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/r0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayoutFrozen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isLayoutSuppressed()Z

    move-result v0

    return v0
.end method

.method public final isLayoutSuppressed()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/w;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Landroidx/core/view/w;->d:Z

    .line 6
    .line 7
    return v0
.end method

.method public final j(IILandroid/view/MotionEvent;)V
    .locals 11

    .line 1
    const/4 v6, 0x1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v7, 0x0

    aput v7, v1, v7

    const/4 v8, 0x1

    aput v7, v1, v8

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    move-result v9

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    move-result v10

    if-eqz v10, :cond_2

    or-int/lit8 v0, v9, 0x2

    goto :goto_0

    :cond_2
    move v0, v9

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    if-nez p3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    :goto_1
    if-nez p3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    :goto_2
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->m(FI)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0, v3, p2}, Landroidx/recyclerview/widget/RecyclerView;->n(FI)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0, v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    if-eqz v9, :cond_5

    move v1, p1

    goto :goto_3

    :cond_5
    move v1, v7

    :goto_3
    if-eqz v10, :cond_6

    move v2, p2

    goto :goto_4

    :cond_6
    move v2, v7

    :goto_4
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    move-object v0, p0

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v1, v0, v7

    sub-int/2addr p1, v1

    aget v0, v0, v8

    sub-int/2addr p2, v0

    :cond_7
    if-eqz v9, :cond_8

    move v0, p1

    goto :goto_5

    :cond_8
    move v0, v7

    :goto_5
    if-eqz v10, :cond_9

    move v7, p2

    :cond_9
    invoke-virtual {p0, v0, v7, p3, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/u;

    if-eqz p3, :cond_b

    if-nez p1, :cond_a

    if-eqz p2, :cond_b

    :cond_a
    invoke-virtual {p3, p0, p1, p2}, Landroidx/recyclerview/widget/u;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_b
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    return-void
.end method

.method public jumpToPositionForSmoothScroller(I)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/w0;->scrollToPosition(I)V

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    return-void
.end method

.method public final k(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 7
    .line 8
    iget-object v2, v0, Landroidx/recyclerview/widget/b;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/b;->l(Ljava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/b;->l(Ljava/util/ArrayList;)V

    .line 16
    .line 17
    .line 18
    iput v1, v0, Landroidx/recyclerview/widget/b;->f:I

    .line 19
    .line 20
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/w0;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->supportsPredictiveItemAnimations()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->j()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->c()V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v0, v1

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    :goto_1
    move v0, v2

    .line 65
    :goto_2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 66
    .line 67
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 68
    .line 69
    if-eqz v4, :cond_6

    .line 70
    .line 71
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 72
    .line 73
    if-eqz v4, :cond_6

    .line 74
    .line 75
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 76
    .line 77
    if-nez v4, :cond_4

    .line 78
    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 82
    .line 83
    iget-boolean v5, v5, Landroidx/recyclerview/widget/w0;->mRequestedSimpleAnimations:Z

    .line 84
    .line 85
    if-eqz v5, :cond_6

    .line 86
    .line 87
    :cond_4
    if-eqz v4, :cond_5

    .line 88
    .line 89
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 90
    .line 91
    invoke-virtual {v4}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_6

    .line 96
    .line 97
    :cond_5
    move v4, v2

    .line 98
    goto :goto_3

    .line 99
    :cond_6
    move v4, v1

    .line 100
    :goto_3
    iput-boolean v4, v3, Landroidx/recyclerview/widget/l1;->j:Z

    .line 101
    .line 102
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 103
    .line 104
    iget-boolean v4, v3, Landroidx/recyclerview/widget/l1;->j:Z

    .line 105
    .line 106
    if-eqz v4, :cond_7

    .line 107
    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 111
    .line 112
    if-nez v0, :cond_7

    .line 113
    .line 114
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 115
    .line 116
    if-eqz v0, :cond_7

    .line 117
    .line 118
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->supportsPredictiveItemAnimations()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    move v1, v2

    .line 127
    :cond_7
    iput-boolean v1, v3, Landroidx/recyclerview/widget/l1;->k:Z

    .line 128
    .line 129
    return-void
.end method

.method public final m(FI)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    :goto_0
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float p2, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-static {v0, p2, v2}, Lg/a;->w(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float p1, p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    :goto_1
    move v1, p1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-static {v0, p2, p1}, Lg/a;->w(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public markItemDecorInsetsDirty()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    const/4 v3, 0x1

    .line 10
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 13
    .line 14
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/e;->g(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Landroidx/recyclerview/widget/x0;

    .line 23
    .line 24
    iput-boolean v3, v4, Landroidx/recyclerview/widget/x0;->c:Z

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 30
    .line 31
    iget-object v0, v0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_1
    if-ge v1, v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroidx/recyclerview/widget/p1;

    .line 44
    .line 45
    iget-object v4, v4, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Landroidx/recyclerview/widget/x0;

    .line 52
    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    iput-boolean v3, v4, Landroidx/recyclerview/widget/x0;->c:Z

    .line 56
    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    return-void
.end method

.method public markKnownViewsInvalid()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    const/4 v3, 0x6

    .line 10
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 13
    .line 14
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/e;->g(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v4}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 40
    .line 41
    iget-object v2, v0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    :goto_1
    if-ge v1, v4, :cond_3

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Landroidx/recyclerview/widget/p1;

    .line 54
    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 58
    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/p1;->addChangePayload(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    iget-object v1, v0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    .line 69
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_5

    .line 78
    .line 79
    :cond_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/e1;->g()V

    .line 80
    .line 81
    .line 82
    :cond_5
    return-void
.end method

.method public final n(FI)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    :goto_0
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float p2, p2

    invoke-static {v0, p2, p1}, Lg/a;->w(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float p1, p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    :goto_1
    move v1, p1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-static {v0, p2, v2}, Lg/a;->w(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public nestedScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->j(IILandroid/view/MotionEvent;)V

    return-void
.end method

.method public final o(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    .line 1
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/x0;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/x0;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/x0;->c:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v0, v0, Landroidx/recyclerview/widget/x0;->b:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_2
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_3

    move v10, v1

    goto :goto_1

    :cond_3
    move v10, v4

    :goto_1
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Landroidx/recyclerview/widget/w0;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->e()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/e;->d(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->e()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/e;->d(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetPositionRecordsForInsert(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/e;->g(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    iget v4, v3, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 30
    .line 31
    if-lt v4, p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3, p2, v1}, Landroidx/recyclerview/widget/p1;->offsetPosition(IZ)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    iput-boolean v4, v3, Landroidx/recyclerview/widget/l1;->f:Z

    .line 40
    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    move v3, v1

    .line 53
    :goto_1
    if-ge v3, v2, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Landroidx/recyclerview/widget/p1;

    .line 60
    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    iget v5, v4, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 64
    .line 65
    if-lt v5, p1, :cond_2

    .line 66
    .line 67
    invoke-virtual {v4, p2, v1}, Landroidx/recyclerview/widget/p1;->offsetPosition(IZ)V

    .line 68
    .line 69
    .line 70
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public offsetPositionRecordsForMove(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ge p1, p2, :cond_0

    .line 10
    .line 11
    move v3, p1

    .line 12
    move v4, p2

    .line 13
    move v5, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v4, p1

    .line 16
    move v3, p2

    .line 17
    move v5, v2

    .line 18
    :goto_0
    const/4 v6, 0x0

    .line 19
    move v7, v6

    .line 20
    :goto_1
    if-ge v7, v0, :cond_4

    .line 21
    .line 22
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 23
    .line 24
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/e;->g(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    if-eqz v8, :cond_3

    .line 33
    .line 34
    iget v9, v8, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 35
    .line 36
    if-lt v9, v3, :cond_3

    .line 37
    .line 38
    if-le v9, v4, :cond_1

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_1
    if-ne v9, p1, :cond_2

    .line 42
    .line 43
    sub-int v9, p2, p1

    .line 44
    .line 45
    invoke-virtual {v8, v9, v6}, Landroidx/recyclerview/widget/p1;->offsetPosition(IZ)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-virtual {v8, v5, v6}, Landroidx/recyclerview/widget/p1;->offsetPosition(IZ)V

    .line 50
    .line 51
    .line 52
    :goto_2
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 53
    .line 54
    iput-boolean v2, v8, Landroidx/recyclerview/widget/l1;->f:Z

    .line 55
    .line 56
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    if-ge p1, p2, :cond_5

    .line 65
    .line 66
    move v2, p1

    .line 67
    move v3, p2

    .line 68
    goto :goto_4

    .line 69
    :cond_5
    move v3, p1

    .line 70
    move v1, v2

    .line 71
    move v2, p2

    .line 72
    :goto_4
    iget-object v0, v0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    move v5, v6

    .line 79
    :goto_5
    if-ge v5, v4, :cond_9

    .line 80
    .line 81
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Landroidx/recyclerview/widget/p1;

    .line 86
    .line 87
    if-eqz v7, :cond_8

    .line 88
    .line 89
    iget v8, v7, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 90
    .line 91
    if-lt v8, v2, :cond_8

    .line 92
    .line 93
    if-le v8, v3, :cond_6

    .line 94
    .line 95
    goto :goto_6

    .line 96
    :cond_6
    if-ne v8, p1, :cond_7

    .line 97
    .line 98
    sub-int v8, p2, p1

    .line 99
    .line 100
    invoke-virtual {v7, v8, v6}, Landroidx/recyclerview/widget/p1;->offsetPosition(IZ)V

    .line 101
    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_7
    invoke-virtual {v7, v1, v6}, Landroidx/recyclerview/widget/p1;->offsetPosition(IZ)V

    .line 105
    .line 106
    .line 107
    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public offsetPositionRecordsForRemove(IIZ)V
    .locals 7

    .line 1
    add-int v0, p1, p2

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/e;->h()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    const/4 v3, 0x1

    .line 11
    if-ge v2, v1, :cond_2

    .line 12
    .line 13
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 14
    .line 15
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/e;->g(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v4}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-nez v5, :cond_1

    .line 30
    .line 31
    iget v5, v4, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 32
    .line 33
    if-lt v5, v0, :cond_0

    .line 34
    .line 35
    neg-int v5, p2

    .line 36
    invoke-virtual {v4, v5, p3}, Landroidx/recyclerview/widget/p1;->offsetPosition(IZ)V

    .line 37
    .line 38
    .line 39
    :goto_1
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 40
    .line 41
    iput-boolean v3, v4, Landroidx/recyclerview/widget/l1;->f:Z

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_0
    if-lt v5, p1, :cond_1

    .line 45
    .line 46
    add-int/lit8 v5, p1, -0x1

    .line 47
    .line 48
    neg-int v6, p2

    .line 49
    invoke-virtual {v4, v5, v6, p3}, Landroidx/recyclerview/widget/p1;->flagRemovedAndOffsetPosition(IIZ)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 57
    .line 58
    iget-object v2, v1, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    sub-int/2addr v4, v3

    .line 65
    :goto_3
    if-ltz v4, :cond_5

    .line 66
    .line 67
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Landroidx/recyclerview/widget/p1;

    .line 72
    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    iget v5, v3, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 76
    .line 77
    if-lt v5, v0, :cond_3

    .line 78
    .line 79
    neg-int v5, p2

    .line 80
    invoke-virtual {v3, v5, p3}, Landroidx/recyclerview/widget/p1;->offsetPosition(IZ)V

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_3
    if-lt v5, p1, :cond_4

    .line 85
    .line 86
    const/16 v5, 0x8

    .line 87
    .line 88
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/e1;->h(I)V

    .line 92
    .line 93
    .line 94
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, -0x1

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 9
    .line 10
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v0

    .line 22
    :goto_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/recyclerview/widget/e1;->e()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/w0;->dispatchAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 37
    .line 38
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    sget-object v0, Landroidx/recyclerview/widget/u;->e:Ljava/lang/ThreadLocal;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroidx/recyclerview/widget/u;

    .line 49
    .line 50
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/u;

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    new-instance v1, Landroidx/recyclerview/widget/u;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v2, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v2, v1, Landroidx/recyclerview/widget/u;->a:Ljava/util/ArrayList;

    .line 65
    .line 66
    new-instance v2, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v2, v1, Landroidx/recyclerview/widget/u;->d:Ljava/util/ArrayList;

    .line 72
    .line 73
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/u;

    .line 74
    .line 75
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 76
    .line 77
    invoke-static {p0}, Landroidx/core/view/l0;->b(Landroid/view/View;)Landroid/view/Display;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_2

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/high16 v2, 0x41f00000    # 30.0f

    .line 94
    .line 95
    cmpl-float v2, v1, v2

    .line 96
    .line 97
    if-ltz v2, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    const/high16 v1, 0x42700000    # 60.0f

    .line 101
    .line 102
    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/u;

    .line 103
    .line 104
    const v3, 0x4e6e6b28    # 1.0E9f

    .line 105
    .line 106
    .line 107
    div-float/2addr v3, v1

    .line 108
    float-to-long v3, v3

    .line 109
    iput-wide v3, v2, Landroidx/recyclerview/widget/u;->c:J

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/u;

    .line 115
    .line 116
    iget-object v0, v0, Landroidx/recyclerview/widget/u;->a:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :cond_4
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/r0;->e()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 22
    .line 23
    invoke-virtual {v1, p0, v2}, Landroidx/recyclerview/widget/w0;->dispatchDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/e1;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    :goto_0
    sget-object v1, Landroidx/recyclerview/widget/e2;->d:Lo/f;

    .line 42
    .line 43
    invoke-virtual {v1}, Lo/f;->b()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 51
    .line 52
    move v2, v0

    .line 53
    :goto_1
    iget-object v3, v1, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-ge v2, v4, :cond_3

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroidx/recyclerview/widget/p1;

    .line 66
    .line 67
    iget-object v3, v3, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 68
    .line 69
    invoke-static {v3}, Li5/a;->j(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iget-object v2, v1, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    .line 77
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 78
    .line 79
    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/e1;->f(Landroidx/recyclerview/widget/k0;Z)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Landroidx/core/view/j1;

    .line 83
    .line 84
    invoke-direct {v1, p0, v0}, Landroidx/core/view/j1;-><init>(Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    :goto_2
    invoke-virtual {v1}, Landroidx/core/view/j1;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/4 v2, 0x0

    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/core/view/j1;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroid/view/View;

    .line 99
    .line 100
    const v3, 0x7f0a04cd

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Lm0/a;

    .line 108
    .line 109
    if-nez v4, :cond_4

    .line 110
    .line 111
    new-instance v4, Lm0/a;

    .line 112
    .line 113
    invoke-direct {v4}, Lm0/a;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_4
    iget-object v0, v4, Lm0/a;->a:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-static {v0}, Lv1/f;->v(Ljava/util/List;)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    const/4 v4, -0x1

    .line 126
    if-lt v4, v3, :cond_5

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    throw v2

    .line 137
    :cond_6
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 138
    .line 139
    if-eqz v0, :cond_7

    .line 140
    .line 141
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/u;

    .line 142
    .line 143
    if-eqz v0, :cond_7

    .line 144
    .line 145
    iget-object v0, v0, Landroidx/recyclerview/widget/u;->a:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/u;

    .line 151
    .line 152
    :cond_7
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/s0;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {v2, p1, p0, v3}, Landroidx/recyclerview/widget/s0;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEnterLayoutOrScroll()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    return-void
.end method

.method public onExitLayoutOrScroll()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    return-void
.end method

.method public onExitLayoutOrScroll(Z)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 3
    invoke-static {v0, p1}, Lh0/b;->b(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_5

    neg-float v0, v0

    goto :goto_1

    :cond_5
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v0

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    move v3, v0

    :goto_2
    cmpl-float v4, v0, v2

    if-nez v4, :cond_7

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_8

    :cond_7
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->j(IILandroid/view/MotionEvent;)V

    :cond_8
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/a1;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 40
    .line 41
    if-nez v4, :cond_3

    .line 42
    .line 43
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 48
    .line 49
    :cond_3
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 50
    .line 51
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const/4 v6, 0x2

    .line 63
    const/high16 v7, 0x3f000000    # 0.5f

    .line 64
    .line 65
    if-eqz v4, :cond_c

    .line 66
    .line 67
    if-eq v4, v2, :cond_b

    .line 68
    .line 69
    if-eq v4, v6, :cond_7

    .line 70
    .line 71
    const/4 v0, 0x3

    .line 72
    if-eq v4, v0, :cond_6

    .line 73
    .line 74
    const/4 v0, 0x5

    .line 75
    if-eq v4, v0, :cond_5

    .line 76
    .line 77
    const/4 v0, 0x6

    .line 78
    if-eq v4, v0, :cond_4

    .line 79
    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->k(Landroid/view/MotionEvent;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :cond_5
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 92
    .line 93
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    add-float/2addr v0, v7

    .line 98
    float-to-int v0, v0

    .line 99
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 100
    .line 101
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 102
    .line 103
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    add-float/2addr p1, v7

    .line 108
    float-to-int p1, p1

    .line 109
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 110
    .line 111
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 112
    .line 113
    goto/16 :goto_4

    .line 114
    .line 115
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :cond_7
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 124
    .line 125
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-gez v4, :cond_8

    .line 130
    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v0, "Error processing scroll; pointer index for id "

    .line 134
    .line 135
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v0, " not found. Did any MotionEvents get skipped?"

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    const-string v0, "RecyclerView"

    .line 153
    .line 154
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    return v1

    .line 158
    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    add-float/2addr v5, v7

    .line 163
    float-to-int v5, v5

    .line 164
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    add-float/2addr p1, v7

    .line 169
    float-to-int p1, p1

    .line 170
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 171
    .line 172
    if-eq v4, v2, :cond_15

    .line 173
    .line 174
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 175
    .line 176
    sub-int v4, v5, v4

    .line 177
    .line 178
    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 179
    .line 180
    sub-int v6, p1, v6

    .line 181
    .line 182
    if-eqz v0, :cond_9

    .line 183
    .line 184
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 189
    .line 190
    if-le v0, v4, :cond_9

    .line 191
    .line 192
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 193
    .line 194
    move v0, v2

    .line 195
    goto :goto_0

    .line 196
    :cond_9
    move v0, v1

    .line 197
    :goto_0
    if-eqz v3, :cond_a

    .line 198
    .line 199
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 204
    .line 205
    if-le v3, v4, :cond_a

    .line 206
    .line 207
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_a
    if-eqz v0, :cond_15

    .line 211
    .line 212
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_4

    .line 216
    .line 217
    :cond_b
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_4

    .line 226
    .line 227
    :cond_c
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 228
    .line 229
    if-eqz v4, :cond_d

    .line 230
    .line 231
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 232
    .line 233
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 238
    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    add-float/2addr v4, v7

    .line 244
    float-to-int v4, v4

    .line 245
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 246
    .line 247
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 248
    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    add-float/2addr v4, v7

    .line 254
    float-to-int v4, v4

    .line 255
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 256
    .line 257
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 258
    .line 259
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 260
    .line 261
    const/high16 v5, 0x3f800000    # 1.0f

    .line 262
    .line 263
    const/4 v7, -0x1

    .line 264
    const/4 v8, 0x0

    .line 265
    if-eqz v4, :cond_e

    .line 266
    .line 267
    invoke-static {v4}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    cmpl-float v4, v4, v8

    .line 272
    .line 273
    if-eqz v4, :cond_e

    .line 274
    .line 275
    invoke-virtual {p0, v7}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    if-nez v4, :cond_e

    .line 280
    .line 281
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 282
    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 284
    .line 285
    .line 286
    move-result v9

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 288
    .line 289
    .line 290
    move-result v10

    .line 291
    int-to-float v10, v10

    .line 292
    div-float/2addr v9, v10

    .line 293
    sub-float v9, v5, v9

    .line 294
    .line 295
    invoke-static {v4, v8, v9}, Lg/a;->w(Landroid/widget/EdgeEffect;FF)F

    .line 296
    .line 297
    .line 298
    move v4, v2

    .line 299
    goto :goto_2

    .line 300
    :cond_e
    move v4, v1

    .line 301
    :goto_2
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 302
    .line 303
    if-eqz v9, :cond_f

    .line 304
    .line 305
    invoke-static {v9}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    .line 306
    .line 307
    .line 308
    move-result v9

    .line 309
    cmpl-float v9, v9, v8

    .line 310
    .line 311
    if-eqz v9, :cond_f

    .line 312
    .line 313
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 314
    .line 315
    .line 316
    move-result v9

    .line 317
    if-nez v9, :cond_f

    .line 318
    .line 319
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 320
    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 326
    .line 327
    .line 328
    move-result v10

    .line 329
    int-to-float v10, v10

    .line 330
    div-float/2addr v9, v10

    .line 331
    invoke-static {v4, v8, v9}, Lg/a;->w(Landroid/widget/EdgeEffect;FF)F

    .line 332
    .line 333
    .line 334
    move v4, v2

    .line 335
    :cond_f
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 336
    .line 337
    if-eqz v9, :cond_10

    .line 338
    .line 339
    invoke-static {v9}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    .line 340
    .line 341
    .line 342
    move-result v9

    .line 343
    cmpl-float v9, v9, v8

    .line 344
    .line 345
    if-eqz v9, :cond_10

    .line 346
    .line 347
    invoke-virtual {p0, v7}, Landroid/view/View;->canScrollVertically(I)Z

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    if-nez v7, :cond_10

    .line 352
    .line 353
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 354
    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 360
    .line 361
    .line 362
    move-result v9

    .line 363
    int-to-float v9, v9

    .line 364
    div-float/2addr v7, v9

    .line 365
    invoke-static {v4, v8, v7}, Lg/a;->w(Landroid/widget/EdgeEffect;FF)F

    .line 366
    .line 367
    .line 368
    move v4, v2

    .line 369
    :cond_10
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 370
    .line 371
    if-eqz v7, :cond_11

    .line 372
    .line 373
    invoke-static {v7}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    .line 374
    .line 375
    .line 376
    move-result v7

    .line 377
    cmpl-float v7, v7, v8

    .line 378
    .line 379
    if-eqz v7, :cond_11

    .line 380
    .line 381
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 382
    .line 383
    .line 384
    move-result v7

    .line 385
    if-nez v7, :cond_11

    .line 386
    .line 387
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 388
    .line 389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 390
    .line 391
    .line 392
    move-result p1

    .line 393
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 394
    .line 395
    .line 396
    move-result v6

    .line 397
    int-to-float v6, v6

    .line 398
    div-float/2addr p1, v6

    .line 399
    sub-float/2addr v5, p1

    .line 400
    invoke-static {v4, v8, v5}, Lg/a;->w(Landroid/widget/EdgeEffect;FF)F

    .line 401
    .line 402
    .line 403
    goto :goto_3

    .line 404
    :cond_11
    if-nez v4, :cond_12

    .line 405
    .line 406
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 407
    .line 408
    if-ne p1, v6, :cond_13

    .line 409
    .line 410
    :cond_12
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 421
    .line 422
    .line 423
    :cond_13
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    .line 424
    .line 425
    aput v1, p1, v2

    .line 426
    .line 427
    aput v1, p1, v1

    .line 428
    .line 429
    if-eqz v3, :cond_14

    .line 430
    .line 431
    or-int/lit8 v0, v0, 0x2

    .line 432
    .line 433
    :cond_14
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 434
    .line 435
    .line 436
    :cond_15
    :goto_4
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 437
    .line 438
    if-ne p1, v2, :cond_16

    .line 439
    .line 440
    move v1, v2

    .line 441
    :cond_16
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    sget p1, Ld0/l;->a:I

    .line 2
    .line 3
    const-string p1, "RV OnLayout"

    .line 4
    .line 5
    invoke-static {p1}, Ld0/k;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ld0/k;->b()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 16
    .line 17
    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->isAutoMeasureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {v4, v5, v6, p1, p2}, Landroidx/recyclerview/widget/w0;->onMeasure(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;II)V

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1

    if-ne v3, v4, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    if-nez v2, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    iget v0, v0, Landroidx/recyclerview/widget/l1;->d:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->f()V

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/w0;->setMeasureSpecs(II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/l1;->i:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->g()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/w0;->setMeasuredDimensionFromChildren(II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->shouldMeasureTwice()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/w0;->setMeasureSpecs(II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/l1;->i:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->g()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/w0;->setMeasuredDimensionFromChildren(II)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    goto :goto_4

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/recyclerview/widget/w0;->onMeasure(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;II)V

    return-void

    :cond_7
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->l()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    iget-boolean v3, v0, Landroidx/recyclerview/widget/l1;->k:Z

    if-eqz v3, :cond_8

    iput-boolean v1, v0, Landroidx/recyclerview/widget/l1;->g:Z

    goto :goto_1

    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->c()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    iput-boolean v2, v0, Landroidx/recyclerview/widget/l1;->g:Z

    :goto_1
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/l1;->k:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_a
    :goto_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    if-eqz v0, :cond_b

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    move-result v0

    iput v0, v1, Landroidx/recyclerview/widget/l1;->e:I

    goto :goto_3

    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    iput v2, v0, Landroidx/recyclerview/widget/l1;->e:I

    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {v0, v1, v3, p1, p2}, Landroidx/recyclerview/widget/w0;->onMeasure(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;II)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    iput-boolean v2, p1, Landroidx/recyclerview/widget/l1;->g:Z

    :goto_4
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/h1;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/h1;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/h1;

    invoke-virtual {p1}, Ln0/b;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/h1;

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
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/h1;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/recyclerview/widget/h1;->a:Landroid/os/Parcelable;

    .line 15
    .line 16
    iput-object v1, v0, Landroidx/recyclerview/widget/h1;->a:Landroid/os/Parcelable;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    iput-object v1, v0, Landroidx/recyclerview/widget/h1;->a:Landroid/os/Parcelable;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    goto :goto_0

    .line 32
    :goto_1
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    if-nez v0, :cond_23

    .line 9
    .line 10
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_d

    .line 15
    .line 16
    :cond_0
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/a1;

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    const/4 v9, 0x1

    .line 20
    if-nez v0, :cond_20

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroid/view/MotionEvent;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    goto/16 :goto_c

    .line 36
    .line 37
    :cond_2
    :goto_0
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 38
    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    return v8

    .line 42
    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 53
    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 61
    .line 62
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    .line 73
    .line 74
    aput v8, v3, v9

    .line 75
    .line 76
    aput v8, v3, v8

    .line 77
    .line 78
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    .line 83
    .line 84
    aget v4, v3, v8

    .line 85
    .line 86
    int-to-float v4, v4

    .line 87
    aget v3, v3, v9

    .line 88
    .line 89
    int-to-float v3, v3

    .line 90
    invoke-virtual {v12, v4, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 91
    .line 92
    .line 93
    const/high16 v3, 0x3f000000    # 0.5f

    .line 94
    .line 95
    if-eqz v0, :cond_1d

    .line 96
    .line 97
    if-eq v0, v9, :cond_17

    .line 98
    .line 99
    const/4 v4, 0x2

    .line 100
    if-eq v0, v4, :cond_9

    .line 101
    .line 102
    if-eq v0, v1, :cond_8

    .line 103
    .line 104
    const/4 v1, 0x5

    .line 105
    if-eq v0, v1, :cond_7

    .line 106
    .line 107
    const/4 v1, 0x6

    .line 108
    if-eq v0, v1, :cond_6

    .line 109
    .line 110
    goto/16 :goto_a

    .line 111
    .line 112
    :cond_6
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->k(Landroid/view/MotionEvent;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_a

    .line 116
    .line 117
    :cond_7
    invoke-virtual {v7, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 122
    .line 123
    invoke-virtual {v7, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    add-float/2addr v0, v3

    .line 128
    float-to-int v0, v0

    .line 129
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 130
    .line 131
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 132
    .line 133
    invoke-virtual {v7, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    add-float/2addr v0, v3

    .line 138
    float-to-int v0, v0

    .line 139
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 140
    .line 141
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 142
    .line 143
    goto/16 :goto_a

    .line 144
    .line 145
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_a

    .line 152
    .line 153
    :cond_9
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 154
    .line 155
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-gez v0, :cond_a

    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v1, "Error processing scroll; pointer index for id "

    .line 164
    .line 165
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v1, " not found. Did any MotionEvents get skipped?"

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v1, "RecyclerView"

    .line 183
    .line 184
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    return v8

    .line 188
    :cond_a
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    add-float/2addr v1, v3

    .line 193
    float-to-int v13, v1

    .line 194
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    add-float/2addr v0, v3

    .line 199
    float-to-int v14, v0

    .line 200
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 201
    .line 202
    sub-int/2addr v0, v13

    .line 203
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 204
    .line 205
    sub-int/2addr v1, v14

    .line 206
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 207
    .line 208
    if-eq v2, v9, :cond_f

    .line 209
    .line 210
    if-eqz v10, :cond_c

    .line 211
    .line 212
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 213
    .line 214
    if-lez v0, :cond_b

    .line 215
    .line 216
    sub-int/2addr v0, v2

    .line 217
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    goto :goto_1

    .line 222
    :cond_b
    add-int/2addr v0, v2

    .line 223
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    :goto_1
    if-eqz v0, :cond_c

    .line 228
    .line 229
    move v2, v9

    .line 230
    goto :goto_2

    .line 231
    :cond_c
    move v2, v8

    .line 232
    :goto_2
    if-eqz v11, :cond_e

    .line 233
    .line 234
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 235
    .line 236
    if-lez v1, :cond_d

    .line 237
    .line 238
    sub-int/2addr v1, v3

    .line 239
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    goto :goto_3

    .line 244
    :cond_d
    add-int/2addr v1, v3

    .line 245
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    :goto_3
    if-eqz v1, :cond_e

    .line 250
    .line 251
    move v2, v9

    .line 252
    :cond_e
    if-eqz v2, :cond_f

    .line 253
    .line 254
    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 255
    .line 256
    .line 257
    :cond_f
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 258
    .line 259
    if-ne v2, v9, :cond_1f

    .line 260
    .line 261
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 262
    .line 263
    aput v8, v2, v8

    .line 264
    .line 265
    aput v8, v2, v9

    .line 266
    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    invoke-virtual {v6, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->m(FI)I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    sub-int v15, v0, v2

    .line 276
    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    invoke-virtual {v6, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->n(FI)I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    sub-int v16, v1, v0

    .line 286
    .line 287
    if-eqz v10, :cond_10

    .line 288
    .line 289
    move v1, v15

    .line 290
    goto :goto_4

    .line 291
    :cond_10
    move v1, v8

    .line 292
    :goto_4
    if-eqz v11, :cond_11

    .line 293
    .line 294
    move/from16 v2, v16

    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_11
    move v2, v8

    .line 298
    :goto_5
    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 299
    .line 300
    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    .line 301
    .line 302
    const/4 v5, 0x0

    .line 303
    move-object/from16 v0, p0

    .line 304
    .line 305
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-eqz v0, :cond_12

    .line 310
    .line 311
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 312
    .line 313
    aget v1, v0, v8

    .line 314
    .line 315
    sub-int/2addr v15, v1

    .line 316
    aget v0, v0, v9

    .line 317
    .line 318
    sub-int v16, v16, v0

    .line 319
    .line 320
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    .line 321
    .line 322
    aget v1, v0, v8

    .line 323
    .line 324
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    .line 325
    .line 326
    aget v3, v2, v8

    .line 327
    .line 328
    add-int/2addr v1, v3

    .line 329
    aput v1, v0, v8

    .line 330
    .line 331
    aget v1, v0, v9

    .line 332
    .line 333
    aget v2, v2, v9

    .line 334
    .line 335
    add-int/2addr v1, v2

    .line 336
    aput v1, v0, v9

    .line 337
    .line 338
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 343
    .line 344
    .line 345
    :cond_12
    move/from16 v0, v16

    .line 346
    .line 347
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    .line 348
    .line 349
    aget v2, v1, v8

    .line 350
    .line 351
    sub-int/2addr v13, v2

    .line 352
    iput v13, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 353
    .line 354
    aget v1, v1, v9

    .line 355
    .line 356
    sub-int/2addr v14, v1

    .line 357
    iput v14, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 358
    .line 359
    if-eqz v10, :cond_13

    .line 360
    .line 361
    move v1, v15

    .line 362
    goto :goto_6

    .line 363
    :cond_13
    move v1, v8

    .line 364
    :goto_6
    if-eqz v11, :cond_14

    .line 365
    .line 366
    move v2, v0

    .line 367
    goto :goto_7

    .line 368
    :cond_14
    move v2, v8

    .line 369
    :goto_7
    invoke-virtual {v6, v1, v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-eqz v1, :cond_15

    .line 374
    .line 375
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-interface {v1, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 380
    .line 381
    .line 382
    :cond_15
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/u;

    .line 383
    .line 384
    if-eqz v1, :cond_1f

    .line 385
    .line 386
    if-nez v15, :cond_16

    .line 387
    .line 388
    if-eqz v0, :cond_1f

    .line 389
    .line 390
    :cond_16
    invoke-virtual {v1, v6, v15, v0}, Landroidx/recyclerview/widget/u;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 391
    .line 392
    .line 393
    goto :goto_a

    .line 394
    :cond_17
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 395
    .line 396
    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 397
    .line 398
    .line 399
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 400
    .line 401
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 402
    .line 403
    int-to-float v1, v1

    .line 404
    const/16 v2, 0x3e8

    .line 405
    .line 406
    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 407
    .line 408
    .line 409
    const/4 v0, 0x0

    .line 410
    if-eqz v10, :cond_18

    .line 411
    .line 412
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 413
    .line 414
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 415
    .line 416
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    neg-float v1, v1

    .line 421
    goto :goto_8

    .line 422
    :cond_18
    move v1, v0

    .line 423
    :goto_8
    if-eqz v11, :cond_19

    .line 424
    .line 425
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 426
    .line 427
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 428
    .line 429
    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    neg-float v2, v2

    .line 434
    goto :goto_9

    .line 435
    :cond_19
    move v2, v0

    .line 436
    :goto_9
    cmpl-float v3, v1, v0

    .line 437
    .line 438
    if-nez v3, :cond_1a

    .line 439
    .line 440
    cmpl-float v0, v2, v0

    .line 441
    .line 442
    if-eqz v0, :cond_1b

    .line 443
    .line 444
    :cond_1a
    float-to-int v0, v1

    .line 445
    float-to-int v1, v2

    .line 446
    invoke-virtual {v6, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-nez v0, :cond_1c

    .line 451
    .line 452
    :cond_1b
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 453
    .line 454
    .line 455
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 456
    .line 457
    .line 458
    goto :goto_b

    .line 459
    :cond_1d
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 464
    .line 465
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    add-float/2addr v0, v3

    .line 470
    float-to-int v0, v0

    .line 471
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 472
    .line 473
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 474
    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    add-float/2addr v0, v3

    .line 480
    float-to-int v0, v0

    .line 481
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 482
    .line 483
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 484
    .line 485
    if-eqz v11, :cond_1e

    .line 486
    .line 487
    or-int/lit8 v10, v10, 0x2

    .line 488
    .line 489
    :cond_1e
    invoke-virtual {v6, v10, v8}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 490
    .line 491
    .line 492
    :cond_1f
    :goto_a
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 493
    .line 494
    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 495
    .line 496
    .line 497
    :goto_b
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 498
    .line 499
    .line 500
    return v9

    .line 501
    :cond_20
    invoke-interface {v0, v7}, Landroidx/recyclerview/widget/a1;->a(Landroid/view/MotionEvent;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    if-eq v0, v1, :cond_21

    .line 509
    .line 510
    if-ne v0, v9, :cond_22

    .line 511
    .line 512
    :cond_21
    const/4 v0, 0x0

    .line 513
    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/a1;

    .line 514
    .line 515
    :cond_22
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 519
    .line 520
    .line 521
    return v9

    .line 522
    :cond_23
    :goto_d
    return v8
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    or-int/2addr v0, v1

    .line 39
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    or-int/2addr v0, v1

    .line 53
    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    or-int/2addr v0, v1

    .line 67
    :cond_4
    if-eqz v0, :cond_5

    .line 68
    .line 69
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 70
    .line 71
    invoke-static {p0}, Landroidx/core/view/k0;->k(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    :cond_5
    return-void
.end method

.method public postAnimationRunner()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 10
    .line 11
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    invoke-static {p0, v0}, Landroidx/core/view/k0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public processDataSetCompletelyChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markKnownViewsInvalid()V

    return-void
.end method

.method public final q(Landroidx/recyclerview/widget/k0;ZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/g1;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k0;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/m0;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/k0;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    if-eqz p2, :cond_1

    .line 16
    .line 17
    if-eqz p3, :cond_2

    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 23
    .line 24
    iget-object v0, p3, Landroidx/recyclerview/widget/b;->b:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/b;->l(Ljava/util/ArrayList;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p3, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/b;->l(Ljava/util/ArrayList;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput v0, p3, Landroidx/recyclerview/widget/b;->f:I

    .line 36
    .line 37
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 38
    .line 39
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/g1;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/k0;->registerAdapterDataObserver(Landroidx/recyclerview/widget/m0;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/k0;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 56
    .line 57
    invoke-virtual {p1, p3, v1}, Landroidx/recyclerview/widget/w0;->onAdapterChanged(Landroidx/recyclerview/widget/k0;Landroidx/recyclerview/widget/k0;)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 61
    .line 62
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 63
    .line 64
    iget-object v2, p1, Landroidx/recyclerview/widget/e1;->a:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroidx/recyclerview/widget/e1;->g()V

    .line 70
    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    invoke-virtual {p1, p3, v2}, Landroidx/recyclerview/widget/e1;->f(Landroidx/recyclerview/widget/k0;Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/recyclerview/widget/e1;->c()Landroidx/recyclerview/widget/d1;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz p3, :cond_5

    .line 81
    .line 82
    iget p3, v3, Landroidx/recyclerview/widget/d1;->b:I

    .line 83
    .line 84
    sub-int/2addr p3, v2

    .line 85
    iput p3, v3, Landroidx/recyclerview/widget/d1;->b:I

    .line 86
    .line 87
    :cond_5
    if-nez p2, :cond_7

    .line 88
    .line 89
    iget p2, v3, Landroidx/recyclerview/widget/d1;->b:I

    .line 90
    .line 91
    if-nez p2, :cond_7

    .line 92
    .line 93
    :goto_0
    iget-object p2, v3, Landroidx/recyclerview/widget/d1;->a:Landroid/util/SparseArray;

    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    if-ge v0, p3, :cond_7

    .line 100
    .line 101
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Landroidx/recyclerview/widget/c1;

    .line 106
    .line 107
    iget-object p3, p2, Landroidx/recyclerview/widget/c1;->a:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_6

    .line 118
    .line 119
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Landroidx/recyclerview/widget/p1;

    .line 124
    .line 125
    iget-object v4, v4, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 126
    .line 127
    invoke-static {v4}, Li5/a;->j(Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    iget-object p2, p2, Landroidx/recyclerview/widget/c1;->a:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 134
    .line 135
    .line 136
    add-int/lit8 v0, v0, 0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_7
    if-eqz v1, :cond_8

    .line 140
    .line 141
    iget p2, v3, Landroidx/recyclerview/widget/d1;->b:I

    .line 142
    .line 143
    add-int/2addr p2, v2

    .line 144
    iput p2, v3, Landroidx/recyclerview/widget/d1;->b:I

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/e1;->e()V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 154
    .line 155
    iput-boolean v2, p1, Landroidx/recyclerview/widget/l1;->f:Z

    .line 156
    .line 157
    return-void
.end method

.method public final r(Landroid/widget/EdgeEffect;II)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p1}, Lg/a;->g(Landroid/widget/EdgeEffect;)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-float p3, p3

    .line 10
    mul-float/2addr p1, p3

    .line 11
    neg-int p2, p2

    .line 12
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    int-to-float p2, p2

    .line 17
    const p3, 0x3eb33333    # 0.35f

    .line 18
    .line 19
    .line 20
    mul-float/2addr p2, p3

    .line 21
    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPhysicalCoef:F

    .line 22
    .line 23
    const v1, 0x3c75c28f    # 0.015f

    .line 24
    .line 25
    .line 26
    mul-float/2addr p3, v1

    .line 27
    div-float/2addr p2, p3

    .line 28
    float-to-double p2, p2

    .line 29
    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide p2

    .line 33
    sget v2, Landroidx/recyclerview/widget/RecyclerView;->DECELERATION_RATE:F

    .line 34
    .line 35
    float-to-double v2, v2

    .line 36
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 37
    .line 38
    sub-double v4, v2, v4

    .line 39
    .line 40
    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mPhysicalCoef:F

    .line 41
    .line 42
    mul-float/2addr v6, v1

    .line 43
    float-to-double v6, v6

    .line 44
    div-double/2addr v2, v4

    .line 45
    mul-double/2addr v2, p2

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    .line 47
    .line 48
    .line 49
    move-result-wide p2

    .line 50
    mul-double/2addr p2, v6

    .line 51
    double-to-float p2, p2

    .line 52
    cmpg-float p1, p2, p1

    .line 53
    .line 54
    if-gez p1, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0
.end method

.method public recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/q0;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x2000

    .line 3
    .line 4
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/p1;->setFlags(II)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 8
    .line 9
    iget-boolean v0, v0, Landroidx/recyclerview/widget/l1;->h:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isUpdated()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/p1;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 36
    .line 37
    iget-object v2, v2, Landroidx/recyclerview/widget/g2;->b:Ln/e;

    .line 38
    .line 39
    invoke-virtual {v2, p1, v0, v1}, Ln/e;->f(Ljava/lang/Object;J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 43
    .line 44
    iget-object v0, v0, Landroidx/recyclerview/widget/g2;->a:Ln/k;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, p1, v1}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroidx/recyclerview/widget/e2;

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    invoke-static {}, Landroidx/recyclerview/widget/e2;->a()Landroidx/recyclerview/widget/e2;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, p1, v1}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_1
    iput-object p2, v1, Landroidx/recyclerview/widget/e2;->b:Landroidx/recyclerview/widget/q0;

    .line 63
    .line 64
    iget p1, v1, Landroidx/recyclerview/widget/e2;->a:I

    .line 65
    .line 66
    or-int/lit8 p1, p1, 0x4

    .line 67
    .line 68
    iput p1, v1, Landroidx/recyclerview/widget/e2;->a:I

    .line 69
    .line 70
    return-void
.end method

.method public removeAndRecycleViews()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/r0;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/e1;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/e1;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 25
    .line 26
    iget-object v1, v0, Landroidx/recyclerview/widget/e1;->a:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/recyclerview/widget/e1;->g()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public removeAnimatingView(Landroid/view/View;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/i0;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/recyclerview/widget/i0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, -0x1

    .line 15
    const/4 v4, 0x1

    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/e;->l(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v3, v0, Landroidx/recyclerview/widget/e;->b:Landroidx/recyclerview/widget/d;

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/d;->d(I)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/d;->f(I)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/e;->l(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/i0;->b(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v4, 0x0

    .line 41
    :goto_0
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/e1;->m(Landroidx/recyclerview/widget/p1;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/e1;->j(Landroidx/recyclerview/widget/p1;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    xor-int/lit8 p1, v4, 0x1

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 60
    .line 61
    .line 62
    return v4
.end method

.method public removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isTmpDetached()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->clearTmpDetachFlag()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    .line 29
    .line 30
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p2}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public removeItemDecoration(Landroidx/recyclerview/widget/s0;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-eqz v0, :cond_0

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public removeItemDecorationAt(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/s0;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/s0;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is an invalid index for size "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/y0;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnItemTouchListener(Landroidx/recyclerview/widget/a1;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/a1;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/a1;

    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Landroidx/recyclerview/widget/b1;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeRecyclerListener(Landroidx/recyclerview/widget/f1;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public repositionShadowingViews()V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->e()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/e;->d(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v3, Landroidx/recyclerview/widget/p1;->mShadowingHolder:Landroidx/recyclerview/widget/p1;

    if-eqz v3, :cond_1

    iget-object v3, v3, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v2, v5, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {v0, p0, v1, p1, p2}, Landroidx/recyclerview/widget/w0;->onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->o(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/recyclerview/widget/w0;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/a1;

    invoke-interface {v2}, Landroidx/recyclerview/widget/a1;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    :goto_0
    return-void
.end method

.method public saveOldPositions()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->h()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/e;->g(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/p1;->saveOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    :cond_5
    return-void
.end method

.method public scrollByInternal(IILandroid/view/MotionEvent;I)Z
    .locals 18

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v9, p1

    .line 4
    .line 5
    move/from16 v10, p2

    .line 6
    .line 7
    move-object/from16 v11, p3

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 10
    .line 11
    .line 12
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 13
    .line 14
    const/4 v12, 0x1

    .line 15
    const/4 v13, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 19
    .line 20
    aput v13, v0, v13

    .line 21
    .line 22
    aput v13, v0, v12

    .line 23
    .line 24
    invoke-virtual {v8, v9, v10, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 28
    .line 29
    aget v1, v0, v13

    .line 30
    .line 31
    aget v0, v0, v12

    .line 32
    .line 33
    sub-int v2, v9, v1

    .line 34
    .line 35
    sub-int v3, v10, v0

    .line 36
    .line 37
    move v14, v0

    .line 38
    move v15, v1

    .line 39
    move/from16 v16, v2

    .line 40
    .line 41
    move/from16 v17, v3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v14, v13

    .line 45
    move v15, v14

    .line 46
    move/from16 v16, v15

    .line 47
    .line 48
    move/from16 v17, v16

    .line 49
    .line 50
    :goto_0
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 62
    .line 63
    aput v13, v7, v13

    .line 64
    .line 65
    aput v13, v7, v12

    .line 66
    .line 67
    iget-object v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    .line 68
    .line 69
    move-object/from16 v0, p0

    .line 70
    .line 71
    move v1, v15

    .line 72
    move v2, v14

    .line 73
    move/from16 v3, v16

    .line 74
    .line 75
    move/from16 v4, v17

    .line 76
    .line 77
    move/from16 v6, p4

    .line 78
    .line 79
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 83
    .line 84
    aget v1, v0, v13

    .line 85
    .line 86
    sub-int v2, v16, v1

    .line 87
    .line 88
    aget v0, v0, v12

    .line 89
    .line 90
    sub-int v3, v17, v0

    .line 91
    .line 92
    if-nez v1, :cond_3

    .line 93
    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    move v0, v13

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    :goto_1
    move v0, v12

    .line 100
    :goto_2
    iget v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 101
    .line 102
    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    .line 103
    .line 104
    aget v5, v4, v13

    .line 105
    .line 106
    sub-int/2addr v1, v5

    .line 107
    iput v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 108
    .line 109
    iget v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 110
    .line 111
    aget v4, v4, v12

    .line 112
    .line 113
    sub-int/2addr v1, v4

    .line 114
    iput v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 115
    .line 116
    iget-object v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    .line 117
    .line 118
    aget v6, v1, v13

    .line 119
    .line 120
    add-int/2addr v6, v5

    .line 121
    aput v6, v1, v13

    .line 122
    .line 123
    aget v5, v1, v12

    .line 124
    .line 125
    add-int/2addr v5, v4

    .line 126
    aput v5, v1, v12

    .line 127
    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    const/4 v4, 0x2

    .line 133
    if-eq v1, v4, :cond_a

    .line 134
    .line 135
    if-eqz v11, :cond_9

    .line 136
    .line 137
    const/16 v1, 0x2002

    .line 138
    .line 139
    invoke-static {v11, v1}, Lg/a;->o(Landroid/view/MotionEvent;I)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_9

    .line 144
    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    int-to-float v2, v2

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    int-to-float v3, v3

    .line 155
    const/4 v5, 0x0

    .line 156
    cmpg-float v6, v2, v5

    .line 157
    .line 158
    const/high16 v7, 0x3f800000    # 1.0f

    .line 159
    .line 160
    if-gez v6, :cond_4

    .line 161
    .line 162
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 163
    .line 164
    .line 165
    iget-object v6, v8, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 166
    .line 167
    neg-float v11, v2

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 169
    .line 170
    .line 171
    move-result v12

    .line 172
    int-to-float v12, v12

    .line 173
    div-float/2addr v11, v12

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    int-to-float v12, v12

    .line 179
    div-float/2addr v4, v12

    .line 180
    sub-float v4, v7, v4

    .line 181
    .line 182
    :goto_3
    invoke-static {v6, v11, v4}, Lg/a;->w(Landroid/widget/EdgeEffect;FF)F

    .line 183
    .line 184
    .line 185
    const/4 v4, 0x1

    .line 186
    goto :goto_4

    .line 187
    :cond_4
    cmpl-float v6, v2, v5

    .line 188
    .line 189
    if-lez v6, :cond_5

    .line 190
    .line 191
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 192
    .line 193
    .line 194
    iget-object v6, v8, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 195
    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 197
    .line 198
    .line 199
    move-result v11

    .line 200
    int-to-float v11, v11

    .line 201
    div-float v11, v2, v11

    .line 202
    .line 203
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    int-to-float v12, v12

    .line 208
    div-float/2addr v4, v12

    .line 209
    goto :goto_3

    .line 210
    :cond_5
    move v4, v13

    .line 211
    :goto_4
    cmpg-float v6, v3, v5

    .line 212
    .line 213
    if-gez v6, :cond_6

    .line 214
    .line 215
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 216
    .line 217
    .line 218
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 219
    .line 220
    neg-float v3, v3

    .line 221
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    int-to-float v4, v4

    .line 226
    div-float/2addr v3, v4

    .line 227
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    int-to-float v4, v4

    .line 232
    div-float/2addr v1, v4

    .line 233
    invoke-static {v2, v3, v1}, Lg/a;->w(Landroid/widget/EdgeEffect;FF)F

    .line 234
    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_6
    cmpl-float v6, v3, v5

    .line 238
    .line 239
    if-lez v6, :cond_7

    .line 240
    .line 241
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 242
    .line 243
    .line 244
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 245
    .line 246
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    int-to-float v4, v4

    .line 251
    div-float/2addr v3, v4

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    int-to-float v4, v4

    .line 257
    div-float/2addr v1, v4

    .line 258
    sub-float/2addr v7, v1

    .line 259
    invoke-static {v2, v3, v7}, Lg/a;->w(Landroid/widget/EdgeEffect;FF)F

    .line 260
    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_7
    if-nez v4, :cond_8

    .line 264
    .line 265
    cmpl-float v1, v2, v5

    .line 266
    .line 267
    if-nez v1, :cond_8

    .line 268
    .line 269
    if-eqz v6, :cond_9

    .line 270
    .line 271
    :cond_8
    :goto_5
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 272
    .line 273
    invoke-static/range {p0 .. p0}, Landroidx/core/view/k0;->k(Landroid/view/View;)V

    .line 274
    .line 275
    .line 276
    :cond_9
    invoke-virtual/range {p0 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 277
    .line 278
    .line 279
    :cond_a
    if-nez v15, :cond_b

    .line 280
    .line 281
    if-eqz v14, :cond_c

    .line 282
    .line 283
    :cond_b
    invoke-virtual {v8, v15, v14}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 284
    .line 285
    .line 286
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-nez v1, :cond_d

    .line 291
    .line 292
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 293
    .line 294
    .line 295
    :cond_d
    if-nez v0, :cond_f

    .line 296
    .line 297
    if-nez v15, :cond_f

    .line 298
    .line 299
    if-eqz v14, :cond_e

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_e
    move v12, v13

    .line 303
    goto :goto_7

    .line 304
    :cond_f
    :goto_6
    const/4 v12, 0x1

    .line 305
    :goto_7
    return v12
.end method

.method public scrollStep(II[I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 5
    .line 6
    .line 7
    sget v0, Ld0/l;->a:I

    .line 8
    .line 9
    const-string v0, "RV Scroll"

    .line 10
    .line 11
    invoke-static {v0}, Ld0/k;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Landroidx/recyclerview/widget/l1;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 27
    .line 28
    invoke-virtual {v1, p1, v2, v3}, Landroidx/recyclerview/widget/w0;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p1, v0

    .line 34
    :goto_0
    if-eqz p2, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 39
    .line 40
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 41
    .line 42
    invoke-virtual {v1, p2, v2, v3}, Landroidx/recyclerview/widget/w0;->scrollVerticallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move p2, v0

    .line 48
    :goto_1
    invoke-static {}, Ld0/k;->b()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->repositionShadowingViews()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 58
    .line 59
    .line 60
    if-eqz p3, :cond_2

    .line 61
    .line 62
    aput p1, p3, v0

    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    aput p2, p3, p1

    .line 66
    .line 67
    :cond_2
    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-nez v0, :cond_1

    const-string p1, "RecyclerView"

    const-string v0, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/w0;->scrollToPosition(I)V

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/r1;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/r1;

    invoke-static {p0, p1}, Landroidx/core/view/c1;->o(Landroid/view/View;Landroidx/core/view/c;)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/k0;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->q(Landroidx/recyclerview/widget/k0;ZZ)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildDrawingOrderCallback(Landroidx/recyclerview/widget/n0;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/p1;I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p2, p1, Landroidx/recyclerview/widget/p1;->mPendingAccessibilityState:I

    .line 8
    .line 9
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 17
    .line 18
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 19
    .line 20
    invoke-static {p1, p2}, Landroidx/core/view/k0;->s(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public setClipToPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(Landroidx/recyclerview/widget/o0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/o0;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/r0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/r0;->e()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Landroidx/recyclerview/widget/r0;->a:Landroidx/recyclerview/widget/p0;

    .line 12
    .line 13
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/p0;

    .line 18
    .line 19
    iput-object v0, p1, Landroidx/recyclerview/widget/r0;->a:Landroidx/recyclerview/widget/p0;

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 2
    .line 3
    iput p1, v0, Landroidx/recyclerview/widget/e1;->e:I

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/e1;->n()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/w0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/r0;->e()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/e1;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/e1;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 35
    .line 36
    iget-object v1, v0, Landroidx/recyclerview/widget/e1;->a:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/e1;->g()V

    .line 42
    .line 43
    .line 44
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 49
    .line 50
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 51
    .line 52
    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/w0;->dispatchDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/e1;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 65
    .line 66
    iget-object v1, v0, Landroidx/recyclerview/widget/e1;->a:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/recyclerview/widget/e1;->g()V

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 75
    .line 76
    iget-object v1, v0, Landroidx/recyclerview/widget/e;->b:Landroidx/recyclerview/widget/d;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroidx/recyclerview/widget/d;->g()V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Landroidx/recyclerview/widget/e;->c:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    add-int/lit8 v2, v2, -0x1

    .line 88
    .line 89
    :goto_1
    iget-object v3, v0, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/i0;

    .line 90
    .line 91
    if-ltz v2, :cond_5

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Landroid/view/View;

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    if-eqz v4, :cond_4

    .line 107
    .line 108
    iget-object v3, v3, Landroidx/recyclerview/widget/i0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 109
    .line 110
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/p1;->onLeftHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    add-int/lit8 v2, v2, -0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    iget-object v0, v3, Landroidx/recyclerview/widget/i0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    const/4 v2, 0x0

    .line 126
    :goto_2
    if-ge v2, v1, :cond_6

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 136
    .line 137
    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 142
    .line 143
    .line 144
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 145
    .line 146
    if-eqz p1, :cond_8

    .line 147
    .line 148
    iget-object v0, p1, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 149
    .line 150
    if-nez v0, :cond_7

    .line 151
    .line 152
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/w0;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 153
    .line 154
    .line 155
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 156
    .line 157
    if-eqz p1, :cond_8

    .line 158
    .line 159
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 160
    .line 161
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/w0;->dispatchAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v2, "LayoutManager "

    .line 170
    .line 171
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v2, " is already attached to a RecyclerView:"

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object p1, p1, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 183
    .line 184
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_8
    :goto_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 193
    .line 194
    invoke-virtual {p1}, Landroidx/recyclerview/widget/e1;->n()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 198
    .line 199
    .line 200
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/w;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Landroidx/core/view/w;->d:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/core/view/w;->c:Landroid/view/View;

    .line 12
    .line 13
    invoke-static {v1}, Landroidx/core/view/q0;->z(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-boolean p1, v0, Landroidx/core/view/w;->d:Z

    .line 17
    .line 18
    return-void
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/z0;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/z0;

    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/b1;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/b1;

    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return-void
.end method

.method public setRecycledViewPool(Landroidx/recyclerview/widget/d1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/e1;->f(Landroidx/recyclerview/widget/k0;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget v3, v2, Landroidx/recyclerview/widget/d1;->b:I

    .line 16
    .line 17
    add-int/lit8 v3, v3, -0x1

    .line 18
    .line 19
    iput v3, v2, Landroidx/recyclerview/widget/d1;->b:I

    .line 20
    .line 21
    :cond_0
    iput-object p1, v0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, v0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 32
    .line 33
    iget v1, p1, Landroidx/recyclerview/widget/d1;->b:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    iput v1, p1, Landroidx/recyclerview/widget/d1;->b:I

    .line 38
    .line 39
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/e1;->e()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public setRecyclerListener(Landroidx/recyclerview/widget/f1;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setScrollState(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/o1;

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/recyclerview/widget/o1;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Landroidx/recyclerview/widget/o1;->c:Landroid/widget/OverScroller;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->stopSmoothScroller()V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RecyclerView"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    :goto_0
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    goto :goto_0

    :goto_2
    return-void
.end method

.method public setViewCacheExtension(Landroidx/recyclerview/widget/n1;)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lh0/b;->a(Landroid/view/accessibility/AccessibilityEvent;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v1

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v1, p1

    .line 20
    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 21
    .line 22
    or-int/2addr p1, v1

    .line 23
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_2
    return v1
.end method

.method public smoothScrollBy(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 1

    .line 2
    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;I)V
    .locals 6

    .line 3
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V
    .locals 2

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move p1, v1

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    move p2, v1

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_a

    :cond_4
    const/high16 v0, -0x80000000

    if-eq p4, v0, :cond_6

    if-lez p4, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    :cond_6
    :goto_0
    if-eqz p5, :cond_9

    const/4 p5, 0x1

    if-eqz p1, :cond_7

    move v1, p5

    :cond_7
    if-eqz p2, :cond_8

    or-int/lit8 v1, v1, 0x2

    :cond_8
    invoke-virtual {p0, v1, p5}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    :cond_9
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/o1;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroidx/recyclerview/widget/o1;->c(IILandroid/view/animation/Interpolator;I)V

    :cond_a
    :goto_1
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-nez v0, :cond_1

    const-string p1, "RecyclerView"

    const-string v0, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {v0, p0, v1, p1}, Landroidx/recyclerview/widget/w0;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;I)V

    return-void
.end method

.method public startInterceptRequestLayout()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/w;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Landroidx/core/view/w;->g(II)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/w;->g(II)Z

    move-result p1

    return p1
.end method

.method public stopInterceptRequestLayout(Z)V
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v2, :cond_1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    :cond_1
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    :cond_2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez p1, :cond_3

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    :cond_3
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    return-void
.end method

.method public stopNestedScroll()V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/w;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Landroidx/core/view/w;->h(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/w;->h(I)V

    return-void
.end method

.method public stopScroll()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/o1;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/recyclerview/widget/o1;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Landroidx/recyclerview/widget/o1;->c:Landroid/widget/OverScroller;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->stopSmoothScroller()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final suppressLayout(Z)V
    .locals 9

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not suppressLayout in layout or scroll"

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_2
    :goto_0
    return-void
.end method

.method public swapAdapter(Landroidx/recyclerview/widget/k0;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->q(Landroidx/recyclerview/widget/k0;ZZ)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public viewRangeUpdate(IILjava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr p2, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ge v1, v0, :cond_2

    .line 12
    .line 13
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 14
    .line 15
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/e;->g(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    invoke-virtual {v5}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget v6, v5, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 33
    .line 34
    if-lt v6, p1, :cond_1

    .line 35
    .line 36
    if-ge v6, p2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, p3}, Landroidx/recyclerview/widget/p1;->addChangePayload(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroidx/recyclerview/widget/x0;

    .line 49
    .line 50
    iput-boolean v3, v2, Landroidx/recyclerview/widget/x0;->c:Z

    .line 51
    .line 52
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 56
    .line 57
    iget-object v0, p3, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    sub-int/2addr v1, v3

    .line 64
    :goto_2
    if-ltz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Landroidx/recyclerview/widget/p1;

    .line 71
    .line 72
    if-nez v3, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    iget v4, v3, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 76
    .line 77
    if-lt v4, p1, :cond_4

    .line 78
    .line 79
    if-ge v4, p2, :cond_4

    .line 80
    .line 81
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/e1;->h(I)V

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    return-void
.end method
